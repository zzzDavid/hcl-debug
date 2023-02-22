import heterocl as hcl
import inspect
import ast

# def kernel():
#     a = hcl.scalar(1, "a")
#     b = (a.v + 1) * a.v # how do I know this expr is not bound yet?
#     res = hcl.compute((10,), lambda x: 0)
#     with hcl.if_(b > 0): # while this expr is bound
#         res[b + 1] = b + 2
#     with hcl.if_(a.v < 0):
#         res[b + 2] = b + 1
#     return res

# def kernel():
#   x = hcl.scalar(0, "x", dtype="uint32")
#   y = hcl.scalar(0, "y", dtype="uint32")

#   res = x.v + 1

#   with hcl.for_(0, 10) as i:
#     y.v = res
#   with hcl.for_(0, 10) as i:
#     y.v = res

def kernel():
    a = hcl.scalar(0, "a")
    l = a.v + 1
    with hcl.if_(a.v > 0):
        a.v = l
    with hcl.else_():
        a.v = l + a.v


s = hcl.create_schedule([], kernel)
print(s.ast)
print(hcl.lower(s))
code = hcl.build(s, target="vhls")
print(code)
# kernel()
# src = inspect.getsource(kernel)
# func_ast = ast.parse(src)
# print(ast.dump(func_ast))

# print all subclasses for ast.Expr
# from heterocl.ast.ast import Expr
# expr_cls = Expr.__subclasses__()
# for cls in expr_cls:
#     print(cls)
"""
<class 'heterocl.ast.ast.UnaryOp'>
<class 'heterocl.ast.ast.BinaryOp'>
<class 'heterocl.ast.ast.TernaryOp'>
<class 'heterocl.ast.ast.CastOp'>
<class 'heterocl.ast.ast.ConstantOp'>
<class 'heterocl.ast.ast.ConstantTensorOp'>
<class 'heterocl.ast.ast.LoadOp'>
<class 'heterocl.ast.ast.GetBitOp'>
<class 'heterocl.ast.ast.GetSliceOp'>
<class 'heterocl.ast.ast.TensorSlice'>
<class 'heterocl.ast.ast.AllocOp'>
<class 'heterocl.ast.ast.IterVar'>
<class 'heterocl.ast.ast.CallOp'>
<class 'heterocl.ast.ast.SelectOp'>
<class 'heterocl.ast.ast.StructConstructOp'>
<class 'heterocl.ast.ast.StructGetOp'>
<class 'heterocl.ast.ast.ReduceOp'>
<class 'heterocl.ast.ast.OpHandle'>
<class 'heterocl.ast.ast.LoopHandle'>
"""