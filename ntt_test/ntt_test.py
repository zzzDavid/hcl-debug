"""
Number Theoretic Transform Example

Copyright © Intel Corporation.

"""

import heterocl as hcl
import numpy as np
from sympy.ntheory import isprime
from sympy.ntheory.residue_ntheory import nthroot_mod

import ntt

def find_primitive_nth_root_of_unity(N, M):
    """
    Find the smallest primitive Nth root of unity modulo M that is ≠ 1.
    A primitive Nth root of unity is a number ω ∈ (0, M) such that ωᴺ ≡ 1 mod M
    and ∄ i ∈ (0, N) such that ωⁱ ≡ 1 mod M.
    If the modulus is prime a primitive must exists.

    Arguments:
    N ∈ ℕ, N > 0, the degree of the root
    M ∈ ℕ, M > 0, the modulus, a prime number
    """
    assert isprime(M)
    nth_roots = nthroot_mod(1, N, M, all_roots=True)[1:]
    for nth_root in nth_roots:
        if all([pow(nth_root, i, M) != 1 for i in range(1, N)]):
            return nth_root
    else:
        raise ValueError("No primitive root for {N}, {M}: you are toast!")

def random_data(N, M, count):
    # could use a generator as well ..
    d = []
    for i in range(count):
        d.append([np.random.randint(0, M) for i in range(N)])
    return d

# Reference
def reverse_bits(x, bits):
    # test with sympy.ibin
    y = 0
    for i in range(bits):
        y = (y << 1) | (x & 1)
        x >>= 1
    return y

def reverse_bit_index(P, bits):
    """
    Return a list with bit-reversed indexing of P.
    Arguments:
    P     : input list
    bits  : number of bits to consider when computing bit-reversed value

    Returns:
    R     : List with contents of P in bit-reversed index order
    """
    R = list(P)   # not in-place for now
    for i in range(len(P)):
        j = reverse_bits(i, bits)
        if i < j:
            R[i], R[j] = R[j], R[i]
    return R

def cooley_tukey(S, N, M, ω):
    """
    Cooley-Tukey radix-2, in-place algorithm for NTT transform.
    Complexity O(N log N)

    Arguments:
    S, sequence of N positive integers i ∈ [0, M)
    N ∈ ℕ, N length of sequence P, N > 1, a power of two
    M, modulus, M > N
    W, working modulus, prime, W = kN + 1, k ≥ 1, W ≥ M,
    Dirichlet guarantees that ∀ N, M ∃ k : W is prime
    """
    P = list(S)  # not in-place for now
    stages = N.bit_length() - 1
    assert 1 << stages == N, "Sequence length is not a power of 2"

    P = reverse_bit_index(P, stages)

    size = 2
    while size <= N:  # logN ≡ stages, rewrite for efficiency
        half = size >> 1
        step = N // size
        for i in range(0, N, size):
            k = 0
            for b in range(i, i + half):  # Butterfly
                e = b + half
                l = P[b]
                # print(f"e: {e}, k: {k}, b: {b}, half: {half}, i: {i}, size: {size}")
                r = P[e] * ω[k]
                P[b] = (l + r) % M
                P[e] = (l - r) % M
                k += step
        size <<= 1
    return P


def test_fwd_cooley_tukey():
  dtype = 'uint32'
  # TODO(Niansong): allow string type in hcl.asarray
  dtype = hcl.UInt(32)
  hcl.init(dtype)

  N, M = 8, 17

  A_hcl = hcl.placeholder((N,), "A", dtype)
  ω_hcl = hcl.placeholder((N // 2,), "omega", dtype)
  M_hcl = hcl.placeholder((1,), "M", dtype)
  s = hcl.create_schedule([A_hcl, ω_hcl, M_hcl], ntt.fwd_cooley_tukey)
#   print(hcl.lower(s))
#   with open("revised-cooley-tucky.mlir", "w") as f:
#     f.write(str(hcl.lower(s)))
  f_hcl = hcl.build(s)

  ω = find_primitive_nth_root_of_unity(N, M)
  fomega = [pow(ω, +i, M) for i in range(N // 2)]
  testset = [list(range(N))] + random_data(N, M, 10)
  for a in testset:
    res_ref = cooley_tukey(a, N, M, fomega)
    res_hcl = hcl.asarray(np.zeros((N,)), dtype=dtype)

    # print("A:", a)
    # print("ω:", fomega)
    # print("M:", M)
    # print("ref:", res_ref)
    # break

    f_hcl(hcl.asarray(a, dtype=dtype),
          hcl.asarray(fomega, dtype=dtype),
          hcl.asarray([M], dtype=dtype),
          res_hcl)

    np.testing.assert_equal(res_ref, res_hcl.asnumpy())
    print("test passed")

if __name__ == '__main__':
  test_fwd_cooley_tukey()
