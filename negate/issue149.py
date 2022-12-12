import heterocl as hcl

def test_negate():

    def kernel():
        a = hcl.scalar(1, "a", dtype='int32')
        # a.v is i32, so the problem is with the negate operation
        a.v = -a.v 

    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))

test_negate()