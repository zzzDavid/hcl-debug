import heterocl as hcl
import numpy as np

def test_struct_uint():
    hcl.init()
    rshape = (1,)
    def kernel():
        stype = hcl.Struct({"x": 'uint8', "y": 'uint8'}) 
        ival = hcl.cast('uint16', 0)
        d = hcl.scalar(ival, "d", dtype=stype).v
        r = hcl.compute(rshape, lambda _:0, dtype=hcl.UInt(32))
        stype_nested = hcl.Struct({"x": 'uint8', "y": stype})
        d_nested = hcl.scalar(hcl.cast("uint24", ival), "d_nested", dtype=stype_nested)
        r[0] = d.x
        return r
    #
    s = hcl.create_schedule([], kernel)
    ir = str(s.device_module)
    with open("./struct_uint.mlir", "w") as f:
        f.write(ir)
    hcl_res = hcl.asarray(np.zeros(rshape, dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)
    np_res = hcl_res.asnumpy()
    golden = np.zeros(rshape, dtype=np.uint32)
    golden[0] = 0
    assert np.array_equal(golden, np_res)

test_struct_uint()