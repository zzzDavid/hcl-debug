// constant definition and function declaration
#include "ap_int.h"
#include "ap_fixed.h"

#define N 16

typedef ap_int<32> arg1_t;
typedef ap_int<32> arg2_t;
typedef ap_int<32> res_t;

void kernel(arg1_t A[N], arg2_t x[N], res_t y[N]);