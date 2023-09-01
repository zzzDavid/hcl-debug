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
        # lowered = lowerToLLVM(module)
        lowered = module
        if shared_libs is not None:
            execution_engine = ExecutionEngine(
                lowered, opt_level=0, shared_libs=shared_libs)
        else:
            execution_engine = ExecutionEngine(lowered)
        execution_engine.invoke(
            "kernel", *input_memrefs)

def test_gt():
    filename = "before_ee_creation.mlir"
    M, N, K, L = 5, 4, 3, 2
    np_A = np.random.rand(M, K, L).astype(np.float32)
    np_B = np.random.rand(N, K).astype(np.float32)
    np_C = np.random.rand(N).astype(np.float32)
    np_ret = np.zeros((M, L * N)).astype(np.float32)
    run_ir(filename, [np_ret, np_A, np_B, np_C])

    # print("np_B: {}".format(np_B))

    # np_C = np.zeros((8, 2, 4)).astype(np.int32)
    # for y in range(0, 8):
    #     for xo in range(0, 2):
    #         for xi in range(0, 4):
    #             for r in range(0, 3):
    #                 for c in range(0, 3):
    #                     np_C[y][xo][xi] += np_A[y+r][xi+xo*4+c]
    # np_C = np_C.reshape((8, 8))
    # assert np.array_equal(np_B, np_C)
    # print("np_C: {}".format(np_C))


if __name__ == "__main__":
    test_gt()