import heterocl as hcl

def load(instr):
    memory_type = hcl.scalar(instr[7:9], name="memory_type").v
    x_size = hcl.scalar(instr[64:80], name="y_size")
    with hcl.if_(x_size.v == 0):
        pass
    with hcl.elif_(memory_type == 0):
        pass
    with hcl.elif_(memory_type == 1):
        pass
    return

def kernel(instr):
    with hcl.for_(0, 10, tag='i') as i:
        load(instr[i])

    
instr = hcl.placeholder((10,))
s = hcl.create_schedule([instr], kernel)
print(hcl.lower(s))