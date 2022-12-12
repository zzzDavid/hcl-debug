import heterocl as hcl

def kernel(A, B):
    D = hcl.compute((10, 10), lambda *args: A[args] + B[args], dtype=hcl.Int(32), name="D")
    C = hcl.compute((10, 10), lambda *args: (hcl.cast(hcl.UFixed(17,8), A[args]) + B[args]) + 1, "C")
    return C

A = hcl.placeholder((10, 10), "A", dtype=hcl.Int(32))
B = hcl.placeholder((10, 10), "B", dtype=hcl.Int(64))
s = hcl.create_schedule([A, B], kernel)
print(hcl.lower(s))