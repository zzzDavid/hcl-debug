
//===------------------------------------------------------------*- C++ -*-===//
//
// Automatically generated file for High-level Synthesis (HLS).
//
//===----------------------------------------------------------------------===//
#include <algorithm>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>
#include <hls_stream.h>
#include <math.h>
#include <stdint.h>
using namespace std;
void Stage_C(
  ap_int<32> v0[10][32],
  ap_int<32> v1[10][32],
  hls::stream< ap_int<32> > &v2 /* v2[10][32] */
) {	// L2
  #pragma HLS stream variable=v2 depth=320
  l_C_i: for (int i = 0; i < 10; i++) {	// L3
    l_j: for (int j = 0; j < 32; j++) {	// L4
      ap_int<32> v5 = v0[i][j];	// L5
      ap_int<32> v6 = v1[i][j];	// L6
      ap_int<32> v7 = v5 + v6;	// L7
      v2.write(v7); // v2[i][j] = v7;	// L8
    }
  }
}

void Stage_D(
  hls::stream< ap_int<32> > &v8 /* v8[10][32] */,
  ap_int<32> v9[10][32]
) {	// L13
  #pragma HLS stream variable=v8 depth=320
  l_D_i1: for (int i1 = 0; i1 < 10; i1++) {	// L14
    l_j1: for (int j1 = 0; j1 < 32; j1++) {	// L15
      ap_int<32> v12 = v8.read(); // v8[i1][j1];	// L16
      ap_int<32> v13 = v12 * 2;	// L18
      v9[i1][j1] = v13;	// L19
    }
  }
}

void top(
  ap_int<32> A_xcel[10][32],
  ap_int<32> B_xcel[10][32],
  ap_int<32> v16[10][32]
) {	// L35
  #pragma HLS dataflow
  hls::stream< ap_int<32> > C /* C[10][32] */;	// L36
  #pragma HLS stream variable=C depth=320
  Stage_C(A_xcel, B_xcel, C);	// L37
  Stage_D(C, v16);	// L39
}

