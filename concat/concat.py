import heterocl as hcl

# select has the potential issue of out of bound memory access
# this is a simple example to show the issue
# y ranges from 0 to 19, B is loaded without guarding condition
# so the memory access is out of bound (negative index)

A = hcl.placeholder((10, 10))
B = hcl.placeholder((10, 10))
def concat(A, B):
    C = hcl.compute((10, 20), lambda x, y: hcl.select(y < 10, A[x][y], B[x][y-10]), "C")
    return C

s = hcl.create_schedule([A, B], concat)
print(s.device_module)