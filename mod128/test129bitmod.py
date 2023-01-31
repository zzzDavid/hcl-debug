import heterocl as hcl

def test_mod_ui():
    hcl.init()

    def kernel():
        x = hcl.scalar(19, "x", dtype="uint128")
        y = hcl.scalar(5, "y", dtype="uint128")
        z = hcl.scalar(0, "z", dtype="uint128")
        z.v = (x.v + 5 - y.v) % z.v
    
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    f = hcl.build(s)
    f()

test_mod_ui()