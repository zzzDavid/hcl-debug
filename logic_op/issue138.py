import heterocl as hcl


def test_if_LogicalOr():
    hcl.init()
    def kernel():
        a = hcl.scalar(0, "a", dtype=hcl.UInt(8))
        b = hcl.scalar(0, "a", dtype=hcl.UInt(8))

        # this generates the following error:
        #   File "hcl-dialect-prototype/build/tools/hcl/python_packages/hcl_core/hcl_mlir/build_ir.py", line 2630, in make_if
        #     raise HCLValueError("`if` operation condition should be CmpOp")
        # hcl_mlir.exceptions.HCLValueError: [Value Error] `if` operation condition should be CmpOp
        # with hcl.if_(hcl.or_(a.v == 0, b.v == 0)):
        #     pass

        # this generates the following error:
        #  File "hcl-dialect-prototype/build/tools/hcl/python_packages/hcl_core/hcl_mlir/build_ir.py", line 1726, in build
        #      raise APIError("Do not build logical_or op")
        #  hcl_mlir.exceptions.APIError: [API] Do not build logical_or op
        with hcl.if_(hcl.or_(a.v == 0, b.v == 0) != 0):
            pass

    s = hcl.create_schedule([], kernel)

test_if_LogicalOr()