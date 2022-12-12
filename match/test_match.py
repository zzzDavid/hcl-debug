import heterocl as hcl

def test_match():
    hcl.init(hcl.Float(32))
    def kernel(A, B):
        C = hcl.compute(A.shape, lambda *args : 0, "C")
        D = hcl.compute(A.shape, lambda *args: 0, "D")
        with hcl.for_(0, 10, tag="Super") as i:
            with hcl.for_(0, 10) as j:
                # Unrealized conversion index -> f32
                # hcl.update(C, lambda *args: i*A[args] + j*D[args], name="update_C")
                hcl.update(C, lambda *args: A[args] + D[args], name="update_C")
        def subfunc(D):
            hcl.update(D, lambda *args: D[args] + 1, name="update_D")
            return

        subfunc(D)
        return C
    
    A = hcl.placeholder((10, 10))
    B = hcl.placeholder((10, 10))
    s = hcl.customize([A, B], kernel)
    
    # Global search
    C_stages = hcl.match(kernel, r'.*C')
    # [kernel.C, kernel.Super.update_C]
    print([s.name for s in C_stages])

    # Search in a function
    update_stages = hcl.match(kernel.subfunc, r'update_.+')
    # [kernel.subfunc.update_D]
    print([s.name for s in update_stages])

    # Search in a stage
    update_stages = hcl.match(kernel.Super, r'update_.+')
    # [kernel.Super.update_C]
    print([s.name for s in update_stages])

    # Search with lambda function
    update_stages = hcl.match(kernel, lambda s: s.name.startswith('update_'))
    # [kernel.Super.update_C, kernel.subfunc.update_D]
    print([s.name for s in update_stages])

test_match()
