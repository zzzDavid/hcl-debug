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
#set3 = affine_set<(d0) : (d0 - 1 >= 0, (d0 - 1) mod 2 == 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 16 >= 0, d1 - 1 >= 0, -d1 + 16 >= 0)>
#set5 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 3 >= 0, -(d0 + d1) + 18 >= 0, d2 + d3 - 3 >= 0, -(d2 + d3) + 18 >= 0)>
#set6 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 8 >= 0, d1 - 1 >= 0, -d1 + 8 >= 0)>
#set7 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 3 >= 0, -(d0 + d1) + 10 >= 0, d2 + d3 - 3 >= 0, -(d2 + d3) + 10 >= 0)>
module {
  func.func private @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%arg0: memref<1x1x32x32xi16, #map0>, %arg1: memref<1x1x32x32xi16, #map0>, %arg2: memref<16x1x3x3xi16, #map1>, %arg3: memref<1x16x32x32xi16>, %arg4: memref<1x16x32x32xi16>) attributes {bit, itypes = "uuu__"} {
    %0 = memref.alloc() {name = "layer1_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %c0 = arith.constant 0 : index
    %c0_0 = arith.constant 0 : index
    %1 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %2 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %3 = memref.alloc() {name = "layer1_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %4 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %5 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
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
            %8 = affine.load %0[%c0_1, %c0_2, %arg7, %arg8] : memref<1x1x34x34xi16, #map2>
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
                affine.store %c0_i16, %12[%c0_3] {to = "sum_rv"} : memref<1xi16>
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
                      %15 = affine.load %12[%c0_3] {from = "sum_rv"} : memref<1xi16>
                      %16 = arith.addi %14, %15 : i16
                      affine.store %16, %12[%c0_3] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_msb_rc", reduction}
                %13 = affine.load %12[%c0_4] {from = "sum_rv"} : memref<1xi16>
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
                affine.store %c0_i16, %12[%c0_0] {to = "sum_rv"} : memref<1xi16>
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
                      %15 = affine.load %12[%c0_0] {from = "sum_rv"} : memref<1xi16>
                      %16 = arith.addi %14, %15 : i16
                      affine.store %16, %12[%c0_0] {to = "sum_rv"} : memref<1xi16>
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
  func.func @top(%arg0: memref<1x6x32x32xi16>, %arg1: memref<16x6x3x3xi16, #map1>, %arg2: memref<16xf32, #map5>, %arg3: memref<16xf32, #map5>, %arg4: memref<16xf32, #map5>, %arg5: memref<16xf32, #map5>, %arg6: memref<16xf32, #map5>, %arg7: memref<16xf32, #map5>, %arg8: memref<16xf32, #map5>, %arg9: memref<16xf32, #map5>, %arg10: memref<16x1x3x3xi16, #map1>, %arg11: memref<16xf32, #map5>, %arg12: memref<16xf32, #map5>, %arg13: memref<16xf32, #map5>, %arg14: memref<16x1x3x3xi16, #map1>, %arg15: memref<16xf32, #map5>, %arg16: memref<16xf32, #map5>, %arg17: memref<16xf32, #map5>, %arg18: memref<16xf32, #map5>, %arg19: memref<16xf32, #map5>, %arg20: memref<16xf32, #map5>, %arg21: memref<16xf32, #map5>, %arg22: memref<16xf32, #map5>, %arg23: memref<16xf32, #map5>, %arg24: memref<16xf32, #map5>, %arg25: memref<16xf32, #map5>, %arg26: memref<16xf32, #map5>, %arg27: memref<16xf32, #map5>, %arg28: memref<16x1x3x3xi16, #map1>, %arg29: memref<16xf32, #map5>, %arg30: memref<16xf32, #map5>, %arg31: memref<16xf32, #map5>, %arg32: memref<16x1x3x3xi16, #map1>, %arg33: memref<16xf32, #map5>, %arg34: memref<16xf32, #map5>, %arg35: memref<16xf32, #map5>, %arg36: memref<16xf32, #map5>, %arg37: memref<16xf32, #map5>, %arg38: memref<16xf32, #map5>, %arg39: memref<16xf32, #map5>, %arg40: memref<16xf32, #map5>, %arg41: memref<16xf32, #map5>, %arg42: memref<16xf32, #map5>, %arg43: memref<16xf32, #map5>, %arg44: memref<16xf32, #map5>, %arg45: memref<16xf32, #map5>, %arg46: memref<16x1x3x3xi16, #map1>, %arg47: memref<16xf32, #map5>, %arg48: memref<16xf32, #map5>, %arg49: memref<16xf32, #map5>, %arg50: memref<16x1x3x3xi16, #map1>, %arg51: memref<16xf32, #map5>, %arg52: memref<16xf32, #map5>, %arg53: memref<16xf32, #map5>, %arg54: memref<16xf32, #map5>, %arg55: memref<16xf32, #map5>, %arg56: memref<16xf32, #map5>, %arg57: memref<16xf32, #map5>, %arg58: memref<32xf32, #map5>, %arg59: memref<32xf32, #map5>, %arg60: memref<32xf32, #map5>, %arg61: memref<32xf32, #map5>, %arg62: memref<32xf32, #map5>, %arg63: memref<32xf32, #map5>, %arg64: memref<32x1x3x3xi16, #map1>, %arg65: memref<32xf32, #map5>, %arg66: memref<32xf32, #map5>, %arg67: memref<32xf32, #map5>, %arg68: memref<32x2x3x3xi16, #map1>, %arg69: memref<32xf32, #map5>, %arg70: memref<32xf32, #map5>, %arg71: memref<32xf32, #map5>, %arg72: memref<32xf32, #map5>, %arg73: memref<32xf32, #map5>, %arg74: memref<32xf32, #map5>, %arg75: memref<32xf32, #map5>, %arg76: memref<32xf32, #map5>, %arg77: memref<32xf32, #map5>, %arg78: memref<32xf32, #map5>, %arg79: memref<32xf32, #map5>, %arg80: memref<32xf32, #map5>, %arg81: memref<32xf32, #map5>, %arg82: memref<32x2x3x3xi16, #map1>, %arg83: memref<32xf32, #map5>, %arg84: memref<32xf32, #map5>, %arg85: memref<32xf32, #map5>, %arg86: memref<32x2x3x3xi16, #map1>, %arg87: memref<32xf32, #map5>, %arg88: memref<32xf32, #map5>, %arg89: memref<32xf32, #map5>, %arg90: memref<32xf32, #map5>, %arg91: memref<32xf32, #map5>, %arg92: memref<32xf32, #map5>, %arg93: memref<32xf32, #map5>, %arg94: memref<32xf32, #map5>, %arg95: memref<32xf32, #map5>, %arg96: memref<32xf32, #map5>, %arg97: memref<32xf32, #map5>, %arg98: memref<32xf32, #map5>, %arg99: memref<32xf32, #map5>, %arg100: memref<32x2x3x3xi16, #map1>, %arg101: memref<32xf32, #map5>, %arg102: memref<32xf32, #map5>, %arg103: memref<32xf32, #map5>, %arg104: memref<32x2x3x3xi16, #map1>, %arg105: memref<32xf32, #map5>, %arg106: memref<32xf32, #map5>, %arg107: memref<32xf32, #map5>, %arg108: memref<32xf32, #map5>, %arg109: memref<32xf32, #map5>, %arg110: memref<32xf32, #map5>, %arg111: memref<32xf32, #map5>, %arg112: memref<64xf32, #map5>, %arg113: memref<64xf32, #map5>, %arg114: memref<64xf32, #map5>, %arg115: memref<64xf32, #map5>, %arg116: memref<64xf32, #map5>, %arg117: memref<64xf32, #map5>, %arg118: memref<64x2x3x3xi16, #map1>, %arg119: memref<64xf32, #map5>, %arg120: memref<64xf32, #map5>, %arg121: memref<64xf32, #map5>, %arg122: memref<64x4x3x3xi16, #map1>, %arg123: memref<64xf32, #map5>, %arg124: memref<64xf32, #map5>, %arg125: memref<64xf32, #map5>, %arg126: memref<64xf32, #map5>, %arg127: memref<64xf32, #map5>, %arg128: memref<64xf32, #map5>, %arg129: memref<64xf32, #map5>, %arg130: memref<64xf32, #map5>, %arg131: memref<64xf32, #map5>, %arg132: memref<64xf32, #map5>, %arg133: memref<64xf32, #map5>, %arg134: memref<64xf32, #map5>, %arg135: memref<64xf32, #map5>, %arg136: memref<64x4x3x3xi16, #map1>, %arg137: memref<64xf32, #map5>, %arg138: memref<64xf32, #map5>, %arg139: memref<64xf32, #map5>, %arg140: memref<64x4x3x3xi16, #map1>, %arg141: memref<64xf32, #map5>, %arg142: memref<64xf32, #map5>, %arg143: memref<64xf32, #map5>, %arg144: memref<64xf32, #map5>, %arg145: memref<64xf32, #map5>, %arg146: memref<64xf32, #map5>, %arg147: memref<64xf32, #map5>, %arg148: memref<64xf32, #map5>, %arg149: memref<64xf32, #map5>, %arg150: memref<64xf32, #map5>, %arg151: memref<64xf32, #map5>, %arg152: memref<64xf32, #map5>, %arg153: memref<64xf32, #map5>, %arg154: memref<64x4x3x3xi16, #map1>, %arg155: memref<64xf32, #map5>, %arg156: memref<64xf32, #map5>, %arg157: memref<64xf32, #map5>, %arg158: memref<64x4x3x3xi16, #map1>, %arg159: memref<64xf32, #map5>, %arg160: memref<64xf32, #map5>, %arg161: memref<64xf32, #map5>, %arg162: memref<64xf32, #map5>, %arg163: memref<64xf32, #map5>, %arg164: memref<64xf32, #map5>, %arg165: memref<64xf32, #map5>, %arg166: memref<10x64xf32, #map6>, %arg167: memref<10xf32, #map5>) -> memref<1x10xf32, #map6> attributes {bit, itypes = "uu________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_________", otypes = "_"} {
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
            %305 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %305, %0[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate"} : memref<1x6x32x32xi16, #map0>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate"}
    %1 = memref.alloc() {name = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %305, %1[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate1"} : memref<1x6x32x32xi16, #map0>
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
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %0[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %2[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb_pad"} : memref<1x6x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %1[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %6[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb_pad"} : memref<1x6x34x34xi16, #map2>
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
              %305 = affine.load %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %305, %4[%arg172, 0, %arg171] : memref<6x3x34xi16, #map7>
              %306 = affine.load %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %306, %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              %307 = affine.load %2[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map2>
              affine.store %307, %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  affine.store %305, %5[%arg172, %arg173, 0] : memref<6x3x3xi16, #map8>
                  %306 = affine.load %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                  affine.store %306, %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  %307 = affine.load %4[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map7>
                  affine.store %307, %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %5[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map8>
                        %312 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_msb_rx", reduction}
                  } {loop_name = "conv1_out_msb_ry", reduction}
                } {loop_name = "conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %3[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            affine.for %arg172 = 0 to 6 {
              %305 = affine.load %8[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %305, %8[%arg172, 0, %arg171] : memref<6x3x34xi16, #map7>
              %306 = affine.load %8[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %306, %8[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              %307 = affine.load %6[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map2>
              affine.store %307, %8[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %9[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  affine.store %305, %9[%arg172, %arg173, 0] : memref<6x3x3xi16, #map8>
                  %306 = affine.load %9[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                  affine.store %306, %9[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  %307 = affine.load %8[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map7>
                  affine.store %307, %9[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %9[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map8>
                        %312 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_lsb_rx", reduction}
                  } {loop_name = "conv1_out_lsb_ry", reduction}
                } {loop_name = "conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %7[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
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
            %305 = affine.load %3[%arg168, %arg169, %arg170, %arg171] {from = "conv1_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %307 = affine.load %arg2[%arg169] {from = "bn1_weight"} : memref<16xf32, #map5>
            %308 = arith.mulf %306, %307 : f32
            %309 = affine.load %arg3[%arg169] {from = "bn1_bias"} : memref<16xf32, #map5>
            %310 = arith.addf %308, %309 : f32
            affine.store %310, %10[%arg168, %arg169, %arg170, %arg171] {to = "bn1"} : memref<1x16x32x32xf32, #map0>
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
              %305 = affine.load %10[%c0_89, %arg171, %arg170, %arg172] {from = "bn1"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %11[%c0_89, %arg171, %arg170, %arg172] {to = "layer1_0_rsign1"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_0"
            %307 = hcl.create_loop_handle %306, "loop_0"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %11[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_0", op_name = "stage_0"}
            %308 = affine.load %305[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %12[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_1"
            %307 = hcl.create_loop_handle %306, "loop_1"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %11[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_1", op_name = "stage_1"}
            %308 = affine.load %305[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %13[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
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
            %305 = affine.load %14[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg11[%arg169] {from = "layer1_0_conv1_threshold"} : memref<16xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %15[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg12[%arg169] {from = "layer1_0_bn1_weight"} : memref<16xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg13[%arg169] {from = "layer1_0_bn1_bias"} : memref<16xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg4[%arg169] {from = "layer1_0_rprelu1_shift_x_bias"} : memref<16xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg6[%arg169] {from = "layer1_0_rprelu1_prelu_weight"} : memref<16xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg5[%arg169] {from = "layer1_0_rprelu1_shift_y_bias"} : memref<16xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %10[%c0_85, %arg169, %arg170, %arg171] {from = "bn1"} : memref<1x16x32x32xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg18[%arg169] {from = "layer1_0_bn3_weight"} : memref<16xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg19[%arg169] {from = "layer1_0_bn3_bias"} : memref<16xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %20[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map0>
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
              %305 = affine.load %20[%c0_84, %arg171, %arg170, %arg172] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %21[%c0_84, %arg171, %arg170, %arg172] {to = "layer1_0_rsign2"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_2"
            %307 = hcl.create_loop_handle %306, "loop_2"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %21[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_2", op_name = "stage_2"}
            %308 = affine.load %305[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %22[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_3"
            %307 = hcl.create_loop_handle %306, "loop_3"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %21[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_3", op_name = "stage_3"}
            %308 = affine.load %305[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %23[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv2_lsb_truncate"}
    %24 = memref.alloc() {name = "layer1_0_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %25 = memref.alloc() {name = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
    %26 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %27 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %28 = memref.alloc() {name = "layer1_0_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %22[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %24[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %23[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %28[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv2_out_lsb_pad"}
    %29 = memref.alloc() {name = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %30 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %31 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.load %26[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %305, %26[0, %arg171] : memref<3x34xi16, #map3>
            %306 = affine.load %26[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %306, %26[1, %arg171] : memref<3x34xi16, #map3>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %307 = affine.load %24[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %307, %26[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %27[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %27[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %27[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %27[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %26[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %27[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %27[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %25[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %308 = affine.load %30[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %308, %30[0, %arg171] : memref<3x34xi16, #map3>
            %309 = affine.load %30[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %309, %30[1, %arg171] : memref<3x34xi16, #map3>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %310 = affine.load %28[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %310, %30[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %31[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %31[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %31[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %31[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %30[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %31[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %31[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %29[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv2_out_lsb"}
    %32 = memref.alloc() {name = "layer1_0_conv2_pgconv"} : memref<1x16x32x32xf32, #map0>
    %33 = memref.alloc() {name = "layer1_0_bn3"} : memref<1x16x32x32xf32, #map0>
    %34 = memref.alloc() {name = "layer1_0_rprelu2"} : memref<1x16x32x32xf32, #map0>
    %35 = memref.alloc() {name = "layer1_0_residual2"} : memref<1x16x32x32xf32, #map0>
    %36 = memref.alloc() {name = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %25[%c0_83, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg15[%arg169] {from = "layer1_0_conv2_threshold"} : memref<16xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %29[%c0_83, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg16[%arg169] {from = "layer1_0_bn2_weight"} : memref<16xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg17[%arg169] {from = "layer1_0_bn2_bias"} : memref<16xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg7[%arg169] {from = "layer1_0_rprelu2_shift_x_bias"} : memref<16xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg9[%arg169] {from = "layer1_0_rprelu2_prelu_weight"} : memref<16xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg8[%arg169] {from = "layer1_0_rprelu2_shift_y_bias"} : memref<16xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %20[%c0_80, %arg169, %arg170, %arg171] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg20[%arg169] {from = "layer1_0_bn4_weight"} : memref<16xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg21[%arg169] {from = "layer1_0_bn4_bias"} : memref<16xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %36[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn4"}
    %37 = memref.alloc() {name = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
    %38 = memref.alloc() {name = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %39 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %305 = affine.load %36[%c0_79, %arg171, %arg170, %arg172] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %37[%c0_79, %arg171, %arg170, %arg172] {to = "layer1_1_rsign1"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_4"
            %307 = hcl.create_loop_handle %306, "loop_4"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %37[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_4", op_name = "stage_4"}
            %308 = affine.load %305[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %38[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_5"
            %307 = hcl.create_loop_handle %306, "loop_5"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %37[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_5", op_name = "stage_5"}
            %308 = affine.load %305[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %39[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv1_lsb_truncate"}
    %40 = memref.alloc() {name = "layer1_1_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %41 = memref.alloc() {name = "layer1_1_conv1_out_msb"} : memref<1x16x32x32xi16>
    %42 = memref.alloc() {name = "layer1_1_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %43 = memref.alloc() {name = "layer1_1_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %44 = memref.alloc() {name = "layer1_1_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %38[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %40[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %39[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %44[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv1_out_lsb_pad"}
    %45 = memref.alloc() {name = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %46 = memref.alloc() {name = "layer1_1_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %47 = memref.alloc() {name = "layer1_1_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.load %42[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %305, %42[0, %arg171] : memref<3x34xi16, #map3>
            %306 = affine.load %42[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %306, %42[1, %arg171] : memref<3x34xi16, #map3>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %307 = affine.load %40[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %307, %42[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %43[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %43[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %43[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %43[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %42[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %43[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %43[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg28[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_1_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %41[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %308 = affine.load %46[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %308, %46[0, %arg171] : memref<3x34xi16, #map3>
            %309 = affine.load %46[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %309, %46[1, %arg171] : memref<3x34xi16, #map3>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %310 = affine.load %44[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %310, %46[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %47[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %47[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %47[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %47[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %46[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %47[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %47[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg28[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_1_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %45[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv1_out_lsb"}
    %48 = memref.alloc() {name = "layer1_1_conv1_pgconv"} : memref<1x16x32x32xf32, #map0>
    %49 = memref.alloc() {name = "layer1_1_bn1"} : memref<1x16x32x32xf32, #map0>
    %50 = memref.alloc() {name = "layer1_1_rprelu1"} : memref<1x16x32x32xf32, #map0>
    %51 = memref.alloc() {name = "layer1_1_residual1"} : memref<1x16x32x32xf32, #map0>
    %52 = memref.alloc() {name = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %41[%c0_78, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg29[%arg169] {from = "layer1_1_conv1_threshold"} : memref<16xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %45[%c0_78, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg30[%arg169] {from = "layer1_1_bn1_weight"} : memref<16xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg31[%arg169] {from = "layer1_1_bn1_bias"} : memref<16xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg22[%arg169] {from = "layer1_1_rprelu1_shift_x_bias"} : memref<16xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg24[%arg169] {from = "layer1_1_rprelu1_prelu_weight"} : memref<16xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg23[%arg169] {from = "layer1_1_rprelu1_shift_y_bias"} : memref<16xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %36[%c0_75, %arg169, %arg170, %arg171] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg36[%arg169] {from = "layer1_1_bn3_weight"} : memref<16xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg37[%arg169] {from = "layer1_1_bn3_bias"} : memref<16xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %52[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn2"}
    %53 = memref.alloc() {name = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
    %54 = memref.alloc() {name = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %55 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %305 = affine.load %52[%c0_74, %arg171, %arg170, %arg172] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %53[%c0_74, %arg171, %arg170, %arg172] {to = "layer1_1_rsign2"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_6"
            %307 = hcl.create_loop_handle %306, "loop_6"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %53[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_6", op_name = "stage_6"}
            %308 = affine.load %305[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %54[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_7"
            %307 = hcl.create_loop_handle %306, "loop_7"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %53[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_7", op_name = "stage_7"}
            %308 = affine.load %305[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %55[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv2_lsb_truncate"}
    %56 = memref.alloc() {name = "layer1_1_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %57 = memref.alloc() {name = "layer1_1_conv2_out_msb"} : memref<1x16x32x32xi16>
    %58 = memref.alloc() {name = "layer1_1_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %59 = memref.alloc() {name = "layer1_1_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %60 = memref.alloc() {name = "layer1_1_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %54[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %56[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %55[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %60[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv2_out_lsb_pad"}
    %61 = memref.alloc() {name = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %62 = memref.alloc() {name = "layer1_1_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %63 = memref.alloc() {name = "layer1_1_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.load %58[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %305, %58[0, %arg171] : memref<3x34xi16, #map3>
            %306 = affine.load %58[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %306, %58[1, %arg171] : memref<3x34xi16, #map3>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %307 = affine.load %56[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %307, %58[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %59[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %59[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %59[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %59[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %58[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %59[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %59[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg32[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_1_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %57[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %308 = affine.load %62[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %308, %62[0, %arg171] : memref<3x34xi16, #map3>
            %309 = affine.load %62[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %309, %62[1, %arg171] : memref<3x34xi16, #map3>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %310 = affine.load %60[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %310, %62[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %63[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %63[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %63[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %63[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %62[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %63[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %63[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg32[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_1_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %61[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv2_out_lsb"}
    %64 = memref.alloc() {name = "layer1_1_conv2_pgconv"} : memref<1x16x32x32xf32, #map0>
    %65 = memref.alloc() {name = "layer1_1_bn3"} : memref<1x16x32x32xf32, #map0>
    %66 = memref.alloc() {name = "layer1_1_rprelu2"} : memref<1x16x32x32xf32, #map0>
    %67 = memref.alloc() {name = "layer1_1_residual2"} : memref<1x16x32x32xf32, #map0>
    %68 = memref.alloc() {name = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %57[%c0_73, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg33[%arg169] {from = "layer1_1_conv2_threshold"} : memref<16xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %61[%c0_73, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg34[%arg169] {from = "layer1_1_bn2_weight"} : memref<16xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg35[%arg169] {from = "layer1_1_bn2_bias"} : memref<16xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg25[%arg169] {from = "layer1_1_rprelu2_shift_x_bias"} : memref<16xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg27[%arg169] {from = "layer1_1_rprelu2_prelu_weight"} : memref<16xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg26[%arg169] {from = "layer1_1_rprelu2_shift_y_bias"} : memref<16xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %52[%c0_70, %arg169, %arg170, %arg171] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg38[%arg169] {from = "layer1_1_bn4_weight"} : memref<16xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg39[%arg169] {from = "layer1_1_bn4_bias"} : memref<16xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %68[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn4"}
    %69 = memref.alloc() {name = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
    %70 = memref.alloc() {name = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %71 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %305 = affine.load %68[%c0_69, %arg171, %arg170, %arg172] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %69[%c0_69, %arg171, %arg170, %arg172] {to = "layer1_2_rsign1"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_8"
            %307 = hcl.create_loop_handle %306, "loop_8"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %69[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_8", op_name = "stage_8"}
            %308 = affine.load %305[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %70[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_9"
            %307 = hcl.create_loop_handle %306, "loop_9"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %69[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_9", op_name = "stage_9"}
            %308 = affine.load %305[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %71[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv1_lsb_truncate"}
    %72 = memref.alloc() {name = "layer1_2_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %73 = memref.alloc() {name = "layer1_2_conv1_out_msb"} : memref<1x16x32x32xi16>
    %74 = memref.alloc() {name = "layer1_2_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %75 = memref.alloc() {name = "layer1_2_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %76 = memref.alloc() {name = "layer1_2_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %70[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %72[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %71[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %76[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv1_out_lsb_pad"}
    %77 = memref.alloc() {name = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %78 = memref.alloc() {name = "layer1_2_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %79 = memref.alloc() {name = "layer1_2_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.load %74[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %305, %74[0, %arg171] : memref<3x34xi16, #map3>
            %306 = affine.load %74[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %306, %74[1, %arg171] : memref<3x34xi16, #map3>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %307 = affine.load %72[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %307, %74[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %75[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %75[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %75[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %75[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %74[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %75[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %75[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg46[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_2_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %73[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %308 = affine.load %78[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %308, %78[0, %arg171] : memref<3x34xi16, #map3>
            %309 = affine.load %78[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %309, %78[1, %arg171] : memref<3x34xi16, #map3>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %310 = affine.load %76[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %310, %78[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %79[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %79[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %79[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %79[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %78[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %79[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %79[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg46[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_2_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %77[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv1_out_lsb"}
    %80 = memref.alloc() {name = "layer1_2_conv1_pgconv"} : memref<1x16x32x32xf32, #map0>
    %81 = memref.alloc() {name = "layer1_2_bn1"} : memref<1x16x32x32xf32, #map0>
    %82 = memref.alloc() {name = "layer1_2_rprelu1"} : memref<1x16x32x32xf32, #map0>
    %83 = memref.alloc() {name = "layer1_2_residual1"} : memref<1x16x32x32xf32, #map0>
    %84 = memref.alloc() {name = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %73[%c0_68, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg47[%arg169] {from = "layer1_2_conv1_threshold"} : memref<16xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %77[%c0_68, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg48[%arg169] {from = "layer1_2_bn1_weight"} : memref<16xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg49[%arg169] {from = "layer1_2_bn1_bias"} : memref<16xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg40[%arg169] {from = "layer1_2_rprelu1_shift_x_bias"} : memref<16xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg42[%arg169] {from = "layer1_2_rprelu1_prelu_weight"} : memref<16xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg41[%arg169] {from = "layer1_2_rprelu1_shift_y_bias"} : memref<16xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %68[%c0_65, %arg169, %arg170, %arg171] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg54[%arg169] {from = "layer1_2_bn3_weight"} : memref<16xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg55[%arg169] {from = "layer1_2_bn3_bias"} : memref<16xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %84[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn2"}
    %85 = memref.alloc() {name = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
    %86 = memref.alloc() {name = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %87 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %305 = affine.load %84[%c0_64, %arg171, %arg170, %arg172] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %85[%c0_64, %arg171, %arg170, %arg172] {to = "layer1_2_rsign2"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_10"
            %307 = hcl.create_loop_handle %306, "loop_10"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %85[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_10", op_name = "stage_10"}
            %308 = affine.load %305[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %86[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_11"
            %307 = hcl.create_loop_handle %306, "loop_11"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %85[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_11", op_name = "stage_11"}
            %308 = affine.load %305[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %87[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv2_lsb_truncate"}
    %88 = memref.alloc() {name = "layer1_2_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %89 = memref.alloc() {name = "layer1_2_conv2_out_msb"} : memref<1x16x32x32xi16>
    %90 = memref.alloc() {name = "layer1_2_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %91 = memref.alloc() {name = "layer1_2_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %92 = memref.alloc() {name = "layer1_2_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %86[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %88[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %87[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %92[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv2_out_lsb_pad"}
    %93 = memref.alloc() {name = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %94 = memref.alloc() {name = "layer1_2_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %95 = memref.alloc() {name = "layer1_2_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.load %90[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %305, %90[0, %arg171] : memref<3x34xi16, #map3>
            %306 = affine.load %90[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %306, %90[1, %arg171] : memref<3x34xi16, #map3>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %307 = affine.load %88[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %307, %90[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %91[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %91[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %91[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %91[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %90[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %91[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %91[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg50[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_2_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %89[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %308 = affine.load %94[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %308, %94[0, %arg171] : memref<3x34xi16, #map3>
            %309 = affine.load %94[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %309, %94[1, %arg171] : memref<3x34xi16, #map3>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %310 = affine.load %92[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %310, %94[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %95[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %95[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %95[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %95[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %94[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %95[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %95[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg50[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_2_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %93[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv2_out_lsb"}
    %96 = memref.alloc() {name = "layer1_2_conv2_pgconv"} : memref<1x16x32x32xf32, #map0>
    %97 = memref.alloc() {name = "layer1_2_bn3"} : memref<1x16x32x32xf32, #map0>
    %98 = memref.alloc() {name = "layer1_2_rprelu2"} : memref<1x16x32x32xf32, #map0>
    %99 = memref.alloc() {name = "layer1_2_residual2"} : memref<1x16x32x32xf32, #map0>
    %100 = memref.alloc() {name = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %89[%c0_63, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_msb"} : memref<1x16x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg51[%arg169] {from = "layer1_2_conv2_threshold"} : memref<16xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %93[%c0_63, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg52[%arg169] {from = "layer1_2_bn2_weight"} : memref<16xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg53[%arg169] {from = "layer1_2_bn2_bias"} : memref<16xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg43[%arg169] {from = "layer1_2_rprelu2_shift_x_bias"} : memref<16xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg45[%arg169] {from = "layer1_2_rprelu2_prelu_weight"} : memref<16xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg44[%arg169] {from = "layer1_2_rprelu2_shift_y_bias"} : memref<16xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %84[%c0_60, %arg169, %arg170, %arg171] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg56[%arg169] {from = "layer1_2_bn4_weight"} : memref<16xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg57[%arg169] {from = "layer1_2_bn4_bias"} : memref<16xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %100[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn4"}
    %101 = memref.alloc() {name = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
    %102 = memref.alloc() {name = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    %103 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %305 = affine.load %100[%c0_59, %arg171, %arg170, %arg172] {from = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %101[%c0_59, %arg171, %arg170, %arg172] {to = "layer2_0_rsign1"} : memref<1x16x32x32xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_12"
            %307 = hcl.create_loop_handle %306, "loop_12"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %101[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_12", op_name = "stage_12"}
            %308 = affine.load %305[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %102[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %305 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_13"
            %307 = hcl.create_loop_handle %306, "loop_13"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %101[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_13", op_name = "stage_13"}
            %308 = affine.load %305[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %103[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv1_lsb_truncate"}
    %104 = memref.alloc() {name = "layer2_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    %105 = memref.alloc() {name = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
    %106 = memref.alloc() {name = "layer2_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map3>
    %107 = memref.alloc() {name = "layer2_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map4>
    %108 = memref.alloc() {name = "layer2_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %102[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %104[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map2>
            %306 = affine.if #set0(%arg171, %arg170) -> i16 {
              %307 = affine.load %103[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %108[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv1_out_lsb_pad"}
    %109 = memref.alloc() {name = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %110 = memref.alloc() {name = "layer2_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map3>
    %111 = memref.alloc() {name = "layer2_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %305 = affine.load %106[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %305, %106[0, %arg171] : memref<3x34xi16, #map3>
            %306 = affine.load %106[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %306, %106[1, %arg171] : memref<3x34xi16, #map3>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %307 = affine.load %104[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %307, %106[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %107[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %107[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %107[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %107[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %106[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %107[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %107[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg64[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv1_weight", unsigned} : memref<32x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_0_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %105[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x32x32xi16>
              }
            }
            %308 = affine.load %110[1, %arg171] : memref<3x34xi16, #map3>
            affine.store %308, %110[0, %arg171] : memref<3x34xi16, #map3>
            %309 = affine.load %110[2, %arg171] : memref<3x34xi16, #map3>
            affine.store %309, %110[1, %arg171] : memref<3x34xi16, #map3>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %310 = affine.load %108[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map2>
            affine.store %310, %110[2, %arg171] : memref<3x34xi16, #map3>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %311 = affine.load %111[%arg172, 1] : memref<3x3xi16, #map4>
                affine.store %311, %111[%arg172, 0] : memref<3x3xi16, #map4>
                %312 = affine.load %111[%arg172, 2] : memref<3x3xi16, #map4>
                affine.store %312, %111[%arg172, 1] : memref<3x3xi16, #map4>
                %313 = affine.load %110[%arg172, %arg171] : memref<3x34xi16, #map3>
                affine.store %313, %111[%arg172, 2] : memref<3x3xi16, #map4>
              } {spatial}
              affine.if #set1(%arg171) {
                %311 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %313 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %316 = arith.extsi %c16_i32 : i32 to i128
                        %317 = affine.load %111[%arg173, %arg174] : memref<3x3xi16, #map4>
                        %318 = affine.load %arg64[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv1_weight", unsigned} : memref<32x1x3x3xi16, #map1>
                        %319 = arith.xori %317, %318 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %320 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %321 = arith.shrui %319, %320 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %322 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %323 = arith.andi %321, %322 {unsigned} : i16
                        %324 = arith.subi %319, %323 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %325 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %326 = arith.andi %324, %325 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %327 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %328 = arith.shrui %324, %327 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %329 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.addi %326, %330 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %332 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %333 = arith.shrui %331, %332 {unsigned} : i16
                        %334 = arith.addi %331, %333 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %335 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %336 = arith.andi %334, %335 {unsigned} : i16
                        %337 = arith.extui %336 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %338 = arith.muli %337, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %339 = arith.extsi %c56_i32 : i32 to i64
                        %340 = arith.shrui %338, %339 : i64
                        %341 = arith.extsi %340 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %342 = arith.extsi %c1_i32_97 : i32 to i64
                        %343 = arith.extsi %342 : i64 to i128
                        %344 = arith.shli %341, %343 : i128
                        %345 = arith.subi %316, %344 : i128
                        %346 = arith.trunci %345 : i128 to i16
                        affine.yield %346 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %316 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %316 : i16
                      }
                      %314 = affine.load %311[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %315 = arith.addi %313, %314 : i16
                      affine.store %315, %311[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_0_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %312 = affine.load %311[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %312, %109[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv1_out_lsb"}
    %112 = memref.alloc() {name = "layer2_0_conv1_pgconv"} : memref<1x32x16x16xf32, #map0>
    %113 = memref.alloc() {name = "layer2_0_bn1"} : memref<1x32x16x16xf32, #map0>
    %114 = memref.alloc() {name = "layer2_0_rprelu1"} : memref<1x32x16x16xf32, #map0>
    %115 = memref.alloc() {name = "layer2_0_avgpool"} : memref<1x16x16x16xf32, #map0>
    %116 = memref.alloc() {name = "layer2_0_avgpool_reuse_2"} : memref<2x32xf32, #map3>
    %117 = memref.alloc() {name = "layer2_0_avgpool_reuse_3"} : memref<2x2xf32, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 33 {
          affine.for %arg171 = 0 to 32 {
            %305 = affine.load %116[1, %arg171] : memref<2x32xf32, #map3>
            affine.store %305, %116[0, %arg171] : memref<2x32xf32, #map3>
            %c0_90 = arith.constant 0 : index
            %306 = affine.load %100[%c0_90, %arg169, %arg170, %arg171] : memref<1x16x32x32xf32, #map0>
            affine.store %306, %116[1, %arg171] : memref<2x32xf32, #map3>
          } {spatial}
          affine.if #set3(%arg170) {
            affine.for %arg171 = 0 to 33 {
              affine.for %arg172 = 0 to 2 {
                %305 = affine.load %117[%arg172, 1] : memref<2x2xf32, #map4>
                affine.store %305, %117[%arg172, 0] : memref<2x2xf32, #map4>
                %306 = affine.load %116[%arg172, %arg171] : memref<2x32xf32, #map3>
                affine.store %306, %117[%arg172, 1] : memref<2x2xf32, #map4>
              } {spatial}
              affine.if #set3(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
                %c0_90 = arith.constant 0 : index
                %cst = arith.constant 0.000000e+00 : f32
                affine.store %cst, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 2 {
                    %309 = affine.load %117[%arg172, %arg173] : memref<2x2xf32, #map4>
                    %310 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xf32>
                    %311 = arith.addf %309, %310 : f32
                    affine.store %311, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
                  } {loop_name = "rx_1", reduction}
                } {loop_name = "rx_0", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xf32>
                %c4_i32 = arith.constant 4 : i32
                %307 = arith.sitofp %c4_i32 : i32 to f32
                %308 = arith.divf %306, %307 : f32
                affine.store %308, %115[%arg168, %arg169, (%arg170 - 1) floordiv 2, (%arg171 - 1) floordiv 2] : memref<1x16x16x16xf32, #map0>
              }
            } {loop_name = "w"}
          }
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_avgpool"}
    %118 = memref.alloc() {name = "layer2_0_concat"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %115[%arg168, %arg169 mod 16, %arg170, %arg171] {from = "layer2_0_avgpool"} : memref<1x16x16x16xf32, #map0>
            affine.store %305, %118[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_concat"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_concat"}
    %119 = memref.alloc() {name = "layer2_0_residual1"} : memref<1x32x16x16xf32, #map0>
    %120 = memref.alloc() {name = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %105[%c0_58, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg65[%arg169] {from = "layer2_0_conv1_threshold"} : memref<32xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %109[%c0_58, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg66[%arg169] {from = "layer2_0_bn1_weight"} : memref<32xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg67[%arg169] {from = "layer2_0_bn1_bias"} : memref<32xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg58[%arg169] {from = "layer2_0_rprelu1_shift_x_bias"} : memref<32xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg60[%arg169] {from = "layer2_0_rprelu1_prelu_weight"} : memref<32xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg59[%arg169] {from = "layer2_0_rprelu1_shift_y_bias"} : memref<32xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %118[%c0_55, %arg169, %arg170, %arg171] {from = "layer2_0_concat"} : memref<1x32x16x16xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg72[%arg169] {from = "layer2_0_bn3_weight"} : memref<32xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg73[%arg169] {from = "layer2_0_bn3_bias"} : memref<32xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %120[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn2"}
    %121 = memref.alloc() {name = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
    %122 = memref.alloc() {name = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    %123 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %305 = affine.load %120[%c0_54, %arg171, %arg170, %arg172] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %121[%c0_54, %arg171, %arg170, %arg172] {to = "layer2_0_rsign2"} : memref<1x32x16x16xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_14"
            %307 = hcl.create_loop_handle %306, "loop_14"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %121[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_14", op_name = "stage_14"}
            %308 = affine.load %305[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %122[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_15"
            %307 = hcl.create_loop_handle %306, "loop_15"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %121[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_15", op_name = "stage_15"}
            %308 = affine.load %305[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %123[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv2_lsb_truncate"}
    %124 = memref.alloc() {name = "layer2_0_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    %125 = memref.alloc() {name = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
    %126 = memref.alloc() {name = "layer2_0_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %127 = memref.alloc() {name = "layer2_0_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %128 = memref.alloc() {name = "layer2_0_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %305 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %122[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %124[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map2>
            %306 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %123[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %128[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv2_out_lsb_pad"}
    %129 = memref.alloc() {name = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %130 = memref.alloc() {name = "layer2_0_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %131 = memref.alloc() {name = "layer2_0_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %126[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %126[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %126[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %126[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %124[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %126[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %127[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %127[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %127[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %127[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %126[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %127[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %127[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_0_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %125[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %130[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %130[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %130[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %130[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %128[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %130[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %131[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %131[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %131[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %131[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %130[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %131[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %131[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_0_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %129[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv2_out_lsb"}
    %132 = memref.alloc() {name = "layer2_0_conv2_pgconv"} : memref<1x32x16x16xf32, #map0>
    %133 = memref.alloc() {name = "layer2_0_bn3"} : memref<1x32x16x16xf32, #map0>
    %134 = memref.alloc() {name = "layer2_0_rprelu2"} : memref<1x32x16x16xf32, #map0>
    %135 = memref.alloc() {name = "layer2_0_residual2"} : memref<1x32x16x16xf32, #map0>
    %136 = memref.alloc() {name = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %125[%c0_53, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg69[%arg169] {from = "layer2_0_conv2_threshold"} : memref<32xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %129[%c0_53, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg70[%arg169] {from = "layer2_0_bn2_weight"} : memref<32xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg71[%arg169] {from = "layer2_0_bn2_bias"} : memref<32xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg61[%arg169] {from = "layer2_0_rprelu2_shift_x_bias"} : memref<32xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg63[%arg169] {from = "layer2_0_rprelu2_prelu_weight"} : memref<32xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg62[%arg169] {from = "layer2_0_rprelu2_shift_y_bias"} : memref<32xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %120[%c0_50, %arg169, %arg170, %arg171] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg74[%arg169] {from = "layer2_0_bn4_weight"} : memref<32xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg75[%arg169] {from = "layer2_0_bn4_bias"} : memref<32xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %136[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn4"}
    %137 = memref.alloc() {name = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
    %138 = memref.alloc() {name = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    %139 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %305 = affine.load %136[%c0_49, %arg171, %arg170, %arg172] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %137[%c0_49, %arg171, %arg170, %arg172] {to = "layer2_1_rsign1"} : memref<1x32x16x16xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_16"
            %307 = hcl.create_loop_handle %306, "loop_16"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %137[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_16", op_name = "stage_16"}
            %308 = affine.load %305[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %138[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_17"
            %307 = hcl.create_loop_handle %306, "loop_17"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %137[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_17", op_name = "stage_17"}
            %308 = affine.load %305[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %139[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv1_lsb_truncate"}
    %140 = memref.alloc() {name = "layer2_1_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    %141 = memref.alloc() {name = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
    %142 = memref.alloc() {name = "layer2_1_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %143 = memref.alloc() {name = "layer2_1_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %144 = memref.alloc() {name = "layer2_1_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %305 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %138[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %140[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map2>
            %306 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %139[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %144[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv1_out_lsb_pad"}
    %145 = memref.alloc() {name = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %146 = memref.alloc() {name = "layer2_1_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %147 = memref.alloc() {name = "layer2_1_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %142[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %142[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %142[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %142[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %140[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %142[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %143[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %143[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %143[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %143[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %142[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %143[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %143[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_1_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %141[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %146[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %146[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %146[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %146[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %144[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %146[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %147[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %147[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %147[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %147[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %146[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %147[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %147[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_1_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %145[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv1_out_lsb"}
    %148 = memref.alloc() {name = "layer2_1_conv1_pgconv"} : memref<1x32x16x16xf32, #map0>
    %149 = memref.alloc() {name = "layer2_1_bn1"} : memref<1x32x16x16xf32, #map0>
    %150 = memref.alloc() {name = "layer2_1_rprelu1"} : memref<1x32x16x16xf32, #map0>
    %151 = memref.alloc() {name = "layer2_1_residual1"} : memref<1x32x16x16xf32, #map0>
    %152 = memref.alloc() {name = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %141[%c0_48, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg83[%arg169] {from = "layer2_1_conv1_threshold"} : memref<32xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %145[%c0_48, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg84[%arg169] {from = "layer2_1_bn1_weight"} : memref<32xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg85[%arg169] {from = "layer2_1_bn1_bias"} : memref<32xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg76[%arg169] {from = "layer2_1_rprelu1_shift_x_bias"} : memref<32xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg78[%arg169] {from = "layer2_1_rprelu1_prelu_weight"} : memref<32xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg77[%arg169] {from = "layer2_1_rprelu1_shift_y_bias"} : memref<32xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %136[%c0_45, %arg169, %arg170, %arg171] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg90[%arg169] {from = "layer2_1_bn3_weight"} : memref<32xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg91[%arg169] {from = "layer2_1_bn3_bias"} : memref<32xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %152[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn2"}
    %153 = memref.alloc() {name = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
    %154 = memref.alloc() {name = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    %155 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %305 = affine.load %152[%c0_44, %arg171, %arg170, %arg172] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %153[%c0_44, %arg171, %arg170, %arg172] {to = "layer2_1_rsign2"} : memref<1x32x16x16xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_18"
            %307 = hcl.create_loop_handle %306, "loop_18"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %153[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_18", op_name = "stage_18"}
            %308 = affine.load %305[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %154[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_19"
            %307 = hcl.create_loop_handle %306, "loop_19"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %153[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_19", op_name = "stage_19"}
            %308 = affine.load %305[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %155[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv2_lsb_truncate"}
    %156 = memref.alloc() {name = "layer2_1_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    %157 = memref.alloc() {name = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
    %158 = memref.alloc() {name = "layer2_1_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %159 = memref.alloc() {name = "layer2_1_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %160 = memref.alloc() {name = "layer2_1_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %305 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %154[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %156[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map2>
            %306 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %155[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %160[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv2_out_lsb_pad"}
    %161 = memref.alloc() {name = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %162 = memref.alloc() {name = "layer2_1_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %163 = memref.alloc() {name = "layer2_1_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %158[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %158[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %158[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %158[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %156[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %158[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %159[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %159[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %159[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %159[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %158[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %159[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %159[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_1_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %157[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %162[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %162[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %162[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %162[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %160[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %162[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %163[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %163[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %163[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %163[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %162[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %163[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %163[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_1_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %161[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv2_out_lsb"}
    %164 = memref.alloc() {name = "layer2_1_conv2_pgconv"} : memref<1x32x16x16xf32, #map0>
    %165 = memref.alloc() {name = "layer2_1_bn3"} : memref<1x32x16x16xf32, #map0>
    %166 = memref.alloc() {name = "layer2_1_rprelu2"} : memref<1x32x16x16xf32, #map0>
    %167 = memref.alloc() {name = "layer2_1_residual2"} : memref<1x32x16x16xf32, #map0>
    %168 = memref.alloc() {name = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %157[%c0_43, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg87[%arg169] {from = "layer2_1_conv2_threshold"} : memref<32xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %161[%c0_43, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg88[%arg169] {from = "layer2_1_bn2_weight"} : memref<32xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg89[%arg169] {from = "layer2_1_bn2_bias"} : memref<32xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg79[%arg169] {from = "layer2_1_rprelu2_shift_x_bias"} : memref<32xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg81[%arg169] {from = "layer2_1_rprelu2_prelu_weight"} : memref<32xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg80[%arg169] {from = "layer2_1_rprelu2_shift_y_bias"} : memref<32xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %152[%c0_40, %arg169, %arg170, %arg171] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg92[%arg169] {from = "layer2_1_bn4_weight"} : memref<32xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg93[%arg169] {from = "layer2_1_bn4_bias"} : memref<32xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %168[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn4"}
    %169 = memref.alloc() {name = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
    %170 = memref.alloc() {name = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    %171 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %305 = affine.load %168[%c0_39, %arg171, %arg170, %arg172] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %169[%c0_39, %arg171, %arg170, %arg172] {to = "layer2_2_rsign1"} : memref<1x32x16x16xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_20"
            %307 = hcl.create_loop_handle %306, "loop_20"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %169[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_20", op_name = "stage_20"}
            %308 = affine.load %305[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %170[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_21"
            %307 = hcl.create_loop_handle %306, "loop_21"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %169[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_21", op_name = "stage_21"}
            %308 = affine.load %305[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %171[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv1_lsb_truncate"}
    %172 = memref.alloc() {name = "layer2_2_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    %173 = memref.alloc() {name = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
    %174 = memref.alloc() {name = "layer2_2_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %175 = memref.alloc() {name = "layer2_2_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %176 = memref.alloc() {name = "layer2_2_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %305 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %170[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %172[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map2>
            %306 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %171[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %176[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv1_out_lsb_pad"}
    %177 = memref.alloc() {name = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %178 = memref.alloc() {name = "layer2_2_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %179 = memref.alloc() {name = "layer2_2_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %174[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %174[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %174[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %174[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %172[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %174[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %175[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %175[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %175[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %175[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %174[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %175[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %175[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_2_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %173[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %178[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %178[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %178[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %178[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %176[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %178[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %179[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %179[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %179[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %179[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %178[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %179[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %179[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_2_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %177[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv1_out_lsb"}
    %180 = memref.alloc() {name = "layer2_2_conv1_pgconv"} : memref<1x32x16x16xf32, #map0>
    %181 = memref.alloc() {name = "layer2_2_bn1"} : memref<1x32x16x16xf32, #map0>
    %182 = memref.alloc() {name = "layer2_2_rprelu1"} : memref<1x32x16x16xf32, #map0>
    %183 = memref.alloc() {name = "layer2_2_residual1"} : memref<1x32x16x16xf32, #map0>
    %184 = memref.alloc() {name = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %173[%c0_38, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg101[%arg169] {from = "layer2_2_conv1_threshold"} : memref<32xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %177[%c0_38, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg102[%arg169] {from = "layer2_2_bn1_weight"} : memref<32xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg103[%arg169] {from = "layer2_2_bn1_bias"} : memref<32xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg94[%arg169] {from = "layer2_2_rprelu1_shift_x_bias"} : memref<32xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg96[%arg169] {from = "layer2_2_rprelu1_prelu_weight"} : memref<32xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg95[%arg169] {from = "layer2_2_rprelu1_shift_y_bias"} : memref<32xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %168[%c0_35, %arg169, %arg170, %arg171] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg108[%arg169] {from = "layer2_2_bn3_weight"} : memref<32xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg109[%arg169] {from = "layer2_2_bn3_bias"} : memref<32xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %184[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn2"}
    %185 = memref.alloc() {name = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
    %186 = memref.alloc() {name = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    %187 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %305 = affine.load %184[%c0_34, %arg171, %arg170, %arg172] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %185[%c0_34, %arg171, %arg170, %arg172] {to = "layer2_2_rsign2"} : memref<1x32x16x16xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_22"
            %307 = hcl.create_loop_handle %306, "loop_22"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %185[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_22", op_name = "stage_22"}
            %308 = affine.load %305[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %186[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_23"
            %307 = hcl.create_loop_handle %306, "loop_23"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %185[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_23", op_name = "stage_23"}
            %308 = affine.load %305[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %187[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv2_lsb_truncate"}
    %188 = memref.alloc() {name = "layer2_2_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    %189 = memref.alloc() {name = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
    %190 = memref.alloc() {name = "layer2_2_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %191 = memref.alloc() {name = "layer2_2_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %192 = memref.alloc() {name = "layer2_2_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %305 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %186[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %188[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map2>
            %306 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %187[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %192[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv2_out_lsb_pad"}
    %193 = memref.alloc() {name = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %194 = memref.alloc() {name = "layer2_2_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %195 = memref.alloc() {name = "layer2_2_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %190[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %190[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %190[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %190[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %188[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %190[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %191[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %191[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %191[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %191[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %190[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %191[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %191[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_2_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %189[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %194[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %194[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %194[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %194[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %192[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %194[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %195[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %195[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %195[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %195[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %194[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %195[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %195[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_2_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %193[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv2_out_lsb"}
    %196 = memref.alloc() {name = "layer2_2_conv2_pgconv"} : memref<1x32x16x16xf32, #map0>
    %197 = memref.alloc() {name = "layer2_2_bn3"} : memref<1x32x16x16xf32, #map0>
    %198 = memref.alloc() {name = "layer2_2_rprelu2"} : memref<1x32x16x16xf32, #map0>
    %199 = memref.alloc() {name = "layer2_2_residual2"} : memref<1x32x16x16xf32, #map0>
    %200 = memref.alloc() {name = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %189[%c0_33, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg105[%arg169] {from = "layer2_2_conv2_threshold"} : memref<32xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %193[%c0_33, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg106[%arg169] {from = "layer2_2_bn2_weight"} : memref<32xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg107[%arg169] {from = "layer2_2_bn2_bias"} : memref<32xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg97[%arg169] {from = "layer2_2_rprelu2_shift_x_bias"} : memref<32xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg99[%arg169] {from = "layer2_2_rprelu2_prelu_weight"} : memref<32xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg98[%arg169] {from = "layer2_2_rprelu2_shift_y_bias"} : memref<32xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %184[%c0_30, %arg169, %arg170, %arg171] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg110[%arg169] {from = "layer2_2_bn4_weight"} : memref<32xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg111[%arg169] {from = "layer2_2_bn4_bias"} : memref<32xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %200[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn4"}
    %201 = memref.alloc() {name = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
    %202 = memref.alloc() {name = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    %203 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %305 = affine.load %200[%c0_29, %arg171, %arg170, %arg172] {from = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %201[%c0_29, %arg171, %arg170, %arg172] {to = "layer3_0_rsign1"} : memref<1x32x16x16xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_24"
            %307 = hcl.create_loop_handle %306, "loop_24"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %201[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_24", op_name = "stage_24"}
            %308 = affine.load %305[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %202[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %305 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_25"
            %307 = hcl.create_loop_handle %306, "loop_25"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %201[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_25", op_name = "stage_25"}
            %308 = affine.load %305[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %203[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv1_lsb_truncate"}
    %204 = memref.alloc() {name = "layer3_0_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    %205 = memref.alloc() {name = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
    %206 = memref.alloc() {name = "layer3_0_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %207 = memref.alloc() {name = "layer3_0_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %208 = memref.alloc() {name = "layer3_0_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %305 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %202[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %204[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map2>
            %306 = affine.if #set4(%arg171, %arg170) -> i16 {
              %307 = affine.load %203[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %208[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv1_out_lsb_pad"}
    %209 = memref.alloc() {name = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
    %210 = memref.alloc() {name = "layer3_0_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %211 = memref.alloc() {name = "layer3_0_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %206[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %206[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %206[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %206[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %204[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %206[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %207[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %207[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %207[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %207[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %206[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %207[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %207[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_0_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %205[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %305 = affine.load %210[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %305, %210[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %306 = affine.load %210[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %306, %210[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %307 = affine.load %208[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map2>
              affine.store %307, %210[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %211[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %305, %211[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %306 = affine.load %211[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %306, %211[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %307 = affine.load %210[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %307, %211[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %211[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %312 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_0_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %209[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv1_out_lsb"}
    %212 = memref.alloc() {name = "layer3_0_conv1_pgconv"} : memref<1x64x8x8xf32, #map0>
    %213 = memref.alloc() {name = "layer3_0_bn1"} : memref<1x64x8x8xf32, #map0>
    %214 = memref.alloc() {name = "layer3_0_rprelu1"} : memref<1x64x8x8xf32, #map0>
    %215 = memref.alloc() {name = "layer3_0_avgpool"} : memref<1x32x8x8xf32, #map0>
    %216 = memref.alloc() {name = "layer3_0_avgpool_reuse_2"} : memref<2x16xf32, #map3>
    %217 = memref.alloc() {name = "layer3_0_avgpool_reuse_3"} : memref<2x2xf32, #map4>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 17 {
          affine.for %arg171 = 0 to 16 {
            %305 = affine.load %216[1, %arg171] : memref<2x16xf32, #map3>
            affine.store %305, %216[0, %arg171] : memref<2x16xf32, #map3>
            %c0_90 = arith.constant 0 : index
            %306 = affine.load %200[%c0_90, %arg169, %arg170, %arg171] : memref<1x32x16x16xf32, #map0>
            affine.store %306, %216[1, %arg171] : memref<2x16xf32, #map3>
          } {spatial}
          affine.if #set3(%arg170) {
            affine.for %arg171 = 0 to 17 {
              affine.for %arg172 = 0 to 2 {
                %305 = affine.load %217[%arg172, 1] : memref<2x2xf32, #map4>
                affine.store %305, %217[%arg172, 0] : memref<2x2xf32, #map4>
                %306 = affine.load %216[%arg172, %arg171] : memref<2x16xf32, #map3>
                affine.store %306, %217[%arg172, 1] : memref<2x2xf32, #map4>
              } {spatial}
              affine.if #set3(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
                %c0_90 = arith.constant 0 : index
                %cst = arith.constant 0.000000e+00 : f32
                affine.store %cst, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 2 {
                    %309 = affine.load %217[%arg172, %arg173] : memref<2x2xf32, #map4>
                    %310 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xf32>
                    %311 = arith.addf %309, %310 : f32
                    affine.store %311, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
                  } {loop_name = "rx_3", reduction}
                } {loop_name = "rx_2", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xf32>
                %c4_i32 = arith.constant 4 : i32
                %307 = arith.sitofp %c4_i32 : i32 to f32
                %308 = arith.divf %306, %307 : f32
                affine.store %308, %215[%arg168, %arg169, (%arg170 - 1) floordiv 2, (%arg171 - 1) floordiv 2] : memref<1x32x8x8xf32, #map0>
              }
            } {loop_name = "w"}
          }
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_avgpool"}
    %218 = memref.alloc() {name = "layer3_0_concat"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %215[%arg168, %arg169 mod 32, %arg170, %arg171] {from = "layer3_0_avgpool"} : memref<1x32x8x8xf32, #map0>
            affine.store %305, %218[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_concat"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_concat"}
    %219 = memref.alloc() {name = "layer3_0_residual1"} : memref<1x64x8x8xf32, #map0>
    %220 = memref.alloc() {name = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %205[%c0_28, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg119[%arg169] {from = "layer3_0_conv1_threshold"} : memref<64xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %209[%c0_28, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg120[%arg169] {from = "layer3_0_bn1_weight"} : memref<64xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg121[%arg169] {from = "layer3_0_bn1_bias"} : memref<64xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg112[%arg169] {from = "layer3_0_rprelu1_shift_x_bias"} : memref<64xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg114[%arg169] {from = "layer3_0_rprelu1_prelu_weight"} : memref<64xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg113[%arg169] {from = "layer3_0_rprelu1_shift_y_bias"} : memref<64xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %218[%c0_25, %arg169, %arg170, %arg171] {from = "layer3_0_concat"} : memref<1x64x8x8xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg126[%arg169] {from = "layer3_0_bn3_weight"} : memref<64xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg127[%arg169] {from = "layer3_0_bn3_bias"} : memref<64xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %220[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn2"}
    %221 = memref.alloc() {name = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
    %222 = memref.alloc() {name = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    %223 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %305 = affine.load %220[%c0_24, %arg171, %arg170, %arg172] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %221[%c0_24, %arg171, %arg170, %arg172] {to = "layer3_0_rsign2"} : memref<1x64x8x8xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_26"
            %307 = hcl.create_loop_handle %306, "loop_26"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %221[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_26", op_name = "stage_26"}
            %308 = affine.load %305[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %222[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_27"
            %307 = hcl.create_loop_handle %306, "loop_27"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %221[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_27", op_name = "stage_27"}
            %308 = affine.load %305[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %223[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv2_lsb_truncate"}
    %224 = memref.alloc() {name = "layer3_0_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    %225 = memref.alloc() {name = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
    %226 = memref.alloc() {name = "layer3_0_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %227 = memref.alloc() {name = "layer3_0_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %228 = memref.alloc() {name = "layer3_0_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %305 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %222[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %224[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map2>
            %306 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %223[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %228[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv2_out_lsb_pad"}
    %229 = memref.alloc() {name = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %230 = memref.alloc() {name = "layer3_0_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %231 = memref.alloc() {name = "layer3_0_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %226[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %226[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %226[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %226[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %224[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %226[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %227[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %227[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %227[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %227[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %226[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %227[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %227[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_0_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %225[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %230[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %230[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %230[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %230[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %228[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %230[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %231[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %231[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %231[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %231[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %230[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %231[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %231[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_0_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %229[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv2_out_lsb"}
    %232 = memref.alloc() {name = "layer3_0_conv2_pgconv"} : memref<1x64x8x8xf32, #map0>
    %233 = memref.alloc() {name = "layer3_0_bn3"} : memref<1x64x8x8xf32, #map0>
    %234 = memref.alloc() {name = "layer3_0_rprelu2"} : memref<1x64x8x8xf32, #map0>
    %235 = memref.alloc() {name = "layer3_0_residual2"} : memref<1x64x8x8xf32, #map0>
    %236 = memref.alloc() {name = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %225[%c0_23, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg123[%arg169] {from = "layer3_0_conv2_threshold"} : memref<64xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %229[%c0_23, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg124[%arg169] {from = "layer3_0_bn2_weight"} : memref<64xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg125[%arg169] {from = "layer3_0_bn2_bias"} : memref<64xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg115[%arg169] {from = "layer3_0_rprelu2_shift_x_bias"} : memref<64xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg117[%arg169] {from = "layer3_0_rprelu2_prelu_weight"} : memref<64xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg116[%arg169] {from = "layer3_0_rprelu2_shift_y_bias"} : memref<64xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %220[%c0_20, %arg169, %arg170, %arg171] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg128[%arg169] {from = "layer3_0_bn4_weight"} : memref<64xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg129[%arg169] {from = "layer3_0_bn4_bias"} : memref<64xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %236[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn4"}
    %237 = memref.alloc() {name = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map0>
    %238 = memref.alloc() {name = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    %239 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %305 = affine.load %236[%c0_19, %arg171, %arg170, %arg172] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %237[%c0_19, %arg171, %arg170, %arg172] {to = "layer3_1_rsign1"} : memref<1x64x8x8xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_28"
            %307 = hcl.create_loop_handle %306, "loop_28"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %237[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_28", op_name = "stage_28"}
            %308 = affine.load %305[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %238[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_msb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_29"
            %307 = hcl.create_loop_handle %306, "loop_29"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %237[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_29", op_name = "stage_29"}
            %308 = affine.load %305[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %239[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_lsb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv1_lsb_truncate"}
    %240 = memref.alloc() {name = "layer3_1_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    %241 = memref.alloc() {name = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
    %242 = memref.alloc() {name = "layer3_1_conv1_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %243 = memref.alloc() {name = "layer3_1_conv1_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %244 = memref.alloc() {name = "layer3_1_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %305 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %238[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %240[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_msb_pad"} : memref<1x4x10x10xi16, #map2>
            %306 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %239[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %244[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_lsb_pad"} : memref<1x4x10x10xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv1_out_lsb_pad"}
    %245 = memref.alloc() {name = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %246 = memref.alloc() {name = "layer3_1_conv1_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %247 = memref.alloc() {name = "layer3_1_conv1_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %242[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %242[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %242[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %242[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %240[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %242[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %243[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %243[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %243[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %243[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %242[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %243[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %243[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_1_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %241[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %246[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %246[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %246[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %246[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %244[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %246[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %247[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %247[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %247[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %247[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %246[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %247[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %247[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_1_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %245[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv1_out_lsb"}
    %248 = memref.alloc() {name = "layer3_1_conv1_pgconv"} : memref<1x64x8x8xf32, #map0>
    %249 = memref.alloc() {name = "layer3_1_bn1"} : memref<1x64x8x8xf32, #map0>
    %250 = memref.alloc() {name = "layer3_1_rprelu1"} : memref<1x64x8x8xf32, #map0>
    %251 = memref.alloc() {name = "layer3_1_residual1"} : memref<1x64x8x8xf32, #map0>
    %252 = memref.alloc() {name = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %241[%c0_18, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg137[%arg169] {from = "layer3_1_conv1_threshold"} : memref<64xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %245[%c0_18, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg138[%arg169] {from = "layer3_1_bn1_weight"} : memref<64xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg139[%arg169] {from = "layer3_1_bn1_bias"} : memref<64xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg130[%arg169] {from = "layer3_1_rprelu1_shift_x_bias"} : memref<64xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg132[%arg169] {from = "layer3_1_rprelu1_prelu_weight"} : memref<64xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg131[%arg169] {from = "layer3_1_rprelu1_shift_y_bias"} : memref<64xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %236[%c0_15, %arg169, %arg170, %arg171] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg144[%arg169] {from = "layer3_1_bn3_weight"} : memref<64xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg145[%arg169] {from = "layer3_1_bn3_bias"} : memref<64xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %252[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn2"}
    %253 = memref.alloc() {name = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
    %254 = memref.alloc() {name = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    %255 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %305 = affine.load %252[%c0_14, %arg171, %arg170, %arg172] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %253[%c0_14, %arg171, %arg170, %arg172] {to = "layer3_1_rsign2"} : memref<1x64x8x8xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_30"
            %307 = hcl.create_loop_handle %306, "loop_30"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %253[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_30", op_name = "stage_30"}
            %308 = affine.load %305[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %254[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_31"
            %307 = hcl.create_loop_handle %306, "loop_31"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %253[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_31", op_name = "stage_31"}
            %308 = affine.load %305[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %255[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv2_lsb_truncate"}
    %256 = memref.alloc() {name = "layer3_1_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    %257 = memref.alloc() {name = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
    %258 = memref.alloc() {name = "layer3_1_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %259 = memref.alloc() {name = "layer3_1_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %260 = memref.alloc() {name = "layer3_1_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %305 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %254[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %256[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map2>
            %306 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %255[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %260[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv2_out_lsb_pad"}
    %261 = memref.alloc() {name = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %262 = memref.alloc() {name = "layer3_1_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %263 = memref.alloc() {name = "layer3_1_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %258[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %258[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %258[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %258[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %256[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %258[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %259[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %259[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %259[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %259[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %258[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %259[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %259[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_1_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %257[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %262[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %262[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %262[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %262[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %260[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %262[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %263[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %263[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %263[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %263[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %262[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %263[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %263[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_1_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %261[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv2_out_lsb"}
    %264 = memref.alloc() {name = "layer3_1_conv2_pgconv"} : memref<1x64x8x8xf32, #map0>
    %265 = memref.alloc() {name = "layer3_1_bn3"} : memref<1x64x8x8xf32, #map0>
    %266 = memref.alloc() {name = "layer3_1_rprelu2"} : memref<1x64x8x8xf32, #map0>
    %267 = memref.alloc() {name = "layer3_1_residual2"} : memref<1x64x8x8xf32, #map0>
    %268 = memref.alloc() {name = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %257[%c0_13, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg141[%arg169] {from = "layer3_1_conv2_threshold"} : memref<64xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %261[%c0_13, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg142[%arg169] {from = "layer3_1_bn2_weight"} : memref<64xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg143[%arg169] {from = "layer3_1_bn2_bias"} : memref<64xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg133[%arg169] {from = "layer3_1_rprelu2_shift_x_bias"} : memref<64xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg135[%arg169] {from = "layer3_1_rprelu2_prelu_weight"} : memref<64xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg134[%arg169] {from = "layer3_1_rprelu2_shift_y_bias"} : memref<64xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %252[%c0_10, %arg169, %arg170, %arg171] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg146[%arg169] {from = "layer3_1_bn4_weight"} : memref<64xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg147[%arg169] {from = "layer3_1_bn4_bias"} : memref<64xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %268[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn4"}
    %269 = memref.alloc() {name = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map0>
    %270 = memref.alloc() {name = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    %271 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %305 = affine.load %268[%c0_9, %arg171, %arg170, %arg172] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %269[%c0_9, %arg171, %arg170, %arg172] {to = "layer3_2_rsign1"} : memref<1x64x8x8xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_32"
            %307 = hcl.create_loop_handle %306, "loop_32"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %269[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_32", op_name = "stage_32"}
            %308 = affine.load %305[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %270[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_msb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_33"
            %307 = hcl.create_loop_handle %306, "loop_33"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %269[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_33", op_name = "stage_33"}
            %308 = affine.load %305[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %271[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_lsb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv1_lsb_truncate"}
    %272 = memref.alloc() {name = "layer3_2_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    %273 = memref.alloc() {name = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
    %274 = memref.alloc() {name = "layer3_2_conv1_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %275 = memref.alloc() {name = "layer3_2_conv1_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %276 = memref.alloc() {name = "layer3_2_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %305 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %270[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %272[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_msb_pad"} : memref<1x4x10x10xi16, #map2>
            %306 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %271[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %276[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_lsb_pad"} : memref<1x4x10x10xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv1_out_lsb_pad"}
    %277 = memref.alloc() {name = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %278 = memref.alloc() {name = "layer3_2_conv1_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %279 = memref.alloc() {name = "layer3_2_conv1_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %274[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %274[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %274[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %274[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %272[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %274[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %275[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %275[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %275[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %275[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %274[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %275[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %275[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_2_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %273[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %278[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %278[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %278[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %278[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %276[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %278[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %279[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %279[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %279[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %279[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %278[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %279[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %279[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_2_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %277[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv1_out_lsb"}
    %280 = memref.alloc() {name = "layer3_2_conv1_pgconv"} : memref<1x64x8x8xf32, #map0>
    %281 = memref.alloc() {name = "layer3_2_bn1"} : memref<1x64x8x8xf32, #map0>
    %282 = memref.alloc() {name = "layer3_2_rprelu1"} : memref<1x64x8x8xf32, #map0>
    %283 = memref.alloc() {name = "layer3_2_residual1"} : memref<1x64x8x8xf32, #map0>
    %284 = memref.alloc() {name = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %273[%c0_8, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg155[%arg169] {from = "layer3_2_conv1_threshold"} : memref<64xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %277[%c0_8, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg156[%arg169] {from = "layer3_2_bn1_weight"} : memref<64xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg157[%arg169] {from = "layer3_2_bn1_bias"} : memref<64xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg148[%arg169] {from = "layer3_2_rprelu1_shift_x_bias"} : memref<64xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg150[%arg169] {from = "layer3_2_rprelu1_prelu_weight"} : memref<64xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg149[%arg169] {from = "layer3_2_rprelu1_shift_y_bias"} : memref<64xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %268[%c0_5, %arg169, %arg170, %arg171] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map0>
            %324 = arith.addf %322, %323 : f32
            %325 = affine.load %arg162[%arg169] {from = "layer3_2_bn3_weight"} : memref<64xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg163[%arg169] {from = "layer3_2_bn3_bias"} : memref<64xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %284[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn2"}
    %285 = memref.alloc() {name = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
    %286 = memref.alloc() {name = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    %287 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %305 = affine.load %284[%c0_4, %arg171, %arg170, %arg172] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map0>
              %cst = arith.constant 0.666666686 : f32
              %306 = arith.cmpf ogt, %305, %cst : f32
              %307 = scf.if %306 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %309 = arith.sitofp %c0_i32 : i32 to f32
                %310 = arith.cmpf oge, %305, %309 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %311 = arith.cmpf ole, %305, %cst_90 : f32
                %312 = arith.andi %310, %311 : i1
                %313 = scf.if %312 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %314 = arith.sitofp %c0_i32_91 : i32 to f32
                  %315 = arith.cmpf olt, %305, %314 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %316 = arith.cmpf oge, %305, %cst_92 : f32
                  %317 = arith.andi %315, %316 : i1
                  %318 = scf.if %317 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %318 : i32
                }
                scf.yield %313 : i32
              }
              %308 = arith.trunci %307 : i32 to i2
              affine.store %308, %285[%c0_4, %arg171, %arg170, %arg172] {to = "layer3_2_rsign2"} : memref<1x64x8x8xi2, #map0>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_34"
            %307 = hcl.create_loop_handle %306, "loop_34"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %285[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
              %c1 = arith.constant 1 : index
              %310 = hcl.get_bit(%309 : i2, %c1) -> i1
              %311 = affine.load %305[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_34", op_name = "stage_34"}
            %308 = affine.load %305[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %286[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %305 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %305[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %306 = hcl.create_op_handle "stage_35"
            %307 = hcl.create_loop_handle %306, "loop_35"
            affine.for %arg172 = 0 to 16 {
              %309 = affine.load %285[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map0>
              %c0_91 = arith.constant 0 : index
              %310 = hcl.get_bit(%309 : i2, %c0_91) -> i1
              %311 = affine.load %305[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%311 : i16, %arg172, %310 : i1)
              affine.store %311, %305[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_35", op_name = "stage_35"}
            %308 = affine.load %305[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %308, %287[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map0>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv2_lsb_truncate"}
    %288 = memref.alloc() {name = "layer3_2_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    %289 = memref.alloc() {name = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
    %290 = memref.alloc() {name = "layer3_2_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %291 = memref.alloc() {name = "layer3_2_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %292 = memref.alloc() {name = "layer3_2_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map2>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %305 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %286[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %305, %288[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map2>
            %306 = affine.if #set6(%arg171, %arg170) -> i16 {
              %307 = affine.load %287[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map0>
              affine.yield %307 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %307 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %307 : i16
            } {unsigned}
            affine.store %306, %292[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map2>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv2_out_lsb_pad"}
    %293 = memref.alloc() {name = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %294 = memref.alloc() {name = "layer3_2_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %295 = memref.alloc() {name = "layer3_2_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %290[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %290[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %290[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %290[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %288[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %290[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %291[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %291[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %291[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %291[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %290[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %291[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %291[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_2_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %289[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %305 = affine.load %294[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %305, %294[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %306 = affine.load %294[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %306, %294[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %307 = affine.load %292[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map2>
              affine.store %307, %294[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %305 = affine.load %295[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %305, %295[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %306 = affine.load %295[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %306, %295[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %307 = affine.load %294[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %307, %295[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %305 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %307 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %310 = arith.extsi %c16_i32 : i32 to i128
                        %311 = affine.load %295[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %312 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map1>
                        %313 = arith.xori %311, %312 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %314 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %315 = arith.shrui %313, %314 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %316 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %317 = arith.andi %315, %316 {unsigned} : i16
                        %318 = arith.subi %313, %317 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %319 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %320 = arith.andi %318, %319 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %321 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %322 = arith.shrui %318, %321 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %323 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %324 = arith.andi %322, %323 {unsigned} : i16
                        %325 = arith.addi %320, %324 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %326 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %327 = arith.shrui %325, %326 {unsigned} : i16
                        %328 = arith.addi %325, %327 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %329 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %330 = arith.andi %328, %329 {unsigned} : i16
                        %331 = arith.extui %330 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %332 = arith.muli %331, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %333 = arith.extsi %c56_i32 : i32 to i64
                        %334 = arith.shrui %332, %333 : i64
                        %335 = arith.extsi %334 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %336 = arith.extsi %c1_i32_93 : i32 to i64
                        %337 = arith.extsi %336 : i64 to i128
                        %338 = arith.shli %335, %337 : i128
                        %339 = arith.subi %310, %338 : i128
                        %340 = arith.trunci %339 : i128 to i16
                        affine.yield %340 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %310 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %310 : i16
                      }
                      %308 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %309 = arith.addi %307, %308 : i16
                      affine.store %309, %305[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_2_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %306, %293[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv2_out_lsb"}
    %296 = memref.alloc() {name = "layer3_2_conv2_pgconv"} : memref<1x64x8x8xf32, #map0>
    %297 = memref.alloc() {name = "layer3_2_bn3"} : memref<1x64x8x8xf32, #map0>
    %298 = memref.alloc() {name = "layer3_2_rprelu2"} : memref<1x64x8x8xf32, #map0>
    %299 = memref.alloc() {name = "layer3_2_residual2"} : memref<1x64x8x8xf32, #map0>
    %300 = memref.alloc() {name = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %305 = affine.load %289[%c0_3, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
            %306 = arith.sitofp %305 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %307 = arith.mulf %306, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %308 = arith.divf %307, %cst_90 : f32
            %309 = affine.load %arg159[%arg169] {from = "layer3_2_conv2_threshold"} : memref<64xf32, #map5>
            %310 = arith.cmpf ogt, %308, %309 : f32
            %311 = scf.if %310 -> (f32) {
              %329 = affine.load %293[%c0_3, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %330 = arith.sitofp %329 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %331 = arith.divf %330, %cst_91 : f32
              %332 = arith.addf %331, %308 : f32
              scf.yield %332 : f32
            } else {
              scf.yield %308 : f32
            }
            %312 = affine.load %arg160[%arg169] {from = "layer3_2_bn2_weight"} : memref<64xf32, #map5>
            %313 = arith.mulf %311, %312 : f32
            %314 = affine.load %arg161[%arg169] {from = "layer3_2_bn2_bias"} : memref<64xf32, #map5>
            %315 = arith.addf %313, %314 : f32
            %316 = affine.load %arg151[%arg169] {from = "layer3_2_rprelu2_shift_x_bias"} : memref<64xf32, #map5>
            %317 = arith.addf %315, %316 : f32
            %c0_i32 = arith.constant 0 : i32
            %318 = arith.sitofp %c0_i32 : i32 to f32
            %319 = arith.cmpf ogt, %317, %318 : f32
            %320 = scf.if %319 -> (f32) {
              scf.yield %317 : f32
            } else {
              %329 = affine.load %arg153[%arg169] {from = "layer3_2_rprelu2_prelu_weight"} : memref<64xf32, #map5>
              %330 = arith.mulf %329, %317 : f32
              scf.yield %330 : f32
            }
            %321 = affine.load %arg152[%arg169] {from = "layer3_2_rprelu2_shift_y_bias"} : memref<64xf32, #map5>
            %322 = arith.addf %320, %321 : f32
            %323 = affine.load %284[%c0_0, %arg169, %arg170, %arg171] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map0>
            %324 = arith.addf %323, %322 : f32
            %325 = affine.load %arg164[%arg169] {from = "layer3_2_bn4_weight"} : memref<64xf32, #map5>
            %326 = arith.mulf %324, %325 : f32
            %327 = affine.load %arg165[%arg169] {from = "layer3_2_bn4_bias"} : memref<64xf32, #map5>
            %328 = arith.addf %326, %327 : f32
            affine.store %328, %300[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map0>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn4"}
    %301 = memref.alloc() {name = "avgpool"} : memref<1x64x1x1xf32, #map0>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 1 {
          affine.for %arg171 = 0 to 1 {
            %305 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0_90 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg172 = 0 to 8 {
              affine.for %arg173 = 0 to 8 {
                %309 = affine.load %300[%arg168, %arg169, %arg170 * 8 + %arg172, %arg171 * 8 + %arg173] {from = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map0>
                %310 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xf32>
                %311 = arith.addf %309, %310 : f32
                affine.store %311, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_5", reduction}
            } {loop_name = "rx_4", reduction}
            %c0_91 = arith.constant 0 : index
            %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xf32>
            %c64_i32 = arith.constant 64 : i32
            %307 = arith.sitofp %c64_i32 : i32 to f32
            %308 = arith.divf %306, %307 : f32
            affine.store %308, %301[%arg168, %arg169, %arg170, %arg171] {to = "avgpool"} : memref<1x64x1x1xf32, #map0>
          } {loop_name = "w", pipeline_ii = 1 : i32}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "avgpool"}
    %302 = memref.alloc() {name = "flatten"} : memref<1x64xf32, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        %305 = affine.load %301[%arg168, %arg169 mod 64, %arg169 floordiv 64, 0] {from = "avgpool"} : memref<1x64x1x1xf32, #map0>
        affine.store %305, %302[%arg168, %arg169] {to = "flatten"} : memref<1x64xf32, #map6>
      } {loop_name = "j", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "flatten"}
    %303 = memref.alloc() {name = "fc_matmul"} : memref<1x10xf32, #map6>
    %304 = memref.alloc() {name = "fc"} : memref<1x10xf32, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 10 {
        %305 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
        %c0_90 = arith.constant 0 : index
        %cst = arith.constant 0.000000e+00 : f32
        affine.store %cst, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
        affine.for %arg170 = 0 to 64 {
          %309 = affine.load %302[%c0, %arg170] {from = "flatten"} : memref<1x64xf32, #map6>
          %310 = affine.load %arg166[%arg169, %arg170] {from = "linear_weight"} : memref<10x64xf32, #map6>
          %311 = arith.mulf %309, %310 : f32
          %312 = affine.load %305[%c0_90] {from = "sum_rv"} : memref<1xf32>
          %313 = arith.addf %311, %312 : f32
          affine.store %313, %305[%c0_90] {to = "sum_rv"} : memref<1xf32>
        } {loop_name = "rx_6", reduction}
        %c0_91 = arith.constant 0 : index
        %306 = affine.load %305[%c0_91] {from = "sum_rv"} : memref<1xf32>
        %307 = affine.load %arg167[%arg169] {from = "linear_bias"} : memref<10xf32, #map5>
        %308 = arith.addf %306, %307 : f32
        affine.store %308, %304[%arg168, %arg169] {to = "fc"} : memref<1x10xf32, #map6>
      } {loop_name = "j", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "fc"}
    return %304 : memref<1x10xf32, #map6>
  }
}

