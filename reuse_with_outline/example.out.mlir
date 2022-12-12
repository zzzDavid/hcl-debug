#map0 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, d3, d0, d1, d2, 0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3, d0, 0, 0, 0)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0, d0, 0, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, 0, 0, d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1, 0, 0)>
#map5 = affine_map<(d0) -> (d0, 0)>
#map6 = affine_map<(d0, d1) -> (0, d1, d0, 0)>
#map7 = affine_map<(d0, d1, d2) -> (d0, 0, 0, 0, d1, d2)>
#map8 = affine_map<(d0, d1, d2) -> (d0, d1, 0, 0, 0, d2)>
#map9 = affine_map<(d0) -> (d0 * 16)>
#map10 = affine_map<(d0) -> (d0 * 16 + 16)>
#set0 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 32 >= 0, d1 - 1 >= 0, -d1 + 32 >= 0)>
#set1 = affine_set<(d0) : (d0 - 2 >= 0)>
#set2 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 3 >= 0, -(d0 + d1) + 34 >= 0, d2 + d3 - 3 >= 0, -(d2 + d3) + 34 >= 0)>
module {
  func.func private @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%arg0: memref<1x1x32x32xi16, #map0>, %arg1: memref<1x1x32x32xi16, #map0>, %arg2: memref<16x1x3x3xi16, #map1>, %arg3: memref<1x16x32x32xi16>, %arg4: memref<1x16x32x32xi16>) attributes {bit, itypes = "uuu__"} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "layer1_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %1 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %2 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %3 = memref.alloc() {name = "layer1_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %4 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %5 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    %c0_0 = arith.constant 0 : index
    %c0_1 = arith.constant 0 : index
    %c0_2 = arith.constant 0 : index
    %c0_3 = arith.constant 0 : index
    %c0_4 = arith.constant 0 : index
    %c0_5 = arith.constant 0 : index
    %c0_6 = arith.constant 0 : index
    affine.for %arg5 = 0 to 1 {
      affine.for %arg6 = 0 to 1 {
        affine.for %arg7 = 0 to 34 {
          affine.for %arg8 = 0 to 34 {
            %6 = affine.if #set0(%arg8, %arg7) -> i16 {
              %8 = affine.load %arg0[%arg5, %arg6, %arg7 - 1, %arg8 - 1] {from = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %8 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %8 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %8 : i16
            } {unsigned}
            affine.store %6, %0[%arg5, %arg6, %arg7, %arg8] {to = "layer1_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %7 = affine.if #set0(%arg8, %arg7) -> i16 {
              %8 = affine.load %arg1[%arg5, %arg6, %arg7 - 1, %arg8 - 1] {from = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %8 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %8 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %8 : i16
            } {unsigned}
            affine.store %7, %3[%arg5, %arg6, %arg7, %arg8] {to = "layer1_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv1_out_lsb_pad"}
    affine.for %arg5 = 0 to 1 {
      affine.for %arg6 = 0 to 16 {
        affine.for %arg7 = 0 to 34 {
          affine.for %arg8 = 0 to 34 {
            %6 = affine.load %1[1, %arg8] : memref<3x34xi16, #map3>
            affine.store %6, %1[0, %arg8] : memref<3x34xi16, #map3>
            %7 = affine.load %1[2, %arg8] : memref<3x34xi16, #map3>
            affine.store %7, %1[1, %arg8] : memref<3x34xi16, #map3>
            %8 = affine.load %0[%c0_0, %c0_1, %arg7, %arg8] : memref<1x1x34x34xi16, #map2>
            affine.store %8, %1[2, %arg8] : memref<3x34xi16, #map3>
            affine.if #set1(%arg7) {
              affine.for %arg9 = 0 to 3 {
                %12 = affine.load %2[%arg9, 1] : memref<3x3xi16, #map4>
                affine.store %12, %2[%arg9, 0] : memref<3x3xi16, #map4>
                %13 = affine.load %2[%arg9, 2] : memref<3x3xi16, #map4>
                affine.store %13, %2[%arg9, 1] : memref<3x3xi16, #map4>
                %14 = affine.load %1[%arg9, %arg8] : memref<3x34xi16, #map3>
                affine.store %14, %2[%arg9, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg8) {
                %12 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %12[%c0_2] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg9 = 0 to 1 {
                  affine.for %arg10 = 0 to 3 {
                    affine.for %arg11 = 0 to 3 {
                      %14 = affine.if #set2(%arg8, %arg11, %arg7, %arg10) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %17 = arith.extsi %c16_i32 : i32 to i128
                        %18 = affine.load %2[%arg10, %arg11] : memref<3x3xi16, #map4>
                        %19 = affine.load %arg2[%arg6, %arg9, %arg10, %arg11] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %20 = arith.xori %18, %19 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %21 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %22 = arith.shrui %20, %21 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %23 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %24 = arith.andi %22, %23 {unsigned} : i16
                        %25 = arith.subi %20, %24 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %26 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %27 = arith.andi %25, %26 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %28 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %29 = arith.shrui %25, %28 {unsigned} : i16
                        %c3689348814741910323_i64_7 = arith.constant 3689348814741910323 : i64
                        %30 = arith.trunci %c3689348814741910323_i64_7 {unsigned} : i64 to i16
                        %31 = arith.andi %29, %30 {unsigned} : i16
                        %32 = arith.addi %27, %31 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %33 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %34 = arith.shrui %32, %33 {unsigned} : i16
                        %35 = arith.addi %32, %34 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %36 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %37 = arith.andi %35, %36 {unsigned} : i16
                        %38 = arith.extui %37 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %39 = arith.muli %38, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %40 = arith.extsi %c56_i32 : i32 to i64
                        %41 = arith.shrui %39, %40 : i64
                        %42 = arith.extsi %41 : i64 to i128
                        %c1_i32_8 = arith.constant 1 : i32
                        %43 = arith.extsi %c1_i32_8 : i32 to i64
                        %44 = arith.extsi %43 : i64 to i128
                        %45 = arith.shli %42, %44 : i128
                        %46 = arith.subi %17, %45 : i128
                        %47 = arith.trunci %46 : i128 to i16
                        affine.yield %47 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %17 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %17 : i16
                      }
                      %15 = affine.load %12[%c0_2] {from = "sum_rv"} : memref<1xi16>
                      %16 = arith.addi %14, %15 : i16
                      affine.store %16, %12[%c0_2] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_msb_rc", reduction}
                %13 = affine.load %12[%c0_3] {from = "sum_rv"} : memref<1xi16>
                affine.store %13, %arg3[%arg5, %arg6, %arg7 - 2, %arg8 - 2] : memref<1x16x32x32xi16>
              }
            }
            %9 = affine.load %4[1, %arg8] : memref<3x34xi16, #map3>
            affine.store %9, %4[0, %arg8] : memref<3x34xi16, #map3>
            %10 = affine.load %4[2, %arg8] : memref<3x34xi16, #map3>
            affine.store %10, %4[1, %arg8] : memref<3x34xi16, #map3>
            %11 = affine.load %3[%c0_5, %c0_6, %arg7, %arg8] : memref<1x1x34x34xi16, #map2>
            affine.store %11, %4[2, %arg8] : memref<3x34xi16, #map3>
            affine.if #set1(%arg7) {
              affine.for %arg9 = 0 to 3 {
                %12 = affine.load %5[%arg9, 1] : memref<3x3xi16, #map4>
                affine.store %12, %5[%arg9, 0] : memref<3x3xi16, #map4>
                %13 = affine.load %5[%arg9, 2] : memref<3x3xi16, #map4>
                affine.store %13, %5[%arg9, 1] : memref<3x3xi16, #map4>
                %14 = affine.load %4[%arg9, %arg8] : memref<3x34xi16, #map3>
                affine.store %14, %5[%arg9, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg8) {
                %12 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %12[%c0_4] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg9 = 0 to 1 {
                  affine.for %arg10 = 0 to 3 {
                    affine.for %arg11 = 0 to 3 {
                      %14 = affine.if #set2(%arg8, %arg11, %arg7, %arg10) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %17 = arith.extsi %c16_i32 : i32 to i128
                        %18 = affine.load %5[%arg10, %arg11] : memref<3x3xi16, #map4>
                        %19 = affine.load %arg2[%arg6, %arg9, %arg10, %arg11] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %20 = arith.xori %18, %19 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %21 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %22 = arith.shrui %20, %21 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %23 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %24 = arith.andi %22, %23 {unsigned} : i16
                        %25 = arith.subi %20, %24 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %26 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %27 = arith.andi %25, %26 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %28 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %29 = arith.shrui %25, %28 {unsigned} : i16
                        %c3689348814741910323_i64_7 = arith.constant 3689348814741910323 : i64
                        %30 = arith.trunci %c3689348814741910323_i64_7 {unsigned} : i64 to i16
                        %31 = arith.andi %29, %30 {unsigned} : i16
                        %32 = arith.addi %27, %31 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %33 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %34 = arith.shrui %32, %33 {unsigned} : i16
                        %35 = arith.addi %32, %34 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %36 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %37 = arith.andi %35, %36 {unsigned} : i16
                        %38 = arith.extui %37 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %39 = arith.muli %38, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %40 = arith.extsi %c56_i32 : i32 to i64
                        %41 = arith.shrui %39, %40 : i64
                        %42 = arith.extsi %41 : i64 to i128
                        %c1_i32_8 = arith.constant 1 : i32
                        %43 = arith.extsi %c1_i32_8 : i32 to i64
                        %44 = arith.extsi %43 : i64 to i128
                        %45 = arith.shli %42, %44 : i128
                        %46 = arith.subi %17, %45 : i128
                        %47 = arith.trunci %46 : i128 to i16
                        affine.yield %47 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %17 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %17 : i16
                      }
                      %15 = affine.load %12[%c0_4] {from = "sum_rv"} : memref<1xi16>
                      %16 = arith.addi %14, %15 : i16
                      affine.store %16, %12[%c0_4] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_lsb_rc", reduction}
                %13 = affine.load %12[%c0] {from = "sum_rv"} : memref<1xi16>
                affine.store %13, %arg4[%arg5, %arg6, %arg7 - 2, %arg8 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv1_out_lsb"}
    return
  }
  func.func @top(%arg0: memref<1x6x32x32xi16>, %arg1: memref<16x6x3x3xi16, #map1>, %arg2: memref<16xf32, #map5>, %arg3: memref<16xf32, #map5>, %arg4: memref<16xf32, #map5>, %arg5: memref<16xf32, #map5>, %arg6: memref<16xf32, #map5>, %arg7: memref<16xf32, #map5>, %arg8: memref<16xf32, #map5>, %arg9: memref<16xf32, #map5>, %arg10: memref<16x1x3x3xi16, #map1>, %arg11: memref<16xf32, #map5>, %arg12: memref<16xf32, #map5>, %arg13: memref<16xf32, #map5>, %arg14: memref<16x1x3x3xi16, #map1>, %arg15: memref<16xf32, #map5>, %arg16: memref<16xf32, #map5>, %arg17: memref<16xf32, #map5>, %arg18: memref<16xf32, #map5>, %arg19: memref<16xf32, #map5>, %arg20: memref<16xf32, #map5>, %arg21: memref<16xf32, #map5>, %arg22: memref<16xf32, #map5>, %arg23: memref<16xf32, #map5>, %arg24: memref<16xf32, #map5>, %arg25: memref<16xf32, #map5>, %arg26: memref<16xf32, #map5>, %arg27: memref<16xf32, #map5>, %arg28: memref<16x1x3x3xi16, #map1>, %arg29: memref<16xf32, #map5>, %arg30: memref<16xf32, #map5>, %arg31: memref<16xf32, #map5>, %arg32: memref<16x1x3x3xi16, #map1>, %arg33: memref<16xf32, #map5>, %arg34: memref<16xf32, #map5>, %arg35: memref<16xf32, #map5>, %arg36: memref<16xf32, #map5>, %arg37: memref<16xf32, #map5>, %arg38: memref<16xf32, #map5>, %arg39: memref<16xf32, #map5>, %arg40: memref<16xf32, #map5>, %arg41: memref<16xf32, #map5>, %arg42: memref<16xf32, #map5>, %arg43: memref<16xf32, #map5>, %arg44: memref<16xf32, #map5>, %arg45: memref<16xf32, #map5>, %arg46: memref<16x1x3x3xi16, #map1>, %arg47: memref<16xf32, #map5>, %arg48: memref<16xf32, #map5>, %arg49: memref<16xf32, #map5>, %arg50: memref<16x1x3x3xi16, #map1>, %arg51: memref<16xf32, #map5>, %arg52: memref<16xf32, #map5>, %arg53: memref<16xf32, #map5>, %arg54: memref<16xf32, #map5>, %arg55: memref<16xf32, #map5>, %arg56: memref<16xf32, #map5>, %arg57: memref<16xf32, #map5>, %arg58: memref<32xf32, #map5>, %arg59: memref<32xf32, #map5>, %arg60: memref<32xf32, #map5>, %arg61: memref<32xf32, #map5>, %arg62: memref<32xf32, #map5>, %arg63: memref<32xf32, #map5>, %arg64: memref<32x1x3x3xi16, #map1>, %arg65: memref<32xf32, #map5>, %arg66: memref<32xf32, #map5>, %arg67: memref<32xf32, #map5>, %arg68: memref<32x2x3x3xi16, #map1>, %arg69: memref<32xf32, #map5>, %arg70: memref<32xf32, #map5>, %arg71: memref<32xf32, #map5>, %arg72: memref<32xf32, #map5>, %arg73: memref<32xf32, #map5>, %arg74: memref<32xf32, #map5>, %arg75: memref<32xf32, #map5>, %arg76: memref<32xf32, #map5>, %arg77: memref<32xf32, #map5>, %arg78: memref<32xf32, #map5>, %arg79: memref<32xf32, #map5>, %arg80: memref<32xf32, #map5>, %arg81: memref<32xf32, #map5>, %arg82: memref<32x2x3x3xi16, #map1>, %arg83: memref<32xf32, #map5>, %arg84: memref<32xf32, #map5>, %arg85: memref<32xf32, #map5>, %arg86: memref<32x2x3x3xi16, #map1>, %arg87: memref<32xf32, #map5>, %arg88: memref<32xf32, #map5>, %arg89: memref<32xf32, #map5>, %arg90: memref<32xf32, #map5>, %arg91: memref<32xf32, #map5>, %arg92: memref<32xf32, #map5>, %arg93: memref<32xf32, #map5>, %arg94: memref<32xf32, #map5>, %arg95: memref<32xf32, #map5>, %arg96: memref<32xf32, #map5>, %arg97: memref<32xf32, #map5>, %arg98: memref<32xf32, #map5>, %arg99: memref<32xf32, #map5>, %arg100: memref<32x2x3x3xi16, #map1>, %arg101: memref<32xf32, #map5>, %arg102: memref<32xf32, #map5>, %arg103: memref<32xf32, #map5>, %arg104: memref<32x2x3x3xi16, #map1>, %arg105: memref<32xf32, #map5>, %arg106: memref<32xf32, #map5>, %arg107: memref<32xf32, #map5>, %arg108: memref<32xf32, #map5>, %arg109: memref<32xf32, #map5>, %arg110: memref<32xf32, #map5>, %arg111: memref<32xf32, #map5>, %arg112: memref<64xf32, #map5>, %arg113: memref<64xf32, #map5>, %arg114: memref<64xf32, #map5>, %arg115: memref<64xf32, #map5>, %arg116: memref<64xf32, #map5>, %arg117: memref<64xf32, #map5>, %arg118: memref<64x2x3x3xi16, #map1>, %arg119: memref<64xf32, #map5>, %arg120: memref<64xf32, #map5>, %arg121: memref<64xf32, #map5>, %arg122: memref<64x4x3x3xi16, #map1>, %arg123: memref<64xf32, #map5>, %arg124: memref<64xf32, #map5>, %arg125: memref<64xf32, #map5>, %arg126: memref<64xf32, #map5>, %arg127: memref<64xf32, #map5>, %arg128: memref<64xf32, #map5>, %arg129: memref<64xf32, #map5>, %arg130: memref<64xf32, #map5>, %arg131: memref<64xf32, #map5>, %arg132: memref<64xf32, #map5>, %arg133: memref<64xf32, #map5>, %arg134: memref<64xf32, #map5>, %arg135: memref<64xf32, #map5>, %arg136: memref<64x4x3x3xi16, #map1>, %arg137: memref<64xf32, #map5>, %arg138: memref<64xf32, #map5>, %arg139: memref<64xf32, #map5>, %arg140: memref<64x4x3x3xi16, #map1>, %arg141: memref<64xf32, #map5>, %arg142: memref<64xf32, #map5>, %arg143: memref<64xf32, #map5>, %arg144: memref<64xf32, #map5>, %arg145: memref<64xf32, #map5>, %arg146: memref<64xf32, #map5>, %arg147: memref<64xf32, #map5>, %arg148: memref<64xf32, #map5>, %arg149: memref<64xf32, #map5>, %arg150: memref<64xf32, #map5>, %arg151: memref<64xf32, #map5>, %arg152: memref<64xf32, #map5>, %arg153: memref<64xf32, #map5>, %arg154: memref<64x4x3x3xi16, #map1>, %arg155: memref<64xf32, #map5>, %arg156: memref<64xf32, #map5>, %arg157: memref<64xf32, #map5>, %arg158: memref<64x4x3x3xi16, #map1>, %arg159: memref<64xf32, #map5>, %arg160: memref<64xf32, #map5>, %arg161: memref<64xf32, #map5>, %arg162: memref<64xf32, #map5>, %arg163: memref<64xf32, #map5>, %arg164: memref<64xf32, #map5>, %arg165: memref<64xf32, #map5>, %arg166: memref<10x64xf32, #map6>, %arg167: memref<10xf32, #map5>) attributes {bit, itypes = "uu________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_________", otypes = "_"} {
    %c0 = arith.constant 0 : index
    %c0_0 = arith.constant 0 : index
    %c0_1 = arith.constant 0 : index
    %c0_2 = arith.constant 0 : index
    %c0_3 = arith.constant 0 : index
    %c0_4 = arith.constant 0 : index
    %c0_5 = arith.constant 0 : index
    %c0_6 = arith.constant 0 : index
    %c0_7 = arith.constant 0 : index
    %c0_8 = arith.constant 0 : index
    %c0_9 = arith.constant 0 : index
    %c0_10 = arith.constant 0 : index
    %c0_11 = arith.constant 0 : index
    %c0_12 = arith.constant 0 : index
    %c0_13 = arith.constant 0 : index
    %c0_14 = arith.constant 0 : index
    %c0_15 = arith.constant 0 : index
    %c0_16 = arith.constant 0 : index
    %c0_17 = arith.constant 0 : index
    %c0_18 = arith.constant 0 : index
    %c0_19 = arith.constant 0 : index
    %c0_20 = arith.constant 0 : index
    %c0_21 = arith.constant 0 : index
    %c0_22 = arith.constant 0 : index
    %c0_23 = arith.constant 0 : index
    %c0_24 = arith.constant 0 : index
    %c0_25 = arith.constant 0 : index
    %c0_26 = arith.constant 0 : index
    %c0_27 = arith.constant 0 : index
    %c0_28 = arith.constant 0 : index
    %c0_29 = arith.constant 0 : index
    %c0_30 = arith.constant 0 : index
    %c0_31 = arith.constant 0 : index
    %c0_32 = arith.constant 0 : index
    %c0_33 = arith.constant 0 : index
    %c0_34 = arith.constant 0 : index
    %c0_35 = arith.constant 0 : index
    %c0_36 = arith.constant 0 : index
    %c0_37 = arith.constant 0 : index
    %c0_38 = arith.constant 0 : index
    %c0_39 = arith.constant 0 : index
    %c0_40 = arith.constant 0 : index
    %c0_41 = arith.constant 0 : index
    %c0_42 = arith.constant 0 : index
    %c0_43 = arith.constant 0 : index
    %c0_44 = arith.constant 0 : index
    %c0_45 = arith.constant 0 : index
    %c0_46 = arith.constant 0 : index
    %c0_47 = arith.constant 0 : index
    %c0_48 = arith.constant 0 : index
    %c0_49 = arith.constant 0 : index
    %c0_50 = arith.constant 0 : index
    %c0_51 = arith.constant 0 : index
    %c0_52 = arith.constant 0 : index
    %c0_53 = arith.constant 0 : index
    %c0_54 = arith.constant 0 : index
    %c0_55 = arith.constant 0 : index
    %c0_56 = arith.constant 0 : index
    %c0_57 = arith.constant 0 : index
    %c0_58 = arith.constant 0 : index
    %c0_59 = arith.constant 0 : index
    %c0_60 = arith.constant 0 : index
    %c0_61 = arith.constant 0 : index
    %c0_62 = arith.constant 0 : index
    %c0_63 = arith.constant 0 : index
    %c0_64 = arith.constant 0 : index
    %c0_65 = arith.constant 0 : index
    %c0_66 = arith.constant 0 : index
    %c0_67 = arith.constant 0 : index
    %c0_68 = arith.constant 0 : index
    %c0_69 = arith.constant 0 : index
    %c0_70 = arith.constant 0 : index
    %c0_71 = arith.constant 0 : index
    %c0_72 = arith.constant 0 : index
    %c0_73 = arith.constant 0 : index
    %c0_74 = arith.constant 0 : index
    %c0_75 = arith.constant 0 : index
    %c0_76 = arith.constant 0 : index
    %c0_77 = arith.constant 0 : index
    %c0_78 = arith.constant 0 : index
    %c0_79 = arith.constant 0 : index
    %c0_80 = arith.constant 0 : index
    %c0_81 = arith.constant 0 : index
    %c0_82 = arith.constant 0 : index
    %c0_83 = arith.constant 0 : index
    %c0_84 = arith.constant 0 : index
    %c0_85 = arith.constant 0 : index
    %c0_86 = arith.constant 0 : index
    %c0_87 = arith.constant 0 : index
    %c0_88 = arith.constant 0 : index
    %c0_89 = arith.constant 0 : index
    %0 = memref.alloc() {name = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %32 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %32, %0[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate"} : memref<1x6x32x32xi16, #map0>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate"}
    %1 = memref.alloc() {name = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %32 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %32, %1[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate1"} : memref<1x6x32x32xi16, #map0>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate1"}
    %2 = memref.alloc() {name = "conv1_out_msb_pad", unsigned} : memref<1x6x34x34xi16, #map2>
    %3 = memref.alloc() {name = "conv1_out_msb"} : memref<1x16x32x32xi16>
    %4 = memref.alloc() {name = "conv1_out_msb_reuse_2"} : memref<6x3x34xi16, #map7>
    %5 = memref.alloc() {name = "conv1_out_msb_reuse_3"} : memref<6x3x3xi16, #map8>
    %6 = memref.alloc() {name = "conv1_out_lsb_pad", unsigned} : memref<1x6x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %32 = affine.if #set0(%arg171, %arg170) -> i16 {
              %34 = affine.load %0[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map0>
              affine.yield %34 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %34 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %34 : i16
            } {unsigned}
            affine.store %32, %2[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb_pad"} : memref<1x6x34x34xi16, #map2>
            %33 = affine.if #set0(%arg171, %arg170) -> i16 {
              %34 = affine.load %1[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map0>
              affine.yield %34 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %34 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %34 : i16
            } {unsigned}
            affine.store %33, %6[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb_pad"} : memref<1x6x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "conv1_out_lsb_pad"}
    %7 = memref.alloc() {name = "conv1_out_lsb"} : memref<1x16x32x32xi16>
    %8 = memref.alloc() {name = "conv1_out_lsb_reuse_2"} : memref<6x3x34xi16, #map7>
    %9 = memref.alloc() {name = "conv1_out_lsb_reuse_3"} : memref<6x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            affine.for %arg172 = 0 to 6 {
              %32 = affine.load %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %32, %4[%arg172, 0, %arg171] : memref<6x3x34xi16, #map7>
              %33 = affine.load %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %33, %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              %34 = affine.load %2[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map2>
              affine.store %34, %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %32 = affine.load %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  affine.store %32, %5[%arg172, %arg173, 0] : memref<6x3x3xi16, #map8>
                  %33 = affine.load %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                  affine.store %33, %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  %34 = affine.load %4[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map7>
                  affine.store %34, %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %32 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %32[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %34 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %37 = arith.extsi %c16_i32 : i32 to i128
                        %38 = affine.load %5[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map8>
                        %39 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map1>
                        %40 = arith.xori %38, %39 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %41 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %42 = arith.shrui %40, %41 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %43 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %44 = arith.andi %42, %43 {unsigned} : i16
                        %45 = arith.subi %40, %44 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %46 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %47 = arith.andi %45, %46 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %48 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %49 = arith.shrui %45, %48 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %50 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %51 = arith.andi %49, %50 {unsigned} : i16
                        %52 = arith.addi %47, %51 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %53 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %54 = arith.shrui %52, %53 {unsigned} : i16
                        %55 = arith.addi %52, %54 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %56 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %57 = arith.andi %55, %56 {unsigned} : i16
                        %58 = arith.extui %57 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %59 = arith.muli %58, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %60 = arith.extsi %c56_i32 : i32 to i64
                        %61 = arith.shrui %59, %60 : i64
                        %62 = arith.extsi %61 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %63 = arith.extsi %c1_i32_93 : i32 to i64
                        %64 = arith.extsi %63 : i64 to i128
                        %65 = arith.shli %62, %64 : i128
                        %66 = arith.subi %37, %65 : i128
                        %67 = arith.trunci %66 : i128 to i16
                        affine.yield %67 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %37 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %37 : i16
                      }
                      %35 = affine.load %32[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %36 = arith.addi %34, %35 : i16
                      affine.store %36, %32[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_msb_rx", reduction}
                  } {loop_name = "conv1_out_msb_ry", reduction}
                } {loop_name = "conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %33 = affine.load %32[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %33, %3[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            affine.for %arg172 = 0 to 6 {
              %32 = affine.load %8[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %32, %8[%arg172, 0, %arg171] : memref<6x3x34xi16, #map7>
              %33 = affine.load %8[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %33, %8[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              %34 = affine.load %6[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map2>
              affine.store %34, %8[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %32 = affine.load %9[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  affine.store %32, %9[%arg172, %arg173, 0] : memref<6x3x3xi16, #map8>
                  %33 = affine.load %9[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                  affine.store %33, %9[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  %34 = affine.load %8[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map7>
                  affine.store %34, %9[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %32 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %32[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %34 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %37 = arith.extsi %c16_i32 : i32 to i128
                        %38 = affine.load %9[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map8>
                        %39 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map1>
                        %40 = arith.xori %38, %39 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %41 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %42 = arith.shrui %40, %41 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %43 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %44 = arith.andi %42, %43 {unsigned} : i16
                        %45 = arith.subi %40, %44 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %46 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %47 = arith.andi %45, %46 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %48 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %49 = arith.shrui %45, %48 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %50 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %51 = arith.andi %49, %50 {unsigned} : i16
                        %52 = arith.addi %47, %51 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %53 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %54 = arith.shrui %52, %53 {unsigned} : i16
                        %55 = arith.addi %52, %54 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %56 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %57 = arith.andi %55, %56 {unsigned} : i16
                        %58 = arith.extui %57 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %59 = arith.muli %58, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %60 = arith.extsi %c56_i32 : i32 to i64
                        %61 = arith.shrui %59, %60 : i64
                        %62 = arith.extsi %61 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %63 = arith.extsi %c1_i32_93 : i32 to i64
                        %64 = arith.extsi %63 : i64 to i128
                        %65 = arith.shli %62, %64 : i128
                        %66 = arith.subi %37, %65 : i128
                        %67 = arith.trunci %66 : i128 to i16
                        affine.yield %67 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %37 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %37 : i16
                      }
                      %35 = affine.load %32[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %36 = arith.addi %34, %35 : i16
                      affine.store %36, %32[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_lsb_rx", reduction}
                  } {loop_name = "conv1_out_lsb_ry", reduction}
                } {loop_name = "conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %33 = affine.load %32[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %33, %7[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "conv1_out_lsb"}
    %10 = memref.alloc() {name = "bn1"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %32 = affine.load %3[%arg168, %arg169, %arg170, %arg171] {from = "conv1_out_msb"} : memref<1x16x32x32xi16>
            %33 = arith.sitofp %32 : i16 to f32
            %34 = affine.load %arg2[%arg169] {from = "bn1_weight"} : memref<16xf32, #map5>
            %35 = arith.mulf %33, %34 : f32
            %36 = affine.load %arg3[%arg169] {from = "bn1_bias"} : memref<16xf32, #map5>
            %37 = arith.addf %35, %36 : f32
            affine.store %37, %10[%arg168, %arg169, %arg170, %arg171] {to = "bn1"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "bn1"}
    %11 = memref.alloc() {name = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
    %12 = memref.alloc() {name = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %13 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %32 = affine.load %10[%c0_89, %arg171, %arg170, %arg172] {from = "bn1"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %33 = arith.cmpf ogt, %32, %cst : f32
              %34 = scf.if %33 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %36 = arith.sitofp %c0_i32 : i32 to f32
                %37 = arith.cmpf oge, %32, %36 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %38 = arith.cmpf ole, %32, %cst_90 : f32
                %39 = arith.andi %37, %38 : i1
                %40 = scf.if %39 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %41 = arith.sitofp %c0_i32_91 : i32 to f32
                  %42 = arith.cmpf olt, %32, %41 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %43 = arith.cmpf oge, %32, %cst_92 : f32
                  %44 = arith.andi %42, %43 : i1
                  %45 = scf.if %44 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %45 : i32
                }
                scf.yield %40 : i32
              }
              %35 = arith.trunci %34 : i32 to i2
              affine.store %35, %11[%c0_89, %arg171, %arg170, %arg172] {to = "layer1_0_rsign1"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %32 = memref.alloc() {name = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %32[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %33 = hcl.create_op_handle "stage_0"
            %34 = hcl.create_loop_handle %33, "loop_0"
            affine.for %arg172 = 0 to 16 {
              %36 = affine.load %11[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %37 = hcl.get_bit(%36 : i2, %c1) -> i1
              %38 = affine.load %32[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%38 : i16, %arg172, %37 : i1)
              affine.store %38, %32[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_0", op_name = "stage_0"}
            %35 = affine.load %32[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %35, %12[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %32 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %32[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %33 = hcl.create_op_handle "stage_1"
            %34 = hcl.create_loop_handle %33, "loop_1"
            affine.for %arg172 = 0 to 16 {
              %36 = affine.load %11[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %37 = hcl.get_bit(%36 : i2, %c0_91) -> i1
              %38 = affine.load %32[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%38 : i16, %arg172, %37 : i1)
              affine.store %38, %32[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_1", op_name = "stage_1"}
            %35 = affine.load %32[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %35, %13[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv1_lsb_truncate"}
    %14 = memref.alloc() {name = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
    %15 = memref.alloc() {name = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%12, %13, %arg10, %14, %15) : (memref<1x1x32x32xi16, #map0>, memref<1x1x32x32xi16, #map0>, memref<16x1x3x3xi16, #map1>, memref<1x16x32x32xi16>, memref<1x16x32x32xi16>) -> ()
    %16 = memref.alloc() {name = "layer1_0_conv1_pgconv"} : memref<1x16x32x32xf32, #map0>
    %17 = memref.alloc() {name = "layer1_0_bn1"} : memref<1x16x32x32xf32, #map0>
    %18 = memref.alloc() {name = "layer1_0_rprelu1"} : memref<1x16x32x32xf32, #map0>
    %19 = memref.alloc() {name = "layer1_0_residual1"} : memref<1x16x32x32xf32, #map0>
    %20 = memref.alloc() {name = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %32 = affine.load %14[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
            %33 = arith.sitofp %32 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %34 = arith.mulf %33, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %35 = arith.divf %34, %cst_90 : f32
            %36 = affine.load %arg11[%arg169] {from = "layer1_0_conv1_threshold"} : memref<16xf32, #map5>
            %37 = arith.cmpf ogt, %35, %36 : f32
            %38 = scf.if %37 -> (f32) {
              %56 = affine.load %15[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %57 = arith.sitofp %56 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %58 = arith.divf %57, %cst_91 : f32
              %59 = arith.addf %58, %35 : f32
              scf.yield %59 : f32
            } else {
              scf.yield %35 : f32
            }
            %39 = affine.load %arg12[%arg169] {from = "layer1_0_bn1_weight"} : memref<16xf32, #map5>
            %40 = arith.mulf %38, %39 : f32
            %41 = affine.load %arg13[%arg169] {from = "layer1_0_bn1_bias"} : memref<16xf32, #map5>
            %42 = arith.addf %40, %41 : f32
            %43 = affine.load %arg4[%arg169] {from = "layer1_0_rprelu1_shift_x_bias"} : memref<16xf32, #map5>
            %44 = arith.addf %42, %43 : f32
            %c0_i32 = arith.constant 0 : i32
            %45 = arith.sitofp %c0_i32 : i32 to f32
            %46 = arith.cmpf ogt, %44, %45 : f32
            %47 = scf.if %46 -> (f32) {
              scf.yield %44 : f32
            } else {
              %56 = affine.load %arg6[%arg169] {from = "layer1_0_rprelu1_prelu_weight"} : memref<16xf32, #map5>
              %57 = arith.mulf %56, %44 : f32
              scf.yield %57 : f32
            }
            %48 = affine.load %arg5[%arg169] {from = "layer1_0_rprelu1_shift_y_bias"} : memref<16xf32, #map5>
            %49 = arith.addf %47, %48 : f32
            %50 = affine.load %10[%c0_85, %arg169, %arg170, %arg171] {from = "bn1"} : memref<1x16x32x32xf32, #map0>
            %51 = arith.addf %49, %50 : f32
            %52 = affine.load %arg18[%arg169] {from = "layer1_0_bn3_weight"} : memref<16xf32, #map5>
            %53 = arith.mulf %51, %52 : f32
            %54 = affine.load %arg19[%arg169] {from = "layer1_0_bn3_bias"} : memref<16xf32, #map5>
            %55 = arith.addf %53, %54 : f32
            affine.store %55, %20[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn2"}
    %21 = memref.alloc() {name = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
    %22 = memref.alloc() {name = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %23 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %32 = affine.load %20[%c0_84, %arg171, %arg170, %arg172] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %33 = arith.cmpf ogt, %32, %cst : f32
              %34 = scf.if %33 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %36 = arith.sitofp %c0_i32 : i32 to f32
                %37 = arith.cmpf oge, %32, %36 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %38 = arith.cmpf ole, %32, %cst_90 : f32
                %39 = arith.andi %37, %38 : i1
                %40 = scf.if %39 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %41 = arith.sitofp %c0_i32_91 : i32 to f32
                  %42 = arith.cmpf olt, %32, %41 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %43 = arith.cmpf oge, %32, %cst_92 : f32
                  %44 = arith.andi %42, %43 : i1
                  %45 = scf.if %44 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %45 : i32
                }
                scf.yield %40 : i32
              }
              %35 = arith.trunci %34 : i32 to i2
              affine.store %35, %21[%c0_84, %arg171, %arg170, %arg172] {to = "layer1_0_rsign2"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %32 = memref.alloc() {name = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %32[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %33 = hcl.create_op_handle "stage_2"
            %34 = hcl.create_loop_handle %33, "loop_2"
            affine.for %arg172 = 0 to 16 {
              %36 = affine.load %21[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %37 = hcl.get_bit(%36 : i2, %c1) -> i1
              %38 = affine.load %32[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%38 : i16, %arg172, %37 : i1)
              affine.store %38, %32[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_2", op_name = "stage_2"}
            %35 = affine.load %32[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %35, %22[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %32 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %32[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %33 = hcl.create_op_handle "stage_3"
            %34 = hcl.create_loop_handle %33, "loop_3"
            affine.for %arg172 = 0 to 16 {
              %36 = affine.load %21[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %37 = hcl.get_bit(%36 : i2, %c0_91) -> i1
              %38 = affine.load %32[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%38 : i16, %arg172, %37 : i1)
              affine.store %38, %32[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_3", op_name = "stage_3"}
            %35 = affine.load %32[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %35, %23[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv2_lsb_truncate"}
    %24 = memref.alloc() {name = "layer1_0_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %25 = memref.alloc() {name = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
    %26 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %27 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %28 = memref.alloc() {name = "layer1_0_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %29 = memref.alloc() {name = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %30 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %31 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%22, %23, %arg14, %25, %29) : (memref<1x1x32x32xi16, #map0>, memref<1x1x32x32xi16, #map0>, memref<16x1x3x3xi16, #map1>, memref<1x16x32x32xi16>, memref<1x16x32x32xi16>) -> ()
    return
  }
}

