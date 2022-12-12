import heterocl as hcl

def test_add():
    A = hcl.placeholder((10,), "A", hcl.Int(32))
    B = hcl.placeholder((10,), "B", hcl.Int(32))
    def kernel(A, B):
        C = hcl.compute(A.shape, lambda x: A[x] + B[x], "C", dtype=hcl.Int(32))
        return C
    s = hcl.create_schedule([A, B], kernel)
    print(hcl.lower(s))

test_add()