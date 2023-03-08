# RUN: %PYTHON %s
import os
import ctypes
import numpy as np

from hcl_mlir.ir import *
from hcl_mlir.passmanager import *
from hcl_mlir.execution_engine import *
from hcl_mlir.runtime import *

def make_anywidth_numpy_array(val, bitwidth, signed):
    """
    Converts a numpy array to any target bitwidth.
    ----------------
    Parameters:
    val: numpy.ndarray
        numpy array, can be any numpy native bitwidth, e.g. np.int64
    bitwidth: int
        target bitwidth e.g. 9, 31, 198
    signed: True or False
        whether the values in the array are signed or unsigned
    ----------------
    Returns:
    numpy.ndarray
        numpy array with the target bitwidth
    """
    shape = val.shape
    # The following code has several steps to convert the numpy array to have
    # the correct data type in order to create an MLIR constant tensor.
    # Since MLIR-NumPy Python interface only supports byte-addressable data types,
    # we need to change the data type of the array to have the minimum number of bytes
    # that can represent the target bitwidth.
    # e.g., hcl.const_tensor(arr, dtype=hcl.Int(20)) (6*6 array)
    #       which requires 20 bits (3 bytes) to represent each element
    # declaration: 6*6*i20
    # numpy input: 6*6*i64
    # 1. Decompose the original i32 or i64 array into a structured array of uint8
    #  -> decompose: 6*6*8*i8
    if bitwidth == 1:
        return np.packbits(val, axis=None, bitorder="little")
    else:
        # Here we construct a customized NumPy dtype, "f0", "f1", "f2", etc.
        # are the field names, and the entire data type is `op.values.dtype`.
        # This can be viewed as a `union` type in C/C++.
        # Please refer to the documentation for more details:
        # https://numpy.org/doc/stable/reference/arrays.dtypes.html#specifying-and-constructing-data-types
        decomposed_np_dtype = np.dtype(
            (
                val.dtype,
                {
                    f"f{i}": (np.uint8, i)
                    for i in range(val.dtype.itemsize)
                },
            )
        )
        val = val.view(decomposed_np_dtype)
        # 2. Compose the uint8 array into a structured array of target bitwidth
        # This is done by taking the first several bytes of the uint8 array
        # "u1" means one unsigned byte, and "i1" means one signed byte
        n_bytes = int(np.ceil(bitwidth / 8))
        new_dtype = np.dtype(
            {
                "names": [f"f{i}" for i in range(n_bytes)],
                "formats": (["i1"] if signed else ["u1"])
                + ["u1"] * (n_bytes - 1),
                "offsets": list(range(n_bytes)),
                "itemsize": n_bytes,
            }
        )
        # -> compose: 6*6*3*i8
        val = np.stack([val[f"f{i}"] for i in range(n_bytes)], axis=-1)
        # -> flatten: 108*i8
        val = val.flatten()
        # -> view: 36*i24
        val = val.view(np.dtype(new_dtype))
        # -> reshape: 6*6*i24
        val = val.reshape(shape)
        return val

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
            "main", *input_memrefs)


def test_example():
    filename = "example.mlir"
    np_A = np.random.randint(-10, 10, size=(3, )).astype(np.int32)
    print(np_A)
    np_A = make_anywidth_numpy_array(np_A, 23, True)
    run_ir(filename, [np_A])


if __name__ == "__main__":
    test_example()