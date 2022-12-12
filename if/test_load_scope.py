import heterocl as hcl
import numpy as np

def load(instr):
    memory_type = hcl.scalar(0, name="memory_type")
    x_size = hcl.scalar(1, name="y_size")
    x = x_size.v
    with hcl.if_(x == 1):
        x_size.v = 2
    with hcl.elif_(x == 0):
        x_size.v = 3
    with hcl.elif_(x == 3):
        x_size.v = 4
    return

def kernel(instr):
    with hcl.for_(0, 10, tag='i') as i:
        load(instr[i])


# instr = hcl.placeholder((10,))
# s = hcl.create_schedule([instr], kernel)
# print(hcl.lower(s))


def test_recexecute():
    hcl.init()
    rshape = (1,)

    def kernel():
        inst_id = hcl.scalar(0, "inst_id", dtype=hcl.UInt(16)).v
        with hcl.if_(inst_id == 0):
            hcl.print((), "match\n")
        with hcl.if_(inst_id == 1):
            hcl.print((), "match\n")
        r = hcl.compute(rshape, lambda _:0, dtype=hcl.UInt(32))
        return r
    #
    s = hcl.create_schedule([], kernel)
    print(hcl.lower(s))
    hcl_res = hcl.asarray(np.zeros(rshape, dtype=np.uint32), dtype=hcl.UInt(32))
    f = hcl.build(s)

test_recexecute()