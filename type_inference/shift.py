import heterocl as hcl
import numpy as np

def thistest_gather128():
    hcl.init()
    def kernel(a32):
        v = hcl.scalar(0, "x", dtype='uint128')
        addr = hcl.scalar(0, "addr", dtype='uint2')
        addr.v = addr.v << v.v
        v.v  = ( (a32[0] << (32*3))
                | (a32[1] << (32*2))
                | (a32[2] << (32*1))
                | (a32[3] << (32*0)))
        v0 = (v.v >>  0) & 0xFFFFFFFF
        v1 = (v.v >> 32) & 0xFFFFFFFF
        v2 = (v.v >> 64) & 0xFFFFFFFF
        v3 = (v.v >> 96) & 0xFFFFFFFF
        r = hcl.compute((4,), lambda i: 0, dtype=hcl.UInt(32))
        r[0] = v0
        r[1] = v1
        r[2] = v2
        r[3] = v3
        return r
    
    input_a32 = hcl.placeholder((4,), dtype=hcl.UInt(32))
    s = hcl.create_schedule([input_a32], kernel)
    hcl_input = hcl.asarray(np.array([50, 51, 52, 53], dtype=np.uint32), dtype=hcl.UInt(32))
    hcl_res = hcl.asarray(np.zeros((4,), dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_input, hcl_res)
    print(hcl_res.asnumpy()) # I got [4294967295          0          0          0]

thistest_gather128()