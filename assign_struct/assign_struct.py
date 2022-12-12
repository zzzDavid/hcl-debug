import heterocl as hcl
def test_struct_assignment():
    hcl.init()
    def kernel():
        tag = hcl.scalar(0, "tag", dtype='uint32')

        stype = hcl.Struct({"x": hcl.UInt(8), "y": hcl.UInt(8)})
        xy = hcl.scalar(0x1234, "xy", dtype=stype).v

    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))

test_struct_assignment()