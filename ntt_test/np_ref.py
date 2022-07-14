import numpy as np

if __name__ == "__main__":
    A = np.array([0, 1, 2, 3, 4, 5, 6, 7])
    omega = np.array([1, 2, 4, 8])
    M = np.array([17])

    A_b = np.array([0,0,0,0,0,0,0,0])
    A_b[0] = A[0]
    A_b[1] = A[4]
    A_b[2] = A[2]
    A_b[3] = A[6]
    A_b[4] = A[1]
    A_b[5] = A[5]
    A_b[6] = A[3]
    A_b[7] = A[7]

    size = 1
    half = 1
    step = 8
    k = 0
    e = 0
    l = 0
    r = 0
    t1 = 0
    t2 = 0
    for i in range(3):
        half = size
        size = size << 1
        step = step >> 1
        i = 0
        # while i < size:
        while i < 8:
            k = 0
            for b in range(i, i + half):
                e = b + half
                l = A_b[b]
                print(f"e: {e}, k: {k}, b: {b}, half: {half}, i: {i}, size: {size}")
                r = (A_b[e] * omega[k]) % M[0]
                t1 = (l + r) % M[0]
                t2 = (M[0] + l - r) % M[0]
                A_b[b] = t1
                A_b[e] = t2
                k += step
            # i += 1
            i += size
    print(A_b)
