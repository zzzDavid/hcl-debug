import heterocl as hcl
import hcl_mlir
import numpy as np

def test_schedule_no_return():
    hcl.init()
    A = hcl.placeholder((10, 10), name="A")
    # B = hcl.placeholder((10, 10), name="B")

    def algorithm(A):
        # def kernel(x):
            # B[x] = A[x] + 1
        # hcl.update(B, lambda x: A[x] + 1)
        # hcl.mutate(A.shape, kernel, name="mutate_stage")
        return hcl.compute(A.shape, lambda x, y: A[x][y] + 1, name="B")

    s = hcl.create_schedule([A], algorithm)
    print(s.itmd)
    print(s.device_module)
    f = hcl.build(s)

    _A = hcl.asarray(np.random.randint(100, size=(10, 10)), dtype=hcl.Int(32))
    _B = hcl.asarray(np.zeros((10, 10)), dtype=hcl.Int(32))

    f(_A, _B)

    _A = _A.asnumpy()
    _B = _B.asnumpy()

    for i in range(10):
        for j in range(10):
            assert _B[i][j] == _A[i][j] + 1
    
    print("test_schedule_no_return passed")


def test_conv2D():
    hcl.init()
    A = hcl.placeholder((10, 10))
    r = hcl.reduce_axis(0, 3)
    c = hcl.reduce_axis(0, 3)
    B = hcl.compute((8, 8), lambda y, x: hcl.sum(A[y+r, x+c], axis=[r, c]))
    s = hcl.create_schedule([A, B])
    LB = s.reuse_at(A, s[B], B.axis[0])
    print(s.itmd)
    print(s.device_module)
    f = hcl.build(s)

    np_A = np.random.randint(0, 10, size=(10, 10))
    np_B = np.zeros((8, 8), dtype="int")
    np_C = np.zeros((8, 8), dtype="int")

    for y in range(0, 8):
        for x in range(0, 8):
            for r in range(0, 3):
                for c in range(0, 3):
                    np_C[y][x] += np_A[y+r][x+c]

    hcl_A = hcl.asarray(np_A)
    hcl_B = hcl.asarray(np_B)

    f(hcl_A, hcl_B)

    np_B = hcl_B.asnumpy()
    print("np_B", np_B)
    print("np_C", np_C)
    assert np.array_equal(np_B, np_C)


def test_conv2D_lb():
    hcl.init()
    A = hcl.placeholder((10, 10))
    r = hcl.reduce_axis(0, 3)
    c = hcl.reduce_axis(0, 3)
    B = hcl.compute((8, 8), lambda y, x: hcl.sum(A[y+r, x+c], axis=[r, c]))
    s = hcl.create_schedule([A, B])
    LB = s.reuse_at(A, s[B], B.axis[0])
    print(s.itmd)
    print(s.device_module)
    f = hcl.build(s)

    np_A = np.random.randint(0, 10, size=(10, 10))
    np_B = np.zeros((8, 8), dtype="int")
    np_C = np.zeros((8, 8), dtype="int")

    for y in range(0, 8):
        for x in range(0, 8):
            for r in range(0, 3):
                for c in range(0, 3):
                    np_C[y][x] += np_A[y+r][x+c]

    hcl_A = hcl.asarray(np_A)
    hcl_B = hcl.asarray(np_B)

    f(hcl_A, hcl_B)

    np_B = hcl_B.asnumpy()
    print("np_B", np_B)
    print("np_C", np_C)
    assert np.array_equal(np_B, np_C)

def test_reuse_blur_x_y():
    hcl.init()
    A = hcl.placeholder((10, 10), "A")
    B = hcl.compute((8, 8), lambda y, x: A[y, x] + A[y+1, x+1] + A[y+2, x+2], "B")
    s = hcl.create_schedule([A, B])
    RB_y = s.reuse_at(A, s[B], B.axis[0], "RB_y")
    RB_x = s.reuse_at(RB_y, s[B], B.axis[1], "RB_x")
    f = hcl.build(s)

    np_A = np.random.randint(0, 10, size=(10, 10))
    np_B = np.zeros((8, 8), dtype="int")
    np_C = np.zeros((8, 8), dtype="int")

    for y in range(0, 8):
        for x in range(0, 8):
            np_C[y][x] = np_A[y][x] + np_A[y+1][x+1] + np_A[y+2][x+2]

    hcl_A = hcl.asarray(np_A, dtype=hcl.Int(32))
    hcl_B = hcl.asarray(np_B, dtype=hcl.Int(32))

    f(hcl_A, hcl_B)

    np_B = hcl_B.asnumpy()

    assert np.array_equal(np_B, np_C)

def test_pipeline():
    hcl.init()
    initiation_interval = 4
    a = hcl.placeholder((10, 20))
    b = hcl.placeholder((10, 20))
    c = hcl.compute(a.shape, lambda i, j: a[i, j] + b[i, j])
    s = hcl.create_schedule([a, b])
    s[c].pipeline(c.axis[0], initiation_interval)
    ir = hcl.lower(s)
    pipeline_hint_str = "pipeline_ii = " + str(initiation_interval)
    assert pipeline_hint_str in str(ir)

def test_fuse():
    hcl.init()
    a = hcl.placeholder((10, 20, 30, 40))
    b = hcl.placeholder((10, 20, 30, 40))
    c = hcl.compute(a.shape, lambda i, j, k, l: a[i, j, k, l] + b[i, j, k, l])
    s = hcl.create_schedule([a, b])
    s[c].fuse(c.axis[1], c.axis[2])
    ir = hcl.lower(s)
    assert "_fused" in str(ir)

def test_reorder():
    def algo():
        hcl.init()
        a = hcl.placeholder((10, 20, 30, 40), name="a")
        b = hcl.placeholder((10, 20, 30, 40), name="b")
        c = hcl.compute(a.shape, lambda i, j, k, l: a[i, j, k, l] + b[i, j, k, l], name="c")
        return a, b, c

    # axes are consecutive
    def test_case_1():
        a, b, c = algo()
        s = hcl.create_schedule([a, b])
        s[c].reorder(c.axis[2], c.axis[1])
        ir = hcl.lower(s)
        loops = hcl_mlir.get_affine_loop_nests(s.device_top)[0]
        assert "i" in str(loops[0]["name"])
        assert "0 to 10" in str(loops[0]["body"])
        assert "k" in str(loops[1]["name"])
        assert "0 to 30" in str(loops[1]["body"])
        assert "j" in str(loops[2]["name"])
        assert "0 to 20" in str(loops[2]["body"])
        assert "l" in str(loops[3]["name"])
        assert "0 to 40" in str(loops[3]["body"])

    # axes are not consecutive
    def test_case_2():
        a, b, c = algo()
        s = hcl.create_schedule([a, b])
        s[c].reorder(c.axis[3], c.axis[0])
        ir = hcl.lower(s)
        loops = hcl_mlir.get_affine_loop_nests(s.device_top)[0]
        assert "l" in str(loops[0]["name"])
        assert "0 to 40" in str(loops[0]["body"])
        assert "j" in str(loops[1]["name"])
        assert "0 to 20" in str(loops[1]["body"])
        assert "k" in str(loops[2]["name"])
        assert "0 to 30" in str(loops[2]["body"])
        assert "i" in str(loops[3]["name"])
        assert "0 to 10" in str(loops[3]["body"])

    test_case_1()
    test_case_2()

test_reorder()