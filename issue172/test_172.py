import heterocl as hcl
import numpy as np

def thistest_int_loadop():
    hcl.init()
    def kernel():
        v = hcl.scalar(-1, "v", hcl.UInt(128))
        m = hcl.scalar(0xff, "v", hcl.UInt(8))
        v.v = (0xffff) & m.v
        # v.v = m.v & (0xffff)
        #
        r = hcl.compute((4,), lambda i: 0, dtype=hcl.UInt(32))
        return r
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    hcl_res = hcl.asarray(np.zeros((4,), dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)
    f(hcl_res)

# thistest_int_loadop()


def test_rhs_binaryop():
    hcl.init()
    def kernel():
        v = hcl.scalar(5, "v")
        res = hcl.compute((11,), lambda i: 0, dtype=hcl.Int(32))
        res[0] = 1 + v.v
        res[1] = 1 - v.v
        res[2] = 1 * v.v
        res[3] = 52 / v.v
        res[4] = 6 // v.v
        res[5] = 6 % v.v
        res[6] = 1 << v.v
        res[7] = 64 >> v.v
        res[8] = 1 & v.v
        res[9] = 1 | v.v
        res[10] = 1 ^ v.v
        return res
    
    s = hcl.create_schedule([], kernel)
    f = hcl.build(s)
    hcl_res = hcl.asarray(np.zeros((11,), dtype=np.int32))
    f(hcl_res)
    np_res = np.zeros((11,), dtype=np.int32)
    np_res[0] = 1 + 5
    np_res[1] = 1 - 5
    np_res[2] = 1 * 5
    np_res[3] = 52 / 5
    np_res[4] = 6 // 5
    np_res[5] = 6 % 5
    np_res[6] = 1 << 5
    np_res[7] = 64 >> 5
    np_res[8] = 1 & 5
    np_res[9] = 1 | 5
    np_res[10] = 1 ^ 5
    assert np.array_equal(hcl_res.asnumpy(), np_res)

test_rhs_binaryop()