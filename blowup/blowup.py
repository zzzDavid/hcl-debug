import os, psutil
import heterocl as hcl
import numpy as np


def test_blowup():
    hcl.init()

    def kernel():
        r = hcl.compute((1,), lambda i: 0, dtype=hcl.UInt(32))

        cnt = hcl.scalar(0, 'cnt', dtype='uint32')
        with hcl.while_(cnt.v < 100000):
            cnt.v = cnt.v + 1

            tmp = hcl.compute((8192,), lambda i:0, "tmp", dtype='uint32')
            r[0] = r[0] + tmp[0]

        return r

    s = hcl.create_schedule([], kernel)
    f = hcl.build(s)
    hcl_res = hcl.asarray(np.zeros((1,), dtype=np.uint32), dtype=hcl.UInt(32))
    f(hcl_res)

    process = psutil.Process(os.getpid())
    mb = process.memory_info().rss // (1024*1024)
    print(f"Mem usage (MB): {mb}")

test_blowup()