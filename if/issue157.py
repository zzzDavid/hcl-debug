import heterocl as hcl
import numpy as np


def test_if_else_multiple():
    hcl.init()
    rshape = (1,)

    stype0 = hcl.Struct({"x": hcl.UInt(8), "y": hcl.UInt(64-8)})
    stype1 = stype0
    stype2 = stype0

    def kernel():
        inst_enc = hcl.scalar(0, "inst_enc", dtype='uint64')
        inst_id = hcl.scalar(0, "inst_id", dtype='uint16')
        inst_enc_v = inst_enc.v

        inst_lat = hcl.scalar(0, "inst_lat", dtype='uint16')

        tmp = hcl.scalar(0, "tmp", dtype=hcl.UInt(1))
        with hcl.if_(inst_lat.v <= 1):
            tmp.v = 1
        with hcl.if_(tmp.v != 0):
            exe_inst = hcl.scalar(inst_enc_v, "exe_inst", dtype='uint64')
            with hcl.if_(exe_inst.v == 0):
                inste = hcl.scalar(exe_inst.v, f"inste0", dtype=stype0).v
            with hcl.else_():
                with hcl.if_(exe_inst.v == 1):
                    inste = hcl.scalar(exe_inst.v, f"inste1", dtype=stype1).v

        r = hcl.compute(rshape, lambda _:0, dtype=hcl.Int(32))
        return r
    #
    s = hcl.create_schedule([], kernel)
    # print(hcl.lower(s))
    print(s.device_module)
    # hcl_res = hcl.asarray(np.zeros(rshape, dtype=np.uint32), dtype=hcl.UInt(32))
    # f = hcl.build(s)
    # f(hcl_res)
    # np_res = hcl_res.asnumpy()
    # golden = np.zeros(rshape, dtype=np.int32)
    # assert np.array_equal(golden, np_res)

test_if_else_multiple()