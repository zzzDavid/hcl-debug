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
#set3 = affine_set<(d0) : (d0 - 1 >= 0, (d0 - 1) mod 2 == 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 16 >= 0, d1 - 1 >= 0, -d1 + 16 >= 0)>
#set5 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 3 >= 0, -(d0 + d1) + 18 >= 0, d2 + d3 - 3 >= 0, -(d2 + d3) + 18 >= 0)>
#set6 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 8 >= 0, d1 - 1 >= 0, -d1 + 8 >= 0)>
#set7 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 3 >= 0, -(d0 + d1) + 10 >= 0, d2 + d3 - 3 >= 0, -(d2 + d3) + 10 >= 0)>
module {
  func.func @top(%arg0: memref<1x6x32x32xi16>, %arg1: memref<16x6x3x3xi16, #map0>, %arg2: memref<16xf32, #map1>, %arg3: memref<16xf32, #map1>, %arg4: memref<16xf32, #map1>, %arg5: memref<16xf32, #map1>, %arg6: memref<16xf32, #map1>, %arg7: memref<16xf32, #map1>, %arg8: memref<16xf32, #map1>, %arg9: memref<16xf32, #map1>, %arg10: memref<16x1x3x3xi16, #map0>, %arg11: memref<16xf32, #map1>, %arg12: memref<16xf32, #map1>, %arg13: memref<16xf32, #map1>, %arg14: memref<16x1x3x3xi16, #map0>, %arg15: memref<16xf32, #map1>, %arg16: memref<16xf32, #map1>, %arg17: memref<16xf32, #map1>, %arg18: memref<16xf32, #map1>, %arg19: memref<16xf32, #map1>, %arg20: memref<16xf32, #map1>, %arg21: memref<16xf32, #map1>, %arg22: memref<16xf32, #map1>, %arg23: memref<16xf32, #map1>, %arg24: memref<16xf32, #map1>, %arg25: memref<16xf32, #map1>, %arg26: memref<16xf32, #map1>, %arg27: memref<16xf32, #map1>, %arg28: memref<16x1x3x3xi16, #map0>, %arg29: memref<16xf32, #map1>, %arg30: memref<16xf32, #map1>, %arg31: memref<16xf32, #map1>, %arg32: memref<16x1x3x3xi16, #map0>, %arg33: memref<16xf32, #map1>, %arg34: memref<16xf32, #map1>, %arg35: memref<16xf32, #map1>, %arg36: memref<16xf32, #map1>, %arg37: memref<16xf32, #map1>, %arg38: memref<16xf32, #map1>, %arg39: memref<16xf32, #map1>, %arg40: memref<16xf32, #map1>, %arg41: memref<16xf32, #map1>, %arg42: memref<16xf32, #map1>, %arg43: memref<16xf32, #map1>, %arg44: memref<16xf32, #map1>, %arg45: memref<16xf32, #map1>, %arg46: memref<16x1x3x3xi16, #map0>, %arg47: memref<16xf32, #map1>, %arg48: memref<16xf32, #map1>, %arg49: memref<16xf32, #map1>, %arg50: memref<16x1x3x3xi16, #map0>, %arg51: memref<16xf32, #map1>, %arg52: memref<16xf32, #map1>, %arg53: memref<16xf32, #map1>, %arg54: memref<16xf32, #map1>, %arg55: memref<16xf32, #map1>, %arg56: memref<16xf32, #map1>, %arg57: memref<16xf32, #map1>, %arg58: memref<32xf32, #map1>, %arg59: memref<32xf32, #map1>, %arg60: memref<32xf32, #map1>, %arg61: memref<32xf32, #map1>, %arg62: memref<32xf32, #map1>, %arg63: memref<32xf32, #map1>, %arg64: memref<32x1x3x3xi16, #map0>, %arg65: memref<32xf32, #map1>, %arg66: memref<32xf32, #map1>, %arg67: memref<32xf32, #map1>, %arg68: memref<32x2x3x3xi16, #map0>, %arg69: memref<32xf32, #map1>, %arg70: memref<32xf32, #map1>, %arg71: memref<32xf32, #map1>, %arg72: memref<32xf32, #map1>, %arg73: memref<32xf32, #map1>, %arg74: memref<32xf32, #map1>, %arg75: memref<32xf32, #map1>, %arg76: memref<32xf32, #map1>, %arg77: memref<32xf32, #map1>, %arg78: memref<32xf32, #map1>, %arg79: memref<32xf32, #map1>, %arg80: memref<32xf32, #map1>, %arg81: memref<32xf32, #map1>, %arg82: memref<32x2x3x3xi16, #map0>, %arg83: memref<32xf32, #map1>, %arg84: memref<32xf32, #map1>, %arg85: memref<32xf32, #map1>, %arg86: memref<32x2x3x3xi16, #map0>, %arg87: memref<32xf32, #map1>, %arg88: memref<32xf32, #map1>, %arg89: memref<32xf32, #map1>, %arg90: memref<32xf32, #map1>, %arg91: memref<32xf32, #map1>, %arg92: memref<32xf32, #map1>, %arg93: memref<32xf32, #map1>, %arg94: memref<32xf32, #map1>, %arg95: memref<32xf32, #map1>, %arg96: memref<32xf32, #map1>, %arg97: memref<32xf32, #map1>, %arg98: memref<32xf32, #map1>, %arg99: memref<32xf32, #map1>, %arg100: memref<32x2x3x3xi16, #map0>, %arg101: memref<32xf32, #map1>, %arg102: memref<32xf32, #map1>, %arg103: memref<32xf32, #map1>, %arg104: memref<32x2x3x3xi16, #map0>, %arg105: memref<32xf32, #map1>, %arg106: memref<32xf32, #map1>, %arg107: memref<32xf32, #map1>, %arg108: memref<32xf32, #map1>, %arg109: memref<32xf32, #map1>, %arg110: memref<32xf32, #map1>, %arg111: memref<32xf32, #map1>, %arg112: memref<64xf32, #map1>, %arg113: memref<64xf32, #map1>, %arg114: memref<64xf32, #map1>, %arg115: memref<64xf32, #map1>, %arg116: memref<64xf32, #map1>, %arg117: memref<64xf32, #map1>, %arg118: memref<64x2x3x3xi16, #map0>, %arg119: memref<64xf32, #map1>, %arg120: memref<64xf32, #map1>, %arg121: memref<64xf32, #map1>, %arg122: memref<64x4x3x3xi16, #map0>, %arg123: memref<64xf32, #map1>, %arg124: memref<64xf32, #map1>, %arg125: memref<64xf32, #map1>, %arg126: memref<64xf32, #map1>, %arg127: memref<64xf32, #map1>, %arg128: memref<64xf32, #map1>, %arg129: memref<64xf32, #map1>, %arg130: memref<64xf32, #map1>, %arg131: memref<64xf32, #map1>, %arg132: memref<64xf32, #map1>, %arg133: memref<64xf32, #map1>, %arg134: memref<64xf32, #map1>, %arg135: memref<64xf32, #map1>, %arg136: memref<64x4x3x3xi16, #map0>, %arg137: memref<64xf32, #map1>, %arg138: memref<64xf32, #map1>, %arg139: memref<64xf32, #map1>, %arg140: memref<64x4x3x3xi16, #map0>, %arg141: memref<64xf32, #map1>, %arg142: memref<64xf32, #map1>, %arg143: memref<64xf32, #map1>, %arg144: memref<64xf32, #map1>, %arg145: memref<64xf32, #map1>, %arg146: memref<64xf32, #map1>, %arg147: memref<64xf32, #map1>, %arg148: memref<64xf32, #map1>, %arg149: memref<64xf32, #map1>, %arg150: memref<64xf32, #map1>, %arg151: memref<64xf32, #map1>, %arg152: memref<64xf32, #map1>, %arg153: memref<64xf32, #map1>, %arg154: memref<64x4x3x3xi16, #map0>, %arg155: memref<64xf32, #map1>, %arg156: memref<64xf32, #map1>, %arg157: memref<64xf32, #map1>, %arg158: memref<64x4x3x3xi16, #map0>, %arg159: memref<64xf32, #map1>, %arg160: memref<64xf32, #map1>, %arg161: memref<64xf32, #map1>, %arg162: memref<64xf32, #map1>, %arg163: memref<64xf32, #map1>, %arg164: memref<64xf32, #map1>, %arg165: memref<64xf32, #map1>, %arg166: memref<10x64xf32, #map2>, %arg167: memref<10xf32, #map1>) -> memref<1x10xf32, #map2> attributes {bit, itypes = "uu________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_________", otypes = "_"} {
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
            %393 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %393, %0[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate"} : memref<1x6x32x32xi16, #map3>
          } {loop_name = "i3"}
        } {loop_name = "i2", pipeline_ii = 1 : i32}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate"}
    %1 = memref.alloc() {name = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map3>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %393, %1[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate1"} : memref<1x6x32x32xi16, #map3>
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
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %0[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate", unsigned} : memref<1x6x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %2[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb_pad"} : memref<1x6x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %1[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate1", unsigned} : memref<1x6x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %6[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb_pad"} : memref<1x6x34x34xi16, #map4>
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
              %393 = affine.load %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %393, %4[%arg172, 0, %arg171] : memref<6x3x34xi16, #map5>
              %394 = affine.load %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %394, %4[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              %395 = affine.load %2[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map4>
              affine.store %395, %4[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  affine.store %393, %5[%arg172, %arg173, 0] : memref<6x3x3xi16, #map6>
                  %394 = affine.load %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                  affine.store %394, %5[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  %395 = affine.load %4[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map5>
                  affine.store %395, %5[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %5[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map6>
                        %400 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_msb_rx", reduction}
                  } {loop_name = "conv1_out_msb_ry", reduction}
                } {loop_name = "conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %3[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            affine.for %arg172 = 0 to 6 {
              %393 = affine.load %10[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %393, %10[%arg172, 0, %arg171] : memref<6x3x34xi16, #map5>
              %394 = affine.load %10[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
              affine.store %394, %10[%arg172, 1, %arg171] : memref<6x3x34xi16, #map5>
              %395 = affine.load %6[%arg168, %arg172, %arg170, %arg171] : memref<1x6x34x34xi16, #map4>
              affine.store %395, %10[%arg172, 2, %arg171] : memref<6x3x34xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 6 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %11[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  affine.store %393, %11[%arg172, %arg173, 0] : memref<6x3x3xi16, #map6>
                  %394 = affine.load %11[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                  affine.store %394, %11[%arg172, %arg173, 1] : memref<6x3x3xi16, #map6>
                  %395 = affine.load %10[%arg172, %arg173, %arg171] : memref<6x3x34xi16, #map5>
                  affine.store %395, %11[%arg172, %arg173, 2] : memref<6x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 6 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %11[%arg172, %arg173, %arg174] : memref<6x3x3xi16, #map6>
                        %400 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "conv1_out_lsb_rx", reduction}
                  } {loop_name = "conv1_out_lsb_ry", reduction}
                } {loop_name = "conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %8[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
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
            %393 = affine.load %3[%arg168, %arg169, %arg170, %arg171] {from = "conv1_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %395 = affine.load %arg2[%arg169] {from = "bn1_weight"} : memref<16xf32, #map1>
            %396 = arith.mulf %394, %395 : f32
            %397 = affine.load %arg3[%arg169] {from = "bn1_bias"} : memref<16xf32, #map1>
            %398 = arith.addf %396, %397 : f32
            affine.store %398, %12[%arg168, %arg169, %arg170, %arg171] {to = "bn1"} : memref<1x16x32x32xf32, #map3>
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
              %393 = affine.load %12[%c0_89, %arg171, %arg170, %arg172] {from = "bn1"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %14[%c0_89, %arg171, %arg170, %arg172] {to = "layer1_0_rsign1"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_0"
            %395 = hcl.create_loop_handle %394, "loop_0"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %14[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_0", op_name = "stage_0"}
            %396 = affine.load %393[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %15[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_1"
            %395 = hcl.create_loop_handle %394, "loop_1"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %14[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_1", op_name = "stage_1"}
            %396 = affine.load %393[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %16[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
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
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %15[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %18[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %16[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %22[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
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
            %393 = affine.load %20[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %20[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %20[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %20[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %18[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %20[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %21[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %21[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %21[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %21[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %20[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %21[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %21[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg10[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %19[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %396 = affine.load %26[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %26[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %26[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %26[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %22[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %26[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %27[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %27[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %27[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %27[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %26[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %27[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %27[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg10[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %24[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
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
            %393 = affine.load %19[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg11[%arg169] {from = "layer1_0_conv1_threshold"} : memref<16xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %24[%c0_88, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg12[%arg169] {from = "layer1_0_bn1_weight"} : memref<16xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg13[%arg169] {from = "layer1_0_bn1_bias"} : memref<16xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg4[%arg169] {from = "layer1_0_rprelu1_shift_x_bias"} : memref<16xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg6[%arg169] {from = "layer1_0_rprelu1_prelu_weight"} : memref<16xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg5[%arg169] {from = "layer1_0_rprelu1_shift_y_bias"} : memref<16xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %12[%c0_85, %arg169, %arg170, %arg171] {from = "bn1"} : memref<1x16x32x32xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg18[%arg169] {from = "layer1_0_bn3_weight"} : memref<16xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg19[%arg169] {from = "layer1_0_bn3_bias"} : memref<16xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %32[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map3>
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
              %393 = affine.load %32[%c0_84, %arg171, %arg170, %arg172] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %34[%c0_84, %arg171, %arg170, %arg172] {to = "layer1_0_rsign2"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_2"
            %395 = hcl.create_loop_handle %394, "loop_2"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %34[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_2", op_name = "stage_2"}
            %396 = affine.load %393[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %35[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_3"
            %395 = hcl.create_loop_handle %394, "loop_3"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %34[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_3", op_name = "stage_3"}
            %396 = affine.load %393[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %36[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
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
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %35[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %38[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %36[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %42[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
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
            %393 = affine.load %40[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %40[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %40[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %40[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %38[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %40[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %41[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %41[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %41[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %41[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %40[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %41[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %41[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_0_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %39[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %396 = affine.load %46[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %46[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %46[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %46[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %42[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %46[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %47[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %47[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %47[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %47[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %46[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %47[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %47[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_0_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %44[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv2_out_lsb"}
    %48 = memref.alloc() {name = "layer1_0_conv2_pgconv"} : memref<1x16x32x32xf32, #map3>
    %49 = memref.alloc() {name = "layer1_0_bn3"} : memref<1x16x32x32xf32, #map3>
    %50 = memref.alloc() {name = "layer1_0_rprelu2"} : memref<1x16x32x32xf32, #map3>
    %51 = memref.alloc() {name = "layer1_0_residual2"} : memref<1x16x32x32xf32, #map3>
    %52 = memref.alloc() {name = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map3>
    %53 = hcl.create_op_handle "layer1_0_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %39[%c0_83, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg15[%arg169] {from = "layer1_0_conv2_threshold"} : memref<16xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %44[%c0_83, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg16[%arg169] {from = "layer1_0_bn2_weight"} : memref<16xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg17[%arg169] {from = "layer1_0_bn2_bias"} : memref<16xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg7[%arg169] {from = "layer1_0_rprelu2_shift_x_bias"} : memref<16xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg9[%arg169] {from = "layer1_0_rprelu2_prelu_weight"} : memref<16xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg8[%arg169] {from = "layer1_0_rprelu2_shift_y_bias"} : memref<16xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %32[%c0_80, %arg169, %arg170, %arg171] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg20[%arg169] {from = "layer1_0_bn4_weight"} : memref<16xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg21[%arg169] {from = "layer1_0_bn4_bias"} : memref<16xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %52[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn4"}
    %54 = memref.alloc() {name = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
    %55 = memref.alloc() {name = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %56 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %57 = hcl.create_op_handle "layer1_1_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %393 = affine.load %52[%c0_79, %arg171, %arg170, %arg172] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %54[%c0_79, %arg171, %arg170, %arg172] {to = "layer1_1_rsign1"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_4"
            %395 = hcl.create_loop_handle %394, "loop_4"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %54[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_4", op_name = "stage_4"}
            %396 = affine.load %393[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %55[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_5"
            %395 = hcl.create_loop_handle %394, "loop_5"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %54[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_5", op_name = "stage_5"}
            %396 = affine.load %393[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %56[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv1_lsb_truncate"}
    %58 = memref.alloc() {name = "layer1_1_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %59 = memref.alloc() {name = "layer1_1_conv1_out_msb"} : memref<1x16x32x32xi16>
    %60 = memref.alloc() {name = "layer1_1_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %61 = memref.alloc() {name = "layer1_1_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %62 = memref.alloc() {name = "layer1_1_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %63 = hcl.create_op_handle "layer1_1_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %55[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %58[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %56[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %62[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv1_out_lsb_pad"}
    %64 = memref.alloc() {name = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %65 = hcl.create_op_handle "layer1_1_conv1_out_lsb"
    %66 = memref.alloc() {name = "layer1_1_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %67 = memref.alloc() {name = "layer1_1_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.load %60[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %60[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %60[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %60[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %58[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %60[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %61[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %61[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %61[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %61[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %60[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %61[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %61[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg28[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_1_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %59[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %396 = affine.load %66[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %66[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %66[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %66[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %62[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %66[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %67[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %67[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %67[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %67[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %66[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %67[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %67[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg28[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_1_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %64[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv1_out_lsb"}
    %68 = memref.alloc() {name = "layer1_1_conv1_pgconv"} : memref<1x16x32x32xf32, #map3>
    %69 = memref.alloc() {name = "layer1_1_bn1"} : memref<1x16x32x32xf32, #map3>
    %70 = memref.alloc() {name = "layer1_1_rprelu1"} : memref<1x16x32x32xf32, #map3>
    %71 = memref.alloc() {name = "layer1_1_residual1"} : memref<1x16x32x32xf32, #map3>
    %72 = memref.alloc() {name = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map3>
    %73 = hcl.create_op_handle "layer1_1_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %59[%c0_78, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg29[%arg169] {from = "layer1_1_conv1_threshold"} : memref<16xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %64[%c0_78, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg30[%arg169] {from = "layer1_1_bn1_weight"} : memref<16xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg31[%arg169] {from = "layer1_1_bn1_bias"} : memref<16xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg22[%arg169] {from = "layer1_1_rprelu1_shift_x_bias"} : memref<16xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg24[%arg169] {from = "layer1_1_rprelu1_prelu_weight"} : memref<16xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg23[%arg169] {from = "layer1_1_rprelu1_shift_y_bias"} : memref<16xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %52[%c0_75, %arg169, %arg170, %arg171] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg36[%arg169] {from = "layer1_1_bn3_weight"} : memref<16xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg37[%arg169] {from = "layer1_1_bn3_bias"} : memref<16xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %72[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn2"}
    %74 = memref.alloc() {name = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
    %75 = memref.alloc() {name = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %76 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %77 = hcl.create_op_handle "layer1_1_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %393 = affine.load %72[%c0_74, %arg171, %arg170, %arg172] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %74[%c0_74, %arg171, %arg170, %arg172] {to = "layer1_1_rsign2"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_6"
            %395 = hcl.create_loop_handle %394, "loop_6"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %74[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_6", op_name = "stage_6"}
            %396 = affine.load %393[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %75[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_7"
            %395 = hcl.create_loop_handle %394, "loop_7"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %74[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_7", op_name = "stage_7"}
            %396 = affine.load %393[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %76[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv2_lsb_truncate"}
    %78 = memref.alloc() {name = "layer1_1_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %79 = memref.alloc() {name = "layer1_1_conv2_out_msb"} : memref<1x16x32x32xi16>
    %80 = memref.alloc() {name = "layer1_1_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %81 = memref.alloc() {name = "layer1_1_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %82 = memref.alloc() {name = "layer1_1_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %83 = hcl.create_op_handle "layer1_1_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %75[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %78[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %76[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %82[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv2_out_lsb_pad"}
    %84 = memref.alloc() {name = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %85 = hcl.create_op_handle "layer1_1_conv2_out_lsb"
    %86 = memref.alloc() {name = "layer1_1_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %87 = memref.alloc() {name = "layer1_1_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.load %80[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %80[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %80[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %80[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %78[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %80[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %81[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %81[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %81[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %81[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %80[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %81[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %81[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg32[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_1_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %79[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %396 = affine.load %86[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %86[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %86[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %86[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %82[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %86[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %87[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %87[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %87[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %87[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %86[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %87[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %87[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg32[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_1_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %84[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv2_out_lsb"}
    %88 = memref.alloc() {name = "layer1_1_conv2_pgconv"} : memref<1x16x32x32xf32, #map3>
    %89 = memref.alloc() {name = "layer1_1_bn3"} : memref<1x16x32x32xf32, #map3>
    %90 = memref.alloc() {name = "layer1_1_rprelu2"} : memref<1x16x32x32xf32, #map3>
    %91 = memref.alloc() {name = "layer1_1_residual2"} : memref<1x16x32x32xf32, #map3>
    %92 = memref.alloc() {name = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map3>
    %93 = hcl.create_op_handle "layer1_1_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %79[%c0_73, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg33[%arg169] {from = "layer1_1_conv2_threshold"} : memref<16xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %84[%c0_73, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg34[%arg169] {from = "layer1_1_bn2_weight"} : memref<16xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg35[%arg169] {from = "layer1_1_bn2_bias"} : memref<16xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg25[%arg169] {from = "layer1_1_rprelu2_shift_x_bias"} : memref<16xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg27[%arg169] {from = "layer1_1_rprelu2_prelu_weight"} : memref<16xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg26[%arg169] {from = "layer1_1_rprelu2_shift_y_bias"} : memref<16xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %72[%c0_70, %arg169, %arg170, %arg171] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg38[%arg169] {from = "layer1_1_bn4_weight"} : memref<16xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg39[%arg169] {from = "layer1_1_bn4_bias"} : memref<16xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %92[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn4"}
    %94 = memref.alloc() {name = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
    %95 = memref.alloc() {name = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %96 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %97 = hcl.create_op_handle "layer1_2_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %393 = affine.load %92[%c0_69, %arg171, %arg170, %arg172] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %94[%c0_69, %arg171, %arg170, %arg172] {to = "layer1_2_rsign1"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_8"
            %395 = hcl.create_loop_handle %394, "loop_8"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %94[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_8", op_name = "stage_8"}
            %396 = affine.load %393[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %95[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_9"
            %395 = hcl.create_loop_handle %394, "loop_9"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %94[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_9", op_name = "stage_9"}
            %396 = affine.load %393[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %96[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv1_lsb_truncate"}
    %98 = memref.alloc() {name = "layer1_2_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %99 = memref.alloc() {name = "layer1_2_conv1_out_msb"} : memref<1x16x32x32xi16>
    %100 = memref.alloc() {name = "layer1_2_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %101 = memref.alloc() {name = "layer1_2_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %102 = memref.alloc() {name = "layer1_2_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %103 = hcl.create_op_handle "layer1_2_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %95[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %98[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %96[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %102[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv1_out_lsb_pad"}
    %104 = memref.alloc() {name = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %105 = hcl.create_op_handle "layer1_2_conv1_out_lsb"
    %106 = memref.alloc() {name = "layer1_2_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %107 = memref.alloc() {name = "layer1_2_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.load %100[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %100[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %100[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %100[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %98[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %100[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %101[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %101[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %101[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %101[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %100[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %101[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %101[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg46[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer1_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer1_2_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %99[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %396 = affine.load %106[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %106[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %106[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %106[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %102[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %106[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %107[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %107[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %107[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %107[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %106[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %107[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %107[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg46[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv1_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer1_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer1_2_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %104[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv1_out_lsb"}
    %108 = memref.alloc() {name = "layer1_2_conv1_pgconv"} : memref<1x16x32x32xf32, #map3>
    %109 = memref.alloc() {name = "layer1_2_bn1"} : memref<1x16x32x32xf32, #map3>
    %110 = memref.alloc() {name = "layer1_2_rprelu1"} : memref<1x16x32x32xf32, #map3>
    %111 = memref.alloc() {name = "layer1_2_residual1"} : memref<1x16x32x32xf32, #map3>
    %112 = memref.alloc() {name = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map3>
    %113 = hcl.create_op_handle "layer1_2_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %99[%c0_68, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg47[%arg169] {from = "layer1_2_conv1_threshold"} : memref<16xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %104[%c0_68, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg48[%arg169] {from = "layer1_2_bn1_weight"} : memref<16xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg49[%arg169] {from = "layer1_2_bn1_bias"} : memref<16xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg40[%arg169] {from = "layer1_2_rprelu1_shift_x_bias"} : memref<16xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg42[%arg169] {from = "layer1_2_rprelu1_prelu_weight"} : memref<16xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg41[%arg169] {from = "layer1_2_rprelu1_shift_y_bias"} : memref<16xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %92[%c0_65, %arg169, %arg170, %arg171] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg54[%arg169] {from = "layer1_2_bn3_weight"} : memref<16xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg55[%arg169] {from = "layer1_2_bn3_bias"} : memref<16xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %112[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn2"}
    %114 = memref.alloc() {name = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
    %115 = memref.alloc() {name = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %116 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %117 = hcl.create_op_handle "layer1_2_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %393 = affine.load %112[%c0_64, %arg171, %arg170, %arg172] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %114[%c0_64, %arg171, %arg170, %arg172] {to = "layer1_2_rsign2"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_10"
            %395 = hcl.create_loop_handle %394, "loop_10"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %114[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_10", op_name = "stage_10"}
            %396 = affine.load %393[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %115[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_11"
            %395 = hcl.create_loop_handle %394, "loop_11"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %114[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_11", op_name = "stage_11"}
            %396 = affine.load %393[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %116[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv2_lsb_truncate"}
    %118 = memref.alloc() {name = "layer1_2_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %119 = memref.alloc() {name = "layer1_2_conv2_out_msb"} : memref<1x16x32x32xi16>
    %120 = memref.alloc() {name = "layer1_2_conv2_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %121 = memref.alloc() {name = "layer1_2_conv2_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %122 = memref.alloc() {name = "layer1_2_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %123 = hcl.create_op_handle "layer1_2_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %115[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %118[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %116[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %122[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv2_out_lsb_pad"}
    %124 = memref.alloc() {name = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %125 = hcl.create_op_handle "layer1_2_conv2_out_lsb"
    %126 = memref.alloc() {name = "layer1_2_conv2_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %127 = memref.alloc() {name = "layer1_2_conv2_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.load %120[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %120[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %120[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %120[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %118[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %120[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %121[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %121[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %121[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %121[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %120[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %121[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %121[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg50[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer1_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer1_2_conv2_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %119[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
            %396 = affine.load %126[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %126[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %126[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %126[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %122[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %126[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %127[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %127[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %127[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %127[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %126[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %127[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %127[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg50[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv2_weight", unsigned} : memref<16x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer1_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer1_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer1_2_conv2_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %124[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x16x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv2_out_lsb"}
    %128 = memref.alloc() {name = "layer1_2_conv2_pgconv"} : memref<1x16x32x32xf32, #map3>
    %129 = memref.alloc() {name = "layer1_2_bn3"} : memref<1x16x32x32xf32, #map3>
    %130 = memref.alloc() {name = "layer1_2_rprelu2"} : memref<1x16x32x32xf32, #map3>
    %131 = memref.alloc() {name = "layer1_2_residual2"} : memref<1x16x32x32xf32, #map3>
    %132 = memref.alloc() {name = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map3>
    %133 = hcl.create_op_handle "layer1_2_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %119[%c0_63, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_msb"} : memref<1x16x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg51[%arg169] {from = "layer1_2_conv2_threshold"} : memref<16xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %124[%c0_63, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg52[%arg169] {from = "layer1_2_bn2_weight"} : memref<16xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg53[%arg169] {from = "layer1_2_bn2_bias"} : memref<16xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg43[%arg169] {from = "layer1_2_rprelu2_shift_x_bias"} : memref<16xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg45[%arg169] {from = "layer1_2_rprelu2_prelu_weight"} : memref<16xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg44[%arg169] {from = "layer1_2_rprelu2_shift_y_bias"} : memref<16xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %112[%c0_60, %arg169, %arg170, %arg171] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg56[%arg169] {from = "layer1_2_bn4_weight"} : memref<16xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg57[%arg169] {from = "layer1_2_bn4_bias"} : memref<16xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %132[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn4"}
    %134 = memref.alloc() {name = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
    %135 = memref.alloc() {name = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %136 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
    %137 = hcl.create_op_handle "layer2_0_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 32 {
              %393 = affine.load %132[%c0_59, %arg171, %arg170, %arg172] {from = "layer1_2_bn4"} : memref<1x16x32x32xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %134[%c0_59, %arg171, %arg170, %arg172] {to = "layer2_0_rsign1"} : memref<1x16x32x32xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_12"
            %395 = hcl.create_loop_handle %394, "loop_12"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %134[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_12", op_name = "stage_12"}
            %396 = affine.load %393[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %135[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_msb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 32 {
            %393 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_13"
            %395 = hcl.create_loop_handle %394, "loop_13"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %134[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_13", op_name = "stage_13"}
            %396 = affine.load %393[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %136[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv1_lsb_truncate"}
    %138 = memref.alloc() {name = "layer2_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %139 = memref.alloc() {name = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
    %140 = memref.alloc() {name = "layer2_0_conv1_out_msb_reuse_2"} : memref<3x34xi16, #map9>
    %141 = memref.alloc() {name = "layer2_0_conv1_out_msb_reuse_3"} : memref<3x3xi16, #map10>
    %142 = memref.alloc() {name = "layer2_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16, #map4>
    %143 = hcl.create_op_handle "layer2_0_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %135[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %138[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16, #map4>
            %394 = affine.if #set0(%arg171, %arg170) -> i16 {
              %395 = affine.load %136[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %142[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv1_out_lsb_pad"}
    %144 = memref.alloc() {name = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %145 = hcl.create_op_handle "layer2_0_conv1_out_lsb"
    %146 = memref.alloc() {name = "layer2_0_conv1_out_lsb_reuse_2"} : memref<3x34xi16, #map9>
    %147 = memref.alloc() {name = "layer2_0_conv1_out_lsb_reuse_3"} : memref<3x3xi16, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %393 = affine.load %140[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %393, %140[0, %arg171] : memref<3x34xi16, #map9>
            %394 = affine.load %140[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %394, %140[1, %arg171] : memref<3x34xi16, #map9>
            %c0_90 = arith.constant 0 : index
            %c0_91 = arith.constant 0 : index
            %395 = affine.load %138[%c0_90, %c0_91, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %395, %140[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %141[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %141[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %141[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %141[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %140[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %141[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %141[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg64[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv1_weight", unsigned} : memref<32x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_0_conv1_out_msb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %139[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x32x32xi16>
              }
            }
            %396 = affine.load %146[1, %arg171] : memref<3x34xi16, #map9>
            affine.store %396, %146[0, %arg171] : memref<3x34xi16, #map9>
            %397 = affine.load %146[2, %arg171] : memref<3x34xi16, #map9>
            affine.store %397, %146[1, %arg171] : memref<3x34xi16, #map9>
            %c0_92 = arith.constant 0 : index
            %c0_93 = arith.constant 0 : index
            %398 = affine.load %142[%c0_92, %c0_93, %arg170, %arg171] : memref<1x1x34x34xi16, #map4>
            affine.store %398, %146[2, %arg171] : memref<3x34xi16, #map9>
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 3 {
                %399 = affine.load %147[%arg172, 1] : memref<3x3xi16, #map10>
                affine.store %399, %147[%arg172, 0] : memref<3x3xi16, #map10>
                %400 = affine.load %147[%arg172, 2] : memref<3x3xi16, #map10>
                affine.store %400, %147[%arg172, 1] : memref<3x3xi16, #map10>
                %401 = affine.load %146[%arg172, %arg171] : memref<3x34xi16, #map9>
                affine.store %401, %147[%arg172, 2] : memref<3x3xi16, #map10>
              } {spatial}
              affine.if #set1(%arg171) {
                %399 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_94 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 1 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %401 = affine.if #set2(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %404 = arith.extsi %c16_i32 : i32 to i128
                        %405 = affine.load %147[%arg173, %arg174] : memref<3x3xi16, #map10>
                        %406 = affine.load %arg64[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv1_weight", unsigned} : memref<32x1x3x3xi16, #map0>
                        %407 = arith.xori %405, %406 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %408 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %409 = arith.shrui %407, %408 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %410 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %411 = arith.andi %409, %410 {unsigned} : i16
                        %412 = arith.subi %407, %411 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %413 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %414 = arith.andi %412, %413 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %415 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %416 = arith.shrui %412, %415 {unsigned} : i16
                        %c3689348814741910323_i64_96 = arith.constant 3689348814741910323 : i64
                        %417 = arith.trunci %c3689348814741910323_i64_96 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.addi %414, %418 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %420 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %421 = arith.shrui %419, %420 {unsigned} : i16
                        %422 = arith.addi %419, %421 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %423 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %424 = arith.andi %422, %423 {unsigned} : i16
                        %425 = arith.extui %424 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %426 = arith.muli %425, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %427 = arith.extsi %c56_i32 : i32 to i64
                        %428 = arith.shrui %426, %427 : i64
                        %429 = arith.extsi %428 : i64 to i128
                        %c1_i32_97 = arith.constant 1 : i32
                        %430 = arith.extsi %c1_i32_97 : i32 to i64
                        %431 = arith.extsi %430 : i64 to i128
                        %432 = arith.shli %429, %431 : i128
                        %433 = arith.subi %404, %432 : i128
                        %434 = arith.trunci %433 : i128 to i16
                        affine.yield %434 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %404 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %404 : i16
                      }
                      %402 = affine.load %399[%c0_94] {from = "sum_rv"} : memref<1xi16>
                      %403 = arith.addi %401, %402 : i16
                      affine.store %403, %399[%c0_94] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_0_conv1_out_lsb_rc", reduction}
                %c0_95 = arith.constant 0 : index
                %400 = affine.load %399[%c0_95] {from = "sum_rv"} : memref<1xi16>
                affine.store %400, %144[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x32x32xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv1_out_lsb"}
    %148 = memref.alloc() {name = "layer2_0_conv1_pgconv"} : memref<1x32x16x16xf32, #map3>
    %149 = memref.alloc() {name = "layer2_0_bn1"} : memref<1x32x16x16xf32, #map3>
    %150 = memref.alloc() {name = "layer2_0_rprelu1"} : memref<1x32x16x16xf32, #map3>
    %151 = memref.alloc() {name = "layer2_0_avgpool"} : memref<1x16x16x16xf32, #map3>
    %152 = hcl.create_op_handle "layer2_0_avgpool"
    %153 = memref.alloc() {name = "layer2_0_avgpool_reuse_2"} : memref<2x32xf32, #map9>
    %154 = memref.alloc() {name = "layer2_0_avgpool_reuse_3"} : memref<2x2xf32, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 33 {
          affine.for %arg171 = 0 to 32 {
            %393 = affine.load %153[1, %arg171] : memref<2x32xf32, #map9>
            affine.store %393, %153[0, %arg171] : memref<2x32xf32, #map9>
            %c0_90 = arith.constant 0 : index
            %394 = affine.load %132[%c0_90, %arg169, %arg170, %arg171] : memref<1x16x32x32xf32, #map3>
            affine.store %394, %153[1, %arg171] : memref<2x32xf32, #map9>
          } {spatial}
          affine.if #set3(%arg170) {
            affine.for %arg171 = 0 to 33 {
              affine.for %arg172 = 0 to 2 {
                %393 = affine.load %154[%arg172, 1] : memref<2x2xf32, #map10>
                affine.store %393, %154[%arg172, 0] : memref<2x2xf32, #map10>
                %394 = affine.load %153[%arg172, %arg171] : memref<2x32xf32, #map9>
                affine.store %394, %154[%arg172, 1] : memref<2x2xf32, #map10>
              } {spatial}
              affine.if #set3(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
                %c0_90 = arith.constant 0 : index
                %cst = arith.constant 0.000000e+00 : f32
                affine.store %cst, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 2 {
                    %397 = affine.load %154[%arg172, %arg173] : memref<2x2xf32, #map10>
                    %398 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xf32>
                    %399 = arith.addf %397, %398 : f32
                    affine.store %399, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
                  } {loop_name = "rx_1", reduction}
                } {loop_name = "rx_0", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xf32>
                %c4_i32 = arith.constant 4 : i32
                %395 = arith.sitofp %c4_i32 : i32 to f32
                %396 = arith.divf %394, %395 : f32
                affine.store %396, %151[%arg168, %arg169, (%arg170 - 1) floordiv 2, (%arg171 - 1) floordiv 2] : memref<1x16x16x16xf32, #map3>
              }
            } {loop_name = "w"}
          }
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_avgpool"}
    %155 = memref.alloc() {name = "layer2_0_concat"} : memref<1x32x16x16xf32, #map3>
    %156 = hcl.create_op_handle "layer2_0_concat"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %151[%arg168, %arg169 mod 16, %arg170, %arg171] {from = "layer2_0_avgpool"} : memref<1x16x16x16xf32, #map3>
            affine.store %393, %155[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_concat"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_concat"}
    %157 = memref.alloc() {name = "layer2_0_residual1"} : memref<1x32x16x16xf32, #map3>
    %158 = memref.alloc() {name = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map3>
    %159 = hcl.create_op_handle "layer2_0_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %139[%c0_58, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg65[%arg169] {from = "layer2_0_conv1_threshold"} : memref<32xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %144[%c0_58, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg66[%arg169] {from = "layer2_0_bn1_weight"} : memref<32xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg67[%arg169] {from = "layer2_0_bn1_bias"} : memref<32xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg58[%arg169] {from = "layer2_0_rprelu1_shift_x_bias"} : memref<32xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg60[%arg169] {from = "layer2_0_rprelu1_prelu_weight"} : memref<32xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg59[%arg169] {from = "layer2_0_rprelu1_shift_y_bias"} : memref<32xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %155[%c0_55, %arg169, %arg170, %arg171] {from = "layer2_0_concat"} : memref<1x32x16x16xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg72[%arg169] {from = "layer2_0_bn3_weight"} : memref<32xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg73[%arg169] {from = "layer2_0_bn3_bias"} : memref<32xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %158[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn2"}
    %160 = memref.alloc() {name = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
    %161 = memref.alloc() {name = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %162 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %163 = hcl.create_op_handle "layer2_0_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %393 = affine.load %158[%c0_54, %arg171, %arg170, %arg172] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %160[%c0_54, %arg171, %arg170, %arg172] {to = "layer2_0_rsign2"} : memref<1x32x16x16xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_14"
            %395 = hcl.create_loop_handle %394, "loop_14"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %160[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_14", op_name = "stage_14"}
            %396 = affine.load %393[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %161[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_15"
            %395 = hcl.create_loop_handle %394, "loop_15"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %160[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_15", op_name = "stage_15"}
            %396 = affine.load %393[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %162[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv2_lsb_truncate"}
    %164 = memref.alloc() {name = "layer2_0_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %165 = memref.alloc() {name = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
    %166 = memref.alloc() {name = "layer2_0_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map5>
    %167 = memref.alloc() {name = "layer2_0_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map6>
    %168 = memref.alloc() {name = "layer2_0_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %169 = hcl.create_op_handle "layer2_0_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %393 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %161[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %164[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map4>
            %394 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %162[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %168[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv2_out_lsb_pad"}
    %170 = memref.alloc() {name = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %171 = hcl.create_op_handle "layer2_0_conv2_out_lsb"
    %172 = memref.alloc() {name = "layer2_0_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map5>
    %173 = memref.alloc() {name = "layer2_0_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %166[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %166[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %166[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %166[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %164[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %166[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %167[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %167[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %167[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %167[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %166[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %167[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %167[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_0_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %165[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %172[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %172[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %172[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %172[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %168[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %172[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %173[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %173[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %173[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %173[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %172[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %173[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %173[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_0_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %170[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv2_out_lsb"}
    %174 = memref.alloc() {name = "layer2_0_conv2_pgconv"} : memref<1x32x16x16xf32, #map3>
    %175 = memref.alloc() {name = "layer2_0_bn3"} : memref<1x32x16x16xf32, #map3>
    %176 = memref.alloc() {name = "layer2_0_rprelu2"} : memref<1x32x16x16xf32, #map3>
    %177 = memref.alloc() {name = "layer2_0_residual2"} : memref<1x32x16x16xf32, #map3>
    %178 = memref.alloc() {name = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map3>
    %179 = hcl.create_op_handle "layer2_0_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %165[%c0_53, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg69[%arg169] {from = "layer2_0_conv2_threshold"} : memref<32xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %170[%c0_53, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg70[%arg169] {from = "layer2_0_bn2_weight"} : memref<32xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg71[%arg169] {from = "layer2_0_bn2_bias"} : memref<32xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg61[%arg169] {from = "layer2_0_rprelu2_shift_x_bias"} : memref<32xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg63[%arg169] {from = "layer2_0_rprelu2_prelu_weight"} : memref<32xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg62[%arg169] {from = "layer2_0_rprelu2_shift_y_bias"} : memref<32xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %158[%c0_50, %arg169, %arg170, %arg171] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg74[%arg169] {from = "layer2_0_bn4_weight"} : memref<32xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg75[%arg169] {from = "layer2_0_bn4_bias"} : memref<32xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %178[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn4"}
    %180 = memref.alloc() {name = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
    %181 = memref.alloc() {name = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %182 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %183 = hcl.create_op_handle "layer2_1_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %393 = affine.load %178[%c0_49, %arg171, %arg170, %arg172] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %180[%c0_49, %arg171, %arg170, %arg172] {to = "layer2_1_rsign1"} : memref<1x32x16x16xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_16"
            %395 = hcl.create_loop_handle %394, "loop_16"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %180[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_16", op_name = "stage_16"}
            %396 = affine.load %393[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %181[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_17"
            %395 = hcl.create_loop_handle %394, "loop_17"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %180[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_17", op_name = "stage_17"}
            %396 = affine.load %393[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %182[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv1_lsb_truncate"}
    %184 = memref.alloc() {name = "layer2_1_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %185 = memref.alloc() {name = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
    %186 = memref.alloc() {name = "layer2_1_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map5>
    %187 = memref.alloc() {name = "layer2_1_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map6>
    %188 = memref.alloc() {name = "layer2_1_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %189 = hcl.create_op_handle "layer2_1_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %393 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %181[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %184[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map4>
            %394 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %182[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %188[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv1_out_lsb_pad"}
    %190 = memref.alloc() {name = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %191 = hcl.create_op_handle "layer2_1_conv1_out_lsb"
    %192 = memref.alloc() {name = "layer2_1_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map5>
    %193 = memref.alloc() {name = "layer2_1_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %186[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %186[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %186[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %186[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %184[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %186[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %187[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %187[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %187[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %187[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %186[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %187[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %187[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_1_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %185[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %192[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %192[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %192[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %192[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %188[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %192[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %193[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %193[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %193[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %193[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %192[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %193[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %193[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_1_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %190[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv1_out_lsb"}
    %194 = memref.alloc() {name = "layer2_1_conv1_pgconv"} : memref<1x32x16x16xf32, #map3>
    %195 = memref.alloc() {name = "layer2_1_bn1"} : memref<1x32x16x16xf32, #map3>
    %196 = memref.alloc() {name = "layer2_1_rprelu1"} : memref<1x32x16x16xf32, #map3>
    %197 = memref.alloc() {name = "layer2_1_residual1"} : memref<1x32x16x16xf32, #map3>
    %198 = memref.alloc() {name = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map3>
    %199 = hcl.create_op_handle "layer2_1_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %185[%c0_48, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg83[%arg169] {from = "layer2_1_conv1_threshold"} : memref<32xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %190[%c0_48, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg84[%arg169] {from = "layer2_1_bn1_weight"} : memref<32xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg85[%arg169] {from = "layer2_1_bn1_bias"} : memref<32xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg76[%arg169] {from = "layer2_1_rprelu1_shift_x_bias"} : memref<32xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg78[%arg169] {from = "layer2_1_rprelu1_prelu_weight"} : memref<32xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg77[%arg169] {from = "layer2_1_rprelu1_shift_y_bias"} : memref<32xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %178[%c0_45, %arg169, %arg170, %arg171] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg90[%arg169] {from = "layer2_1_bn3_weight"} : memref<32xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg91[%arg169] {from = "layer2_1_bn3_bias"} : memref<32xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %198[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn2"}
    %200 = memref.alloc() {name = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
    %201 = memref.alloc() {name = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %202 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %203 = hcl.create_op_handle "layer2_1_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %393 = affine.load %198[%c0_44, %arg171, %arg170, %arg172] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %200[%c0_44, %arg171, %arg170, %arg172] {to = "layer2_1_rsign2"} : memref<1x32x16x16xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_18"
            %395 = hcl.create_loop_handle %394, "loop_18"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %200[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_18", op_name = "stage_18"}
            %396 = affine.load %393[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %201[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_19"
            %395 = hcl.create_loop_handle %394, "loop_19"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %200[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_19", op_name = "stage_19"}
            %396 = affine.load %393[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %202[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv2_lsb_truncate"}
    %204 = memref.alloc() {name = "layer2_1_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %205 = memref.alloc() {name = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
    %206 = memref.alloc() {name = "layer2_1_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map5>
    %207 = memref.alloc() {name = "layer2_1_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map6>
    %208 = memref.alloc() {name = "layer2_1_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %209 = hcl.create_op_handle "layer2_1_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %393 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %201[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %204[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map4>
            %394 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %202[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %208[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv2_out_lsb_pad"}
    %210 = memref.alloc() {name = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %211 = hcl.create_op_handle "layer2_1_conv2_out_lsb"
    %212 = memref.alloc() {name = "layer2_1_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map5>
    %213 = memref.alloc() {name = "layer2_1_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %206[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %206[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %206[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %206[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %204[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %206[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %207[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %207[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %207[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %207[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %206[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %207[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %207[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_1_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %205[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %212[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %212[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %212[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %212[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %208[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %212[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %213[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %213[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %213[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %213[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %212[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %213[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %213[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_1_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %210[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv2_out_lsb"}
    %214 = memref.alloc() {name = "layer2_1_conv2_pgconv"} : memref<1x32x16x16xf32, #map3>
    %215 = memref.alloc() {name = "layer2_1_bn3"} : memref<1x32x16x16xf32, #map3>
    %216 = memref.alloc() {name = "layer2_1_rprelu2"} : memref<1x32x16x16xf32, #map3>
    %217 = memref.alloc() {name = "layer2_1_residual2"} : memref<1x32x16x16xf32, #map3>
    %218 = memref.alloc() {name = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map3>
    %219 = hcl.create_op_handle "layer2_1_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %205[%c0_43, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg87[%arg169] {from = "layer2_1_conv2_threshold"} : memref<32xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %210[%c0_43, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg88[%arg169] {from = "layer2_1_bn2_weight"} : memref<32xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg89[%arg169] {from = "layer2_1_bn2_bias"} : memref<32xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg79[%arg169] {from = "layer2_1_rprelu2_shift_x_bias"} : memref<32xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg81[%arg169] {from = "layer2_1_rprelu2_prelu_weight"} : memref<32xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg80[%arg169] {from = "layer2_1_rprelu2_shift_y_bias"} : memref<32xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %198[%c0_40, %arg169, %arg170, %arg171] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg92[%arg169] {from = "layer2_1_bn4_weight"} : memref<32xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg93[%arg169] {from = "layer2_1_bn4_bias"} : memref<32xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %218[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn4"}
    %220 = memref.alloc() {name = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
    %221 = memref.alloc() {name = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %222 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %223 = hcl.create_op_handle "layer2_2_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %393 = affine.load %218[%c0_39, %arg171, %arg170, %arg172] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %220[%c0_39, %arg171, %arg170, %arg172] {to = "layer2_2_rsign1"} : memref<1x32x16x16xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_20"
            %395 = hcl.create_loop_handle %394, "loop_20"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %220[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_20", op_name = "stage_20"}
            %396 = affine.load %393[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %221[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_21"
            %395 = hcl.create_loop_handle %394, "loop_21"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %220[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_21", op_name = "stage_21"}
            %396 = affine.load %393[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %222[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv1_lsb_truncate"}
    %224 = memref.alloc() {name = "layer2_2_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %225 = memref.alloc() {name = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
    %226 = memref.alloc() {name = "layer2_2_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map5>
    %227 = memref.alloc() {name = "layer2_2_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map6>
    %228 = memref.alloc() {name = "layer2_2_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %229 = hcl.create_op_handle "layer2_2_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %393 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %221[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %224[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map4>
            %394 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %222[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %228[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv1_out_lsb_pad"}
    %230 = memref.alloc() {name = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %231 = hcl.create_op_handle "layer2_2_conv1_out_lsb"
    %232 = memref.alloc() {name = "layer2_2_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map5>
    %233 = memref.alloc() {name = "layer2_2_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %226[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %226[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %226[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %226[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %224[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %226[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %227[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %227[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %227[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %227[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %226[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %227[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %227[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer2_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer2_2_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %225[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %232[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %232[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %232[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %232[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %228[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %232[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %233[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %233[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %233[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %233[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %232[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %233[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %233[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer2_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer2_2_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %230[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv1_out_lsb"}
    %234 = memref.alloc() {name = "layer2_2_conv1_pgconv"} : memref<1x32x16x16xf32, #map3>
    %235 = memref.alloc() {name = "layer2_2_bn1"} : memref<1x32x16x16xf32, #map3>
    %236 = memref.alloc() {name = "layer2_2_rprelu1"} : memref<1x32x16x16xf32, #map3>
    %237 = memref.alloc() {name = "layer2_2_residual1"} : memref<1x32x16x16xf32, #map3>
    %238 = memref.alloc() {name = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map3>
    %239 = hcl.create_op_handle "layer2_2_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %225[%c0_38, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg101[%arg169] {from = "layer2_2_conv1_threshold"} : memref<32xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %230[%c0_38, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg102[%arg169] {from = "layer2_2_bn1_weight"} : memref<32xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg103[%arg169] {from = "layer2_2_bn1_bias"} : memref<32xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg94[%arg169] {from = "layer2_2_rprelu1_shift_x_bias"} : memref<32xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg96[%arg169] {from = "layer2_2_rprelu1_prelu_weight"} : memref<32xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg95[%arg169] {from = "layer2_2_rprelu1_shift_y_bias"} : memref<32xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %218[%c0_35, %arg169, %arg170, %arg171] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg108[%arg169] {from = "layer2_2_bn3_weight"} : memref<32xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg109[%arg169] {from = "layer2_2_bn3_bias"} : memref<32xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %238[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn2"}
    %240 = memref.alloc() {name = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
    %241 = memref.alloc() {name = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %242 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %243 = hcl.create_op_handle "layer2_2_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %393 = affine.load %238[%c0_34, %arg171, %arg170, %arg172] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %240[%c0_34, %arg171, %arg170, %arg172] {to = "layer2_2_rsign2"} : memref<1x32x16x16xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_22"
            %395 = hcl.create_loop_handle %394, "loop_22"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %240[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_22", op_name = "stage_22"}
            %396 = affine.load %393[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %241[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_msb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_23"
            %395 = hcl.create_loop_handle %394, "loop_23"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %240[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_23", op_name = "stage_23"}
            %396 = affine.load %393[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %242[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_lsb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv2_lsb_truncate"}
    %244 = memref.alloc() {name = "layer2_2_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %245 = memref.alloc() {name = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
    %246 = memref.alloc() {name = "layer2_2_conv2_out_msb_reuse_2"} : memref<2x3x18xi16, #map5>
    %247 = memref.alloc() {name = "layer2_2_conv2_out_msb_reuse_3"} : memref<2x3x3xi16, #map6>
    %248 = memref.alloc() {name = "layer2_2_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %249 = hcl.create_op_handle "layer2_2_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %393 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %241[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %244[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_msb_pad"} : memref<1x2x18x18xi16, #map4>
            %394 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %242[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %248[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_lsb_pad"} : memref<1x2x18x18xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv2_out_lsb_pad"}
    %250 = memref.alloc() {name = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %251 = hcl.create_op_handle "layer2_2_conv2_out_lsb"
    %252 = memref.alloc() {name = "layer2_2_conv2_out_lsb_reuse_2"} : memref<2x3x18xi16, #map5>
    %253 = memref.alloc() {name = "layer2_2_conv2_out_lsb_reuse_3"} : memref<2x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %246[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %246[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %246[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %246[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %244[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %246[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %247[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %247[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %247[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %247[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %246[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %247[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %247[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer2_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer2_2_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %245[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %252[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %252[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %252[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %252[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %248[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %252[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %253[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %253[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %253[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %253[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %252[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %253[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %253[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer2_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer2_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer2_2_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %250[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x32x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv2_out_lsb"}
    %254 = memref.alloc() {name = "layer2_2_conv2_pgconv"} : memref<1x32x16x16xf32, #map3>
    %255 = memref.alloc() {name = "layer2_2_bn3"} : memref<1x32x16x16xf32, #map3>
    %256 = memref.alloc() {name = "layer2_2_rprelu2"} : memref<1x32x16x16xf32, #map3>
    %257 = memref.alloc() {name = "layer2_2_residual2"} : memref<1x32x16x16xf32, #map3>
    %258 = memref.alloc() {name = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map3>
    %259 = hcl.create_op_handle "layer2_2_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %245[%c0_33, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg105[%arg169] {from = "layer2_2_conv2_threshold"} : memref<32xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %250[%c0_33, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg106[%arg169] {from = "layer2_2_bn2_weight"} : memref<32xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg107[%arg169] {from = "layer2_2_bn2_bias"} : memref<32xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg97[%arg169] {from = "layer2_2_rprelu2_shift_x_bias"} : memref<32xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg99[%arg169] {from = "layer2_2_rprelu2_prelu_weight"} : memref<32xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg98[%arg169] {from = "layer2_2_rprelu2_shift_y_bias"} : memref<32xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %238[%c0_30, %arg169, %arg170, %arg171] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg110[%arg169] {from = "layer2_2_bn4_weight"} : memref<32xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg111[%arg169] {from = "layer2_2_bn4_bias"} : memref<32xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %258[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn4"}
    %260 = memref.alloc() {name = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
    %261 = memref.alloc() {name = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %262 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
    %263 = hcl.create_op_handle "layer3_0_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 16 {
              %393 = affine.load %258[%c0_29, %arg171, %arg170, %arg172] {from = "layer2_2_bn4"} : memref<1x32x16x16xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %260[%c0_29, %arg171, %arg170, %arg172] {to = "layer3_0_rsign1"} : memref<1x32x16x16xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_24"
            %395 = hcl.create_loop_handle %394, "loop_24"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %260[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_24", op_name = "stage_24"}
            %396 = affine.load %393[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %261[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_msb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 16 {
            %393 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_25"
            %395 = hcl.create_loop_handle %394, "loop_25"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %260[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_25", op_name = "stage_25"}
            %396 = affine.load %393[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %262[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_lsb_truncate"} : memref<1x2x16x16xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv1_lsb_truncate"}
    %264 = memref.alloc() {name = "layer3_0_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %265 = memref.alloc() {name = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
    %266 = memref.alloc() {name = "layer3_0_conv1_out_msb_reuse_2"} : memref<2x3x18xi16, #map5>
    %267 = memref.alloc() {name = "layer3_0_conv1_out_msb_reuse_3"} : memref<2x3x3xi16, #map6>
    %268 = memref.alloc() {name = "layer3_0_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16, #map4>
    %269 = hcl.create_op_handle "layer3_0_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %393 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %261[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %264[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_msb_pad"} : memref<1x2x18x18xi16, #map4>
            %394 = affine.if #set4(%arg171, %arg170) -> i16 {
              %395 = affine.load %262[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %268[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_lsb_pad"} : memref<1x2x18x18xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv1_out_lsb_pad"}
    %270 = memref.alloc() {name = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
    %271 = hcl.create_op_handle "layer3_0_conv1_out_lsb"
    %272 = memref.alloc() {name = "layer3_0_conv1_out_lsb_reuse_2"} : memref<2x3x18xi16, #map5>
    %273 = memref.alloc() {name = "layer3_0_conv1_out_lsb_reuse_3"} : memref<2x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %266[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %266[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %266[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %266[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %264[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %266[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %267[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %267[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %267[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %267[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %266[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %267[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %267[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_0_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_0_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %265[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x16x16xi16>
              }
            }
            affine.for %arg172 = 0 to 2 {
              %393 = affine.load %272[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %393, %272[%arg172, 0, %arg171] : memref<2x3x18xi16, #map5>
              %394 = affine.load %272[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
              affine.store %394, %272[%arg172, 1, %arg171] : memref<2x3x18xi16, #map5>
              %395 = affine.load %268[%arg168, %arg172, %arg170, %arg171] : memref<1x2x18x18xi16, #map4>
              affine.store %395, %272[%arg172, 2, %arg171] : memref<2x3x18xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 2 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %273[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  affine.store %393, %273[%arg172, %arg173, 0] : memref<2x3x3xi16, #map6>
                  %394 = affine.load %273[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                  affine.store %394, %273[%arg172, %arg173, 1] : memref<2x3x3xi16, #map6>
                  %395 = affine.load %272[%arg172, %arg173, %arg171] : memref<2x3x18xi16, #map5>
                  affine.store %395, %273[%arg172, %arg173, 2] : memref<2x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %273[%arg172, %arg173, %arg174] : memref<2x3x3xi16, #map6>
                        %400 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_0_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_0_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %270[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x16x16xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv1_out_lsb"}
    %274 = memref.alloc() {name = "layer3_0_conv1_pgconv"} : memref<1x64x8x8xf32, #map3>
    %275 = memref.alloc() {name = "layer3_0_bn1"} : memref<1x64x8x8xf32, #map3>
    %276 = memref.alloc() {name = "layer3_0_rprelu1"} : memref<1x64x8x8xf32, #map3>
    %277 = memref.alloc() {name = "layer3_0_avgpool"} : memref<1x32x8x8xf32, #map3>
    %278 = hcl.create_op_handle "layer3_0_avgpool"
    %279 = memref.alloc() {name = "layer3_0_avgpool_reuse_2"} : memref<2x16xf32, #map9>
    %280 = memref.alloc() {name = "layer3_0_avgpool_reuse_3"} : memref<2x2xf32, #map10>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 17 {
          affine.for %arg171 = 0 to 16 {
            %393 = affine.load %279[1, %arg171] : memref<2x16xf32, #map9>
            affine.store %393, %279[0, %arg171] : memref<2x16xf32, #map9>
            %c0_90 = arith.constant 0 : index
            %394 = affine.load %258[%c0_90, %arg169, %arg170, %arg171] : memref<1x32x16x16xf32, #map3>
            affine.store %394, %279[1, %arg171] : memref<2x16xf32, #map9>
          } {spatial}
          affine.if #set3(%arg170) {
            affine.for %arg171 = 0 to 17 {
              affine.for %arg172 = 0 to 2 {
                %393 = affine.load %280[%arg172, 1] : memref<2x2xf32, #map10>
                affine.store %393, %280[%arg172, 0] : memref<2x2xf32, #map10>
                %394 = affine.load %279[%arg172, %arg171] : memref<2x16xf32, #map9>
                affine.store %394, %280[%arg172, 1] : memref<2x2xf32, #map10>
              } {spatial}
              affine.if #set3(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
                %c0_90 = arith.constant 0 : index
                %cst = arith.constant 0.000000e+00 : f32
                affine.store %cst, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
                affine.for %arg172 = 0 to 2 {
                  affine.for %arg173 = 0 to 2 {
                    %397 = affine.load %280[%arg172, %arg173] : memref<2x2xf32, #map10>
                    %398 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xf32>
                    %399 = arith.addf %397, %398 : f32
                    affine.store %399, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
                  } {loop_name = "rx_3", reduction}
                } {loop_name = "rx_2", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xf32>
                %c4_i32 = arith.constant 4 : i32
                %395 = arith.sitofp %c4_i32 : i32 to f32
                %396 = arith.divf %394, %395 : f32
                affine.store %396, %277[%arg168, %arg169, (%arg170 - 1) floordiv 2, (%arg171 - 1) floordiv 2] : memref<1x32x8x8xf32, #map3>
              }
            } {loop_name = "w"}
          }
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_avgpool"}
    %281 = memref.alloc() {name = "layer3_0_concat"} : memref<1x64x8x8xf32, #map3>
    %282 = hcl.create_op_handle "layer3_0_concat"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %277[%arg168, %arg169 mod 32, %arg170, %arg171] {from = "layer3_0_avgpool"} : memref<1x32x8x8xf32, #map3>
            affine.store %393, %281[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_concat"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_concat"}
    %283 = memref.alloc() {name = "layer3_0_residual1"} : memref<1x64x8x8xf32, #map3>
    %284 = memref.alloc() {name = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map3>
    %285 = hcl.create_op_handle "layer3_0_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %265[%c0_28, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg119[%arg169] {from = "layer3_0_conv1_threshold"} : memref<64xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %270[%c0_28, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg120[%arg169] {from = "layer3_0_bn1_weight"} : memref<64xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg121[%arg169] {from = "layer3_0_bn1_bias"} : memref<64xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg112[%arg169] {from = "layer3_0_rprelu1_shift_x_bias"} : memref<64xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg114[%arg169] {from = "layer3_0_rprelu1_prelu_weight"} : memref<64xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg113[%arg169] {from = "layer3_0_rprelu1_shift_y_bias"} : memref<64xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %281[%c0_25, %arg169, %arg170, %arg171] {from = "layer3_0_concat"} : memref<1x64x8x8xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg126[%arg169] {from = "layer3_0_bn3_weight"} : memref<64xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg127[%arg169] {from = "layer3_0_bn3_bias"} : memref<64xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %284[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn2"}
    %286 = memref.alloc() {name = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
    %287 = memref.alloc() {name = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %288 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %289 = hcl.create_op_handle "layer3_0_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %393 = affine.load %284[%c0_24, %arg171, %arg170, %arg172] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %286[%c0_24, %arg171, %arg170, %arg172] {to = "layer3_0_rsign2"} : memref<1x64x8x8xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_26"
            %395 = hcl.create_loop_handle %394, "loop_26"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %286[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_26", op_name = "stage_26"}
            %396 = affine.load %393[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %287[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_27"
            %395 = hcl.create_loop_handle %394, "loop_27"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %286[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_27", op_name = "stage_27"}
            %396 = affine.load %393[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %288[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv2_lsb_truncate"}
    %290 = memref.alloc() {name = "layer3_0_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %291 = memref.alloc() {name = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
    %292 = memref.alloc() {name = "layer3_0_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map5>
    %293 = memref.alloc() {name = "layer3_0_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map6>
    %294 = memref.alloc() {name = "layer3_0_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %295 = hcl.create_op_handle "layer3_0_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %393 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %287[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %290[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map4>
            %394 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %288[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %294[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv2_out_lsb_pad"}
    %296 = memref.alloc() {name = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %297 = hcl.create_op_handle "layer3_0_conv2_out_lsb"
    %298 = memref.alloc() {name = "layer3_0_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map5>
    %299 = memref.alloc() {name = "layer3_0_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %292[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %292[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %292[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %292[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %290[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %292[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %293[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %293[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %293[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %293[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %292[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %293[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %293[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_0_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_0_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %291[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %298[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %298[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %298[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %298[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %294[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %298[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %299[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %299[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %299[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %299[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %298[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %299[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %299[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_0_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_0_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_0_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %296[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv2_out_lsb"}
    %300 = memref.alloc() {name = "layer3_0_conv2_pgconv"} : memref<1x64x8x8xf32, #map3>
    %301 = memref.alloc() {name = "layer3_0_bn3"} : memref<1x64x8x8xf32, #map3>
    %302 = memref.alloc() {name = "layer3_0_rprelu2"} : memref<1x64x8x8xf32, #map3>
    %303 = memref.alloc() {name = "layer3_0_residual2"} : memref<1x64x8x8xf32, #map3>
    %304 = memref.alloc() {name = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map3>
    %305 = hcl.create_op_handle "layer3_0_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %291[%c0_23, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg123[%arg169] {from = "layer3_0_conv2_threshold"} : memref<64xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %296[%c0_23, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg124[%arg169] {from = "layer3_0_bn2_weight"} : memref<64xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg125[%arg169] {from = "layer3_0_bn2_bias"} : memref<64xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg115[%arg169] {from = "layer3_0_rprelu2_shift_x_bias"} : memref<64xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg117[%arg169] {from = "layer3_0_rprelu2_prelu_weight"} : memref<64xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg116[%arg169] {from = "layer3_0_rprelu2_shift_y_bias"} : memref<64xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %284[%c0_20, %arg169, %arg170, %arg171] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg128[%arg169] {from = "layer3_0_bn4_weight"} : memref<64xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg129[%arg169] {from = "layer3_0_bn4_bias"} : memref<64xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %304[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn4"}
    %306 = memref.alloc() {name = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map3>
    %307 = memref.alloc() {name = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %308 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %309 = hcl.create_op_handle "layer3_1_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %393 = affine.load %304[%c0_19, %arg171, %arg170, %arg172] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %306[%c0_19, %arg171, %arg170, %arg172] {to = "layer3_1_rsign1"} : memref<1x64x8x8xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_28"
            %395 = hcl.create_loop_handle %394, "loop_28"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %306[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_28", op_name = "stage_28"}
            %396 = affine.load %393[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %307[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_msb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_29"
            %395 = hcl.create_loop_handle %394, "loop_29"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %306[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_29", op_name = "stage_29"}
            %396 = affine.load %393[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %308[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_lsb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv1_lsb_truncate"}
    %310 = memref.alloc() {name = "layer3_1_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %311 = memref.alloc() {name = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
    %312 = memref.alloc() {name = "layer3_1_conv1_out_msb_reuse_2"} : memref<4x3x10xi16, #map5>
    %313 = memref.alloc() {name = "layer3_1_conv1_out_msb_reuse_3"} : memref<4x3x3xi16, #map6>
    %314 = memref.alloc() {name = "layer3_1_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %315 = hcl.create_op_handle "layer3_1_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %393 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %307[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %310[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_msb_pad"} : memref<1x4x10x10xi16, #map4>
            %394 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %308[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %314[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_lsb_pad"} : memref<1x4x10x10xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv1_out_lsb_pad"}
    %316 = memref.alloc() {name = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %317 = hcl.create_op_handle "layer3_1_conv1_out_lsb"
    %318 = memref.alloc() {name = "layer3_1_conv1_out_lsb_reuse_2"} : memref<4x3x10xi16, #map5>
    %319 = memref.alloc() {name = "layer3_1_conv1_out_lsb_reuse_3"} : memref<4x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %312[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %312[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %312[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %312[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %310[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %312[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %313[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %313[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %313[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %313[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %312[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %313[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %313[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_1_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_1_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %311[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %318[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %318[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %318[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %318[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %314[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %318[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %319[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %319[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %319[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %319[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %318[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %319[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %319[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_1_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_1_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %316[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv1_out_lsb"}
    %320 = memref.alloc() {name = "layer3_1_conv1_pgconv"} : memref<1x64x8x8xf32, #map3>
    %321 = memref.alloc() {name = "layer3_1_bn1"} : memref<1x64x8x8xf32, #map3>
    %322 = memref.alloc() {name = "layer3_1_rprelu1"} : memref<1x64x8x8xf32, #map3>
    %323 = memref.alloc() {name = "layer3_1_residual1"} : memref<1x64x8x8xf32, #map3>
    %324 = memref.alloc() {name = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map3>
    %325 = hcl.create_op_handle "layer3_1_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %311[%c0_18, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg137[%arg169] {from = "layer3_1_conv1_threshold"} : memref<64xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %316[%c0_18, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg138[%arg169] {from = "layer3_1_bn1_weight"} : memref<64xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg139[%arg169] {from = "layer3_1_bn1_bias"} : memref<64xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg130[%arg169] {from = "layer3_1_rprelu1_shift_x_bias"} : memref<64xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg132[%arg169] {from = "layer3_1_rprelu1_prelu_weight"} : memref<64xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg131[%arg169] {from = "layer3_1_rprelu1_shift_y_bias"} : memref<64xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %304[%c0_15, %arg169, %arg170, %arg171] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg144[%arg169] {from = "layer3_1_bn3_weight"} : memref<64xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg145[%arg169] {from = "layer3_1_bn3_bias"} : memref<64xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %324[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn2"}
    %326 = memref.alloc() {name = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
    %327 = memref.alloc() {name = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %328 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %329 = hcl.create_op_handle "layer3_1_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %393 = affine.load %324[%c0_14, %arg171, %arg170, %arg172] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %326[%c0_14, %arg171, %arg170, %arg172] {to = "layer3_1_rsign2"} : memref<1x64x8x8xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_30"
            %395 = hcl.create_loop_handle %394, "loop_30"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %326[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_30", op_name = "stage_30"}
            %396 = affine.load %393[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %327[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_31"
            %395 = hcl.create_loop_handle %394, "loop_31"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %326[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_31", op_name = "stage_31"}
            %396 = affine.load %393[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %328[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv2_lsb_truncate"}
    %330 = memref.alloc() {name = "layer3_1_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %331 = memref.alloc() {name = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
    %332 = memref.alloc() {name = "layer3_1_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map5>
    %333 = memref.alloc() {name = "layer3_1_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map6>
    %334 = memref.alloc() {name = "layer3_1_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %335 = hcl.create_op_handle "layer3_1_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %393 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %327[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %330[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map4>
            %394 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %328[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %334[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv2_out_lsb_pad"}
    %336 = memref.alloc() {name = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %337 = hcl.create_op_handle "layer3_1_conv2_out_lsb"
    %338 = memref.alloc() {name = "layer3_1_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map5>
    %339 = memref.alloc() {name = "layer3_1_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %332[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %332[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %332[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %332[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %330[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %332[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %333[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %333[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %333[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %333[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %332[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %333[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %333[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_1_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_1_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %331[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %338[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %338[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %338[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %338[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %334[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %338[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %339[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %339[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %339[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %339[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %338[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %339[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %339[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_1_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_1_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_1_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %336[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv2_out_lsb"}
    %340 = memref.alloc() {name = "layer3_1_conv2_pgconv"} : memref<1x64x8x8xf32, #map3>
    %341 = memref.alloc() {name = "layer3_1_bn3"} : memref<1x64x8x8xf32, #map3>
    %342 = memref.alloc() {name = "layer3_1_rprelu2"} : memref<1x64x8x8xf32, #map3>
    %343 = memref.alloc() {name = "layer3_1_residual2"} : memref<1x64x8x8xf32, #map3>
    %344 = memref.alloc() {name = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map3>
    %345 = hcl.create_op_handle "layer3_1_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %331[%c0_13, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg141[%arg169] {from = "layer3_1_conv2_threshold"} : memref<64xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %336[%c0_13, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg142[%arg169] {from = "layer3_1_bn2_weight"} : memref<64xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg143[%arg169] {from = "layer3_1_bn2_bias"} : memref<64xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg133[%arg169] {from = "layer3_1_rprelu2_shift_x_bias"} : memref<64xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg135[%arg169] {from = "layer3_1_rprelu2_prelu_weight"} : memref<64xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg134[%arg169] {from = "layer3_1_rprelu2_shift_y_bias"} : memref<64xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %324[%c0_10, %arg169, %arg170, %arg171] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg146[%arg169] {from = "layer3_1_bn4_weight"} : memref<64xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg147[%arg169] {from = "layer3_1_bn4_bias"} : memref<64xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %344[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn4"}
    %346 = memref.alloc() {name = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map3>
    %347 = memref.alloc() {name = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %348 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %349 = hcl.create_op_handle "layer3_2_conv1_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %393 = affine.load %344[%c0_9, %arg171, %arg170, %arg172] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %346[%c0_9, %arg171, %arg170, %arg172] {to = "layer3_2_rsign1"} : memref<1x64x8x8xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_32"
            %395 = hcl.create_loop_handle %394, "loop_32"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %346[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_32", op_name = "stage_32"}
            %396 = affine.load %393[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %347[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_msb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_33"
            %395 = hcl.create_loop_handle %394, "loop_33"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %346[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_33", op_name = "stage_33"}
            %396 = affine.load %393[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %348[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_lsb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv1_lsb_truncate"}
    %350 = memref.alloc() {name = "layer3_2_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %351 = memref.alloc() {name = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
    %352 = memref.alloc() {name = "layer3_2_conv1_out_msb_reuse_2"} : memref<4x3x10xi16, #map5>
    %353 = memref.alloc() {name = "layer3_2_conv1_out_msb_reuse_3"} : memref<4x3x3xi16, #map6>
    %354 = memref.alloc() {name = "layer3_2_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %355 = hcl.create_op_handle "layer3_2_conv1_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %393 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %347[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %350[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_msb_pad"} : memref<1x4x10x10xi16, #map4>
            %394 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %348[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %354[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_lsb_pad"} : memref<1x4x10x10xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv1_out_lsb_pad"}
    %356 = memref.alloc() {name = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %357 = hcl.create_op_handle "layer3_2_conv1_out_lsb"
    %358 = memref.alloc() {name = "layer3_2_conv1_out_lsb_reuse_2"} : memref<4x3x10xi16, #map5>
    %359 = memref.alloc() {name = "layer3_2_conv1_out_lsb_reuse_3"} : memref<4x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %352[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %352[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %352[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %352[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %350[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %352[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %353[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %353[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %353[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %353[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %352[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %353[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %353[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv1_out_msb_rx", reduction}
                  } {loop_name = "layer3_2_conv1_out_msb_ry", reduction}
                } {loop_name = "layer3_2_conv1_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %351[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %358[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %358[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %358[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %358[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %354[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %358[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %359[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %359[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %359[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %359[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %358[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %359[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %359[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv1_out_lsb_rx", reduction}
                  } {loop_name = "layer3_2_conv1_out_lsb_ry", reduction}
                } {loop_name = "layer3_2_conv1_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %356[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv1_out_lsb"}
    %360 = memref.alloc() {name = "layer3_2_conv1_pgconv"} : memref<1x64x8x8xf32, #map3>
    %361 = memref.alloc() {name = "layer3_2_bn1"} : memref<1x64x8x8xf32, #map3>
    %362 = memref.alloc() {name = "layer3_2_rprelu1"} : memref<1x64x8x8xf32, #map3>
    %363 = memref.alloc() {name = "layer3_2_residual1"} : memref<1x64x8x8xf32, #map3>
    %364 = memref.alloc() {name = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map3>
    %365 = hcl.create_op_handle "layer3_2_bn2"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %351[%c0_8, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg155[%arg169] {from = "layer3_2_conv1_threshold"} : memref<64xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %356[%c0_8, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg156[%arg169] {from = "layer3_2_bn1_weight"} : memref<64xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg157[%arg169] {from = "layer3_2_bn1_bias"} : memref<64xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg148[%arg169] {from = "layer3_2_rprelu1_shift_x_bias"} : memref<64xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg150[%arg169] {from = "layer3_2_rprelu1_prelu_weight"} : memref<64xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg149[%arg169] {from = "layer3_2_rprelu1_shift_y_bias"} : memref<64xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %344[%c0_5, %arg169, %arg170, %arg171] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32, #map3>
            %412 = arith.addf %410, %411 : f32
            %413 = affine.load %arg162[%arg169] {from = "layer3_2_bn3_weight"} : memref<64xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg163[%arg169] {from = "layer3_2_bn3_bias"} : memref<64xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %364[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn2"}
    %366 = memref.alloc() {name = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
    %367 = memref.alloc() {name = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %368 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
    %369 = hcl.create_op_handle "layer3_2_conv2_lsb_truncate"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = #map7(%arg169) to #map8(%arg169) {
            affine.for %arg172 = 0 to 8 {
              %393 = affine.load %364[%c0_4, %arg171, %arg170, %arg172] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map3>
              %cst = arith.constant 0.666666686 : f32
              %394 = arith.cmpf ogt, %393, %cst : f32
              %395 = scf.if %394 -> (i32) {
                %c3_i32 = arith.constant 3 : i32
                scf.yield %c3_i32 : i32
              } else {
                %c0_i32 = arith.constant 0 : i32
                %397 = arith.sitofp %c0_i32 : i32 to f32
                %398 = arith.cmpf oge, %393, %397 : f32
                %cst_90 = arith.constant 0.666666686 : f32
                %399 = arith.cmpf ole, %393, %cst_90 : f32
                %400 = arith.andi %398, %399 : i1
                %401 = scf.if %400 -> (i32) {
                  %c2_i32 = arith.constant 2 : i32
                  scf.yield %c2_i32 : i32
                } else {
                  %c0_i32_91 = arith.constant 0 : i32
                  %402 = arith.sitofp %c0_i32_91 : i32 to f32
                  %403 = arith.cmpf olt, %393, %402 : f32
                  %cst_92 = arith.constant -0.666666686 : f32
                  %404 = arith.cmpf oge, %393, %cst_92 : f32
                  %405 = arith.andi %403, %404 : i1
                  %406 = scf.if %405 -> (i32) {
                    %c1_i32 = arith.constant 1 : i32
                    scf.yield %c1_i32 : i32
                  } else {
                    %c0_i32_93 = arith.constant 0 : i32
                    scf.yield %c0_i32_93 : i32
                  }
                  scf.yield %406 : i32
                }
                scf.yield %401 : i32
              }
              %396 = arith.trunci %395 : i32 to i2
              affine.store %396, %366[%c0_4, %arg171, %arg170, %arg172] {to = "layer3_2_rsign2"} : memref<1x64x8x8xi2, #map3>
            } {loop_name = "ww"}
          } {loop_name = "cc"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_34"
            %395 = hcl.create_loop_handle %394, "loop_34"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %366[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
              %c1 = arith.constant 1 : index
              %398 = hcl.get_bit(%397 : i2, %c1) -> i1
              %399 = affine.load %393[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_34", op_name = "stage_34"}
            %396 = affine.load %393[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %367[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_msb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
          affine.for %arg171 = 0 to 8 {
            %393 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0_90 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %393[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %394 = hcl.create_op_handle "stage_35"
            %395 = hcl.create_loop_handle %394, "loop_35"
            affine.for %arg172 = 0 to 16 {
              %397 = affine.load %366[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2, #map3>
              %c0_91 = arith.constant 0 : index
              %398 = hcl.get_bit(%397 : i2, %c0_91) -> i1
              %399 = affine.load %393[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%399 : i16, %arg172, %398 : i1)
              affine.store %399, %393[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_35", op_name = "stage_35"}
            %396 = affine.load %393[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %396, %368[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_lsb_truncate"} : memref<1x4x8x8xi16, #map3>
          } {loop_name = "w"}
        } {loop_name = "h", pipeline_ii = 1 : i32}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv2_lsb_truncate"}
    %370 = memref.alloc() {name = "layer3_2_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %371 = memref.alloc() {name = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
    %372 = memref.alloc() {name = "layer3_2_conv2_out_msb_reuse_2"} : memref<4x3x10xi16, #map5>
    %373 = memref.alloc() {name = "layer3_2_conv2_out_msb_reuse_3"} : memref<4x3x3xi16, #map6>
    %374 = memref.alloc() {name = "layer3_2_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16, #map4>
    %375 = hcl.create_op_handle "layer3_2_conv2_out_lsb_pad"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %393 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %367[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %393, %370[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_msb_pad"} : memref<1x4x10x10xi16, #map4>
            %394 = affine.if #set6(%arg171, %arg170) -> i16 {
              %395 = affine.load %368[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16, #map3>
              affine.yield %395 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %395 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %395 : i16
            } {unsigned}
            affine.store %394, %374[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_lsb_pad"} : memref<1x4x10x10xi16, #map4>
          } {loop_name = "ww", pipeline_ii = 1 : i32}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv2_out_lsb_pad"}
    %376 = memref.alloc() {name = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %377 = hcl.create_op_handle "layer3_2_conv2_out_lsb"
    %378 = memref.alloc() {name = "layer3_2_conv2_out_lsb_reuse_2"} : memref<4x3x10xi16, #map5>
    %379 = memref.alloc() {name = "layer3_2_conv2_out_lsb_reuse_3"} : memref<4x3x3xi16, #map6>
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %372[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %372[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %372[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %372[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %370[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %372[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %373[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %373[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %373[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %373[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %372[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %373[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %373[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv2_out_msb_rx", reduction}
                  } {loop_name = "layer3_2_conv2_out_msb_ry", reduction}
                } {loop_name = "layer3_2_conv2_out_msb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %371[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
            affine.for %arg172 = 0 to 4 {
              %393 = affine.load %378[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %393, %378[%arg172, 0, %arg171] : memref<4x3x10xi16, #map5>
              %394 = affine.load %378[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
              affine.store %394, %378[%arg172, 1, %arg171] : memref<4x3x10xi16, #map5>
              %395 = affine.load %374[%arg168, %arg172, %arg170, %arg171] : memref<1x4x10x10xi16, #map4>
              affine.store %395, %378[%arg172, 2, %arg171] : memref<4x3x10xi16, #map5>
            } {spatial}
            affine.if #set1(%arg170) {
              affine.for %arg172 = 0 to 4 {
                affine.for %arg173 = 0 to 3 {
                  %393 = affine.load %379[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  affine.store %393, %379[%arg172, %arg173, 0] : memref<4x3x3xi16, #map6>
                  %394 = affine.load %379[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                  affine.store %394, %379[%arg172, %arg173, 1] : memref<4x3x3xi16, #map6>
                  %395 = affine.load %378[%arg172, %arg173, %arg171] : memref<4x3x10xi16, #map5>
                  affine.store %395, %379[%arg172, %arg173, 2] : memref<4x3x3xi16, #map6>
                } {spatial}
              } {spatial}
              affine.if #set1(%arg171) {
                %393 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
                %c0_90 = arith.constant 0 : index
                %c0_i16 = arith.constant 0 : i16
                affine.store %c0_i16, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                affine.for %arg172 = 0 to 4 {
                  affine.for %arg173 = 0 to 3 {
                    affine.for %arg174 = 0 to 3 {
                      %395 = affine.if #set7(%arg171, %arg174, %arg170, %arg173) -> i16 {
                        %c16_i32 = arith.constant 16 : i32
                        %398 = arith.extsi %c16_i32 : i32 to i128
                        %399 = affine.load %379[%arg172, %arg173, %arg174] : memref<4x3x3xi16, #map6>
                        %400 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16, #map0>
                        %401 = arith.xori %399, %400 {unsigned} : i16
                        %c1_i32 = arith.constant 1 : i32
                        %402 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                        %403 = arith.shrui %401, %402 {unsigned} : i16
                        %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                        %404 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                        %405 = arith.andi %403, %404 {unsigned} : i16
                        %406 = arith.subi %401, %405 {unsigned} : i16
                        %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                        %407 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                        %408 = arith.andi %406, %407 {unsigned} : i16
                        %c2_i32 = arith.constant 2 : i32
                        %409 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                        %410 = arith.shrui %406, %409 {unsigned} : i16
                        %c3689348814741910323_i64_92 = arith.constant 3689348814741910323 : i64
                        %411 = arith.trunci %c3689348814741910323_i64_92 {unsigned} : i64 to i16
                        %412 = arith.andi %410, %411 {unsigned} : i16
                        %413 = arith.addi %408, %412 {unsigned} : i16
                        %c4_i32 = arith.constant 4 : i32
                        %414 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                        %415 = arith.shrui %413, %414 {unsigned} : i16
                        %416 = arith.addi %413, %415 {unsigned} : i16
                        %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                        %417 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                        %418 = arith.andi %416, %417 {unsigned} : i16
                        %419 = arith.extui %418 : i16 to i64
                        %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                        %420 = arith.muli %419, %c72340172838076673_i64 : i64
                        %c56_i32 = arith.constant 56 : i32
                        %421 = arith.extsi %c56_i32 : i32 to i64
                        %422 = arith.shrui %420, %421 : i64
                        %423 = arith.extsi %422 : i64 to i128
                        %c1_i32_93 = arith.constant 1 : i32
                        %424 = arith.extsi %c1_i32_93 : i32 to i64
                        %425 = arith.extsi %424 : i64 to i128
                        %426 = arith.shli %423, %425 : i128
                        %427 = arith.subi %398, %426 : i128
                        %428 = arith.trunci %427 : i128 to i16
                        affine.yield %428 : i16
                      } else {
                        %c0_i32 = arith.constant 0 : i32
                        %398 = arith.trunci %c0_i32 : i32 to i16
                        affine.yield %398 : i16
                      }
                      %396 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xi16>
                      %397 = arith.addi %395, %396 : i16
                      affine.store %397, %393[%c0_90] {to = "sum_rv"} : memref<1xi16>
                    } {loop_name = "layer3_2_conv2_out_lsb_rx", reduction}
                  } {loop_name = "layer3_2_conv2_out_lsb_ry", reduction}
                } {loop_name = "layer3_2_conv2_out_lsb_rc", reduction}
                %c0_91 = arith.constant 0 : index
                %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xi16>
                affine.store %394, %376[%arg168, %arg169, %arg170 - 2, %arg171 - 2] : memref<1x64x8x8xi16>
              }
            }
          } {loop_name = "xx", pipeline_ii = 1 : i32}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv2_out_lsb"}
    %380 = memref.alloc() {name = "layer3_2_conv2_pgconv"} : memref<1x64x8x8xf32, #map3>
    %381 = memref.alloc() {name = "layer3_2_bn3"} : memref<1x64x8x8xf32, #map3>
    %382 = memref.alloc() {name = "layer3_2_rprelu2"} : memref<1x64x8x8xf32, #map3>
    %383 = memref.alloc() {name = "layer3_2_residual2"} : memref<1x64x8x8xf32, #map3>
    %384 = memref.alloc() {name = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map3>
    %385 = hcl.create_op_handle "layer3_2_bn4"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %393 = affine.load %371[%c0_3, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
            %394 = arith.sitofp %393 : i16 to f32
            %cst = arith.constant 2.000000e+00 : f32
            %395 = arith.mulf %394, %cst : f32
            %cst_90 = arith.constant 3.000000e+00 : f32
            %396 = arith.divf %395, %cst_90 : f32
            %397 = affine.load %arg159[%arg169] {from = "layer3_2_conv2_threshold"} : memref<64xf32, #map1>
            %398 = arith.cmpf ogt, %396, %397 : f32
            %399 = scf.if %398 -> (f32) {
              %417 = affine.load %376[%c0_3, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %418 = arith.sitofp %417 : i16 to f32
              %cst_91 = arith.constant 3.000000e+00 : f32
              %419 = arith.divf %418, %cst_91 : f32
              %420 = arith.addf %419, %396 : f32
              scf.yield %420 : f32
            } else {
              scf.yield %396 : f32
            }
            %400 = affine.load %arg160[%arg169] {from = "layer3_2_bn2_weight"} : memref<64xf32, #map1>
            %401 = arith.mulf %399, %400 : f32
            %402 = affine.load %arg161[%arg169] {from = "layer3_2_bn2_bias"} : memref<64xf32, #map1>
            %403 = arith.addf %401, %402 : f32
            %404 = affine.load %arg151[%arg169] {from = "layer3_2_rprelu2_shift_x_bias"} : memref<64xf32, #map1>
            %405 = arith.addf %403, %404 : f32
            %c0_i32 = arith.constant 0 : i32
            %406 = arith.sitofp %c0_i32 : i32 to f32
            %407 = arith.cmpf ogt, %405, %406 : f32
            %408 = scf.if %407 -> (f32) {
              scf.yield %405 : f32
            } else {
              %417 = affine.load %arg153[%arg169] {from = "layer3_2_rprelu2_prelu_weight"} : memref<64xf32, #map1>
              %418 = arith.mulf %417, %405 : f32
              scf.yield %418 : f32
            }
            %409 = affine.load %arg152[%arg169] {from = "layer3_2_rprelu2_shift_y_bias"} : memref<64xf32, #map1>
            %410 = arith.addf %408, %409 : f32
            %411 = affine.load %364[%c0_0, %arg169, %arg170, %arg171] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32, #map3>
            %412 = arith.addf %411, %410 : f32
            %413 = affine.load %arg164[%arg169] {from = "layer3_2_bn4_weight"} : memref<64xf32, #map1>
            %414 = arith.mulf %412, %413 : f32
            %415 = affine.load %arg165[%arg169] {from = "layer3_2_bn4_bias"} : memref<64xf32, #map1>
            %416 = arith.addf %414, %415 : f32
            affine.store %416, %384[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map3>
          } {loop_name = "ww"}
        } {loop_name = "hh", pipeline_ii = 1 : i32}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn4"}
    %386 = memref.alloc() {name = "avgpool"} : memref<1x64x1x1xf32, #map3>
    %387 = hcl.create_op_handle "avgpool"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 1 {
          affine.for %arg171 = 0 to 1 {
            %393 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0_90 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg172 = 0 to 8 {
              affine.for %arg173 = 0 to 8 {
                %397 = affine.load %384[%arg168, %arg169, %arg170 * 8 + %arg172, %arg171 * 8 + %arg173] {from = "layer3_2_bn4"} : memref<1x64x8x8xf32, #map3>
                %398 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xf32>
                %399 = arith.addf %397, %398 : f32
                affine.store %399, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_5", reduction}
            } {loop_name = "rx_4", reduction}
            %c0_91 = arith.constant 0 : index
            %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xf32>
            %c64_i32 = arith.constant 64 : i32
            %395 = arith.sitofp %c64_i32 : i32 to f32
            %396 = arith.divf %394, %395 : f32
            affine.store %396, %386[%arg168, %arg169, %arg170, %arg171] {to = "avgpool"} : memref<1x64x1x1xf32, #map3>
          } {loop_name = "w", pipeline_ii = 1 : i32}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "avgpool"}
    %388 = memref.alloc() {name = "flatten"} : memref<1x64xf32, #map2>
    %389 = hcl.create_op_handle "flatten"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        %393 = affine.load %386[%arg168, %arg169 mod 64, %arg169 floordiv 64, 0] {from = "avgpool"} : memref<1x64x1x1xf32, #map3>
        affine.store %393, %388[%arg168, %arg169] {to = "flatten"} : memref<1x64xf32, #map2>
      } {loop_name = "j", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "flatten"}
    %390 = memref.alloc() {name = "fc_matmul"} : memref<1x10xf32, #map2>
    %391 = memref.alloc() {name = "fc"} : memref<1x10xf32, #map2>
    %392 = hcl.create_op_handle "fc"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 10 {
        %393 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
        %c0_90 = arith.constant 0 : index
        %cst = arith.constant 0.000000e+00 : f32
        affine.store %cst, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
        affine.for %arg170 = 0 to 64 {
          %397 = affine.load %388[%c0, %arg170] {from = "flatten"} : memref<1x64xf32, #map2>
          %398 = affine.load %arg166[%arg169, %arg170] {from = "linear_weight"} : memref<10x64xf32, #map2>
          %399 = arith.mulf %397, %398 : f32
          %400 = affine.load %393[%c0_90] {from = "sum_rv"} : memref<1xf32>
          %401 = arith.addf %399, %400 : f32
          affine.store %401, %393[%c0_90] {to = "sum_rv"} : memref<1xf32>
        } {loop_name = "rx_6", reduction}
        %c0_91 = arith.constant 0 : index
        %394 = affine.load %393[%c0_91] {from = "sum_rv"} : memref<1xf32>
        %395 = affine.load %arg167[%arg169] {from = "linear_bias"} : memref<10xf32, #map1>
        %396 = arith.addf %394, %395 : f32
        affine.store %396, %391[%arg168, %arg169] {to = "fc"} : memref<1x10xf32, #map2>
      } {loop_name = "j", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "fc"}
    hcl.outline(%13)
    hcl.outline(%23, %25)
    hcl.outline(%43, %45) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%63, %65) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%83, %85) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%103, %105) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%123, %125) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%143, %145) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%169, %171) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%189, %191) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%209, %211) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%229, %231) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%249, %251) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%269, %271) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%295, %297) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%315, %317) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%335, %337) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%355, %357) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%375, %377) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%7, %9) {unify = "Stage_layer1_0_conv1_out_lsb_pad_layer1_0_conv1_out_lsb"}
    hcl.outline(%33)
    hcl.outline(%53) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%73) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%93) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%113) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%133) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%159) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%179) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%199) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%219) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%239) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%259) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%285) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%305) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%325) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%345) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%365) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%385) {unify = "Stage_layer1_0_bn2"}
    hcl.outline(%17)
    hcl.outline(%37) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%57) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%77) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%97) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%117) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%137) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%163) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%183) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%203) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%223) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%243) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%263) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%289) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%309) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%329) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%349) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%369) {unify = "Stage_layer1_0_conv1_lsb_truncate"}
    hcl.outline(%152, %156)
    hcl.outline(%278, %282) {unify = "Stage_layer2_0_avgpool_layer2_0_concat"}
    hcl.outline(%387, %389)
    hcl.outline(%392)
    return %391 : memref<1x10xf32, #map2>
  }
}

