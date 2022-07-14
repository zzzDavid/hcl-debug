"""
Number Theoretic Transform Example

Copyright © Intel Corporation.

"""

import heterocl as hcl

def hcl_ext_alloc(shape, name, dtype, init=0):
    """
    Utility API to express the intent of creating a temporary tensor.
    """
    # why is this different from placeholder?
    return hcl.compute(shape, lambda *i: init, dtype=dtype, name=f"alloc:{name}")

def hcl_ext_scalar(init, name, dtype):
    """
    Override HCL scalar API to require all parameters.
    """
    return hcl.scalar(init, name, dtype)

def hcl_ext_mod(a, b, pos=0):
    """
    wrapper for modulo operator to make it easier to change the behavior globally (if needed)
    Parameters:
    ------------
    a : dividend
    b : divisor
    pos : flag (default=0) to force a positive modulo result
    """
    m = hcl.scalar(a % b, "m", dtype=a.dtype)
    if pos:
        m.v = hcl.select(m < 0, m + b, m)
    return m.v

def butterfly_map(N):
    """
    Compute butterfly mapping for NNT transform.
    Parameters:
    ----------
    N : Number of entries, N is a power of 2.

    Returns: Tuple of (stages, mapping) where stages is the number of stages in the
    butterfly computation (equal to log2(N)) and mapping is the input re-mapping needed
    for Cooley-Tukey algorithm.
    """
    stages = N.bit_length() - 1
    assert 1 << stages == N, "Sequence length is not a power of 2"

    def reverse(x, bits):
        y = 0
        for i in range(bits):
            y = (y << 1) | (x & 1)
            x >>= 1
        return y

    P = list(range(N))
    for i in range(N):
        j = reverse(i, stages)
        if i < j:
            P[i], P[j] = P[j], P[i]
    return (stages, P)

def fwd_cooley_tukey(A, ω, M):
    """
    Imperative style HCL model for forward NTT transformation using the Cooley-Tukey
    algorithm.  Since for a given tensor size the butterfly network is fixed, define the
    butterfly "swizzling" at schedule creation time and the generated code simply has the
    immediate remapping of the inputs.

    Parameters
    --------------
    A  : Input tensor. shape=(N,)
    ω  : Pre-computed Forward ω factors. shape=(N//2,)
    M  : Coefficient modulo. shape=(1,)

    Returns: Forward transformed tensor. shape=(N,)
    """
    (N,) = A.shape
    assert ω.shape == (N//2,), f"ω.shape={ω.shape}, expecting ({N//2},)"
    assert M.shape == (1,) or M.shape == ()

    # schedule creation time ...
    (stages, bmap) = butterfly_map(N)
    A_b = hcl_ext_alloc(A.shape, "A_b", dtype=A.dtype)
    for i in range(len(bmap)):
        A_b[i] = A[bmap[i]]

    size = hcl_ext_scalar(1, "size", dtype=hcl.UInt(32))
    half = hcl_ext_scalar(1, "half", dtype=hcl.UInt(32))
    step = hcl_ext_scalar(N, "step", dtype=hcl.UInt(32))
    k = hcl_ext_scalar(0, "k", dtype=hcl.UInt(32))
    e = hcl_ext_scalar(0, "e", dtype=hcl.UInt(32))
    l = hcl_ext_scalar(0, "l", dtype=A.dtype)
    r = hcl_ext_scalar(0, "r", dtype=A.dtype)
    N = hcl_ext_scalar(N, "N", dtype=hcl.UInt(32))

    t1 = hcl_ext_scalar(0, "t1", dtype=A.dtype)
    t2 = hcl_ext_scalar(0, "t2", dtype=A.dtype)
    with hcl.for_(0, stages):
        half.v = size.v
        size.v = size.v << 1
        step.v = step.v >> 1
        # hcl.print ((size,half,step), "hcl: %lld %lld %lld\n")
        #with hcl.for_(0, N, size) as i:  # size must be an integer
        i = hcl.scalar(0,"i",dtype=hcl.UInt(32))
        # with hcl.while_(i.v < size.v):
        with hcl.while_(i.v < N.v):
            k.v = 0
            with hcl.for_(i.v, i.v + half.v) as b:
                e.v = b + half.v
                l.v = A_b[b]
                r.v = (A_b[e.v] * ω[k.v]) %  M.v
                t1.v = (l.v + r.v) % M.v
                # the M+ is to make sure we don't get a negative l-r value ...
                t2.v = (M + l.v - r.v) % M.v
                A_b[b] = t1.v
                A_b[e.v] = t2.v
                # hcl.print((size,i,b,t1,e,t2), "%lld.%lld.%lld=%lld %lld=%lld\n")
                k.v += step.v
            i.v += size.v
    return A_b
