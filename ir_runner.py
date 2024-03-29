# RUN: %PYTHON %s
import os
import ctypes
import numpy as np

from hcl_mlir.ir import *
from hcl_mlir.passmanager import *
from hcl_mlir.execution_engine import *
from hcl_mlir.runtime import *


def lowerToLLVM(module):
    pm = PassManager.parse(
        "lower-affine,convert-scf-to-cf,convert-arith-to-llvm,convert-memref-to-llvm,convert-func-to-llvm,convert-cf-to-llvm,reconcile-unrealized-casts")
    pm.run(module)
    # module.dump()
    return module


def get_assembly(filename):
    with open(filename, "r") as f:
        code = f.read()
    return code

"""
Assumptions:
1. returned values are moved to input arg list
2. invoke entry point function is named "top"
3. llvm.emit_c_interface is attached to the top function
"""
def run_ir(ir_filename, input_args):
    code = get_assembly(os.path.join(os.path.dirname(
        os.path.abspath(__file__)), ir_filename))

    # Add shared library
    if os.getenv("LLVM_BUILD_DIR") is not None:
        shared_libs = [
            os.path.join(os.getenv("LLVM_BUILD_DIR"),
                         'lib', 'libmlir_runner_utils.so'),
            os.path.join(os.getenv("LLVM_BUILD_DIR"),
                         'lib', 'libmlir_c_runner_utils.so')
        ]
        print("Got shared libs: {}".format(shared_libs))
    else:
        print("LLVM_BUILD_DIR not set")
        shared_libs = None

    input_memrefs = [ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(arg))) for arg in input_args]

    with Context():
        module = Module.parse(code)
        lowered = lowerToLLVM(module)
        if shared_libs is not None:
            execution_engine = ExecutionEngine(
                lowered, opt_level=0, shared_libs=shared_libs)
        else:
            execution_engine = ExecutionEngine(lowered)
        execution_engine.invoke(
            "top", *input_memrefs)


def test_gt():
    filename = "gt.mlir"
    np_A = np.random.randint(0, 10, size=(10, 10)).astype(np.int32)
    np_B = np.zeros((8, 8)).astype(np.int32)
    run_ir(filename, [np_A, np_B])

    print("np_B: {}".format(np_B))

    np_C = np.zeros((8, 2, 4)).astype(np.int32)
    for y in range(0, 8):
        for xo in range(0, 2):
            for xi in range(0, 4):
                for r in range(0, 3):
                    for c in range(0, 3):
                        np_C[y][xo][xi] += np_A[y+r][xi+xo*4+c]
    np_C = np_C.reshape((8, 8))
    assert np.array_equal(np_B, np_C)
    print("np_C: {}".format(np_C))


def test_mlir_memref_print():
    filename = "print/test_mlir_printer.mlir"
    np_A = np.random.randint(0, 10, size=(3, 3, 3)).astype(np.int32)
    np_B = np.random.randint(0, 10, size=(3, 3, 3)).astype(np.int64)
    np_C = np.random.rand(3, 3, 3).astype(np.float32)
    np_D = np.random.rand(3, 3, 3).astype(np.float64)
    run_ir(filename, [np_A, np_B, np_C, np_D])
    print("np_A: {}".format(np_A))
    print("np_B: {}".format(np_B))
    print("np_C: {}".format(np_C))
    print("np_D: {}".format(np_D))

def test_stride_2_conv():
    filename = "reuse_at/stride_2_conv.mlir"
    np_A = np.random.randint(0, 10, size=(10, 10)).astype(np.int32)
    np_B = np.zeros((4,4)).astype(np.int32)
    np_C = np.zeros((4, 4), dtype="int")
    for y in range(0, 4):
        for x in range(0, 4):
            for r in range(0, 3):
                for c in range(0, 3):
                    np_C[y][x] += np_A[y*2+r][x*2+c]
    run_ir(filename, [np_A, np_B])
    print("np_B: {}".format(np_B))
    assert np.array_equal(np_B, np_C)

def test_bconv_stride2():
    bs = 4
    ic, oc = 16, 32
    ih, iw = 8, 8
    kh, kw = 3, 3
    stride = 2
    oh, ow = (ih - kh) // stride + 1, (iw - kw) // stride + 1
    packing_factor = 16
    filename = "/home/nz264/shared/mlir/demo/bconv/bconv_debug.mlir"
    # filename = "/home/nz264/shared/mlir/demo/bconv/bconv_nchw_stride2_transformed.mlir"
    np_A = np.random.randint(0, 2, size=(bs, ic, ih, iw))
    np_B = np.random.randint(0, 2, size=(oc, ic, kh, kw))
    np_C = np.zeros((bs, oc, oh, ow), dtype="int").astype(np.int32)
    golden_C = np.zeros((bs, oc, oh, ow), dtype="int").astype(np.int32)
    for n in range(0, bs):
        for c in range(0, oc):
            for y in range(0, oh):
                for x in range(0, ow):
                    for rc in range(0, ic):
                        for rh in range(0, kh):
                            for rw in range(0, kw):
                                golden_C[n][c][y][x] += 1 - 2 * (
                                    np_A[n][rc][y * stride + rh][x * stride + rw]
                                    ^ np_B[c][rc][rh][rw]
                                )

    packed_A = np.ascontiguousarray(
        np.packbits(
            np_A.transpose((0, 2, 3, 1)).astype(np.bool_), axis=3, bitorder="little"
        )
        .view(np.uint16)
        .transpose((0, 3, 1, 2))
    )
    packed_B = np.ascontiguousarray(
        np.packbits(
            np_B.transpose((0, 2, 3, 1)).astype(np.bool_), axis=3, bitorder="little"
        )
        .view(np.uint16)
        .transpose((0, 3, 1, 2))    
    )

    run_ir(filename, [packed_A, packed_B, np_C])
    # print("np_C: {}".format(np_C))
    # print("golden_C: {}".format(golden_C))
    assert np.array_equal(np_C, golden_C)


if __name__ == "__main__":
    # test_stride_2_conv()
    test_bconv_stride2()