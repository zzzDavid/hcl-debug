import heterocl as hcl
import numpy as np


hcl.init(hcl.Int(64))

def kernel():
    cst_tensor = hcl.const_tensor(np.random.randint(-10, 10, (10, 10)), "cst_tensor")
    hcl.print(cst_tensor)

s = hcl.create_schedule([], kernel)
print(hcl.lower(s)  )
f = hcl.build(s)
f()