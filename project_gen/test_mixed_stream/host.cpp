
//===------------------------------------------------------------*- C++ -*-===//
//
// Automatically generated file for host
//
//===----------------------------------------------------------------------===//
// standard C/C++ headers
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <time.h>

// vivado hls headers
#include "kernel.h"
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_stream.h>

#include <ap_axi_sdata.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>
#include <hls_stream.h>
#include <math.h>
#include <stdint.h>

void Stage_E(
  ap_int<32> v0[10][32],
  ap_int<32> v1[10][32]
) {	// L24
  l_E_i: for (int i = 0; i < 10; i++) {	// L25
    l_j: for (int j = 0; j < 32; j++) {	// L26
      ap_int<32> v4 = v0[i][j];	// L27
      ap_int<32> v5 = v4 * 3;	// L29
      v1[i][j] = v5;	// L30
    }
  }
}

/// This is top function.
int main(int argc, char **argv) {
  ap_int<32> A_host[10][32];	//
  l_A_host_i0: for (int i0 = 0; i0 < 10; i0++) {	//
    l_i1: for (int i1 = 0; i1 < 32; i1++) {	//
      A_host[i0][i1] = 0;	//
    }
  }
  ap_int<32> B_host[10][32];	//
  l_B_host_i01: for (int i01 = 0; i01 < 10; i01++) {	//
    l_i11: for (int i11 = 0; i11 < 32; i11++) {	//
      B_host[i01][i11] = 0;	//
    }
  }
  ap_int<32> D_host[10][32];	//
  l_D_host_i02: for (int i02 = 0; i02 < 10; i02++) {	//
    l_i12: for (int i12 = 0; i12 < 32; i12++) {	//
      D_host[i02][i12] = 0;	//
    }
  }
  top(A_host, B_host, D_host);	//
  ap_int<32> E[10][32];	// L40
  Stage_E(D_host, E);	// L41
  return 0;
}

