import heterocl as hcl
import numpy as np

bs = 4
ic, oc = 16, 16
ih, iw = 8, 8
kh, kw = 2, 2
stride = 1
oh, ow = (ih - kh) // stride + 1, (iw - kw) // stride + 1
dtype = hcl.Float()


def test_avgpool_nchw():
    hcl.init(dtype)
    A = hcl.placeholder((bs, ic, ih, iw))

    def avgpool(A):
        rh = hcl.reduce_axis(0, kh)
        rw = hcl.reduce_axis(0, kw)
        B = hcl.compute(
            (bs, oc, oh, ow),
            lambda n, c, h, w: hcl.sum(
                A[n, c, h * stride + rh, w * stride + rw],
                axis=[rh, rw],
                dtype=dtype,
            ) / (kh * kw),
            name="B",
            dtype=dtype,
        )
        return B

    s = hcl.create_schedule([A], avgpool)
    B = avgpool.B
    LB = s.reuse_at(A, s[B], B.axis[2])
    WB = s.reuse_at(LB, s[B], B.axis[3])
    # print(hcl.lower(s))
    # with open("reuse_at_avgpool_nchw.mlir", "w") as f:
    #     f.write(str(s.device_module))

    f = hcl.build(s)

    np_A = np.random.random((bs, ic, ih, iw))
    np_C = np.zeros((bs, oc, oh, ow), dtype="float")

    for n in range(0, bs):
        for c in range(0, oc):
            for y in range(0, oh):
                for x in range(0, ow):
                    for rh in range(0, kh):
                        for rw in range(0, kw):
                            np_C[n][c][y][x] += (
                                np_A[n][c][y * stride + rh][x * stride + rw]
                            ) / (kh * kw)

    hcl_A = hcl.asarray(np_A, dtype=dtype)
    hcl_C = hcl.asarray(np_C, dtype=dtype)

    f(hcl_A, hcl_C)
    # print(np_C, hcl_C.asnumpy())

    assert np.allclose(np_C, hcl_C.asnumpy())
    print("Passed!")


if __name__ == "__main__":
    test_avgpool_nchw()