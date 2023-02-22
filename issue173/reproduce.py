import heterocl as hcl

def kernel():
    cond = hcl.scalar(0, "cond")
    val = hcl.scalar(0xFF0FF0FF, "val")
    res = hcl.scalar(1, "res")
    with hcl.while_(cond.v > 0):
        a, b = 0, 32
        res.v = val.v[a:b]
    with hcl.if_(cond.v > 0):
        res.v = val.v[a:b]
    return res

s = hcl.create_schedule([], kernel)
print(hcl.lower(s))