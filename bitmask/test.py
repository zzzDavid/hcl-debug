import heterocl as hcl
import numpy as np
def test_mask64():
    hcl.init()
    def kernel():
        v = hcl.scalar(0, "v", hcl.UInt(65))
        v.v = v.v & hcl.cast(hcl.UInt(65), 0xffff_ffff_ffff_ffff_ffff)
        #
        r = hcl.compute((4,), lambda i: 0, dtype=hcl.UInt(32))
        return r
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    hcl_res = hcl.asarray(np.zeros((4,), dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)

test_mask64()