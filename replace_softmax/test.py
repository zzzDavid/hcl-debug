import hcl_mlir
from hcl_mlir.ir import (
    UnitAttr,
    StringAttr,
    InsertionPoint,
    MemRefType,
    AffineMapAttr,
    FlatSymbolRefAttr,
    Location,
    Context,
    Module,
)

from hcl_mlir.dialects import (
    memref as memref_d,
    affine as affine_d,
    scf as scf_d,
    func as func_d,
    linalg as linalg_d,
)



def softmax_func(module):
    with open("softmax_impl.mlir", "r") as f:
        softmax_module = f.read()
    with module.context, Location.unknown():
        # get softmax function
        softmax_mod = Module.parse(softmax_module)
        softmax_func = softmax_mod.body.operations[0]

        # get all functions from origin module and find the function to replace
        for op in module.body.operations:
            if isinstance(op, func_d.FuncOp):
                # put softmax function into the module
                softmax_func.move_before(op)
                for body_op in op.entry_block.operations:
                    if isinstance(body_op, linalg_d.SoftmaxOp):
                        func_d.CallOp(
                            [body_op.output.type],
                            FlatSymbolRefAttr.get("softmax"),
                            [body_op.input, body_op.output],
                            ip=InsertionPoint(body_op),
                        )
                        body_op.operation.erase()
            return module
        

if __name__ == "__main__":
    with open("input.mlir", "r") as f:
        input = f.read()

    print("read input IR from input.mlir")
    print("replacing linalg.softmax with implementation in softmax_impl.mlir")
    with Context() as context:
        module = Module.parse(input)
        new_mod = softmax_func(module)
    print("done, writing output IR to output.mlir...")
    with open("output.mlir", "w") as f:
        f.write(str(new_mod))
