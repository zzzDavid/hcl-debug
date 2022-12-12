import heterocl as hcl

def test_if_struct_access():
    hcl.init()

    def kernel():
        tag = hcl.scalar(0, "tag", dtype='uint32')

        stype = hcl.Struct({"x": hcl.UInt(8), "y": hcl.UInt(8)})
        xy = hcl.scalar(0x1234, "xy", dtype=stype).v

        with hcl.if_(xy.x==1):  # use of struct field access causes a scheduler error
            tag.v = 1

        r = hcl.compute((2,), lambda i: tag.v, dtype=hcl.UInt(32))
        return r
    s = hcl.create_schedule([], kernel)
    print(s.device_module)

test_if_struct_access()