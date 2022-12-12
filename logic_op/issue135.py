import heterocl as hcl

def test_while_CmpOp():
    hcl.init()
    def kernel():
        a = hcl.scalar(0, "a", dtype=hcl.UInt(8))
        b = hcl.scalar(0, "a", dtype=hcl.UInt(8))

        # this generates the following error:
        # File "hcl-dialect-prototype/build/tools/hcl/python_packages/hcl_core/hcl_mlir/build_ir.py", line 2743, in make_while
        #     raise HCLValueError("`if` operation condition should be CmpOp")
        with hcl.while_(hcl.and_(a.v == 0, b.v == 0)):
            pass

        # this generates the following error:
        #  File "hcl-dialect-prototype/build/tools/hcl/python_packages/hcl_core/hcl_mlir/build_ir.py", line 1716, in build
        #      raise APIError("Do not build logical_and op")
        #  hcl_mlir.exceptions.APIError: [API] Do not build logical_and op
        # with hcl.while_(hcl.and_(a.v == 0, b.v == 0) != 0):
        #     pass
    
    s = hcl.create_schedule([], kernel)
test_while_CmpOp()