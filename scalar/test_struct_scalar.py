import numpy as np
import heterocl as hcl

def test_struct_scalar_twice():
    hcl.init()

    dt8='int8'
    dt32=hcl.Int(32)
    def kernel():
        stype = hcl.Struct({"x": dt8, "y": dt8})
        xy = hcl.scalar(0x12, "foo", dtype=stype).v

        stype2 = hcl.Struct({"a": dt8, "b": dt8})
        v = hcl.cast('int16', xy.x)
        ab = hcl.scalar(v, "ab", dtype=stype2).v                               

        r = hcl.compute((2,), lambda i: 0, dtype=dt32)
        with hcl.if_(xy.y > 0):    # add this "if" condition to the test case above ...
            r[0] = xy.y
            r[1] = ab.a
        return r
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    # ir = str(s.device_module)
    # with open("test_struct_scalar.mlir", "w") as f:
    #     f.write(ir)
    # hcl_res = hcl.asarray(np.zeros((2,), dtype=np.int32), dtype=dt32)
    # f = hcl.build(s)
    # f(hcl_res)
    # assert hcl_res.asnumpy()[1] == 0x12

test_struct_scalar_twice()