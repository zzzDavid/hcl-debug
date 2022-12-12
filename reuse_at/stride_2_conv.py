import heterocl as hcl
import numpy as np


def test_conv2D_lb_wb_stride_2():
    hcl.init()
    A = hcl.placeholder((10, 10))
    r = hcl.reduce_axis(0, 3)
    c = hcl.reduce_axis(0, 3)
    B = hcl.compute((4, 4), lambda y, x: hcl.sum(A[y * 2 + r, x * 2 + c], axis=[r, c]))
    s = hcl.create_schedule([A])
    LB = s.reuse_at(A, s[B], B.axis[0])
    WB = s.reuse_at(LB, s[B], B.axis[1])
    f = hcl.build(s)

    np_A = np.random.randint(0, 10, size=(10, 10))
    np_B = np.zeros((4, 4), dtype="int")
    np_C = np.zeros((4, 4), dtype="int")

    for y in range(0, 4):
        for x in range(0, 4):
            for r in range(0, 3):
                for c in range(0, 3):
                    np_C[y][x] += np_A[y*2+r][x*2+c]

    hcl_A = hcl.asarray(np_A)
    hcl_B = hcl.asarray(np_B)

    f(hcl_A, hcl_B)
    np_B = hcl_B.asnumpy()
    assert np.array_equal(np_B, np_C)

test_conv2D_wb()