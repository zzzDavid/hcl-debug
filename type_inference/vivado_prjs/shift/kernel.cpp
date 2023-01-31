#include "kernel.h"

void kernel(arg1_t A[N], arg2_t x[N], res_t y[N])
{
    for (int i = 0; i < N; i++)
    {
        y[i] = (A[i] << x[i]) + A[i];
    }
}