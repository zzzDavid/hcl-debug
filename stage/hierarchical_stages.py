import heterocl as hcl

def test_multi_level_stage_acess():
    hcl.init(hcl.Float(32))
    def kernel(A, B):
        C = hcl.compute(A.shape, lambda *args : 0, "C")
        D = hcl.compute(A.shape, lambda *args: 0, "D")
        with hcl.for_(0, 10, tag="Super") as i:
            with hcl.for_(0, 10) as j:
                hcl.update(C, lambda *args: i*A[args] + j*D[args], name="update_C")
        def subfunc(D):
            # check if hcl.update is called in the top function
            # if not, attach subfunc to the function up one level
            # and then attach the update stage to the subfunc
            hcl.update(D, lambda *args: D[args] + 1, name="update_D")
            return

        subfunc(D)
        return C
    
    A = hcl.placeholder((10, 10))
    B = hcl.placeholder((10, 10))
    s = hcl.customize([A, B], kernel)
    print(hcl.lower(s))

    # Access top-level stages
    print(kernel.C)
    print(kernel.D)

    # Access substages
    # kernel.Super.update_C

    # Access stages in subfunctions
    # kernel.subfunc.update_D
    print(kernel.subfunc._stages)

test_multi_level_stage_acess()