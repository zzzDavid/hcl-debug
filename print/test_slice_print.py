import heterocl as hcl
import numpy as np

def test():                
    hcl.init()
    def kernel():
        a96 = hcl.scalar(0, "a96", 'uint96')
        a96.v[ 0:32] = 3735928545
        a96.v[32:64] = 3735928546
        a96.v[64:96] = 3735928547
        #
        # hcl.print(a96.v[ 0:32], "h: %d\n") 
        # hcl.print(a96.v[32:64], "h: %d\n") 
        #
        # hcl.print((a96.v>>64) & 0xffffffff, "h: %d\n")
        # hcl.print(a96.v[64:96], "h: %d\n")
        #
        r = hcl.compute((3,), lambda i: 0, dtype=hcl.UInt(32))
        r[0] = a96.v[ 0:32]
        r[1] = a96.v[32:64]
        r[2] = a96.v[64:96]
        return r
    s = hcl.create_schedule([], kernel)
    hcl_res = hcl.asarray(np.zeros((3,), dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)
    print(hcl_res.asnumpy())

test()