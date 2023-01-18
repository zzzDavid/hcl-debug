import heterocl as hcl

def kernel(a, x):
    with hcl.for_(0, 10) as i:
        # v1 = hcl.scalar(i * 64, "v1")
        with hcl.if_(i > 5):
            v2 = hcl.scalar(i * 64 + 1, "v2")
        with hcl.else_():
            v2 = hcl.scalar(i * 64 + 2, "v2")

a = hcl.placeholder((1,), "a")
x = hcl.placeholder((1,), "x")
s = hcl.create_schedule([a, x], kernel)
print(hcl.lower(s))