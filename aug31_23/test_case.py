import allo
from allo.ir.types import int32, float32
import numpy as np

def test_library_higher_dimension_ops(enable_tensor):
    M = 5
    N = 4
    K = 3
    L = 2
    A = np.random.uniform(size=(M, K, L)).astype(np.float32)
    B = np.random.uniform(size=(N, K)).astype(np.float32)
    C = np.random.uniform(size=(N,)).astype(np.float32)

    def kernel(
        A: float32[M, K, L], B: float32[N, K], C: float32[N]
    ) -> float32[M, L * N]:
        output1 = allo.transpose(A, (-1, -2))
        output2 = allo.linear(output1, B, C)
        output = allo.view(output2, (5, 8))
        return output

    s = allo.customize(kernel, enable_tensor=enable_tensor)
    mod = s.build()
    outp = mod(A, B, C)
    np_outp = kernel(A, B, C)
    np.testing.assert_allclose(outp, np_outp, rtol=1e-5)
    
if __name__ == "__main__":
    # test_library_higher_dimension_ops(True)
	test_library_higher_dimension_ops(False)