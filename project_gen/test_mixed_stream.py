import heterocl as hcl
import numpy as np
import os

def test_mixed_stream():
    # if os.system("which vivado_hls >> /dev/null") != 0:
    #     return 

    A = hcl.placeholder((10, 32), "A")
    B = hcl.placeholder((10, 32), "B")

    def kernel(A, B):
        C = hcl.compute(A.shape, lambda i, j: A[i][j] + B[i][j], "C")
        D = hcl.compute(C.shape, lambda i, j: C[i][j] * 2, "D")
        E = hcl.compute(C.shape, lambda i, j: D[i][j] * 3, "E")
        return E

    target = hcl.Platform.aws_f1
    s = hcl.create_schedule([A, B], kernel)

    s.to([A, B], target.xcel)
    s.to(kernel.D, target.host)
    s.to(kernel.C, s[kernel.D])

    target.config(compiler="vivado_hls", mode="csim", project='./test_mixed_stream')
    hcl.build(s, target)

test_mixed_stream()