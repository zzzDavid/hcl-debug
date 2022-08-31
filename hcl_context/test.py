import heterocl as hcl

# def hclctxt():
#     from heterocl.schedule import Schedule
#     if Schedule._TopFunction is not None:
#         return True
#     else:
#         return False

def hclctxt():
    from hcl_mlir import GlobalInsertionPoint
    if len(GlobalInsertionPoint.ip_stack) == 0:
        return False
    else:
        return True

# def hclctxt():
#     from heterocl.schedule import Schedule
#     import ipdb; ipdb.set_trace()
#     if len(Schedule._CurrentStage) > 0:
#         return True
#     else:
#         return False
 
def add(a, b):
    if hclctxt():
        (a, b) =  (a.v, b.v)
    return a + b

# use "add" in HeteroCL context
def kernel():
    a = hcl.scalar(1)
    b = hcl.scalar(2)
    c = hcl.scalar(0)
    c.v = add(a, b)
    return 

# use "add" as regular Python function
def regular():
    a = 1
    b = 2
    c = add(a, b)
    return c

if __name__ == "__main__":
    s = hcl.create_schedule([], kernel)
    print("using `add` in HeteroCL context, the IR is: ")
    print(hcl.lower(s))
    print("using `add` as regular Python function, the result is: ")
    print(regular())
