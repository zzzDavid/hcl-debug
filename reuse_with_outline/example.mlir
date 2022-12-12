#map0 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3, d0, 0, 0, 0)>
#map1 = affine_map<(d0) -> (d0, 0)>
#map2 = affine_map<(d0, d1) -> (0, d1, d0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, d3, d0, d1, d2, 0)>
#map4 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0, d0, 0, d2, d3)>
#map5 = affine_map<(d0, d1, d2) -> (d0, 0, 0, 0, d1, d2)>
#map6 = affine_map<(d0, d1, d2) -> (d0, d1, 0, 0, 0, d2)>
#map7 = affine_map<(d0) -> (d0 * 16)>
#map8 = affine_map<(d0) -> (d0 * 16 + 16)>
#map9 = affine_map<(d0, d1) -> (d0, 0, 0, d1)>
#map10 = affine_map<(d0, d1) -> (d0, d1, 0, 0)>
#set0 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 32 >= 0, d1 - 1 >= 0, -d1 + 32 >= 0)>
#set1 = affine_set<(d0) : (d0 - 2 >= 0)>
#set2 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 3 >= 0, -(d0 + d1) + 34 >= 0, d2 + d3 - 3 >= 0, -(d2 + d3) + 34 >= 0)>
module {
  func.func @top(%arg0: memref<1x6x32x32xi16>, %arg1: memref<16x6x3x3xi16, #map0>, %arg2: memref<16xf32, #map1>, %arg3: memref<16xf32, #map1>, %arg4: memref<16xf32, #map1>, %arg5: memref<16xf32, #map1>, %arg6: memref<16xf32, #map1>, %arg7: memref<16xf32, #map1>, %arg8: memref<16xf32, #map1>, %arg9: memref<16xf32, #map1>, %arg10: memref<16x1x3x3xi16, #map0>, %arg11: memref<16xf32, #map1>, %arg12: memref<16xf32, #map1>, %arg13: memref<16xf32, #map1>, %arg14: memref<16x1x3x3xi16, #map0>, %arg15: memref<16xf32, #map1>, %arg16: memref<16xf32, #map1>, %arg17: memref<16xf32, #map1>, %arg18: memref<16xf32, #map1>, %arg19: memref<16xf32, #map1>, %arg20: memref<16xf32, #map1>, %arg21: memref<16xf32, #map1>, %arg22: memref<16xf32, #map1>, %arg23: memref<16xf32, #map1>, %arg24: memref<16xf32, #map1>, %arg25: memref<16xf32, #map1>, %arg26: memref<16xf32, #map1>, %arg27: memref<16xf32, #map1>, %arg28: memref<16x1x3x3xi16, #map0>, %arg29: memref<16xf32, #map1>, %arg30: memref<16xf32, #map1>, %arg31: memref<16xf32, #map1>, %arg32: memref<16x1x3x3xi16, #map0>, %arg33: memref<16xf32, #map1>, %arg34: memref<16xf32, #map1>, %arg35: memref<16xf32, #map1>, %arg36: memref<16xf32, #map1>, %arg37: memref<16xf32, #map1>, %arg38: memref<16xf32, #map1>, %arg39: memref<16xf32, #map1>, %arg40: memref<16xf32, #map1>, %arg41: memref<16xf32, #map1>, %arg42: memref<16xf32, #map1>, %arg43: memref<16xf32, #map1>, %arg44: memref<16xf32, #map1>, %arg45: memref<16xf32, #map1>, %arg46: memref<16x1x3x3xi16, #map0>, %arg47: memref<16xf32, #map1>, %arg48: memref<16xf32, #map1>, %arg49: memref<16xf32, #map1>, %arg50: memref<16x1x3x3xi16, #map0>, %arg51: memref<16xf32, #map1>, %arg52: memref<16xf32, #map1>, %arg53: memref<16xf32, #map1>, %arg54: memref<16xf32, #map1>, %arg55: memref<16xf32, #map1>, %arg56: memref<16xf32, #map1>, %arg57: memref<16xf32, #map1>, %arg58: memref<32xf32, #map1>, %arg59: memref<32xf32, #map1>, %arg60: memref<32xf32, #map1>, %arg61: memref<32xf32, #map1>, %arg62: memref<32xf32, #map1>, %arg63: memref<32xf32, #map1>, %arg64: memref<32x1x3x3xi16, #map0>, %arg65: memref<32xf32, #map1>, %arg66: memref<32xf32, #map1>, %arg67: memref<32xf32, #map1>, %arg68: memref<32x2x3x3xi16, #map0>, %arg69: memref<32xf32, #map1>, %arg70: memref<32xf32, #map1>, %arg71: memref<32xf32, #map1>, %arg72: memref<32xf32, #map1>, %arg73: memref<32xf32, #map1>, %arg74: memref<32xf32, #map1>, %arg75: memref<32xf32, #map1>, %arg76: memref<32xf32, #map1>, %arg77: memref<32xf32, #map1>, %arg78: memref<32xf32, #map1>, %arg79: memref<32xf32, #map1>, %arg80: memref<32xf32, #map1>, %arg81: memref<32xf32, #map1>, %arg82: memref<32x2x3x3xi16, #map0>, %arg83: memref<32xf32, #map1>, %arg84: memref<32xf32, #map1>, %arg85: memref<32xf32, #map1>, %arg86: memref<32x2x3x3xi16, #map0>, %arg87: memref<32xf32, #map1>, %arg88: memref<32xf32, #map1>, %arg89: memref<32xf32, #map1>, %arg90: memref<32xf32, #map1>, %arg91: memref<32xf32, #map1>, %arg92: memref<32xf32, #map1>, %arg93: memref<32xf32, #map1>, %arg94: memref<32xf32, #map1>, %arg95: memref<32xf32, #map1>, %arg96: memref<32xf32, #map1>, %arg97: memref<32xf32, #map1>, %arg98: memref<32xf32, #map1>, %arg99: memref<32xf32, #map1>, %arg100: memref<32x2x3x3xi16, #map0>, %arg101: memref<32xf32, #map1>, %arg102: memref<32xf32, #map1>, %arg103: memref<32xf32, #map1>, %arg104: memref<32x2x3x3xi16, #map0>, %arg105: memref<32xf32, #map1>, %arg106: memref<32xf32, #map1>, %arg107: memref<32xf32, #map1>, %arg108: memref<32xf32, #map1>, %arg109: memref<32xf32, #map1>, %arg110: memref<32xf32, #map1>, %arg111: memref<32xf32, #map1>, %arg112: memref<64xf32, #map1>, %arg113: memref<64xf32, #map1>, %arg114: memref<64xf32, #map1>, %arg115: memref<64xf32, #map1>, %arg116: memref<64xf32, #map1>, %arg117: memref<64xf32, #map1>, %arg118: memref<64x2x3x3xi16, #map0>, %arg119: memref<64xf32, #map1>, %arg120: memref<64xf32, #map1>, %arg121: memref<64xf32, #map1>, %arg122: memref<64x4x3x3xi16, #map0>, %arg123: memref<64xf32, #map1>, %arg124: memref<64xf32, #map1>, %arg125: memref<64xf32, #map1>, %arg126: memref<64xf32, #map1>, %arg127: memref<64xf32, #map1>, %arg128: memref<64xf32, #map1>, %arg129: memref<64xf32, #map1>, %arg130: memref<64xf32, #map1>, %arg131: memref<64xf32, #map1>, %arg132: memref<64xf32, #map1>, %arg133: memref<64xf32, #map1>, %arg134: memref<64xf32, #map1>, %arg135: memref<64xf32, #map1>, %arg136: memref<64x4x3x3xi16, #map0>, %arg137: memref<64xf32, #map1>, %arg138: memref<64xf32, #map1>, %arg139: memref<64xf32, #map1>, %arg140: memref<64x4x3x3xi16, #map0>, %arg141: memref<64xf32, #map1>, %arg142: memref<64xf32, #map1>, %arg143: memref<64xf32, #map1>, %arg144: memref<64xf32, #map1>, %arg145: memref<64xf32, #map1>, %arg146: memref<64xf32, #map1>, %arg147: memref<64xf32, #map1>, %arg148: memref<64xf32, #map1>, %arg149: memref<64xf32, #map1>, %arg150: memref<64xf32, #map1>, %arg151: memref<64xf32, #map1>, %arg152: memref<64xf32, #map1>, %arg153: memref<64xf32, #map1>, %arg154: memref<64x4x3x3xi16, #map0>, %arg155: memref<64xf32, #map1>, %arg156: memref<64xf32, #map1>, %arg157: memref<64xf32, #map1>, %arg158: memref<64x4x3x3xi16, #map0>, %arg159: memref<64xf32, #map1>, %arg160: memref<64xf32, #map1>, %arg161: memref<64xf32, #map1>, %arg162: memref<64xf32, #map1>, %arg163: memref<64xf32, #map1>, %arg164: memref<64xf32, #map1>, %arg165: memref<64xf32, #map1>, %arg166: memref<10x64xf32, #map2>, %arg167: memref<10xf32, #map1>) attributes {bit, itypes = "uu________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_________", otypes = "_"} {
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
    %0 = memref.alloc() {name = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map3>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %48 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %48, %0[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate"} : memref<1x6x32x32xi16, #map3>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate"}
    %1 = memref.alloc() {name = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map3>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %48 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %48, %1[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate1"} : memref<1x6x32x32xi16, #map3>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate1"}
    %2 = memref.alloc() {name = "conv1_out_msb_pad", unsigned} : memref<1x6x34x34xi16, #map4>
    %3 = memref.alloc() {name = "conv1_out_msb"} : memref<1x16x32x32xi16>
    %4 = memref.alloc() {name = "conv1_out_msb_reuse_2"} : memref<6x3x34xi16, #map5>
    %5 = memref.alloc() {name = "conv1_out_msb_reuse_3"} : memref<6x3x3xi16, #map6>
    %6 = memref.alloc() {name = "conv1_out_lsb_pad", unsigned} : memref<1x6x34x34xi16, #map4>
    %7 = hcl.create_op_handle "conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %48 = affine.if #set0(%arg171, %arg170) -> i16 {
              %50 = affine.load %0[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map3>
              affine.yield %50 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %50 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %50 : i16
            } {unsigned}
            affine.store %48, %2[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb_pad"} : memref<1x6x34x34xi16, #map4>
            %49 = affine.if #set0(%arg171, %arg170) -> i16 {
              %50 = affine.load %1[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map3>
              affine.yield %50 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %50 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %50 : i16
            } {unsigned}
            affine.store %49, %6[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb_pad"} : memref<1x6x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "conv1_out_lsb_pad"}
    %8 = memref.alloc() {name = "conv1_out_lsb"} : memref<1x16x32x32xi16>
    %9 = hcl.create_op_handle "conv1_out_lsb"
    %10 = memref.alloc() {name = "conv1_out_lsb_reuse_2"} : memref<6x3x34xi16, #map5>
    %11 = memref.alloc() {name = "conv1_out_lsb_reuse_3"} : memref<6x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            affine.for %arg172 = 0 to 6 {
              %48 = affine.load %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %48, %4[%arg172, 0, %arg171] : memref<6x3x34xi16, #map5>
              %49 = affine.load %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %49, %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              %50 = affine.load %2[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map4>
              affine.store %50, %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %48 = affine.load %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  affine.store %48, %5[%arg172, %arg173, 0] : memref<6x3x3xi16, #map6>
                  %49 = affine.load %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                  affine.store %49, %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  %50 = affine.load %4[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map5>
                  affine.store %50, %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %48 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %48[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %50 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %53 = arith.extsi %c16_i32 : i32 to i128
                        %54 = affine.load %5[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map6>
                        %55 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map0>
                        %56 = arith.xori %54, %55 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %57 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %58 = arith.shrui %56, %57 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %59 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %60 = arith.andi %58, %59 {unsigned} : i16
                        %61 = arith.subi %56, %60 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %62 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %63 = arith.andi %61, %62 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %64 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %65 = arith.shrui %61, %64 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %66 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %67 = arith.andi %65, %66 {unsigned} : i16
                        %68 = arith.addi %63, %67 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %69 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %70 = arith.shrui %68, %69 {unsigned} : i16
                        %71 = arith.addi %68, %70 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %72 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %73 = arith.andi %71, %72 {unsigned} : i16
                        %74 = arith.extui %73 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %75 = arith.muli %74, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %76 = arith.extsi %c56_i32 : i32 to i64
                        %77 = arith.shrui %75, %76 : i64
                        %78 = arith.extsi %77 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %79 = arith.extsi %c1_i32_93 : i32 to i64
                        %80 = arith.extsi %79 : i64 to i128
                        %81 = arith.shli %78, %80 : i128
                        %82 = arith.subi %53, %81 : i128
                        %83 = arith.trunci %82 : i128 to i16
                        affine.yield %83 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %53 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %53 : i16
                      }
                      %51 = affine.load %48[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %52 = arith.addi %50, %51 : i16
                      affine.store %52, %48[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_msb_rx", reduction}
                  } {loop_name = "conv1_out_msb_ry", reduction}
                } {loop_name = "conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %49 = affine.load %48[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %49, %3[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            affine.for %arg172 = 0 to 6 {
              %48 = affine.load %10[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %48, %10[%arg172, 0, %arg171] : memref<6x3x34xi16, #map5>
              %49 = affine.load %10[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %49, %10[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              %50 = affine.load %6[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map4>
              affine.store %50, %10[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %48 = affine.load %11[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  affine.store %48, %11[%arg172, %arg173, 0] : memref<6x3x3xi16, #map6>
                  %49 = affine.load %11[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                  affine.store %49, %11[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  %50 = affine.load %10[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map5>
                  affine.store %50, %11[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %48 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %48[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %50 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %53 = arith.extsi %c16_i32 : i32 to i128
                        %54 = affine.load %11[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map6>
                        %55 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map0>
                        %56 = arith.xori %54, %55 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %57 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %58 = arith.shrui %56, %57 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %59 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %60 = arith.andi %58, %59 {unsigned} : i16
                        %61 = arith.subi %56, %60 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %62 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %63 = arith.andi %61, %62 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %64 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %65 = arith.shrui %61, %64 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %66 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %67 = arith.andi %65, %66 {unsigned} : i16
                        %68 = arith.addi %63, %67 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %69 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %70 = arith.shrui %68, %69 {unsigned} : i16
                        %71 = arith.addi %68, %70 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %72 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %73 = arith.andi %71, %72 {unsigned} : i16
                        %74 = arith.extui %73 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %75 = arith.muli %74, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %76 = arith.extsi %c56_i32 : i32 to i64
                        %77 = arith.shrui %75, %76 : i64
                        %78 = arith.extsi %77 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %79 = arith.extsi %c1_i32_93 : i32 to i64
                        %80 = arith.extsi %79 : i64 to i128
                        %81 = arith.shli %78, %80 : i128
                        %82 = arith.subi %53, %81 : i128
                        %83 = arith.trunci %82 : i128 to i16
                        affine.yield %83 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %53 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %53 : i16
                      }
                      %51 = affine.load %48[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %52 = arith.addi %50, %51 : i16
                      affine.store %52, %48[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_lsb_rx", reduction}
                  } {loop_name = "conv1_out_lsb_ry", reduction}
                } {loop_name = "conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %49 = affine.load %48[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %49, %8[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "conv1_out_lsb"}
    %12 = memref.alloc() {name = "bn1"} : memref<1x16x32x32xf32, #map3>
    %13 = hcl.create_op_handle "bn1"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %48 = affine.load %3[%arg168, %arg169, %arg170, %arg171] {from = "conv1_out_msb"} : memref<1x16x32x32xi16>
            %49 = arith.sitofp %48 : i16 to f32
            %50 = affine.load %arg2[%arg169] {from = "bn1_weight"} : memref<16xf32, #map1>
            %51 = arith.mulf %49, %50 : f32
            %52 = affine.load %arg3[%arg169] {from = "bn1_bias"} : memref<16xf32, #map1>
            %53 = arith.addf %51, %52 : f32
            affine.store %53, %12[%arg168, %arg169, %arg170, %arg171] {to = "bn1"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "bn1"}
    %14 = memref.alloc() {name = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
    %15 = memref.alloc() {name = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %16 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %17 = hcl.create_op_handle "layer1_0_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %48 = affine.load %12[%c0_89, %arg171, %arg170, %arg172] {from = "bn1"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %49 = arith.cmpf ogt, %48, %cst : f32
              %50 = scf.if %49 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %52 = arith.sitofp %c0_i32 : i32 to f32
                %53 = arith.cmpf oge, %48, %52 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %54 = arith.cmpf ole, %48, %cst_90 : f32
                %55 = arith.andi %53, %54 : i1
                %56 = scf.if %55 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %57 = arith.sitofp %c0_i32_91 : i32 to f32
                  %58 = arith.cmpf olt, %48, %57 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %59 = arith.cmpf oge, %48, %cst_92 : f32
                  %60 = arith.andi %58, %59 : i1
                  %61 = scf.if %60 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %61 : i32
                }
                scf.yield %56 : i32
              }
              %51 = arith.trunci %50 : i32 to i2
              affine.store %51, %14[%c0_89, %arg171, %arg170, %arg172] {to = "layer1_0_rsign1"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %48 = memref.alloc() {name = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %48[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %49 = hcl.create_op_handle "stage_0"
            %50 = hcl.create_loop_handle %49, "loop_0"
            affine.for %arg172 = 0 to 16 {
              %52 = affine.load %14[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %53 = hcl.get_bit(%52 : i2, %c1) -> i1
              %54 = affine.load %48[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%54 : i16, %arg172, %53 : i1)
              affine.store %54, %48[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_0", op_name = "stage_0"}
            %51 = affine.load %48[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %51, %15[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %48 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %48[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %49 = hcl.create_op_handle "stage_1"
            %50 = hcl.create_loop_handle %49, "loop_1"
            affine.for %arg172 = 0 to 16 {
              %52 = affine.load %14[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %53 = hcl.get_bit(%52 : i2, %c0_91) -> i1
              %54 = affine.load %48[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%54 : i16, %arg172, %53 : i1)
              affine.store %54, %48[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_1", op_name = "stage_1"}
            %51 = affine.load %48[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %51, %16[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv1_lsb_truncate"}
    %18 = memref.alloc() {name = "layer1_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %19 = memref.alloc() {name = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
    %20 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %21 = memref.alloc() {name = "layer1_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %22 = memref.alloc() {name = "layer1_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %23 = hcl.create_op_handle "layer1_0_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %48 = affine.if #set0(%arg171, %arg170) -> i16 {
              %50 = affine.load %15[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %50 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %50 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %50 : i16
            } {unsigned}
            affine.store %48, %18[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %49 = affine.if #set0(%arg171, %arg170) -> i16 {
              %50 = affine.load %16[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %50 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %50 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %50 : i16
            } {unsigned}
            affine.store %49, %22[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv1_out_lsb_pad"}
    %24 = memref.alloc() {name = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %25 = hcl.create_op_handle "layer1_0_conv1_out_lsb"
    %26 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %27 = memref.alloc() {name = "layer1_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %48 = affine.load %20[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %48, %20[0, %arg171] : memref<3x34xi16, #map9>
            %49 = affine.load %20[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %49, %20[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %50 = affine.load %18[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %50, %20[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %54 = affine.load %21[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %54, %21[%arg172, 0] : memref<3x3xi16, #map10>
                %55 = affine.load %21[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %55, %21[%arg172, 1] : memref<3x3xi16, #map10>
                %56 = affine.load %20[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %56, %21[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %54 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %56 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %59 = arith.extsi %c16_i32 : i32 to i128
                        %60 = affine.load %21[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %61 = affine.load %arg10[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %62 = arith.xori %60, %61 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %63 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %64 = arith.shrui %62, %63 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %65 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %66 = arith.andi %64, %65 {unsigned} : i16
                        %67 = arith.subi %62, %66 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %68 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %69 = arith.andi %67, %68 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %70 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %71 = arith.shrui %67, %70 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %72 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %73 = arith.andi %71, %72 {unsigned} : i16
                        %74 = arith.addi %69, %73 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %75 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %76 = arith.shrui %74, %75 {unsigned} : i16
                        %77 = arith.addi %74, %76 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %78 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %79 = arith.andi %77, %78 {unsigned} : i16
                        %80 = arith.extui %79 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %81 = arith.muli %80, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %82 = arith.extsi %c56_i32 : i32 to i64
                        %83 = arith.shrui %81, %82 : i64
                        %84 = arith.extsi %83 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %85 = arith.extsi %c1_i32_97 : i32 to i64
                        %86 = arith.extsi %85 : i64 to i128
                        %87 = arith.shli %84, %86 : i128
                        %88 = arith.subi %59, %87 : i128
                        %89 = arith.trunci %88 : i128 to i16
                        affine.yield %89 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %59 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %59 : i16
                      }
                      %57 = affine.load %54[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %58 = arith.addi %56, %57 : i16
                      affine.store %58, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %55 = affine.load %54[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %55, %19[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %51 = affine.load %26[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %51, %26[0, %arg171] : memref<3x34xi16, #map9>
            %52 = affine.load %26[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %52, %26[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %53 = affine.load %22[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %53, %26[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %54 = affine.load %27[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %54, %27[%arg172, 0] : memref<3x3xi16, #map10>
                %55 = affine.load %27[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %55, %27[%arg172, 1] : memref<3x3xi16, #map10>
                %56 = affine.load %26[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %56, %27[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %54 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %56 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %59 = arith.extsi %c16_i32 : i32 to i128
                        %60 = affine.load %27[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %61 = affine.load %arg10[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %62 = arith.xori %60, %61 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %63 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %64 = arith.shrui %62, %63 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %65 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %66 = arith.andi %64, %65 {unsigned} : i16
                        %67 = arith.subi %62, %66 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %68 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %69 = arith.andi %67, %68 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %70 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %71 = arith.shrui %67, %70 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %72 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %73 = arith.andi %71, %72 {unsigned} : i16
                        %74 = arith.addi %69, %73 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %75 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %76 = arith.shrui %74, %75 {unsigned} : i16
                        %77 = arith.addi %74, %76 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %78 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %79 = arith.andi %77, %78 {unsigned} : i16
                        %80 = arith.extui %79 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %81 = arith.muli %80, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %82 = arith.extsi %c56_i32 : i32 to i64
                        %83 = arith.shrui %81, %82 : i64
                        %84 = arith.extsi %83 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %85 = arith.extsi %c1_i32_97 : i32 to i64
                        %86 = arith.extsi %85 : i64 to i128
                        %87 = arith.shli %84, %86 : i128
                        %88 = arith.subi %59, %87 : i128
                        %89 = arith.trunci %88 : i128 to i16
                        affine.yield %89 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %59 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %59 : i16
                      }
                      %57 = affine.load %54[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %58 = arith.addi %56, %57 : i16
                      affine.store %58, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %55 = affine.load %54[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %55, %24[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv1_out_lsb"}
    %28 = memref.alloc() {name = "layer1_0_conv1_pgconv"} : memref<1x16x32x32xf32, #map3>
    %29 = memref.alloc() {name = "layer1_0_bn1"} : memref<1x16x32x32xf32, #map3>
    %30 = memref.alloc() {name = "layer1_0_rprelu1"} : memref<1x16x32x32xf32, #map3>
    %31 = memref.alloc() {name = "layer1_0_residual1"} : memref<1x16x32x32xf32, #map3>
    %32 = memref.alloc() {name = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map3>
    %33 = hcl.create_op_handle "layer1_0_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %48 = affine.load %19[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
            %49 = arith.sitofp %48 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %50 = arith.mulf %49, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %51 = arith.divf %50, %cst_90 : f32
            %52 = affine.load %arg11[%arg169] {from = "layer1_0_conv1_threshold"} : memref<16xf32, #map1>
            %53 = arith.cmpf ogt, %51, %52 : f32
            %54 = scf.if %53 -> (f32) {
              %72 = affine.load %24[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %73 = arith.sitofp %72 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %74 = arith.divf %73, %cst_91 : f32
              %75 = arith.addf %74, %51 : f32
              scf.yield %75 : f32
            } else {
              scf.yield %51 : f32
            }
            %55 = affine.load %arg12[%arg169] {from = "layer1_0_bn1_weight"} : memref<16xf32, #map1>
            %56 = arith.mulf %54, %55 : f32
            %57 = affine.load %arg13[%arg169] {from = "layer1_0_bn1_bias"} : memref<16xf32, #map1>
            %58 = arith.addf %56, %57 : f32
            %59 = affine.load %arg4[%arg169] {from = "layer1_0_rprelu1_shift_x_bias"} : memref<16xf32, #map1>
            %60 = arith.addf %58, %59 : f32
            %c0_i32 = arith.constant 0 : i32
            %61 = arith.sitofp %c0_i32 : i32 to f32
            %62 = arith.cmpf ogt, %60, %61 : f32
            %63 = scf.if %62 -> (f32) {
              scf.yield %60 : f32
            } else {
              %72 = affine.load %arg6[%arg169] {from = "layer1_0_rprelu1_prelu_weight"} : memref<16xf32, #map1>
              %73 = arith.mulf %72, %60 : f32
              scf.yield %73 : f32
            }
            %64 = affine.load %arg5[%arg169] {from = "layer1_0_rprelu1_shift_y_bias"} : memref<16xf32, #map1>
            %65 = arith.addf %63, %64 : f32
            %66 = affine.load %12[%c0_85, %arg169, %arg170, %arg171] {from = "bn1"} : memref<1x16x32x32xf32, #map3>
            %67 = arith.addf %65, %66 : f32
            %68 = affine.load %arg18[%arg169] {from = "layer1_0_bn3_weight"} : memref<16xf32, #map1>
            %69 = arith.mulf %67, %68 : f32
            %70 = affine.load %arg19[%arg169] {from = "layer1_0_bn3_bias"} : memref<16xf32, #map1>
            %71 = arith.addf %69, %70 : f32
            affine.store %71, %32[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn2"}
    %34 = memref.alloc() {name = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
    %35 = memref.alloc() {name = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %36 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %37 = hcl.create_op_handle "layer1_0_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %48 = affine.load %32[%c0_84, %arg171, %arg170, %arg172] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %49 = arith.cmpf ogt, %48, %cst : f32
              %50 = scf.if %49 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %52 = arith.sitofp %c0_i32 : i32 to f32
                %53 = arith.cmpf oge, %48, %52 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %54 = arith.cmpf ole, %48, %cst_90 : f32
                %55 = arith.andi %53, %54 : i1
                %56 = scf.if %55 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %57 = arith.sitofp %c0_i32_91 : i32 to f32
                  %58 = arith.cmpf olt, %48, %57 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %59 = arith.cmpf oge, %48, %cst_92 : f32
                  %60 = arith.andi %58, %59 : i1
                  %61 = scf.if %60 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %61 : i32
                }
                scf.yield %56 : i32
              }
              %51 = arith.trunci %50 : i32 to i2
              affine.store %51, %34[%c0_84, %arg171, %arg170, %arg172] {to = "layer1_0_rsign2"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %48 = memref.alloc() {name = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %48[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %49 = hcl.create_op_handle "stage_2"
            %50 = hcl.create_loop_handle %49, "loop_2"
            affine.for %arg172 = 0 to 16 {
              %52 = affine.load %34[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %53 = hcl.get_bit(%52 : i2, %c1) -> i1
              %54 = affine.load %48[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%54 : i16, %arg172, %53 : i1)
              affine.store %54, %48[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_2", op_name = "stage_2"}
            %51 = affine.load %48[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %51, %35[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %48 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %48[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %49 = hcl.create_op_handle "stage_3"
            %50 = hcl.create_loop_handle %49, "loop_3"
            affine.for %arg172 = 0 to 16 {
              %52 = affine.load %34[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %53 = hcl.get_bit(%52 : i2, %c0_91) -> i1
              %54 = affine.load %48[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%54 : i16, %arg172, %53 : i1)
              affine.store %54, %48[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_3", op_name = "stage_3"}
            %51 = affine.load %48[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %51, %36[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv2_lsb_truncate"}
    %38 = memref.alloc() {name = "layer1_0_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %39 = memref.alloc() {name = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
    %40 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %41 = memref.alloc() {name = "layer1_0_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %42 = memref.alloc() {name = "layer1_0_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %43 = hcl.create_op_handle "layer1_0_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %48 = affine.if #set0(%arg171, %arg170) -> i16 {
              %50 = affine.load %35[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %50 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %50 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %50 : i16
            } {unsigned}
            affine.store %48, %38[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %49 = affine.if #set0(%arg171, %arg170) -> i16 {
              %50 = affine.load %36[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %50 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %50 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %50 : i16
            } {unsigned}
            affine.store %49, %42[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv2_out_lsb_pad"}
    %44 = memref.alloc() {name = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %45 = hcl.create_op_handle "layer1_0_conv2_out_lsb"
    %46 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %47 = memref.alloc() {name = "layer1_0_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %48 = affine.load %40[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %48, %40[0, %arg171] : memref<3x34xi16, #map9>
            %49 = affine.load %40[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %49, %40[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %50 = affine.load %38[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %50, %40[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %54 = affine.load %41[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %54, %41[%arg172, 0] : memref<3x3xi16, #map10>
                %55 = affine.load %41[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %55, %41[%arg172, 1] : memref<3x3xi16, #map10>
                %56 = affine.load %40[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %56, %41[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %54 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %56 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %59 = arith.extsi %c16_i32 : i32 to i128
                        %60 = affine.load %41[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %61 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %62 = arith.xori %60, %61 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %63 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %64 = arith.shrui %62, %63 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %65 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %66 = arith.andi %64, %65 {unsigned} : i16
                        %67 = arith.subi %62, %66 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %68 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %69 = arith.andi %67, %68 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %70 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %71 = arith.shrui %67, %70 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %72 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %73 = arith.andi %71, %72 {unsigned} : i16
                        %74 = arith.addi %69, %73 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %75 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %76 = arith.shrui %74, %75 {unsigned} : i16
                        %77 = arith.addi %74, %76 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %78 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %79 = arith.andi %77, %78 {unsigned} : i16
                        %80 = arith.extui %79 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %81 = arith.muli %80, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %82 = arith.extsi %c56_i32 : i32 to i64
                        %83 = arith.shrui %81, %82 : i64
                        %84 = arith.extsi %83 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %85 = arith.extsi %c1_i32_97 : i32 to i64
                        %86 = arith.extsi %85 : i64 to i128
                        %87 = arith.shli %84, %86 : i128
                        %88 = arith.subi %59, %87 : i128
                        %89 = arith.trunci %88 : i128 to i16
                        affine.yield %89 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %59 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %59 : i16
                      }
                      %57 = affine.load %54[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %58 = arith.addi %56, %57 : i16
                      affine.store %58, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %55 = affine.load %54[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %55, %39[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %51 = affine.load %46[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %51, %46[0, %arg171] : memref<3x34xi16, #map9>
            %52 = affine.load %46[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %52, %46[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %53 = affine.load %42[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %53, %46[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %54 = affine.load %47[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %54, %47[%arg172, 0] : memref<3x3xi16, #map10>
                %55 = affine.load %47[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %55, %47[%arg172, 1] : memref<3x3xi16, #map10>
                %56 = affine.load %46[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %56, %47[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %54 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %56 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %59 = arith.extsi %c16_i32 : i32 to i128
                        %60 = affine.load %47[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %61 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %62 = arith.xori %60, %61 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %63 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %64 = arith.shrui %62, %63 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %65 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %66 = arith.andi %64, %65 {unsigned} : i16
                        %67 = arith.subi %62, %66 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %68 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %69 = arith.andi %67, %68 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %70 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %71 = arith.shrui %67, %70 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %72 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %73 = arith.andi %71, %72 {unsigned} : i16
                        %74 = arith.addi %69, %73 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %75 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %76 = arith.shrui %74, %75 {unsigned} : i16
                        %77 = arith.addi %74, %76 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %78 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %79 = arith.andi %77, %78 {unsigned} : i16
                        %80 = arith.extui %79 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %81 = arith.muli %80, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %82 = arith.extsi %c56_i32 : i32 to i64
                        %83 = arith.shrui %81, %82 : i64
                        %84 = arith.extsi %83 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %85 = arith.extsi %c1_i32_97 : i32 to i64
                        %86 = arith.extsi %85 : i64 to i128
                        %87 = arith.shli %84, %86 : i128
                        %88 = arith.subi %59, %87 : i128
                        %89 = arith.trunci %88 : i128 to i16
                        affine.yield %89 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %59 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %59 : i16
                      }
                      %57 = affine.load %54[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %58 = arith.addi %56, %57 : i16
                      affine.store %58, %54[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %55 = affine.load %54[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %55, %44[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv2_out_lsb"}
    hcl.outline(%23, %25)
    hcl.outline(%43, %45) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    // hcl.outline(%43, %45) 
    return
  }
}

