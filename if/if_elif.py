import heterocl as hcl

def kernel():
    cond_a = hcl.scalar(0, "cond_a", dtype=hcl.UInt(16))
    cond_b = hcl.scalar(1, "cond_b", dtype=hcl.UInt(16))
    with hcl.if_(cond_a.v == 0):
        pass
    with hcl.elif_(cond_b.v == 0):
        pass
    return

def kernel(a, b, r):
    with hcl.if_(a.v == 0):
        r[0] = 1
    with hcl.elif_(a.v == 1):
        r[0] = 2
        with hcl.if_(b.v == 1):
            r[0] = 3
    with hcl.else_():
        r[0] = 4

a = hcl.placeholder((1,), name="a")
b = hcl.placeholder((1,), name="b")
r = hcl.placeholder((1,), name="r")
s = hcl.create_schedule([a, b, r], kernel)
print(s.ast)
hcl.lower(s)