#ifndef KERNEL_H
#define KERNEL_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>

void top(int A[10][32], int B[10][32], int D[10][32]);

#endif // KERNEL_H