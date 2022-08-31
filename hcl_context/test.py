import heterocl as hcl

def hclctxt():
    from heterocl.schedule import Schedule
    if Schedule._TopFunction is not None:
        return True
    else:
        return False
 
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
    print("using `add` as regular Python function, the result is: ")
    print(regular())
    s = hcl.create_schedule([], kernel)
    print("using `add` in HeteroCL context, the IR is: ")
    print(hcl.lower(s))
