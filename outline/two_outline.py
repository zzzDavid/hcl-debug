import heterocl as hcl

def test_two_outline():
    hcl.init()

    def kernel(A):
        B = hcl.compute(A.shape, lambda *args: A[args] + 1, "B")
        C = hcl.compute(A.shape, lambda *args: B[args] + 1, "C")
        return C

    A = hcl.placeholder((10, 10), "A")
    s = hcl.create_schedule([A], kernel)
    s.outline(s[kernel.B])
    s.outline(s[kernel.C])
    print(hcl.lower(s))

test_two_outline()