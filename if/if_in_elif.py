from ordered_set import T
import heterocl as hcl
import numpy as np

def test_if_elif_scope():
    hcl.init()
    rshape = (2,)
    def kernel():
        r = hcl.compute(rshape, lambda _:0, dtype=hcl.Int(32))
        a = hcl.scalar(2, "a", dtype='uint32')
        b = hcl.scalar(1, "b", dtype='uint32')
        r[1] = 4

        with hcl.if_(a.v == 0):
            r[0] = 1
        with hcl.elif_(a.v == 1):
            r[0] = 2
            with hcl.if_(b.v == 1):
                r[0] = 3
        with hcl.else_():          # this else gets scoped with if_(b.v==1) 
            r[0] = 4
        return r
    #
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    hcl_res = hcl.asarray(np.zeros(rshape, dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)
    np_res = hcl_res.asnumpy()
    assert np_res[0] == np_res[1]
    print("pass")

test_if_elif_scope()