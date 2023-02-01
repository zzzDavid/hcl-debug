import heterocl as hcl

def load(instr):
    memory_type = hcl.scalar(instr[7:9], name="memory_type").v
    x_size = hcl.scalar(instr[64:80], name="y_size")
    res = hcl.scalar(0, name="res")
    with hcl.if_(x_size.v == 0):
        res.v = 1
    with hcl.elif_(memory_type == 0):
        res.v = 2
    with hcl.elif_(memory_type == 1):
        res.v = 3
    return

def kernel(instr):
    with hcl.for_(0, 10, tag='i') as i:
        load(instr[i])

    
instr = hcl.placeholder((10,))
s = hcl.create_schedule([instr], kernel)
print(hcl.lower(s))