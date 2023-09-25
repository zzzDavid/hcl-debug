# RUN: %PYTHON %s
import os
import ctypes
import numpy as np

from hcl_mlir.ir import *
from hcl_mlir.passmanager import *
from hcl_mlir.execution_engine import *
from hcl_mlir.runtime import *


def lowerToLLVM(module):
    # pm = PassManager.parse(
        # "builtin.module(lower-affine,convert-scf-to-cf,convert-arith-to-llvm,convert-memref-to-llvm,convert-func-to-llvm,convert-cf-to-llvm,reconcile-unrealized-casts)")
    pm = PassManager.parse(
                "builtin.module("
                "convert-linalg-to-affine-loops,"
                "one-shot-bufferize,"
                "lower-affine,"
                "convert-scf-to-cf,"
                "convert-cf-to-llvm,"
                "convert-func-to-llvm,"
                "convert-arith-to-llvm,"
                "finalize-memref-to-llvm,"
                "reconcile-unrealized-casts"
                ")"
            )
    
    pm.run(module.operation)
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
def run_ir(ir_filename, input_args, output_args):
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
    output_memrefs = [ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(arg))) for arg in output_args]
    # output_memrefs = [get_ranked_memref_descriptor(arg) for arg in output_args]
    # pack output memref into a struct with ctypes
    # first, make a struct with two fields: memref0, memref1
    # class OutputStruct(ctypes.Structure):
    #     _fields_ = [("memref0", output_memrefs[0].__class__), \
    #                 ("memref1", output_memrefs[1].__class__)]
    
    # out_struct = OutputStruct()
    # assign the memref pointers to the struct
    # out_struct.memref0 = output_memrefs[0]
    # out_struct.memref1 = output_memrefs[1]
    # do a pointer of pointer of the struct
    # output_memrefs = ctypes.pointer(ctypes.pointer(out_struct))

    with Context():
        module = Module.parse(code)
        lowered = lowerToLLVM(module)
        if shared_libs is not None:
            execution_engine = ExecutionEngine(
                lowered, opt_level=0, shared_libs=shared_libs)
        else:
            execution_engine = ExecutionEngine(lowered)
        execution_engine.invoke(
            "kernel", output_memrefs[0], *input_memrefs)
        # copy output memref back
        res = ranked_memref_to_numpy(output_memrefs[0][0])
        print(res)


def test_multi_return():
    filename = "./ir.mlir"
    np_A = np.random.randint(0, 10, size=(10,)).astype(np.int32)
    np_B = np.random.randint(0, 10, size=(10,)).astype(np.int32)
    out_A = np.zeros_like(np_A).astype(np.int32)
    print(np_A)
    print(np_B)
    # out_B = np.zeros_like(np_B).astype(np.int32)
    run_ir(filename, input_args=[np_A, np_B], output_args=[out_A])
    # print(out_A)
    # print(out_B)


if __name__ == "__main__":
    test_multi_return()