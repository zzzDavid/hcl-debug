import heterocl as hcl

def kernel(A):
    B = hcl.compute(A.shape, lambda *args: A[args] + 1, "B")
    return B

A = hcl.placeholder((10, 32), "A")
s = hcl.create_schedule([A], kernel)
f = hcl.build(s)