from hcl_mlir.ir import *
from hcl_mlir.dialects import func, linalg


with Context() as ctx, Location.unknown():
    module = Module.create()
    f32 = F32Type.get()
    i8 = IntegerType.get_signless(8)
    with InsertionPoint(module.body):

      @func.FuncOp.from_py_func(
          MemRefType.get((), f32), MemRefType.get((4, 8), f32),
          MemRefType.get((4, 8), f32))
      def elemwise_exp_add_on_buffers(lhs, rhs, out):
        import ipdb; ipdb.set_trace()
        linalg.elemwise_unary(lhs, outs=[out])
        linalg.elemwise_binary(out, rhs, outs=[out])

    print(module)