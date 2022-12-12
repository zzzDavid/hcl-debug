import heterocl as hcl
import numpy as np

def test_struct_unsigned_field():
    hcl.init()
    rshape = (1,)
    stype = hcl.Struct({"x": hcl.UInt(4), "y": hcl.UInt(4)})
    def kernel():
        r = hcl.compute(rshape, lambda _:0, dtype=hcl.Int(32))
        a = hcl.scalar(12, "a", dtype=stype).v
        with hcl.if_(a.x == 12):
            r[0] = 1
        return r
    #
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    """
    hcl_res = hcl.asarray(np.zeros(rshape, dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)
    np_res = hcl_res.asnumpy()
    golden = np.asarray([1], dtype=np.uint32)
    assert np.array_equal(golden, np_res)
    """

test_struct_unsigned_field()