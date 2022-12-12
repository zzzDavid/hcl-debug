import heterocl as hcl
import numpy as np
def test_recexecute():
    hcl.init()
    rshape = (1,)

    def kernel():
#         inst_id = hcl.scalar(0, "inst_id", dtype=hcl.UInt(16)).v
        stype = hcl.Struct({"x": hcl.UInt(8), "y": hcl.UInt(8)})    
        inst_id = hcl.scalar(0x1234, "foo", dtype=stype).v
        with hcl.if_(inst_id.x == 0):
            hcl.print((), "match\n")
        with hcl.elif_(inst_id.x == 1):
            hcl.print((), "match\n")
        r = hcl.compute(rshape, lambda _:0, dtype=hcl.UInt(32))
        return r
    #
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    hcl_res = hcl.asarray(np.zeros(rshape, dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)

test_recexecute()