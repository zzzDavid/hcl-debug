import heterocl as hcl
import numpy as np


def this():        
    hcl.init()
    def kernel():
        a96 = hcl.scalar(0, "a96", 'uint96')
        a96.v[ 0:32] = 3735928545
        a96.v[32:64] = 3735928546
        a96.v[64:96] = 3735928547
        #
        hcl.print(a96.v[ 0:32], "h: %d\n") 
        hcl.print(a96.v[32:64], "h: %d\n") 
        #
        hcl.print((a96.v>>64) & 0xffffffff, "h: %d\n")
        hcl.print(a96.v[64:96], "h: %d\n")
        #
        r = hcl.compute((2,), lambda i: 0, dtype=hcl.UInt(32))
        return r
    s = hcl.create_schedule([], kernel)
    hcl_res = hcl.asarray(np.zeros((2,), dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)

def test():
    hcl.init()
    def kernel():
        a96 = hcl.scalar(0, "a96", 'uint96')
        target_value = 3735928545
        base = 64
        # this doesn't work
        # now I know it's SetBitOp doesn't work with base > 64
        for i in range(32):
            bit = target_value & 1
            a96.v[base+i] = bit
            print(f"a96.v[{base+i}] = {bit}")
            target_value = target_value >> 1
        hcl.print(a96.v[base:base+32], "%d\n")
      
    s = hcl.create_schedule([], kernel)
    ir = str(hcl.lower(s))
    with open("./ir.mlir", "w") as f:
        f.write(ir)
    f = hcl.build(s)
    f()


# if we have a 96-bit 0 integer, would it work if 
# we set the 80th bit to 1?
def test_80th_bit():
    def kernel():
        a96 = hcl.scalar(0, "a96", 'uint96')
        a96.v[64] = 1
        a96.v[65] = 0
        a96.v[66] = 1

        # a96.v[64] = 1
        # a96.v[65] = 0
        # a96.v[66] = 0
        # a96.v[67] = 0
        # a96.v[68] = 0
        # a96.v[69] = 1
        # a96.v[70] = 1
        # a96.v[71] = 1
        # a96.v[72] = 0
        # a96.v[73] = 1
        # a96.v[74] = 1
        # a96.v[75] = 1
        # a96.v[76] = 1
        # a96.v[77] = 1
        # a96.v[78] = 0
        # a96.v[79] = 1
        # a96.v[80] = 1
        # a96.v[81] = 0
        # a96.v[82] = 1
        # a96.v[83] = 1
        # a96.v[84] = 0
        # a96.v[85] = 1
        # a96.v[86] = 0
        # a96.v[87] = 1
        # a96.v[88] = 0
        # a96.v[89] = 1
        # a96.v[90] = 1
        # a96.v[91] = 1
        # a96.v[92] = 1
        # a96.v[93] = 0
        # a96.v[94] = 1
        # a96.v[95] = 1
        hcl.print(a96.v[64:96], "%d\n")

    s = hcl.create_schedule([], kernel)
    ir = str(hcl.lower(s))
    with open("./ir.mlir", "w") as f:
        f.write(ir)
    f = hcl.build(s)
    f()

def test_shift_65():
    # I think shift 1 (i96) to the left 65 times is not working
    def kernel():
        a = hcl.scalar(1, "a", 'uint96')
        a.v = a.v << 65
        a.v = a.v ^ -1
        hcl.print(a.v[0:32], "%d\n")
        hcl.print(a.v[32:64], "%d\n")
        hcl.print(a.v[64:96], "%d\n")
    s = hcl.create_schedule([], kernel)
    # ir = str(hcl.lower(s))
    # with open("./ir.mlir", "w") as f:
    #     f.write(ir)
    f = hcl.build(s)
    f()

def test_longint_xor():
    def kernel():
        a = hcl.scalar(1, "a", 'uint96')
        a.v = a.v << 69
        b = hcl.scalar(-1, "b", 'uint96')
        a.v = a.v ^ b.v
        # hcl.print(a.v[0:32], "%d\n")
        # hcl.print(a.v[32:64], "%d\n")
        # hcl.print(a.v[64:96], "%d\n")
    s = hcl.create_schedule([], kernel)
    ir = str(hcl.lower(s))
    with open("./longintxor.mlir", "w") as f:
        f.write(ir)
    f = hcl.build(s)
    f()

if __name__ == "__main__":
    this()
    # test()
    # test_80th_bit()
    # test_shift_65()
    # test_longint_xor()