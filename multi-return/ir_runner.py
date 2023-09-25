# RUN: %PYTHON %s
import os
import ctypes
import numpy as np

from hcl_mlir.ir import *
from hcl_mlir.passmanager import *
from hcl_mlir.execution_engine import *
from hcl_mlir.runtime import *

class C128(ctypes.Structure):
    """A ctype representation for MLIR's Double Complex."""

    _fields_ = [("real", ctypes.c_double), ("imag", ctypes.c_double)]


class C64(ctypes.Structure):
    """A ctype representation for MLIR's Float Complex."""

    _fields_ = [("real", ctypes.c_float), ("imag", ctypes.c_float)]


class F16(ctypes.Structure):
    """A ctype representation for MLIR's Float16."""

    _fields_ = [("f16", ctypes.c_int16)]


def to_numpy(array):
    """Converts ctypes array back to numpy dtype array."""
    if array.dtype == C128:
        return array.view("complex128")
    if array.dtype == C64:
        return array.view("complex64")
    if array.dtype == F16:
        return array.view("float16")
    return array


def my_ranked_memref_to_numpy(ranked_memref):
    """Converts ranked memrefs to numpy arrays."""
    np_arr = np.ctypeslib.as_array(
        ranked_memref.aligned, shape=ranked_memref.shape
    )
    strided_arr = np.lib.stride_tricks.as_strided(
        np_arr,
        np.ctypeslib.as_array(ranked_memref.shape),
        np.ctypeslib.as_array(ranked_memref.strides) * np_arr.itemsize,
    )
    return to_numpy(strided_arr)



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
    # output_memrefs = [ctypes.pointer(ctypes.pointer(get_ranked_memref_descriptor(arg))) for arg in output_args]
    output_memrefs = [get_ranked_memref_descriptor(arg) for arg in output_args]
    # pack output memref into a struct with ctypes
    # first, make a struct with two fields: memref0, memref1
    class OutputStruct(ctypes.Structure):
        _fields_ = [("memref0", output_memrefs[0].__class__), \
                    ("memref1", output_memrefs[1].__class__)]
    
    out_struct = OutputStruct()
    # assign the memref pointers to the struct
    out_struct.memref0 = output_memrefs[0]
    out_struct.memref1 = output_memrefs[1]
    # do a pointer of pointer of the struct
    output_memrefs = ctypes.pointer(ctypes.pointer(out_struct))

    with Context():
        module = Module.parse(code)
        lowered = lowerToLLVM(module)
        if shared_libs is not None:
            execution_engine = ExecutionEngine(
                lowered, opt_level=0, shared_libs=shared_libs)
        else:
            execution_engine = ExecutionEngine(lowered)
        execution_engine.invoke(
            "kernel", output_memrefs, *input_memrefs)
        
        res0 = my_ranked_memref_to_numpy(output_memrefs[0][0].memref0)
        res1 = my_ranked_memref_to_numpy(output_memrefs[0][0].memref1)

        print(res0)
        print(res1)


def test_multi_return():
    filename = "./ir.mlir"
    np_A = np.random.randint(0, 10, size=(10,)).astype(np.int32)
    np_B = np.random.randint(0, 10, size=(10,)).astype(np.int32)
    out_A = np.zeros_like(np_A).astype(np.int32)
    out_B = np.zeros_like(np_B).astype(np.int32)
    print(np_A)
    print(np_B)
    run_ir(filename, input_args=[np_A, np_B], output_args=[out_A, out_B])
    # print(out_A)
    # print(out_B)


if __name__ == "__main__":
    test_multi_return()