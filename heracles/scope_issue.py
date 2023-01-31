import heterocl as hcl

def test_double_mutate_call():
    hcl.init()
    def kernel():
        n = 8192
        nh = n // 2
        _arf = hcl.compute((10,10,n), lambda *_: 0, "arf", dtype='uint32')
        ain = hcl.compute((n,), lambda *_: 0, "ain", dtype='uint32')
        idx1 = hcl.scalar(0, "idx1", dtype='uint4')
        idx2 = hcl.scalar(0, "idx2", dtype='uint4')
        #
        arf = _arf[idx1.v][idx2.v]
        def outer(i):
            # actually any expression here will cause the error

            i64  = i * 64 + 199

            def inner(j, src, soffs):
                ain[j] = src[soffs+j]
            hcl.mutate((64,), lambda j: inner(j, arf, i64), "inner1")
            hcl.mutate((64,), lambda j: inner(j, arf, i64), "inner2")
        hcl.mutate((n//128,), lambda i: outer(i), "outer")
        #
        r = hcl.compute((2,), lambda i: ain[0], dtype=hcl.UInt(32))
        return r
    s = hcl.create_schedule([], kernel)
    hcl.lower(s)


def test_expr_as_ub():
    hcl.init()
    def kernel():
        n = 8192
        nh = n // 2
        src = hcl.compute((n,), lambda *_: 0, "src", dtype='uint32')
        dst = hcl.compute((n,), lambda *_: 0, "dst", dtype='uint32')
        #
        v = hcl.scalar(0, "v", dtype='uint128')
        count = hcl.scalar(1, "count", dtype='uint32').v
        factor = 4
        #
        src_off = hcl.scalar(0, "src_off", dtype='uint32').v
        dst_off = hcl.scalar(0, "dst_off", dtype='uint32').v
 
        def check(cond,msg,args):
            _cond = hcl.scalar(cond, "assert_cond", dtype='uint1')
            with hcl.if_(_cond.v == 0):
                strfmt="\n\nAssertion failed : "+msg+"\n\n"
                hcl.print(args, strfmt)
               
        check(src_off+count*factor <= src.shape[0],
                        f"copyN: {src.name} index (%d) > size ({src.shape[0]})\n",
                        (src_off+count*factor))
 
        def funA(i):
            dst[i] = 0
        hcl.mutate((count,), funA)
        #
        r = hcl.compute((2,), lambda i: 0, dtype=hcl.UInt(32))
        return r
    s = hcl.create_schedule([], kernel)
    hcl.lower(s)