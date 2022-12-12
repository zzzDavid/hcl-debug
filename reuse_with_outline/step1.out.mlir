srcLoops.size() = 16	targetLoops.size() = 12
#map0 = affine_map<(d0) -> (d0, 0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, d3, d0, d1, d2, 0)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3, d0, 0, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0, d0, 0, d2, d3)>
#map4 = affine_map<(d0, d1) -> (d0, 0, 0, d1)>
#map5 = affine_map<(d0, d1) -> (d0, d1, 0, 0)>
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
  func.func private @Stage_bn1(%arg0: memref<1x16x32x32xi16>, %arg1: memref<16xf32, #map0>, %arg2: memref<16xf32, #map0>, %arg3: memref<1x16x32x32xf32, #map1>) attributes {bit, itypes = "____"} {
    affine.for %arg4 = 0 to 1 {
      affine.for %arg5 = 0 to 16 {
        affine.for %arg6 = 0 to 32 {
          affine.for %arg7 = 0 to 32 {
            %0 = affine.load %arg0[%arg4, %arg5, %arg6, %arg7] {from = "conv1_out_msb"} : memref<1x16x32x32xi16>
            %1 = arith.sitofp %0 : i16 to f32
            %2 = affine.load %arg1[%arg5] {from = "bn1_weight"} : memref<16xf32, #map0>
            %3 = arith.mulf %1, %2 : f32
            %4 = affine.load %arg2[%arg5] {from = "bn1_bias"} : memref<16xf32, #map0>
            %5 = arith.addf %3, %4 : f32
            affine.store %5, %arg3[%arg4, %arg5, %arg6, %arg7] {to = "bn1"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "bn1"}
    return
  }
  func.func private @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%arg0: memref<1x1x32x32xi16, #map1>, %arg1: memref<1x1x32x32xi16, #map1>, %arg2: memref<32x1x3x3xi16, #map2>, %arg3: memref<1x32x32x32xi16>, %arg4: memref<1x32x32x32xi16>, %arg5: index) attributes {bit, itypes = "uuu__"} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "layer1_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %1 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %2 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %3 = memref.alloc() {name = "layer1_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %4 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %5 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c0_0 = arith.constant 0 : index
    %c0_1 = arith.constant 0 : index
    %c0_2 = arith.constant 0 : index
    %c0_3 = arith.constant 0 : index
    %c0_4 = arith.constant 0 : index
    %c0_5 = arith.constant 0 : index
    %c0_6 = arith.constant 0 : index
    affine.for %arg6 = 0 to 1 {
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 34 {
          affine.for %arg9 = 0 to 34 {
            %6 = affine.if #set0(%arg9, %arg8) -> i16 {
              %8 = affine.load %arg0[%arg6, %arg7, %arg8 - 1, %arg9 - 1] {from = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
              affine.yield %8 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %8 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %8 : i16
            } {unsigned}
            affine.store %6, %0[%arg6, %arg7, %arg8, %arg9] {to = "layer1_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map3>
            %7 = affine.if #set0(%arg9, %arg8) -> i16 {
              %8 = affine.load %arg1[%arg6, %arg7, %arg8 - 1, %arg9 - 1] {from = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
              affine.yield %8 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %8 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %8 : i16
            } {unsigned}
            affine.store %7, %3[%arg6, %arg7, %arg8, %arg9] {to = "layer1_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv1_out_lsb_pad"}
    affine.for %arg6 = 0 to 1 {
      affine.for %arg7 = 0 to %arg5 {
        affine.for %arg8 = 0 to 34 {
          affine.for %arg9 = 0 to 34 {
            %6 = affine.load %1[1, %arg9] : memref<3x34xi16, #map4>
            affine.store %6, %1[0, %arg9] : memref<3x34xi16, #map4>
            %7 = affine.load %1[2, %arg9] : memref<3x34xi16, #map4>
            affine.store %7, %1[1, %arg9] : memref<3x34xi16, #map4>
            %8 = affine.load %0[%c0_0, %c0_1, %arg8, %arg9] : memref<1x1x34x34xi16, #map3>
            affine.store %8, %1[2, %arg9] : memref<3x34xi16, #map4>
            affine.if #set1(%arg8) {
              affine.for %arg10 = 0 to 3 {
                %12 = affine.load %2[%arg10, 1] : memref<3x3xi16, #map5>
                affine.store %12, %2[%arg10, 0] : memref<3x3xi16, #map5>
                %13 = affine.load %2[%arg10, 2] : memref<3x3xi16, #map5>
                affine.store %13, %2[%arg10, 1] : memref<3x3xi16, #map5>
                %14 = affine.load %1[%arg10, %arg9] : memref<3x34xi16, #map4>
                affine.store %14, %2[%arg10, 2] : memref<3x3xi16, #map5>
              } {spatial}
              affine.if #set1(%arg9) {
                %12 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %12[%c0_2] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg10 = 0 to 1 {
                  affine.for %arg11 = 0 to 3 {
                    affine.for %arg12 = 0 to 3 {
                      %14 = affine.if #set2(%arg9, %arg12, %arg8, %arg11) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %17 = arith.extsi %c16_i32 : i32 to i128
                        %18 = affine.load %2[%arg11, %arg12] : memref<3x3xi16, #map5>
                        %19 = affine.load %arg2[%arg7, %arg10, %arg11, %arg12] {from = "layer1_0_conv1_weight", unsigned} : memref<32x1x3x3xi16, #map2>
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
                affine.store %13, %arg3[%arg6, %arg7, %arg8 - 2, %arg9 - 2] : memref<1x32x32x32xi16>
              }
            }
            %9 = affine.load %4[1, %arg9] : memref<3x34xi16, #map4>
            affine.store %9, %4[0, %arg9] : memref<3x34xi16, #map4>
            %10 = affine.load %4[2, %arg9] : memref<3x34xi16, #map4>
            affine.store %10, %4[1, %arg9] : memref<3x34xi16, #map4>
            %11 = affine.load %3[%c0_4, %c0_5, %arg8, %arg9] : memref<1x1x34x34xi16, #map3>
            affine.store %11, %4[2, %arg9] : memref<3x34xi16, #map4>
            affine.if #set1(%arg8) {
              affine.for %arg10 = 0 to 3 {
                %12 = affine.load %5[%arg10, 1] : memref<3x3xi16, #map5>
                affine.store %12, %5[%arg10, 0] : memref<3x3xi16, #map5>
                %13 = affine.load %5[%arg10, 2] : memref<3x3xi16, #map5>
                affine.store %13, %5[%arg10, 1] : memref<3x3xi16, #map5>
                %14 = affine.load %4[%arg10, %arg9] : memref<3x34xi16, #map4>
                affine.store %14, %5[%arg10, 2] : memref<3x3xi16, #map5>
              } {spatial}
              affine.if #set1(%arg9) {
                %12 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %12[%c0_6] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg10 = 0 to 1 {
                  affine.for %arg11 = 0 to 3 {
                    affine.for %arg12 = 0 to 3 {
                      %14 = affine.if #set2(%arg9, %arg12, %arg8, %arg11) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %17 = arith.extsi %c16_i32 : i32 to i128
                        %18 = affine.load %5[%arg11, %arg12] : memref<3x3xi16, #map5>
                        %19 = affine.load %arg2[%arg7, %arg10, %arg11, %arg12] {from = "layer1_0_conv1_weight", unsigned} : memref<32x1x3x3xi16, #map2>
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
                      %15 = affine.load %12[%c0_6] {from = "sum_rv"} : memref<1xi16>
                      %16 = arith.addi %14, %15 : i16
                      affine.store %16, %12[%c0_6] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_lsb_rc", reduction}
                %13 = affine.load %12[%c0] {from = "sum_rv"} : memref<1xi16>
                affine.store %13, %arg4[%arg6, %arg7, %arg8 - 2, %arg9 - 2] : memref<1x32x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv1_out_lsb"}
    return
  }
  func.func @top(%arg0: memref<1x6x32x32xi16>, %arg1: memref<16x6x3x3xi16, #map2>, %arg2: memref<16xf32, #map0>, %arg3: memref<16xf32, #map0>, %arg4: memref<16xf32, #map0>, %arg5: memref<16xf32, #map0>, %arg6: memref<16xf32, #map0>, %arg7: memref<16xf32, #map0>, %arg8: memref<16xf32, #map0>, %arg9: memref<16xf32, #map0>, %arg10: memref<32x1x3x3xi16, #map2>, %arg11: memref<16xf32, #map0>, %arg12: memref<16xf32, #map0>, %arg13: memref<16xf32, #map0>, %arg14: memref<32x1x3x3xi16, #map2>, %arg15: memref<16xf32, #map0>, %arg16: memref<16xf32, #map0>, %arg17: memref<16xf32, #map0>, %arg18: memref<16xf32, #map0>, %arg19: memref<16xf32, #map0>, %arg20: memref<16xf32, #map0>, %arg21: memref<16xf32, #map0>, %arg22: memref<16xf32, #map0>, %arg23: memref<16xf32, #map0>, %arg24: memref<16xf32, #map0>, %arg25: memref<16xf32, #map0>, %arg26: memref<16xf32, #map0>, %arg27: memref<16xf32, #map0>, %arg28: memref<32x1x3x3xi16, #map2>, %arg29: memref<16xf32, #map0>, %arg30: memref<16xf32, #map0>, %arg31: memref<16xf32, #map0>, %arg32: memref<32x1x3x3xi16, #map2>, %arg33: memref<16xf32, #map0>, %arg34: memref<16xf32, #map0>, %arg35: memref<16xf32, #map0>, %arg36: memref<16xf32, #map0>, %arg37: memref<16xf32, #map0>, %arg38: memref<16xf32, #map0>, %arg39: memref<16xf32, #map0>, %arg40: memref<16xf32, #map0>, %arg41: memref<16xf32, #map0>, %arg42: memref<16xf32, #map0>, %arg43: memref<16xf32, #map0>, %arg44: memref<16xf32, #map0>, %arg45: memref<16xf32, #map0>, %arg46: memref<32x1x3x3xi16, #map2>, %arg47: memref<16xf32, #map0>, %arg48: memref<16xf32, #map0>, %arg49: memref<16xf32, #map0>, %arg50: memref<32x1x3x3xi16, #map2>, %arg51: memref<16xf32, #map0>, %arg52: memref<16xf32, #map0>, %arg53: memref<16xf32, #map0>, %arg54: memref<16xf32, #map0>, %arg55: memref<16xf32, #map0>, %arg56: memref<16xf32, #map0>, %arg57: memref<16xf32, #map0>, %arg58: memref<32xf32, #map0>, %arg59: memref<32xf32, #map0>, %arg60: memref<32xf32, #map0>, %arg61: memref<32xf32, #map0>, %arg62: memref<32xf32, #map0>, %arg63: memref<32xf32, #map0>, %arg64: memref<32x1x3x3xi16, #map2>, %arg65: memref<32xf32, #map0>, %arg66: memref<32xf32, #map0>, %arg67: memref<32xf32, #map0>, %arg68: memref<32x2x3x3xi16, #map2>, %arg69: memref<32xf32, #map0>, %arg70: memref<32xf32, #map0>, %arg71: memref<32xf32, #map0>, %arg72: memref<32xf32, #map0>, %arg73: memref<32xf32, #map0>, %arg74: memref<32xf32, #map0>, %arg75: memref<32xf32, #map0>, %arg76: memref<32xf32, #map0>, %arg77: memref<32xf32, #map0>, %arg78: memref<32xf32, #map0>, %arg79: memref<32xf32, #map0>, %arg80: memref<32xf32, #map0>, %arg81: memref<32xf32, #map0>, %arg82: memref<32x2x3x3xi16, #map2>, %arg83: memref<32xf32, #map0>, %arg84: memref<32xf32, #map0>, %arg85: memref<32xf32, #map0>, %arg86: memref<32x2x3x3xi16, #map2>, %arg87: memref<32xf32, #map0>, %arg88: memref<32xf32, #map0>, %arg89: memref<32xf32, #map0>, %arg90: memref<32xf32, #map0>, %arg91: memref<32xf32, #map0>, %arg92: memref<32xf32, #map0>, %arg93: memref<32xf32, #map0>, %arg94: memref<32xf32, #map0>, %arg95: memref<32xf32, #map0>, %arg96: memref<32xf32, #map0>, %arg97: memref<32xf32, #map0>, %arg98: memref<32xf32, #map0>, %arg99: memref<32xf32, #map0>, %arg100: memref<32x2x3x3xi16, #map2>, %arg101: memref<32xf32, #map0>, %arg102: memref<32xf32, #map0>, %arg103: memref<32xf32, #map0>, %arg104: memref<32x2x3x3xi16, #map2>, %arg105: memref<32xf32, #map0>, %arg106: memref<32xf32, #map0>, %arg107: memref<32xf32, #map0>, %arg108: memref<32xf32, #map0>, %arg109: memref<32xf32, #map0>, %arg110: memref<32xf32, #map0>, %arg111: memref<32xf32, #map0>, %arg112: memref<64xf32, #map0>, %arg113: memref<64xf32, #map0>, %arg114: memref<64xf32, #map0>, %arg115: memref<64xf32, #map0>, %arg116: memref<64xf32, #map0>, %arg117: memref<64xf32, #map0>, %arg118: memref<64x2x3x3xi16, #map2>, %arg119: memref<64xf32, #map0>, %arg120: memref<64xf32, #map0>, %arg121: memref<64xf32, #map0>, %arg122: memref<64x4x3x3xi16, #map2>, %arg123: memref<64xf32, #map0>, %arg124: memref<64xf32, #map0>, %arg125: memref<64xf32, #map0>, %arg126: memref<64xf32, #map0>, %arg127: memref<64xf32, #map0>, %arg128: memref<64xf32, #map0>, %arg129: memref<64xf32, #map0>, %arg130: memref<64xf32, #map0>, %arg131: memref<64xf32, #map0>, %arg132: memref<64xf32, #map0>, %arg133: memref<64xf32, #map0>, %arg134: memref<64xf32, #map0>, %arg135: memref<64xf32, #map0>, %arg136: memref<64x4x3x3xi16, #map2>, %arg137: memref<64xf32, #map0>, %arg138: memref<64xf32, #map0>, %arg139: memref<64xf32, #map0>, %arg140: memref<64x4x3x3xi16, #map2>, %arg141: memref<64xf32, #map0>, %arg142: memref<64xf32, #map0>, %arg143: memref<64xf32, #map0>, %arg144: memref<64xf32, #map0>, %arg145: memref<64xf32, #map0>, %arg146: memref<64xf32, #map0>, %arg147: memref<64xf32, #map0>, %arg148: memref<64xf32, #map0>, %arg149: memref<64xf32, #map0>, %arg150: memref<64xf32, #map0>, %arg151: memref<64xf32, #map0>, %arg152: memref<64xf32, #map0>, %arg153: memref<64xf32, #map0>, %arg154: memref<64x4x3x3xi16, #map2>, %arg155: memref<64xf32, #map0>, %arg156: memref<64xf32, #map0>, %arg157: memref<64xf32, #map0>, %arg158: memref<64x4x3x3xi16, #map2>, %arg159: memref<64xf32, #map0>, %arg160: memref<64xf32, #map0>, %arg161: memref<64xf32, #map0>, %arg162: memref<64xf32, #map0>, %arg163: memref<64xf32, #map0>, %arg164: memref<64xf32, #map0>, %arg165: memref<64xf32, #map0>, %arg166: memref<10x64xf32, #map6>, %arg167: memref<10xf32, #map0>) -> memref<1x10xf32, #map6> attributes {bit, itypes = "uu________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_________", otypes = "_"} {
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
    %0 = memref.alloc() {name = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map1>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %387, %0[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate"} : memref<1x6x32x32xi16, #map1>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate"}
    %1 = memref.alloc() {name = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map1>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %387, %1[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate1"} : memref<1x6x32x32xi16, #map1>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate1"}
    %2 = memref.alloc() {name = "conv1_out_msb_pad", unsigned} : memref<1x6x34x34xi16, #map3>
    %3 = memref.alloc() {name = "conv1_out_msb"} : memref<1x16x32x32xi16>
    %4 = memref.alloc() {name = "conv1_out_msb_reuse_2"} : memref<6x3x34xi16, #map7>
    %5 = memref.alloc() {name = "conv1_out_msb_reuse_3"} : memref<6x3x3xi16, #map8>
    %6 = memref.alloc() {name = "conv1_out_lsb_pad", unsigned} : memref<1x6x34x34xi16, #map3>
    %7 = hcl.create_op_handle "conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %387 = affine.if #set0(%arg171, %arg170) -> i16 {
              %389 = affine.load %0[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %2[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb_pad"} : memref<1x6x34x34xi16, #map3>
            %388 = affine.if #set0(%arg171, %arg170) -> i16 {
              %389 = affine.load %1[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %6[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb_pad"} : memref<1x6x34x34xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "conv1_out_lsb_pad"}
    %8 = memref.alloc() {name = "conv1_out_lsb"} : memref<1x16x32x32xi16>
    %9 = hcl.create_op_handle "conv1_out_lsb"
    %10 = memref.alloc() {name = "conv1_out_lsb_reuse_2"} : memref<6x3x34xi16, #map7>
    %11 = memref.alloc() {name = "conv1_out_lsb_reuse_3"} : memref<6x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            affine.for %arg172 = 0 to 6 {
              %387 = affine.load %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %387, %4[%arg172, 0, %arg171] : memref<6x3x34xi16, #map7>
              %388 = affine.load %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %388, %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              %389 = affine.load %2[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map3>
              affine.store %389, %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  affine.store %387, %5[%arg172, %arg173, 0] : memref<6x3x3xi16, #map8>
                  %388 = affine.load %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                  affine.store %388, %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  %389 = affine.load %4[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map7>
                  affine.store %389, %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %5[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map8>
                        %394 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_msb_rx", reduction}
                  } {loop_name = "conv1_out_msb_ry", reduction}
                } {loop_name = "conv1_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %3[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            affine.for %arg172 = 0 to 6 {
              %387 = affine.load %10[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %387, %10[%arg172, 0, %arg171] : memref<6x3x34xi16, #map7>
              %388 = affine.load %10[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
              affine.store %388, %10[%arg172, 1, %arg171] : memref<6x3x34xi16, #map7>
              %389 = affine.load %6[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map3>
              affine.store %389, %10[%arg172, 2, %arg171] : memref<6x3x34xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %11[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  affine.store %387, %11[%arg172, %arg173, 0] : memref<6x3x3xi16, #map8>
                  %388 = affine.load %11[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                  affine.store %388, %11[%arg172, %arg173, 1] : memref<6x3x3xi16, #map8>
                  %389 = affine.load %10[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map7>
                  affine.store %389, %11[%arg172, %arg173, 2] : memref<6x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %11[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map8>
                        %394 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_lsb_rx", reduction}
                  } {loop_name = "conv1_out_lsb_ry", reduction}
                } {loop_name = "conv1_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %8[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "conv1_out_lsb"}
    %12 = memref.alloc() {name = "bn1"} : memref<1x16x32x32xf32, #map1>
    %13 = hcl.create_op_handle "bn1"
    call @Stage_bn1(%3, %arg2, %arg3, %12) : (memref<1x16x32x32xi16>, memref<16xf32, #map0>, memref<16xf32, #map0>, memref<1x16x32x32xf32, #map1>) -> ()
    %14 = memref.alloc() {name = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
    %15 = memref.alloc() {name = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %16 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %17 = hcl.create_op_handle "layer1_0_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %12[%c0_89, %arg171, %arg170, %arg172] {from = "bn1"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %14[%c0_89, %arg171, %arg170, %arg172] {to = "layer1_0_rsign1"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_0"
            %389 = hcl.create_loop_handle %388, "loop_0"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %14[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_0", op_name = "stage_0"}
            %390 = affine.load %387[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %15[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_1"
            %389 = hcl.create_loop_handle %388, "loop_1"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %14[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_1", op_name = "stage_1"}
            %390 = affine.load %387[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %16[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv1_lsb_truncate"}
    %18 = memref.alloc() {name = "layer1_0_conv1_out_msb"} : memref<1x32x32x32xi16>
    %19 = hcl.create_op_handle "layer1_0_conv1_out_lsb_pad"
    %20 = memref.alloc() {name = "layer1_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %21 = hcl.create_op_handle "layer1_0_conv1_out_lsb"
    %c16 = arith.constant 16 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%15, %16, %arg10, %18, %20, %c16) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %22 = memref.alloc() {name = "layer1_0_conv1_pgconv"} : memref<1x16x32x32xf32, #map1>
    %23 = memref.alloc() {name = "layer1_0_bn1"} : memref<1x16x32x32xf32, #map1>
    %24 = memref.alloc() {name = "layer1_0_rprelu1"} : memref<1x16x32x32xf32, #map1>
    %25 = memref.alloc() {name = "layer1_0_residual1"} : memref<1x16x32x32xf32, #map1>
    %26 = memref.alloc() {name = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map1>
    %27 = hcl.create_op_handle "layer1_0_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %18[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg11[%arg169] {from = "layer1_0_conv1_threshold"} : memref<16xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %20[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg12[%arg169] {from = "layer1_0_bn1_weight"} : memref<16xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg13[%arg169] {from = "layer1_0_bn1_bias"} : memref<16xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg4[%arg169] {from = "layer1_0_rprelu1_shift_x_bias"} : memref<16xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg6[%arg169] {from = "layer1_0_rprelu1_prelu_weight"} : memref<16xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg5[%arg169] {from = "layer1_0_rprelu1_shift_y_bias"} : memref<16xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %12[%c0_85, %arg169, %arg170, %arg171] {from = "bn1"} : memref<1x16x32x32xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg18[%arg169] {from = "layer1_0_bn3_weight"} : memref<16xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg19[%arg169] {from = "layer1_0_bn3_bias"} : memref<16xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %26[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn2"}
    %28 = memref.alloc() {name = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
    %29 = memref.alloc() {name = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %30 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %31 = hcl.create_op_handle "layer1_0_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %26[%c0_84, %arg171, %arg170, %arg172] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %28[%c0_84, %arg171, %arg170, %arg172] {to = "layer1_0_rsign2"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_2"
            %389 = hcl.create_loop_handle %388, "loop_2"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %28[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_2", op_name = "stage_2"}
            %390 = affine.load %387[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %29[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_3"
            %389 = hcl.create_loop_handle %388, "loop_3"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %28[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_3", op_name = "stage_3"}
            %390 = affine.load %387[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %30[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv2_lsb_truncate"}
    %32 = memref.alloc() {name = "layer1_0_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %33 = memref.alloc() {name = "layer1_0_conv2_out_msb"} : memref<1x32x32x32xi16>
    %34 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %35 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %36 = memref.alloc() {name = "layer1_0_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %37 = hcl.create_op_handle "layer1_0_conv2_out_lsb_pad"
    %38 = memref.alloc() {name = "layer1_0_conv2_out_lsb"} : memref<1x32x32x32xi16>
    %39 = hcl.create_op_handle "layer1_0_conv2_out_lsb"
    %40 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %41 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c16_90 = arith.constant 16 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%29, %30, %arg14, %33, %38, %c16_90) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %42 = memref.alloc() {name = "layer1_0_conv2_pgconv"} : memref<1x16x32x32xf32, #map1>
    %43 = memref.alloc() {name = "layer1_0_bn3"} : memref<1x16x32x32xf32, #map1>
    %44 = memref.alloc() {name = "layer1_0_rprelu2"} : memref<1x16x32x32xf32, #map1>
    %45 = memref.alloc() {name = "layer1_0_residual2"} : memref<1x16x32x32xf32, #map1>
    %46 = memref.alloc() {name = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map1>
    %47 = hcl.create_op_handle "layer1_0_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %33[%c0_83, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg15[%arg169] {from = "layer1_0_conv2_threshold"} : memref<16xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %38[%c0_83, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg16[%arg169] {from = "layer1_0_bn2_weight"} : memref<16xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg17[%arg169] {from = "layer1_0_bn2_bias"} : memref<16xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg7[%arg169] {from = "layer1_0_rprelu2_shift_x_bias"} : memref<16xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg9[%arg169] {from = "layer1_0_rprelu2_prelu_weight"} : memref<16xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg8[%arg169] {from = "layer1_0_rprelu2_shift_y_bias"} : memref<16xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %26[%c0_80, %arg169, %arg170, %arg171] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg20[%arg169] {from = "layer1_0_bn4_weight"} : memref<16xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg21[%arg169] {from = "layer1_0_bn4_bias"} : memref<16xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %46[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn4"}
    %48 = memref.alloc() {name = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
    %49 = memref.alloc() {name = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %50 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %51 = hcl.create_op_handle "layer1_1_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %46[%c0_79, %arg171, %arg170, %arg172] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %48[%c0_79, %arg171, %arg170, %arg172] {to = "layer1_1_rsign1"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_4"
            %389 = hcl.create_loop_handle %388, "loop_4"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %48[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_4", op_name = "stage_4"}
            %390 = affine.load %387[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %49[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_5"
            %389 = hcl.create_loop_handle %388, "loop_5"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %48[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_5", op_name = "stage_5"}
            %390 = affine.load %387[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %50[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv1_lsb_truncate"}
    %52 = memref.alloc() {name = "layer1_1_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %53 = memref.alloc() {name = "layer1_1_conv1_out_msb"} : memref<1x32x32x32xi16>
    %54 = memref.alloc() {name = "layer1_1_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %55 = memref.alloc() {name = "layer1_1_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %56 = memref.alloc() {name = "layer1_1_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %57 = hcl.create_op_handle "layer1_1_conv1_out_lsb_pad"
    %58 = memref.alloc() {name = "layer1_1_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %59 = hcl.create_op_handle "layer1_1_conv1_out_lsb"
    %60 = memref.alloc() {name = "layer1_1_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %61 = memref.alloc() {name = "layer1_1_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c16_91 = arith.constant 16 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%49, %50, %arg28, %53, %58, %c16_91) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %62 = memref.alloc() {name = "layer1_1_conv1_pgconv"} : memref<1x16x32x32xf32, #map1>
    %63 = memref.alloc() {name = "layer1_1_bn1"} : memref<1x16x32x32xf32, #map1>
    %64 = memref.alloc() {name = "layer1_1_rprelu1"} : memref<1x16x32x32xf32, #map1>
    %65 = memref.alloc() {name = "layer1_1_residual1"} : memref<1x16x32x32xf32, #map1>
    %66 = memref.alloc() {name = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map1>
    %67 = hcl.create_op_handle "layer1_1_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %53[%c0_78, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg29[%arg169] {from = "layer1_1_conv1_threshold"} : memref<16xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %58[%c0_78, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg30[%arg169] {from = "layer1_1_bn1_weight"} : memref<16xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg31[%arg169] {from = "layer1_1_bn1_bias"} : memref<16xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg22[%arg169] {from = "layer1_1_rprelu1_shift_x_bias"} : memref<16xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg24[%arg169] {from = "layer1_1_rprelu1_prelu_weight"} : memref<16xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg23[%arg169] {from = "layer1_1_rprelu1_shift_y_bias"} : memref<16xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %46[%c0_75, %arg169, %arg170, %arg171] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg36[%arg169] {from = "layer1_1_bn3_weight"} : memref<16xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg37[%arg169] {from = "layer1_1_bn3_bias"} : memref<16xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %66[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn2"}
    %68 = memref.alloc() {name = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
    %69 = memref.alloc() {name = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %70 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %71 = hcl.create_op_handle "layer1_1_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %66[%c0_74, %arg171, %arg170, %arg172] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %68[%c0_74, %arg171, %arg170, %arg172] {to = "layer1_1_rsign2"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_6"
            %389 = hcl.create_loop_handle %388, "loop_6"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %68[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_6", op_name = "stage_6"}
            %390 = affine.load %387[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %69[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_7"
            %389 = hcl.create_loop_handle %388, "loop_7"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %68[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_7", op_name = "stage_7"}
            %390 = affine.load %387[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %70[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv2_lsb_truncate"}
    %72 = memref.alloc() {name = "layer1_1_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %73 = memref.alloc() {name = "layer1_1_conv2_out_msb"} : memref<1x32x32x32xi16>
    %74 = memref.alloc() {name = "layer1_1_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %75 = memref.alloc() {name = "layer1_1_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %76 = memref.alloc() {name = "layer1_1_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %77 = hcl.create_op_handle "layer1_1_conv2_out_lsb_pad"
    %78 = memref.alloc() {name = "layer1_1_conv2_out_lsb"} : memref<1x32x32x32xi16>
    %79 = hcl.create_op_handle "layer1_1_conv2_out_lsb"
    %80 = memref.alloc() {name = "layer1_1_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %81 = memref.alloc() {name = "layer1_1_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c16_92 = arith.constant 16 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%69, %70, %arg32, %73, %78, %c16_92) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %82 = memref.alloc() {name = "layer1_1_conv2_pgconv"} : memref<1x16x32x32xf32, #map1>
    %83 = memref.alloc() {name = "layer1_1_bn3"} : memref<1x16x32x32xf32, #map1>
    %84 = memref.alloc() {name = "layer1_1_rprelu2"} : memref<1x16x32x32xf32, #map1>
    %85 = memref.alloc() {name = "layer1_1_residual2"} : memref<1x16x32x32xf32, #map1>
    %86 = memref.alloc() {name = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map1>
    %87 = hcl.create_op_handle "layer1_1_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %73[%c0_73, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg33[%arg169] {from = "layer1_1_conv2_threshold"} : memref<16xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %78[%c0_73, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg34[%arg169] {from = "layer1_1_bn2_weight"} : memref<16xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg35[%arg169] {from = "layer1_1_bn2_bias"} : memref<16xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg25[%arg169] {from = "layer1_1_rprelu2_shift_x_bias"} : memref<16xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg27[%arg169] {from = "layer1_1_rprelu2_prelu_weight"} : memref<16xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg26[%arg169] {from = "layer1_1_rprelu2_shift_y_bias"} : memref<16xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %66[%c0_70, %arg169, %arg170, %arg171] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg38[%arg169] {from = "layer1_1_bn4_weight"} : memref<16xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg39[%arg169] {from = "layer1_1_bn4_bias"} : memref<16xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %86[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn4"}
    %88 = memref.alloc() {name = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
    %89 = memref.alloc() {name = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %90 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %91 = hcl.create_op_handle "layer1_2_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %86[%c0_69, %arg171, %arg170, %arg172] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %88[%c0_69, %arg171, %arg170, %arg172] {to = "layer1_2_rsign1"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_8"
            %389 = hcl.create_loop_handle %388, "loop_8"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %88[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_8", op_name = "stage_8"}
            %390 = affine.load %387[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %89[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_9"
            %389 = hcl.create_loop_handle %388, "loop_9"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %88[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_9", op_name = "stage_9"}
            %390 = affine.load %387[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %90[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv1_lsb_truncate"}
    %92 = memref.alloc() {name = "layer1_2_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %93 = memref.alloc() {name = "layer1_2_conv1_out_msb"} : memref<1x32x32x32xi16>
    %94 = memref.alloc() {name = "layer1_2_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %95 = memref.alloc() {name = "layer1_2_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %96 = memref.alloc() {name = "layer1_2_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %97 = hcl.create_op_handle "layer1_2_conv1_out_lsb_pad"
    %98 = memref.alloc() {name = "layer1_2_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %99 = hcl.create_op_handle "layer1_2_conv1_out_lsb"
    %100 = memref.alloc() {name = "layer1_2_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %101 = memref.alloc() {name = "layer1_2_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c16_93 = arith.constant 16 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%89, %90, %arg46, %93, %98, %c16_93) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %102 = memref.alloc() {name = "layer1_2_conv1_pgconv"} : memref<1x16x32x32xf32, #map1>
    %103 = memref.alloc() {name = "layer1_2_bn1"} : memref<1x16x32x32xf32, #map1>
    %104 = memref.alloc() {name = "layer1_2_rprelu1"} : memref<1x16x32x32xf32, #map1>
    %105 = memref.alloc() {name = "layer1_2_residual1"} : memref<1x16x32x32xf32, #map1>
    %106 = memref.alloc() {name = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map1>
    %107 = hcl.create_op_handle "layer1_2_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %93[%c0_68, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg47[%arg169] {from = "layer1_2_conv1_threshold"} : memref<16xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %98[%c0_68, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg48[%arg169] {from = "layer1_2_bn1_weight"} : memref<16xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg49[%arg169] {from = "layer1_2_bn1_bias"} : memref<16xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg40[%arg169] {from = "layer1_2_rprelu1_shift_x_bias"} : memref<16xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg42[%arg169] {from = "layer1_2_rprelu1_prelu_weight"} : memref<16xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg41[%arg169] {from = "layer1_2_rprelu1_shift_y_bias"} : memref<16xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %86[%c0_65, %arg169, %arg170, %arg171] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg54[%arg169] {from = "layer1_2_bn3_weight"} : memref<16xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg55[%arg169] {from = "layer1_2_bn3_bias"} : memref<16xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %106[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn2"}
    %108 = memref.alloc() {name = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
    %109 = memref.alloc() {name = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %110 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %111 = hcl.create_op_handle "layer1_2_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %106[%c0_64, %arg171, %arg170, %arg172] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %108[%c0_64, %arg171, %arg170, %arg172] {to = "layer1_2_rsign2"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_10"
            %389 = hcl.create_loop_handle %388, "loop_10"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %108[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_10", op_name = "stage_10"}
            %390 = affine.load %387[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %109[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_11"
            %389 = hcl.create_loop_handle %388, "loop_11"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %108[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_11", op_name = "stage_11"}
            %390 = affine.load %387[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %110[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv2_lsb_truncate"}
    %112 = memref.alloc() {name = "layer1_2_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %113 = memref.alloc() {name = "layer1_2_conv2_out_msb"} : memref<1x32x32x32xi16>
    %114 = memref.alloc() {name = "layer1_2_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %115 = memref.alloc() {name = "layer1_2_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %116 = memref.alloc() {name = "layer1_2_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %117 = hcl.create_op_handle "layer1_2_conv2_out_lsb_pad"
    %118 = memref.alloc() {name = "layer1_2_conv2_out_lsb"} : memref<1x32x32x32xi16>
    %119 = hcl.create_op_handle "layer1_2_conv2_out_lsb"
    %120 = memref.alloc() {name = "layer1_2_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %121 = memref.alloc() {name = "layer1_2_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c16_94 = arith.constant 16 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%109, %110, %arg50, %113, %118, %c16_94) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %122 = memref.alloc() {name = "layer1_2_conv2_pgconv"} : memref<1x16x32x32xf32, #map1>
    %123 = memref.alloc() {name = "layer1_2_bn3"} : memref<1x16x32x32xf32, #map1>
    %124 = memref.alloc() {name = "layer1_2_rprelu2"} : memref<1x16x32x32xf32, #map1>
    %125 = memref.alloc() {name = "layer1_2_residual2"} : memref<1x16x32x32xf32, #map1>
    %126 = memref.alloc() {name = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map1>
    %127 = hcl.create_op_handle "layer1_2_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %113[%c0_63, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg51[%arg169] {from = "layer1_2_conv2_threshold"} : memref<16xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %118[%c0_63, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg52[%arg169] {from = "layer1_2_bn2_weight"} : memref<16xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg53[%arg169] {from = "layer1_2_bn2_bias"} : memref<16xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg43[%arg169] {from = "layer1_2_rprelu2_shift_x_bias"} : memref<16xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg45[%arg169] {from = "layer1_2_rprelu2_prelu_weight"} : memref<16xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg44[%arg169] {from = "layer1_2_rprelu2_shift_y_bias"} : memref<16xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %106[%c0_60, %arg169, %arg170, %arg171] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg56[%arg169] {from = "layer1_2_bn4_weight"} : memref<16xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg57[%arg169] {from = "layer1_2_bn4_bias"} : memref<16xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %126[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn4"}
    %128 = memref.alloc() {name = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
    %129 = memref.alloc() {name = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %130 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map1>
    %131 = hcl.create_op_handle "layer2_0_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %387 = affine.load %126[%c0_59, %arg171, %arg170, %arg172] {from = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %128[%c0_59, %arg171, %arg170, %arg172] {to = "layer2_0_rsign1"} : memref<1x16x32x32xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_12"
            %389 = hcl.create_loop_handle %388, "loop_12"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %128[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_12", op_name = "stage_12"}
            %390 = affine.load %387[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %129[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %387 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_13"
            %389 = hcl.create_loop_handle %388, "loop_13"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %128[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_13", op_name = "stage_13"}
            %390 = affine.load %387[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %130[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv1_lsb_truncate"}
    %132 = memref.alloc() {name = "layer2_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %133 = memref.alloc() {name = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
    %134 = memref.alloc() {name = "layer2_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map4>
    %135 = memref.alloc() {name = "layer2_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map5>
    %136 = memref.alloc() {name = "layer2_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map3>
    %137 = hcl.create_op_handle "layer2_0_conv1_out_lsb_pad"
    %138 = memref.alloc() {name = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %139 = hcl.create_op_handle "layer2_0_conv1_out_lsb"
    %140 = memref.alloc() {name = "layer2_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map4>
    %141 = memref.alloc() {name = "layer2_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map5>
    %c32 = arith.constant 32 : index
    call @Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb(%129, %130, %arg64, %133, %138, %c32) : (memref<1x1x32x32xi16, #map1>, memref<1x1x32x32xi16, #map1>, memref<32x1x3x3xi16, #map2>, memref<1x32x32x32xi16>, memref<1x32x32x32xi16>, index) -> ()
    %142 = memref.alloc() {name = "layer2_0_conv1_pgconv"} : memref<1x32x16x16xf32, #map1>
    %143 = memref.alloc() {name = "layer2_0_bn1"} : memref<1x32x16x16xf32, #map1>
    %144 = memref.alloc() {name = "layer2_0_rprelu1"} : memref<1x32x16x16xf32, #map1>
    %145 = memref.alloc() {name = "layer2_0_avgpool"} : memref<1x16x16x16xf32, #map1>
    %146 = hcl.create_op_handle "layer2_0_avgpool"
    %147 = memref.alloc() {name = "layer2_0_avgpool_reuse_2"} : memref<2x32xf32, #map4>
    %148 = memref.alloc() {name = "layer2_0_avgpool_reuse_3"} : memref<2x2xf32, #map5>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 33 {
          affine.for %arg171 = 0 to 32 {
            %387 = affine.load %147[1, %arg171] : memref<2x32xf32, #map4>
            affine.store %387, %147[0, %arg171] : memref<2x32xf32, #map4>
            %c0_96 = arith.constant 0 : index
            %388 = affine.load %126[%c0_96, %arg169, %arg170, %arg171] : memref<1x16x32x32xf32, #map1>
            affine.store %388, %147[1, %arg171] : memref<2x32xf32, #map4>
          } {spatial}
          affine.if #set3(%arg170) {
            affine.for %arg171 = 0 to 33 {
              affine.for %arg172 = 0 to 2 {
                %387 = affine.load %148[%arg172, 1] : memref<2x2xf32, #map5>
                affine.store %387, %148[%arg172, 0] : memref<2x2xf32, #map5>
                %388 = affine.load %147[%arg172, %arg171] : memref<2x32xf32, #map4>
                affine.store %388, %148[%arg172, 1] : memref<2x2xf32, #map5>
              } {spatial}
              affine.if #set3(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
                %c0_96 = arith.constant 0 : index
                %cst = arith.constant 0.000000e+00 : f32
                affine.store %cst, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 2 {
                    %391 = affine.load %148[%arg172, %arg173] : memref<2x2xf32, #map5>
                    %392 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xf32>
                    %393 = arith.addf %391, %392 : f32
                    affine.store %393, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
                  } {loop_name = "rx_1", reduction}
                } {loop_name = "rx_0", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xf32>
                %c4_i32 = arith.constant 4 : i32
                %389 = arith.sitofp %c4_i32 : i32 to f32
                %390 = arith.divf %388, %389 : f32
                affine.store %390, %145[%arg168, %arg169, (%arg170 - 1) floordiv 2, (%arg171 - 1) floordiv 2] : memref<1x16x16x16xf32, #map1>
              }
            } {loop_name = "w"}
          }
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_avgpool"}
    %149 = memref.alloc() {name = "layer2_0_concat"} : memref<1x32x16x16xf32, #map1>
    %150 = hcl.create_op_handle "layer2_0_concat"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %145[%arg168, %arg169 mod 16, %arg170, %arg171] {from = "layer2_0_avgpool"} : memref<1x16x16x16xf32, #map1>
            affine.store %387, %149[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_concat"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_concat"}
    %151 = memref.alloc() {name = "layer2_0_residual1"} : memref<1x32x16x16xf32, #map1>
    %152 = memref.alloc() {name = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map1>
    %153 = hcl.create_op_handle "layer2_0_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %133[%c0_58, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg65[%arg169] {from = "layer2_0_conv1_threshold"} : memref<32xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %138[%c0_58, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg66[%arg169] {from = "layer2_0_bn1_weight"} : memref<32xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg67[%arg169] {from = "layer2_0_bn1_bias"} : memref<32xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg58[%arg169] {from = "layer2_0_rprelu1_shift_x_bias"} : memref<32xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg60[%arg169] {from = "layer2_0_rprelu1_prelu_weight"} : memref<32xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg59[%arg169] {from = "layer2_0_rprelu1_shift_y_bias"} : memref<32xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %149[%c0_55, %arg169, %arg170, %arg171] {from = "layer2_0_concat"} : memref<1x32x16x16xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg72[%arg169] {from = "layer2_0_bn3_weight"} : memref<32xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg73[%arg169] {from = "layer2_0_bn3_bias"} : memref<32xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %152[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn2"}
    %154 = memref.alloc() {name = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
    %155 = memref.alloc() {name = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %156 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %157 = hcl.create_op_handle "layer2_0_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %387 = affine.load %152[%c0_54, %arg171, %arg170, %arg172] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %154[%c0_54, %arg171, %arg170, %arg172] {to = "layer2_0_rsign2"} : memref<1x32x16x16xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_14"
            %389 = hcl.create_loop_handle %388, "loop_14"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %154[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_14", op_name = "stage_14"}
            %390 = affine.load %387[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %155[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_15"
            %389 = hcl.create_loop_handle %388, "loop_15"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %154[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_15", op_name = "stage_15"}
            %390 = affine.load %387[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %156[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv2_lsb_truncate"}
    %158 = memref.alloc() {name = "layer2_0_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %159 = memref.alloc() {name = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
    %160 = memref.alloc() {name = "layer2_0_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %161 = memref.alloc() {name = "layer2_0_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %162 = memref.alloc() {name = "layer2_0_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %163 = hcl.create_op_handle "layer2_0_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %387 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %155[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %158[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map3>
            %388 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %156[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %162[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv2_out_lsb_pad"}
    %164 = memref.alloc() {name = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %165 = hcl.create_op_handle "layer2_0_conv2_out_lsb"
    %166 = memref.alloc() {name = "layer2_0_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %167 = memref.alloc() {name = "layer2_0_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    %c2 = arith.constant 2 : index
    %c18 = arith.constant 18 : index
    %c18_95 = arith.constant 18 : index
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %160[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %160[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %160[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %160[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %158[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %160[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %161[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %161[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %161[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %161[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %160[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %161[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %161[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_0_conv2_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %159[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %166[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %166[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %166[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %166[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %162[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %166[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %167[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %167[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %167[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %167[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %166[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %167[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %167[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_0_conv2_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %164[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv2_out_lsb"}
    %168 = memref.alloc() {name = "layer2_0_conv2_pgconv"} : memref<1x32x16x16xf32, #map1>
    %169 = memref.alloc() {name = "layer2_0_bn3"} : memref<1x32x16x16xf32, #map1>
    %170 = memref.alloc() {name = "layer2_0_rprelu2"} : memref<1x32x16x16xf32, #map1>
    %171 = memref.alloc() {name = "layer2_0_residual2"} : memref<1x32x16x16xf32, #map1>
    %172 = memref.alloc() {name = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map1>
    %173 = hcl.create_op_handle "layer2_0_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %159[%c0_53, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg69[%arg169] {from = "layer2_0_conv2_threshold"} : memref<32xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %164[%c0_53, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg70[%arg169] {from = "layer2_0_bn2_weight"} : memref<32xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg71[%arg169] {from = "layer2_0_bn2_bias"} : memref<32xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg61[%arg169] {from = "layer2_0_rprelu2_shift_x_bias"} : memref<32xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg63[%arg169] {from = "layer2_0_rprelu2_prelu_weight"} : memref<32xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg62[%arg169] {from = "layer2_0_rprelu2_shift_y_bias"} : memref<32xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %152[%c0_50, %arg169, %arg170, %arg171] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg74[%arg169] {from = "layer2_0_bn4_weight"} : memref<32xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg75[%arg169] {from = "layer2_0_bn4_bias"} : memref<32xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %172[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn4"}
    %174 = memref.alloc() {name = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
    %175 = memref.alloc() {name = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %176 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %177 = hcl.create_op_handle "layer2_1_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %387 = affine.load %172[%c0_49, %arg171, %arg170, %arg172] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %174[%c0_49, %arg171, %arg170, %arg172] {to = "layer2_1_rsign1"} : memref<1x32x16x16xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_16"
            %389 = hcl.create_loop_handle %388, "loop_16"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %174[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_16", op_name = "stage_16"}
            %390 = affine.load %387[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %175[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_17"
            %389 = hcl.create_loop_handle %388, "loop_17"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %174[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_17", op_name = "stage_17"}
            %390 = affine.load %387[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %176[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv1_lsb_truncate"}
    %178 = memref.alloc() {name = "layer2_1_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %179 = memref.alloc() {name = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
    %180 = memref.alloc() {name = "layer2_1_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %181 = memref.alloc() {name = "layer2_1_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %182 = memref.alloc() {name = "layer2_1_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %183 = hcl.create_op_handle "layer2_1_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %387 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %175[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %178[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map3>
            %388 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %176[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %182[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv1_out_lsb_pad"}
    %184 = memref.alloc() {name = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %185 = hcl.create_op_handle "layer2_1_conv1_out_lsb"
    %186 = memref.alloc() {name = "layer2_1_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %187 = memref.alloc() {name = "layer2_1_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %180[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %180[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %180[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %180[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %178[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %180[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %181[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %181[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %181[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %181[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %180[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %181[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %181[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_1_conv1_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %179[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %186[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %186[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %186[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %186[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %182[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %186[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %187[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %187[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %187[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %187[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %186[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %187[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %187[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_1_conv1_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %184[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv1_out_lsb"}
    %188 = memref.alloc() {name = "layer2_1_conv1_pgconv"} : memref<1x32x16x16xf32, #map1>
    %189 = memref.alloc() {name = "layer2_1_bn1"} : memref<1x32x16x16xf32, #map1>
    %190 = memref.alloc() {name = "layer2_1_rprelu1"} : memref<1x32x16x16xf32, #map1>
    %191 = memref.alloc() {name = "layer2_1_residual1"} : memref<1x32x16x16xf32, #map1>
    %192 = memref.alloc() {name = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map1>
    %193 = hcl.create_op_handle "layer2_1_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %179[%c0_48, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg83[%arg169] {from = "layer2_1_conv1_threshold"} : memref<32xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %184[%c0_48, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg84[%arg169] {from = "layer2_1_bn1_weight"} : memref<32xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg85[%arg169] {from = "layer2_1_bn1_bias"} : memref<32xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg76[%arg169] {from = "layer2_1_rprelu1_shift_x_bias"} : memref<32xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg78[%arg169] {from = "layer2_1_rprelu1_prelu_weight"} : memref<32xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg77[%arg169] {from = "layer2_1_rprelu1_shift_y_bias"} : memref<32xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %172[%c0_45, %arg169, %arg170, %arg171] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg90[%arg169] {from = "layer2_1_bn3_weight"} : memref<32xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg91[%arg169] {from = "layer2_1_bn3_bias"} : memref<32xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %192[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn2"}
    %194 = memref.alloc() {name = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
    %195 = memref.alloc() {name = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %196 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %197 = hcl.create_op_handle "layer2_1_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %387 = affine.load %192[%c0_44, %arg171, %arg170, %arg172] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %194[%c0_44, %arg171, %arg170, %arg172] {to = "layer2_1_rsign2"} : memref<1x32x16x16xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_18"
            %389 = hcl.create_loop_handle %388, "loop_18"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %194[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_18", op_name = "stage_18"}
            %390 = affine.load %387[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %195[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_19"
            %389 = hcl.create_loop_handle %388, "loop_19"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %194[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_19", op_name = "stage_19"}
            %390 = affine.load %387[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %196[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv2_lsb_truncate"}
    %198 = memref.alloc() {name = "layer2_1_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %199 = memref.alloc() {name = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
    %200 = memref.alloc() {name = "layer2_1_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %201 = memref.alloc() {name = "layer2_1_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %202 = memref.alloc() {name = "layer2_1_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %203 = hcl.create_op_handle "layer2_1_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %387 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %195[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %198[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map3>
            %388 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %196[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %202[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv2_out_lsb_pad"}
    %204 = memref.alloc() {name = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %205 = hcl.create_op_handle "layer2_1_conv2_out_lsb"
    %206 = memref.alloc() {name = "layer2_1_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %207 = memref.alloc() {name = "layer2_1_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %200[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %200[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %200[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %200[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %198[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %200[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %201[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %201[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %201[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %201[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %200[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %201[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %201[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_1_conv2_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %199[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %206[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %206[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %206[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %206[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %202[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %206[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %207[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %207[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %207[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %207[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %206[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %207[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %207[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_1_conv2_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %204[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv2_out_lsb"}
    %208 = memref.alloc() {name = "layer2_1_conv2_pgconv"} : memref<1x32x16x16xf32, #map1>
    %209 = memref.alloc() {name = "layer2_1_bn3"} : memref<1x32x16x16xf32, #map1>
    %210 = memref.alloc() {name = "layer2_1_rprelu2"} : memref<1x32x16x16xf32, #map1>
    %211 = memref.alloc() {name = "layer2_1_residual2"} : memref<1x32x16x16xf32, #map1>
    %212 = memref.alloc() {name = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map1>
    %213 = hcl.create_op_handle "layer2_1_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %199[%c0_43, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg87[%arg169] {from = "layer2_1_conv2_threshold"} : memref<32xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %204[%c0_43, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg88[%arg169] {from = "layer2_1_bn2_weight"} : memref<32xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg89[%arg169] {from = "layer2_1_bn2_bias"} : memref<32xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg79[%arg169] {from = "layer2_1_rprelu2_shift_x_bias"} : memref<32xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg81[%arg169] {from = "layer2_1_rprelu2_prelu_weight"} : memref<32xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg80[%arg169] {from = "layer2_1_rprelu2_shift_y_bias"} : memref<32xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %192[%c0_40, %arg169, %arg170, %arg171] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg92[%arg169] {from = "layer2_1_bn4_weight"} : memref<32xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg93[%arg169] {from = "layer2_1_bn4_bias"} : memref<32xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %212[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn4"}
    %214 = memref.alloc() {name = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
    %215 = memref.alloc() {name = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %216 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %217 = hcl.create_op_handle "layer2_2_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %387 = affine.load %212[%c0_39, %arg171, %arg170, %arg172] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %214[%c0_39, %arg171, %arg170, %arg172] {to = "layer2_2_rsign1"} : memref<1x32x16x16xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_20"
            %389 = hcl.create_loop_handle %388, "loop_20"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %214[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_20", op_name = "stage_20"}
            %390 = affine.load %387[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %215[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_21"
            %389 = hcl.create_loop_handle %388, "loop_21"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %214[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_21", op_name = "stage_21"}
            %390 = affine.load %387[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %216[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv1_lsb_truncate"}
    %218 = memref.alloc() {name = "layer2_2_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %219 = memref.alloc() {name = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
    %220 = memref.alloc() {name = "layer2_2_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %221 = memref.alloc() {name = "layer2_2_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %222 = memref.alloc() {name = "layer2_2_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %223 = hcl.create_op_handle "layer2_2_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %387 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %215[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %218[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map3>
            %388 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %216[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %222[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv1_out_lsb_pad"}
    %224 = memref.alloc() {name = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %225 = hcl.create_op_handle "layer2_2_conv1_out_lsb"
    %226 = memref.alloc() {name = "layer2_2_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %227 = memref.alloc() {name = "layer2_2_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %220[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %220[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %220[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %220[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %218[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %220[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %221[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %221[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %221[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %221[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %220[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %221[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %221[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_2_conv1_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %219[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %226[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %226[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %226[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %226[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %222[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %226[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %227[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %227[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %227[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %227[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %226[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %227[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %227[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_2_conv1_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %224[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv1_out_lsb"}
    %228 = memref.alloc() {name = "layer2_2_conv1_pgconv"} : memref<1x32x16x16xf32, #map1>
    %229 = memref.alloc() {name = "layer2_2_bn1"} : memref<1x32x16x16xf32, #map1>
    %230 = memref.alloc() {name = "layer2_2_rprelu1"} : memref<1x32x16x16xf32, #map1>
    %231 = memref.alloc() {name = "layer2_2_residual1"} : memref<1x32x16x16xf32, #map1>
    %232 = memref.alloc() {name = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map1>
    %233 = hcl.create_op_handle "layer2_2_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %219[%c0_38, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg101[%arg169] {from = "layer2_2_conv1_threshold"} : memref<32xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %224[%c0_38, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg102[%arg169] {from = "layer2_2_bn1_weight"} : memref<32xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg103[%arg169] {from = "layer2_2_bn1_bias"} : memref<32xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg94[%arg169] {from = "layer2_2_rprelu1_shift_x_bias"} : memref<32xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg96[%arg169] {from = "layer2_2_rprelu1_prelu_weight"} : memref<32xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg95[%arg169] {from = "layer2_2_rprelu1_shift_y_bias"} : memref<32xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %212[%c0_35, %arg169, %arg170, %arg171] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg108[%arg169] {from = "layer2_2_bn3_weight"} : memref<32xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg109[%arg169] {from = "layer2_2_bn3_bias"} : memref<32xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %232[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn2"}
    %234 = memref.alloc() {name = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
    %235 = memref.alloc() {name = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %236 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %237 = hcl.create_op_handle "layer2_2_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %387 = affine.load %232[%c0_34, %arg171, %arg170, %arg172] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %234[%c0_34, %arg171, %arg170, %arg172] {to = "layer2_2_rsign2"} : memref<1x32x16x16xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_22"
            %389 = hcl.create_loop_handle %388, "loop_22"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %234[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_22", op_name = "stage_22"}
            %390 = affine.load %387[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %235[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_23"
            %389 = hcl.create_loop_handle %388, "loop_23"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %234[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_23", op_name = "stage_23"}
            %390 = affine.load %387[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %236[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv2_lsb_truncate"}
    %238 = memref.alloc() {name = "layer2_2_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %239 = memref.alloc() {name = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
    %240 = memref.alloc() {name = "layer2_2_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %241 = memref.alloc() {name = "layer2_2_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %242 = memref.alloc() {name = "layer2_2_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %243 = hcl.create_op_handle "layer2_2_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %387 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %235[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %238[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map3>
            %388 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %236[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %242[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv2_out_lsb_pad"}
    %244 = memref.alloc() {name = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %245 = hcl.create_op_handle "layer2_2_conv2_out_lsb"
    %246 = memref.alloc() {name = "layer2_2_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %247 = memref.alloc() {name = "layer2_2_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %240[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %240[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %240[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %240[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %238[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %240[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %241[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %241[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %241[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %241[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %240[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %241[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %241[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_2_conv2_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %239[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %246[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %246[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %246[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %246[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %242[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %246[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %247[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %247[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %247[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %247[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %246[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %247[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %247[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_2_conv2_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %244[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv2_out_lsb"}
    %248 = memref.alloc() {name = "layer2_2_conv2_pgconv"} : memref<1x32x16x16xf32, #map1>
    %249 = memref.alloc() {name = "layer2_2_bn3"} : memref<1x32x16x16xf32, #map1>
    %250 = memref.alloc() {name = "layer2_2_rprelu2"} : memref<1x32x16x16xf32, #map1>
    %251 = memref.alloc() {name = "layer2_2_residual2"} : memref<1x32x16x16xf32, #map1>
    %252 = memref.alloc() {name = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map1>
    %253 = hcl.create_op_handle "layer2_2_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %239[%c0_33, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg105[%arg169] {from = "layer2_2_conv2_threshold"} : memref<32xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %244[%c0_33, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg106[%arg169] {from = "layer2_2_bn2_weight"} : memref<32xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg107[%arg169] {from = "layer2_2_bn2_bias"} : memref<32xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg97[%arg169] {from = "layer2_2_rprelu2_shift_x_bias"} : memref<32xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg99[%arg169] {from = "layer2_2_rprelu2_prelu_weight"} : memref<32xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg98[%arg169] {from = "layer2_2_rprelu2_shift_y_bias"} : memref<32xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %232[%c0_30, %arg169, %arg170, %arg171] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg110[%arg169] {from = "layer2_2_bn4_weight"} : memref<32xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg111[%arg169] {from = "layer2_2_bn4_bias"} : memref<32xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %252[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn4"}
    %254 = memref.alloc() {name = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
    %255 = memref.alloc() {name = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %256 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
    %257 = hcl.create_op_handle "layer3_0_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %387 = affine.load %252[%c0_29, %arg171, %arg170, %arg172] {from = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %254[%c0_29, %arg171, %arg170, %arg172] {to = "layer3_0_rsign1"} : memref<1x32x16x16xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_24"
            %389 = hcl.create_loop_handle %388, "loop_24"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %254[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_24", op_name = "stage_24"}
            %390 = affine.load %387[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %255[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %387 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_25"
            %389 = hcl.create_loop_handle %388, "loop_25"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %254[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_25", op_name = "stage_25"}
            %390 = affine.load %387[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %256[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv1_lsb_truncate"}
    %258 = memref.alloc() {name = "layer3_0_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %259 = memref.alloc() {name = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
    %260 = memref.alloc() {name = "layer3_0_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map7>
    %261 = memref.alloc() {name = "layer3_0_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map8>
    %262 = memref.alloc() {name = "layer3_0_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map3>
    %263 = hcl.create_op_handle "layer3_0_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %387 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %255[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %258[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map3>
            %388 = affine.if #set4(%arg171, %arg170) -> i16 {
              %389 = affine.load %256[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %262[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv1_out_lsb_pad"}
    %264 = memref.alloc() {name = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
    %265 = hcl.create_op_handle "layer3_0_conv1_out_lsb"
    %266 = memref.alloc() {name = "layer3_0_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map7>
    %267 = memref.alloc() {name = "layer3_0_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %260[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %260[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %260[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %260[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %258[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %260[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %261[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %261[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %261[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %261[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %260[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %261[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %261[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_0_conv1_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %259[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %387 = affine.load %266[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %387, %266[%arg172, 0, %arg171] : memref<2x3x18xi16, #map7>
              %388 = affine.load %266[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
              affine.store %388, %266[%arg172, 1, %arg171] : memref<2x3x18xi16, #map7>
              %389 = affine.load %262[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map3>
              affine.store %389, %266[%arg172, 2, %arg171] : memref<2x3x18xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %267[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  affine.store %387, %267[%arg172, %arg173, 0] : memref<2x3x3xi16, #map8>
                  %388 = affine.load %267[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                  affine.store %388, %267[%arg172, %arg173, 1] : memref<2x3x3xi16, #map8>
                  %389 = affine.load %266[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map7>
                  affine.store %389, %267[%arg172, %arg173, 2] : memref<2x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %267[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map8>
                        %394 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_0_conv1_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %264[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv1_out_lsb"}
    %268 = memref.alloc() {name = "layer3_0_conv1_pgconv"} : memref<1x64x8x8xf32, #map1>
    %269 = memref.alloc() {name = "layer3_0_bn1"} : memref<1x64x8x8xf32, #map1>
    %270 = memref.alloc() {name = "layer3_0_rprelu1"} : memref<1x64x8x8xf32, #map1>
    %271 = memref.alloc() {name = "layer3_0_avgpool"} : memref<1x32x8x8xf32, #map1>
    %272 = hcl.create_op_handle "layer3_0_avgpool"
    %273 = memref.alloc() {name = "layer3_0_avgpool_reuse_2"} : memref<2x16xf32, #map4>
    %274 = memref.alloc() {name = "layer3_0_avgpool_reuse_3"} : memref<2x2xf32, #map5>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 17 {
          affine.for %arg171 = 0 to 16 {
            %387 = affine.load %273[1, %arg171] : memref<2x16xf32, #map4>
            affine.store %387, %273[0, %arg171] : memref<2x16xf32, #map4>
            %c0_96 = arith.constant 0 : index
            %388 = affine.load %252[%c0_96, %arg169, %arg170, %arg171] : memref<1x32x16x16xf32, #map1>
            affine.store %388, %273[1, %arg171] : memref<2x16xf32, #map4>
          } {spatial}
          affine.if #set3(%arg170) {
            affine.for %arg171 = 0 to 17 {
              affine.for %arg172 = 0 to 2 {
                %387 = affine.load %274[%arg172, 1] : memref<2x2xf32, #map5>
                affine.store %387, %274[%arg172, 0] : memref<2x2xf32, #map5>
                %388 = affine.load %273[%arg172, %arg171] : memref<2x16xf32, #map4>
                affine.store %388, %274[%arg172, 1] : memref<2x2xf32, #map5>
              } {spatial}
              affine.if #set3(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
                %c0_96 = arith.constant 0 : index
                %cst = arith.constant 0.000000e+00 : f32
                affine.store %cst, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 2 {
                    %391 = affine.load %274[%arg172, %arg173] : memref<2x2xf32, #map5>
                    %392 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xf32>
                    %393 = arith.addf %391, %392 : f32
                    affine.store %393, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
                  } {loop_name = "rx_3", reduction}
                } {loop_name = "rx_2", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xf32>
                %c4_i32 = arith.constant 4 : i32
                %389 = arith.sitofp %c4_i32 : i32 to f32
                %390 = arith.divf %388, %389 : f32
                affine.store %390, %271[%arg168, %arg169, (%arg170 - 1) floordiv 2, (%arg171 - 1) floordiv 2] : memref<1x32x8x8xf32, #map1>
              }
            } {loop_name = "w"}
          }
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_avgpool"}
    %275 = memref.alloc() {name = "layer3_0_concat"} : memref<1x64x8x8xf32, #map1>
    %276 = hcl.create_op_handle "layer3_0_concat"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %271[%arg168, %arg169 mod 32, %arg170, %arg171] {from = "layer3_0_avgpool"} : memref<1x32x8x8xf32, #map1>
            affine.store %387, %275[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_concat"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_concat"}
    %277 = memref.alloc() {name = "layer3_0_residual1"} : memref<1x64x8x8xf32, #map1>
    %278 = memref.alloc() {name = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map1>
    %279 = hcl.create_op_handle "layer3_0_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %259[%c0_28, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg119[%arg169] {from = "layer3_0_conv1_threshold"} : memref<64xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %264[%c0_28, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg120[%arg169] {from = "layer3_0_bn1_weight"} : memref<64xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg121[%arg169] {from = "layer3_0_bn1_bias"} : memref<64xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg112[%arg169] {from = "layer3_0_rprelu1_shift_x_bias"} : memref<64xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg114[%arg169] {from = "layer3_0_rprelu1_prelu_weight"} : memref<64xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg113[%arg169] {from = "layer3_0_rprelu1_shift_y_bias"} : memref<64xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %275[%c0_25, %arg169, %arg170, %arg171] {from = "layer3_0_concat"} : memref<1x64x8x8xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg126[%arg169] {from = "layer3_0_bn3_weight"} : memref<64xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg127[%arg169] {from = "layer3_0_bn3_bias"} : memref<64xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %278[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn2"}
    %280 = memref.alloc() {name = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
    %281 = memref.alloc() {name = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %282 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %283 = hcl.create_op_handle "layer3_0_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %387 = affine.load %278[%c0_24, %arg171, %arg170, %arg172] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %280[%c0_24, %arg171, %arg170, %arg172] {to = "layer3_0_rsign2"} : memref<1x64x8x8xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_26"
            %389 = hcl.create_loop_handle %388, "loop_26"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %280[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_26", op_name = "stage_26"}
            %390 = affine.load %387[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %281[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_27"
            %389 = hcl.create_loop_handle %388, "loop_27"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %280[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_27", op_name = "stage_27"}
            %390 = affine.load %387[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %282[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv2_lsb_truncate"}
    %284 = memref.alloc() {name = "layer3_0_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %285 = memref.alloc() {name = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
    %286 = memref.alloc() {name = "layer3_0_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %287 = memref.alloc() {name = "layer3_0_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %288 = memref.alloc() {name = "layer3_0_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %289 = hcl.create_op_handle "layer3_0_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %387 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %281[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %284[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map3>
            %388 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %282[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %288[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv2_out_lsb_pad"}
    %290 = memref.alloc() {name = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %291 = hcl.create_op_handle "layer3_0_conv2_out_lsb"
    %292 = memref.alloc() {name = "layer3_0_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %293 = memref.alloc() {name = "layer3_0_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %286[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %286[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %286[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %286[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %284[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %286[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %287[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %287[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %287[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %287[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %286[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %287[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %287[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_0_conv2_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %285[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %292[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %292[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %292[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %292[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %288[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %292[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %293[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %293[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %293[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %293[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %292[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %293[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %293[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_0_conv2_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %290[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv2_out_lsb"}
    %294 = memref.alloc() {name = "layer3_0_conv2_pgconv"} : memref<1x64x8x8xf32, #map1>
    %295 = memref.alloc() {name = "layer3_0_bn3"} : memref<1x64x8x8xf32, #map1>
    %296 = memref.alloc() {name = "layer3_0_rprelu2"} : memref<1x64x8x8xf32, #map1>
    %297 = memref.alloc() {name = "layer3_0_residual2"} : memref<1x64x8x8xf32, #map1>
    %298 = memref.alloc() {name = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map1>
    %299 = hcl.create_op_handle "layer3_0_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %285[%c0_23, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg123[%arg169] {from = "layer3_0_conv2_threshold"} : memref<64xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %290[%c0_23, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg124[%arg169] {from = "layer3_0_bn2_weight"} : memref<64xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg125[%arg169] {from = "layer3_0_bn2_bias"} : memref<64xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg115[%arg169] {from = "layer3_0_rprelu2_shift_x_bias"} : memref<64xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg117[%arg169] {from = "layer3_0_rprelu2_prelu_weight"} : memref<64xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg116[%arg169] {from = "layer3_0_rprelu2_shift_y_bias"} : memref<64xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %278[%c0_20, %arg169, %arg170, %arg171] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg128[%arg169] {from = "layer3_0_bn4_weight"} : memref<64xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg129[%arg169] {from = "layer3_0_bn4_bias"} : memref<64xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %298[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn4"}
    %300 = memref.alloc() {name = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map1>
    %301 = memref.alloc() {name = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %302 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %303 = hcl.create_op_handle "layer3_1_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %387 = affine.load %298[%c0_19, %arg171, %arg170, %arg172] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %300[%c0_19, %arg171, %arg170, %arg172] {to = "layer3_1_rsign1"} : memref<1x64x8x8xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_28"
            %389 = hcl.create_loop_handle %388, "loop_28"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %300[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_28", op_name = "stage_28"}
            %390 = affine.load %387[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %301[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_msb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_29"
            %389 = hcl.create_loop_handle %388, "loop_29"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %300[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_29", op_name = "stage_29"}
            %390 = affine.load %387[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %302[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_lsb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv1_lsb_truncate"}
    %304 = memref.alloc() {name = "layer3_1_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %305 = memref.alloc() {name = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
    %306 = memref.alloc() {name = "layer3_1_conv1_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %307 = memref.alloc() {name = "layer3_1_conv1_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %308 = memref.alloc() {name = "layer3_1_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %309 = hcl.create_op_handle "layer3_1_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %387 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %301[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %304[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_msb_pad"} : memref<1x4x10x10xi16, #map3>
            %388 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %302[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %308[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_lsb_pad"} : memref<1x4x10x10xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv1_out_lsb_pad"}
    %310 = memref.alloc() {name = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %311 = hcl.create_op_handle "layer3_1_conv1_out_lsb"
    %312 = memref.alloc() {name = "layer3_1_conv1_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %313 = memref.alloc() {name = "layer3_1_conv1_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %306[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %306[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %306[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %306[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %304[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %306[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %307[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %307[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %307[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %307[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %306[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %307[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %307[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_1_conv1_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %305[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %312[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %312[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %312[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %312[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %308[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %312[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %313[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %313[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %313[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %313[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %312[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %313[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %313[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_1_conv1_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %310[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv1_out_lsb"}
    %314 = memref.alloc() {name = "layer3_1_conv1_pgconv"} : memref<1x64x8x8xf32, #map1>
    %315 = memref.alloc() {name = "layer3_1_bn1"} : memref<1x64x8x8xf32, #map1>
    %316 = memref.alloc() {name = "layer3_1_rprelu1"} : memref<1x64x8x8xf32, #map1>
    %317 = memref.alloc() {name = "layer3_1_residual1"} : memref<1x64x8x8xf32, #map1>
    %318 = memref.alloc() {name = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map1>
    %319 = hcl.create_op_handle "layer3_1_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %305[%c0_18, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg137[%arg169] {from = "layer3_1_conv1_threshold"} : memref<64xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %310[%c0_18, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg138[%arg169] {from = "layer3_1_bn1_weight"} : memref<64xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg139[%arg169] {from = "layer3_1_bn1_bias"} : memref<64xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg130[%arg169] {from = "layer3_1_rprelu1_shift_x_bias"} : memref<64xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg132[%arg169] {from = "layer3_1_rprelu1_prelu_weight"} : memref<64xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg131[%arg169] {from = "layer3_1_rprelu1_shift_y_bias"} : memref<64xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %298[%c0_15, %arg169, %arg170, %arg171] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg144[%arg169] {from = "layer3_1_bn3_weight"} : memref<64xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg145[%arg169] {from = "layer3_1_bn3_bias"} : memref<64xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %318[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn2"}
    %320 = memref.alloc() {name = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
    %321 = memref.alloc() {name = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %322 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %323 = hcl.create_op_handle "layer3_1_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %387 = affine.load %318[%c0_14, %arg171, %arg170, %arg172] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %320[%c0_14, %arg171, %arg170, %arg172] {to = "layer3_1_rsign2"} : memref<1x64x8x8xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_30"
            %389 = hcl.create_loop_handle %388, "loop_30"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %320[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_30", op_name = "stage_30"}
            %390 = affine.load %387[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %321[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_31"
            %389 = hcl.create_loop_handle %388, "loop_31"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %320[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_31", op_name = "stage_31"}
            %390 = affine.load %387[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %322[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv2_lsb_truncate"}
    %324 = memref.alloc() {name = "layer3_1_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %325 = memref.alloc() {name = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
    %326 = memref.alloc() {name = "layer3_1_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %327 = memref.alloc() {name = "layer3_1_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %328 = memref.alloc() {name = "layer3_1_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %329 = hcl.create_op_handle "layer3_1_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %387 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %321[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %324[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map3>
            %388 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %322[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %328[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv2_out_lsb_pad"}
    %330 = memref.alloc() {name = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %331 = hcl.create_op_handle "layer3_1_conv2_out_lsb"
    %332 = memref.alloc() {name = "layer3_1_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %333 = memref.alloc() {name = "layer3_1_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %326[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %326[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %326[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %326[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %324[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %326[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %327[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %327[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %327[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %327[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %326[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %327[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %327[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_1_conv2_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %325[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %332[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %332[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %332[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %332[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %328[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %332[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %333[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %333[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %333[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %333[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %332[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %333[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %333[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_1_conv2_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %330[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv2_out_lsb"}
    %334 = memref.alloc() {name = "layer3_1_conv2_pgconv"} : memref<1x64x8x8xf32, #map1>
    %335 = memref.alloc() {name = "layer3_1_bn3"} : memref<1x64x8x8xf32, #map1>
    %336 = memref.alloc() {name = "layer3_1_rprelu2"} : memref<1x64x8x8xf32, #map1>
    %337 = memref.alloc() {name = "layer3_1_residual2"} : memref<1x64x8x8xf32, #map1>
    %338 = memref.alloc() {name = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map1>
    %339 = hcl.create_op_handle "layer3_1_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %325[%c0_13, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg141[%arg169] {from = "layer3_1_conv2_threshold"} : memref<64xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %330[%c0_13, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg142[%arg169] {from = "layer3_1_bn2_weight"} : memref<64xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg143[%arg169] {from = "layer3_1_bn2_bias"} : memref<64xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg133[%arg169] {from = "layer3_1_rprelu2_shift_x_bias"} : memref<64xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg135[%arg169] {from = "layer3_1_rprelu2_prelu_weight"} : memref<64xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg134[%arg169] {from = "layer3_1_rprelu2_shift_y_bias"} : memref<64xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %318[%c0_10, %arg169, %arg170, %arg171] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg146[%arg169] {from = "layer3_1_bn4_weight"} : memref<64xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg147[%arg169] {from = "layer3_1_bn4_bias"} : memref<64xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %338[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn4"}
    %340 = memref.alloc() {name = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map1>
    %341 = memref.alloc() {name = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %342 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %343 = hcl.create_op_handle "layer3_2_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %387 = affine.load %338[%c0_9, %arg171, %arg170, %arg172] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %340[%c0_9, %arg171, %arg170, %arg172] {to = "layer3_2_rsign1"} : memref<1x64x8x8xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_32"
            %389 = hcl.create_loop_handle %388, "loop_32"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %340[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_32", op_name = "stage_32"}
            %390 = affine.load %387[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %341[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_msb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_33"
            %389 = hcl.create_loop_handle %388, "loop_33"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %340[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_33", op_name = "stage_33"}
            %390 = affine.load %387[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %342[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_lsb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv1_lsb_truncate"}
    %344 = memref.alloc() {name = "layer3_2_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %345 = memref.alloc() {name = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
    %346 = memref.alloc() {name = "layer3_2_conv1_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %347 = memref.alloc() {name = "layer3_2_conv1_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %348 = memref.alloc() {name = "layer3_2_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %349 = hcl.create_op_handle "layer3_2_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %387 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %341[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %344[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_msb_pad"} : memref<1x4x10x10xi16, #map3>
            %388 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %342[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %348[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_lsb_pad"} : memref<1x4x10x10xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv1_out_lsb_pad"}
    %350 = memref.alloc() {name = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %351 = hcl.create_op_handle "layer3_2_conv1_out_lsb"
    %352 = memref.alloc() {name = "layer3_2_conv1_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %353 = memref.alloc() {name = "layer3_2_conv1_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %346[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %346[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %346[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %346[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %344[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %346[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %347[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %347[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %347[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %347[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %346[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %347[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %347[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_2_conv1_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %345[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %352[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %352[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %352[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %352[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %348[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %352[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %353[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %353[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %353[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %353[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %352[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %353[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %353[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_2_conv1_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %350[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv1_out_lsb"}
    %354 = memref.alloc() {name = "layer3_2_conv1_pgconv"} : memref<1x64x8x8xf32, #map1>
    %355 = memref.alloc() {name = "layer3_2_bn1"} : memref<1x64x8x8xf32, #map1>
    %356 = memref.alloc() {name = "layer3_2_rprelu1"} : memref<1x64x8x8xf32, #map1>
    %357 = memref.alloc() {name = "layer3_2_residual1"} : memref<1x64x8x8xf32, #map1>
    %358 = memref.alloc() {name = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map1>
    %359 = hcl.create_op_handle "layer3_2_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %345[%c0_8, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg155[%arg169] {from = "layer3_2_conv1_threshold"} : memref<64xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %350[%c0_8, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg156[%arg169] {from = "layer3_2_bn1_weight"} : memref<64xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg157[%arg169] {from = "layer3_2_bn1_bias"} : memref<64xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg148[%arg169] {from = "layer3_2_rprelu1_shift_x_bias"} : memref<64xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg150[%arg169] {from = "layer3_2_rprelu1_prelu_weight"} : memref<64xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg149[%arg169] {from = "layer3_2_rprelu1_shift_y_bias"} : memref<64xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %338[%c0_5, %arg169, %arg170, %arg171] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map1>
            %406 = arith.addf %404, %405 : f32
            %407 = affine.load %arg162[%arg169] {from = "layer3_2_bn3_weight"} : memref<64xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg163[%arg169] {from = "layer3_2_bn3_bias"} : memref<64xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %358[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn2"}
    %360 = memref.alloc() {name = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
    %361 = memref.alloc() {name = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %362 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
    %363 = hcl.create_op_handle "layer3_2_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map9(%arg169) to #map10(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %387 = affine.load %358[%c0_4, %arg171, %arg170, %arg172] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map1>
              %cst = arith.constant 0.666666686 : f32
              %388 = arith.cmpf ogt, %387, %cst : f32
              %389 = scf.if %388 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %391 = arith.sitofp %c0_i32 : i32 to f32
                %392 = arith.cmpf oge, %387, %391 : f32
                %cst_96 = arith.constant 0.666666686 : f32
                %393 = arith.cmpf ole, %387, %cst_96 : f32
                %394 = arith.andi %392, %393 : i1
                %395 = scf.if %394 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_97 = arith.constant 0 : i32
                  %396 = arith.sitofp %c0_i32_97 : i32 to f32
                  %397 = arith.cmpf olt, %387, %396 : f32
                  %cst_98 = arith.constant -0.666666686 : f32
                  %398 = arith.cmpf oge, %387, %cst_98 : f32
                  %399 = arith.andi %397, %398 : i1
                  %400 = scf.if %399 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_99 = arith.constant 0 : i32
                    scf.yield %c0_i32_99 : i32
                  }
                  scf.yield %400 : i32
                }
                scf.yield %395 : i32
              }
              %390 = arith.trunci %389 : i32 to i2
              affine.store %390, %360[%c0_4, %arg171, %arg170, %arg172] {to = "layer3_2_rsign2"} : memref<1x64x8x8xi2, #map1>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_34"
            %389 = hcl.create_loop_handle %388, "loop_34"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %360[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
              %c1 = arith.constant 1 : index
              %392 = hcl.get_bit(%391 : i2, %c1) -> i1
              %393 = affine.load %387[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_34", op_name = "stage_34"}
            %390 = affine.load %387[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %361[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %387 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_96 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %387[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %388 = hcl.create_op_handle "stage_35"
            %389 = hcl.create_loop_handle %388, "loop_35"
            affine.for %arg172 = 0 to 16 {
              %391 = affine.load %360[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map1>
              %c0_97 = arith.constant 0 : index
              %392 = hcl.get_bit(%391 : i2, %c0_97) -> i1
              %393 = affine.load %387[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%393 : i16, %arg172, %392 : i1)
              affine.store %393, %387[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_35", op_name = "stage_35"}
            %390 = affine.load %387[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %390, %362[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map1>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv2_lsb_truncate"}
    %364 = memref.alloc() {name = "layer3_2_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %365 = memref.alloc() {name = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
    %366 = memref.alloc() {name = "layer3_2_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map7>
    %367 = memref.alloc() {name = "layer3_2_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map8>
    %368 = memref.alloc() {name = "layer3_2_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map3>
    %369 = hcl.create_op_handle "layer3_2_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %387 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %361[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %387, %364[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map3>
            %388 = affine.if #set6(%arg171, %arg170) -> i16 {
              %389 = affine.load %362[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map1>
              affine.yield %389 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %389 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %389 : i16
            } {unsigned}
            affine.store %388, %368[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map3>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv2_out_lsb_pad"}
    %370 = memref.alloc() {name = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %371 = hcl.create_op_handle "layer3_2_conv2_out_lsb"
    %372 = memref.alloc() {name = "layer3_2_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map7>
    %373 = memref.alloc() {name = "layer3_2_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map8>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %366[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %366[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %366[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %366[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %364[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %366[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %367[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %367[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %367[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %367[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %366[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %367[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %367[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_2_conv2_out_msb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %365[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %387 = affine.load %372[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %387, %372[%arg172, 0, %arg171] : memref<4x3x10xi16, #map7>
              %388 = affine.load %372[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
              affine.store %388, %372[%arg172, 1, %arg171] : memref<4x3x10xi16, #map7>
              %389 = affine.load %368[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map3>
              affine.store %389, %372[%arg172, 2, %arg171] : memref<4x3x10xi16, #map7>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %387 = affine.load %373[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  affine.store %387, %373[%arg172, %arg173, 0] : memref<4x3x3xi16, #map8>
                  %388 = affine.load %373[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                  affine.store %388, %373[%arg172, %arg173, 1] : memref<4x3x3xi16, #map8>
                  %389 = affine.load %372[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map7>
                  affine.store %389, %373[%arg172, %arg173, 2] : memref<4x3x3xi16, #map8>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %387 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_96 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %389 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %392 = arith.extsi %c16_i32 : i32 to i128
                        %393 = affine.load %373[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map8>
                        %394 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map2>
                        %395 = arith.xori %393, %394 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %396 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %397 = arith.shrui %395, %396 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %398 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %399 = arith.andi %397, %398 {unsigned} : i16
                        %400 = arith.subi %395, %399 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %401 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %402 = arith.andi %400, %401 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %403 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %404 = arith.shrui %400, %403 {unsigned} : i16
                        %c3689348814741910323_i64_98 = arith.constant 3689348814741910323 : i64
                        %405 = arith.trunci %c3689348814741910323_i64_98 {unsigned} : i64 to i16
                        %406 = arith.andi %404, %405 {unsigned} : i16
                        %407 = arith.addi %402, %406 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %408 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %410 = arith.addi %407, %409 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %411 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.extui %412 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %414 = arith.muli %413, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %415 = arith.extsi %c56_i32 : i32 to i64
                        %416 = arith.shrui %414, %415 : i64
                        %417 = arith.extsi %416 : i64 to i128
                        %c1_i32_99 = arith.constant 1 : i32
                        %418 = arith.extsi %c1_i32_99 : i32 to i64
                        %419 = arith.extsi %418 : i64 to i128
                        %420 = arith.shli %417, %419 : i128
                        %421 = arith.subi %392, %420 : i128
                        %422 = arith.trunci %421 : i128 to i16
                        affine.yield %422 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %392 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %392 : i16
                      }
                      %390 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xi16>
                      %391 = arith.addi %389, %390 : i16
                      affine.store %391, %387[%c0_96] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_2_conv2_out_lsb_rc", reduction}
                %c0_97 = arith.constant 0 : index
                %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xi16>
                affine.store %388, %370[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv2_out_lsb"}
    %374 = memref.alloc() {name = "layer3_2_conv2_pgconv"} : memref<1x64x8x8xf32, #map1>
    %375 = memref.alloc() {name = "layer3_2_bn3"} : memref<1x64x8x8xf32, #map1>
    %376 = memref.alloc() {name = "layer3_2_rprelu2"} : memref<1x64x8x8xf32, #map1>
    %377 = memref.alloc() {name = "layer3_2_residual2"} : memref<1x64x8x8xf32, #map1>
    %378 = memref.alloc() {name = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map1>
    %379 = hcl.create_op_handle "layer3_2_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %387 = affine.load %365[%c0_3, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
            %388 = arith.sitofp %387 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %389 = arith.mulf %388, %cst : f32
            %cst_96 = arith.constant 3.000000e+00 : f32
            %390 = arith.divf %389, %cst_96 : f32
            %391 = affine.load %arg159[%arg169] {from = "layer3_2_conv2_threshold"} : memref<64xf32, #map0>
            %392 = arith.cmpf ogt, %390, %391 : f32
            %393 = scf.if %392 -> (f32) {
              %411 = affine.load %370[%c0_3, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %412 = arith.sitofp %411 : i16 to f32
              %cst_97 = arith.constant 3.000000e+00 : f32
              %413 = arith.divf %412, %cst_97 : f32
              %414 = arith.addf %413, %390 : f32
              scf.yield %414 : f32
            } else {
              scf.yield %390 : f32
            }
            %394 = affine.load %arg160[%arg169] {from = "layer3_2_bn2_weight"} : memref<64xf32, #map0>
            %395 = arith.mulf %393, %394 : f32
            %396 = affine.load %arg161[%arg169] {from = "layer3_2_bn2_bias"} : memref<64xf32, #map0>
            %397 = arith.addf %395, %396 : f32
            %398 = affine.load %arg151[%arg169] {from = "layer3_2_rprelu2_shift_x_bias"} : memref<64xf32, #map0>
            %399 = arith.addf %397, %398 : f32
            %c0_i32 = arith.constant 0 : i32
            %400 = arith.sitofp %c0_i32 : i32 to f32
            %401 = arith.cmpf ogt, %399, %400 : f32
            %402 = scf.if %401 -> (f32) {
              scf.yield %399 : f32
            } else {
              %411 = affine.load %arg153[%arg169] {from = "layer3_2_rprelu2_prelu_weight"} : memref<64xf32, #map0>
              %412 = arith.mulf %411, %399 : f32
              scf.yield %412 : f32
            }
            %403 = affine.load %arg152[%arg169] {from = "layer3_2_rprelu2_shift_y_bias"} : memref<64xf32, #map0>
            %404 = arith.addf %402, %403 : f32
            %405 = affine.load %358[%c0_0, %arg169, %arg170, %arg171] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map1>
            %406 = arith.addf %405, %404 : f32
            %407 = affine.load %arg164[%arg169] {from = "layer3_2_bn4_weight"} : memref<64xf32, #map0>
            %408 = arith.mulf %406, %407 : f32
            %409 = affine.load %arg165[%arg169] {from = "layer3_2_bn4_bias"} : memref<64xf32, #map0>
            %410 = arith.addf %408, %409 : f32
            affine.store %410, %378[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map1>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn4"}
    %380 = memref.alloc() {name = "avgpool"} : memref<1x64x1x1xf32, #map1>
    %381 = hcl.create_op_handle "avgpool"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 1 {
          affine.for %arg171 = 0 to 1 {
            %387 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0_96 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg172 = 0 to 8 {
              affine.for %arg173 = 0 to 8 {
                %391 = affine.load %378[%arg168, %arg169, %arg170 * 8 + %arg172, %arg171 * 8 + %arg173] {from = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map1>
                %392 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xf32>
                %393 = arith.addf %391, %392 : f32
                affine.store %393, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_5", reduction}
            } {loop_name = "rx_4", reduction}
            %c0_97 = arith.constant 0 : index
            %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xf32>
            %c64_i32 = arith.constant 64 : i32
            %389 = arith.sitofp %c64_i32 : i32 to f32
            %390 = arith.divf %388, %389 : f32
            affine.store %390, %380[%arg168, %arg169, %arg170, %arg171] {to = "avgpool"} : memref<1x64x1x1xf32, #map1>
          } {loop_name = "w", pipeline_ii = 1 : i32}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "avgpool"}
    %382 = memref.alloc() {name = "flatten"} : memref<1x64xf32, #map6>
    %383 = hcl.create_op_handle "flatten"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        %387 = affine.load %380[%arg168, %arg169 mod 64, %arg169 floordiv 64, 0] {from = "avgpool"} : memref<1x64x1x1xf32, #map1>
        affine.store %387, %382[%arg168, %arg169] {to = "flatten"} : memref<1x64xf32, #map6>
      } {loop_name = "j", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "flatten"}
    %384 = memref.alloc() {name = "fc_matmul"} : memref<1x10xf32, #map6>
    %385 = memref.alloc() {name = "fc"} : memref<1x10xf32, #map6>
    %386 = hcl.create_op_handle "fc"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 10 {
        %387 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
        %c0_96 = arith.constant 0 : index
        %cst = arith.constant 0.000000e+00 : f32
        affine.store %cst, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
        affine.for %arg170 = 0 to 64 {
          %391 = affine.load %382[%c0, %arg170] {from = "flatten"} : memref<1x64xf32, #map6>
          %392 = affine.load %arg166[%arg169, %arg170] {from = "linear_weight"} : memref<10x64xf32, #map6>
          %393 = arith.mulf %391, %392 : f32
          %394 = affine.load %387[%c0_96] {from = "sum_rv"} : memref<1xf32>
          %395 = arith.addf %393, %394 : f32
          affine.store %395, %387[%c0_96] {to = "sum_rv"} : memref<1xf32>
        } {loop_name = "rx_6", reduction}
        %c0_97 = arith.constant 0 : index
        %388 = affine.load %387[%c0_97] {from = "sum_rv"} : memref<1xf32>
        %389 = affine.load %arg167[%arg169] {from = "linear_bias"} : memref<10xf32, #map0>
        %390 = arith.addf %388, %389 : f32
        affine.store %390, %385[%arg168, %arg169] {to = "fc"} : memref<1x10xf32, #map6>
      } {loop_name = "j", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "fc"}
    hcl.outline(%13)
    hcl.outline(%19, %21)
    hcl.outline(%37, %39) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%57, %59) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%77, %79) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%97, %99) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%117, %119) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%137, %139) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%163, %165) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%183, %185) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%203, %205) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%223, %225) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%243, %245) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%263, %265) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%289, %291) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%309, %311) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%329, %331) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%349, %351) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%369, %371) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%7, %9) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%27)
    hcl.outline(%47) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%67) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%87) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%107) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%127) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%153) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%173) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%193) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%213) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%233) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%253) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%279) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%299) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%319) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%339) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%359) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%379) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%17)
    hcl.outline(%31) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%51) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%71) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%91) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%111) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%131) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%157) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%177) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%197) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%217) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%237) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%257) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%283) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%303) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%323) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%343) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%363) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%146, %150)
    hcl.outline(%272, %276) {unify = "Stage_layer2_0_avgpool_layer2_0_concat"}
    hcl.outline(%381, %383)
    hcl.outline(%386)
    return %385 : memref<1x10xf32, #map6>
  }
}

