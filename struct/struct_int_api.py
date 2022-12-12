import heterocl as hcl

def test_struct_scalar_int():
    hcl.init()

    def kernel():
        stype = hcl.Struct({"x": hcl.Int(16), "y": hcl.Int(16)})
        xy = hcl.scalar(0x12, "xy", dtype=stype)

        # Assigning integer to a struct type scalar
        xy.set(0x1234) # recommended
        xy.v = 0x1234  # legal, deprecated

        # Use struct as an integer
        a = hcl.scalar(0)
        a.set(xy.as_int()) # recommended
        a.v = xy.as_int()  # legal, deprecated
        a.v = xy.v.as_int() # API error, .as_int() should be applied to scalar
        a.v = xy.v # Type error, .v is a struct type, should use .as_int()

    s = hcl.create_schedule([], kernel)

def test_struct_tensor_int():
    hcl.init()

    def kernel():
        stype = hcl.Struct({"x": hcl.Int(16), "y": hcl.Int(16)})
        xy = hcl.compute((10,), lambda x: 0x12, "xy", dtype=stype)

        # Assigning integer to a struct type scalar
        with hcl.for_(0, 10) as i:
            xy[i] = 0x1234  # recommended
            xy[i].set(0x1234) # API error, .set() is for scalar only

        # Use struct as an integer
        a = hcl.compute((10,), lambda x: 0)
        with hcl.for_(0, 10) as i:
            a[i] = xy[i].as_int() # recommended
            a[i].set(xy[i].as_int()) # API error, .set() is for scalar only

    s = hcl.create_schedule([], kernel)

def test_nested_struct():

    def kernel():
        stype = hcl.Struct({"x": hcl.Int(16), "y": hcl.Int(16)})
        A = hcl.compute((10,), lambda x: 0x12, "A", dtype=stype)
        b = hcl.scalar(0x34, "b", dtype=stype)
        b.set(A[0])
    
    s = hcl.create_schedule([], kernel)
