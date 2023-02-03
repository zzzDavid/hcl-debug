import heterocl as hcl


def kernel(A, B):
    hcl.compute(A.shape, lambda *args: A[args] + B[args], "C")
    return

A = hcl.placeholder((10, 10), "A")
B = hcl.placeholder((10, 10), "B")
s = hcl.create_schedule([A, B], kernel)
print(hcl.lower(s))