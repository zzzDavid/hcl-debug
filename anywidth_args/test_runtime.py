import heterocl as hcl
import numpy as np

# here's the weird part
# hcl.Int(17) doesn't work
# it seems that whenever I go beyond 2 bytes, it doesn't work
hcl.init(hcl.Int(20))

def kernel(A, B):
    # B = hcl.compute(A.shape, lambda *args: A[args] + 1, "B")
    # return B
    hcl.update(B, lambda *args: A[args] + 1)
    hcl.print(A)
    hcl.print(B)

A = hcl.placeholder((10, 10), "A")
B = hcl.placeholder((10, 10), "B")
s = hcl.customize([A, B], kernel)
f = hcl.build(s)
np_A = np.random.randint(-10, 10, (10, 10))
hcl_A = hcl.asarray(np_A)
hcl_B = hcl.asarray(np.zeros((10, 10)))
f(hcl_A, hcl_B)
# np_B = hcl_B.asnumpy()
# print(np_B)