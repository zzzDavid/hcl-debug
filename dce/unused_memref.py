import heterocl as hcl
import numpy as np

def test_struct_scalar():
    hcl.init()
    def kernel():
        stype = hcl.Struct({"x": hcl.UInt(8), "y": hcl.UInt(8)})
        xy = hcl.scalar(0x12, "unused_memref", dtype=stype).v
        r = hcl.compute((2,), lambda i: 0, dtype=hcl.UInt(32))
        return r

    s = hcl.create_schedule([], kernel)
    hcl_res = hcl.asarray(np.zeros((2,), dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)
    np_res = hcl_res.asnumpy()
    golden = np.zeros((2,), dtype=np.uint32)
    assert np.array_equal(golden, np_res)
    print("test_struct_scalar passed")

test_struct_scalar()