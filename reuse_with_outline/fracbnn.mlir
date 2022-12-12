#set0 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 32 >= 0, d1 - 1 >= 0, -d1 + 32 >= 0)>
#set1 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 1 >= 0, -(d0 + d1) + 32 >= 0, d2 + d3 - 1 >= 0, -(d2 + d3) + 32 >= 0)>
#set2 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 16 >= 0, d1 - 1 >= 0, -d1 + 16 >= 0)>
#set3 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 1 >= 0, -(d0 + d1) + 16 >= 0, d2 + d3 - 1 >= 0, -(d2 + d3) + 16 >= 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 >= 0, -d0 + 8 >= 0, d1 - 1 >= 0, -d1 + 8 >= 0)>
#set5 = affine_set<(d0, d1, d2, d3) : (d0 + d1 - 1 >= 0, -(d0 + d1) + 8 >= 0, d2 + d3 - 1 >= 0, -(d2 + d3) + 8 >= 0)>
module {
  func.func @top(%arg0: memref<1x6x32x32xi16>, %arg1: memref<16x6x3x3xi16>, %arg2: memref<16xf32>, %arg3: memref<16xf32>, %arg4: memref<16xf32>, %arg5: memref<16xf32>, %arg6: memref<16xf32>, %arg7: memref<16xf32>, %arg8: memref<16xf32>, %arg9: memref<16xf32>, %arg10: memref<16x1x3x3xi16>, %arg11: memref<16xf32>, %arg12: memref<16xf32>, %arg13: memref<16xf32>, %arg14: memref<16x1x3x3xi16>, %arg15: memref<16xf32>, %arg16: memref<16xf32>, %arg17: memref<16xf32>, %arg18: memref<16xf32>, %arg19: memref<16xf32>, %arg20: memref<16xf32>, %arg21: memref<16xf32>, %arg22: memref<16xf32>, %arg23: memref<16xf32>, %arg24: memref<16xf32>, %arg25: memref<16xf32>, %arg26: memref<16xf32>, %arg27: memref<16xf32>, %arg28: memref<16x1x3x3xi16>, %arg29: memref<16xf32>, %arg30: memref<16xf32>, %arg31: memref<16xf32>, %arg32: memref<16x1x3x3xi16>, %arg33: memref<16xf32>, %arg34: memref<16xf32>, %arg35: memref<16xf32>, %arg36: memref<16xf32>, %arg37: memref<16xf32>, %arg38: memref<16xf32>, %arg39: memref<16xf32>, %arg40: memref<16xf32>, %arg41: memref<16xf32>, %arg42: memref<16xf32>, %arg43: memref<16xf32>, %arg44: memref<16xf32>, %arg45: memref<16xf32>, %arg46: memref<16x1x3x3xi16>, %arg47: memref<16xf32>, %arg48: memref<16xf32>, %arg49: memref<16xf32>, %arg50: memref<16x1x3x3xi16>, %arg51: memref<16xf32>, %arg52: memref<16xf32>, %arg53: memref<16xf32>, %arg54: memref<16xf32>, %arg55: memref<16xf32>, %arg56: memref<16xf32>, %arg57: memref<16xf32>, %arg58: memref<32xf32>, %arg59: memref<32xf32>, %arg60: memref<32xf32>, %arg61: memref<32xf32>, %arg62: memref<32xf32>, %arg63: memref<32xf32>, %arg64: memref<32x1x3x3xi16>, %arg65: memref<32xf32>, %arg66: memref<32xf32>, %arg67: memref<32xf32>, %arg68: memref<32x2x3x3xi16>, %arg69: memref<32xf32>, %arg70: memref<32xf32>, %arg71: memref<32xf32>, %arg72: memref<32xf32>, %arg73: memref<32xf32>, %arg74: memref<32xf32>, %arg75: memref<32xf32>, %arg76: memref<32xf32>, %arg77: memref<32xf32>, %arg78: memref<32xf32>, %arg79: memref<32xf32>, %arg80: memref<32xf32>, %arg81: memref<32xf32>, %arg82: memref<32x2x3x3xi16>, %arg83: memref<32xf32>, %arg84: memref<32xf32>, %arg85: memref<32xf32>, %arg86: memref<32x2x3x3xi16>, %arg87: memref<32xf32>, %arg88: memref<32xf32>, %arg89: memref<32xf32>, %arg90: memref<32xf32>, %arg91: memref<32xf32>, %arg92: memref<32xf32>, %arg93: memref<32xf32>, %arg94: memref<32xf32>, %arg95: memref<32xf32>, %arg96: memref<32xf32>, %arg97: memref<32xf32>, %arg98: memref<32xf32>, %arg99: memref<32xf32>, %arg100: memref<32x2x3x3xi16>, %arg101: memref<32xf32>, %arg102: memref<32xf32>, %arg103: memref<32xf32>, %arg104: memref<32x2x3x3xi16>, %arg105: memref<32xf32>, %arg106: memref<32xf32>, %arg107: memref<32xf32>, %arg108: memref<32xf32>, %arg109: memref<32xf32>, %arg110: memref<32xf32>, %arg111: memref<32xf32>, %arg112: memref<64xf32>, %arg113: memref<64xf32>, %arg114: memref<64xf32>, %arg115: memref<64xf32>, %arg116: memref<64xf32>, %arg117: memref<64xf32>, %arg118: memref<64x2x3x3xi16>, %arg119: memref<64xf32>, %arg120: memref<64xf32>, %arg121: memref<64xf32>, %arg122: memref<64x4x3x3xi16>, %arg123: memref<64xf32>, %arg124: memref<64xf32>, %arg125: memref<64xf32>, %arg126: memref<64xf32>, %arg127: memref<64xf32>, %arg128: memref<64xf32>, %arg129: memref<64xf32>, %arg130: memref<64xf32>, %arg131: memref<64xf32>, %arg132: memref<64xf32>, %arg133: memref<64xf32>, %arg134: memref<64xf32>, %arg135: memref<64xf32>, %arg136: memref<64x4x3x3xi16>, %arg137: memref<64xf32>, %arg138: memref<64xf32>, %arg139: memref<64xf32>, %arg140: memref<64x4x3x3xi16>, %arg141: memref<64xf32>, %arg142: memref<64xf32>, %arg143: memref<64xf32>, %arg144: memref<64xf32>, %arg145: memref<64xf32>, %arg146: memref<64xf32>, %arg147: memref<64xf32>, %arg148: memref<64xf32>, %arg149: memref<64xf32>, %arg150: memref<64xf32>, %arg151: memref<64xf32>, %arg152: memref<64xf32>, %arg153: memref<64xf32>, %arg154: memref<64x4x3x3xi16>, %arg155: memref<64xf32>, %arg156: memref<64xf32>, %arg157: memref<64xf32>, %arg158: memref<64x4x3x3xi16>, %arg159: memref<64xf32>, %arg160: memref<64xf32>, %arg161: memref<64xf32>, %arg162: memref<64xf32>, %arg163: memref<64xf32>, %arg164: memref<64xf32>, %arg165: memref<64xf32>, %arg166: memref<10x64xf32>, %arg167: memref<10xf32>) -> memref<1x10xf32> attributes {bit, itypes = "uu________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_____________u___u_________", otypes = "_"} {
    %0 = memref.alloc() {name = "x_truncate", unsigned} : memref<1x6x32x32xi16>
    %1 = hcl.create_op_handle "x_truncate"
    %2 = hcl.create_loop_handle %1, "i0"
    %3 = hcl.create_loop_handle %1, "i1"
    %4 = hcl.create_loop_handle %1, "i2"
    %5 = hcl.create_loop_handle %1, "i3"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %1581, %0[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate"} : memref<1x6x32x32xi16>
          } {loop_name = "i3"}
        } {loop_name = "i2"}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate"}
    %6 = memref.alloc() {name = "x_truncate1", unsigned} : memref<1x6x32x32xi16>
    %7 = hcl.create_op_handle "x_truncate1"
    %8 = hcl.create_loop_handle %7, "i0"
    %9 = hcl.create_loop_handle %7, "i1"
    %10 = hcl.create_loop_handle %7, "i2"
    %11 = hcl.create_loop_handle %7, "i3"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %arg0[%arg168, %arg169, %arg170, %arg171] {from = "input_image", unsigned} : memref<1x6x32x32xi16>
            affine.store %1581, %6[%arg168, %arg169, %arg170, %arg171] {to = "x_truncate1"} : memref<1x6x32x32xi16>
          } {loop_name = "i3"}
        } {loop_name = "i2"}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "x_truncate1"}
    %12 = memref.alloc() {name = "conv1_out_msb_pad", unsigned} : memref<1x6x34x34xi16>
    %13 = hcl.create_op_handle "conv1_out_msb_pad"
    %14 = hcl.create_loop_handle %13, "ii"
    %15 = hcl.create_loop_handle %13, "cc"
    %16 = hcl.create_loop_handle %13, "hh"
    %17 = hcl.create_loop_handle %13, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %0[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate", unsigned} : memref<1x6x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %12[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb_pad"} : memref<1x6x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "conv1_out_msb_pad"}
    %18 = memref.alloc() {name = "conv1_out_msb"} : memref<1x16x32x32xi16>
    %19 = hcl.create_op_handle "conv1_out_msb"
    %20 = hcl.create_loop_handle %19, "nn"
    %21 = hcl.create_loop_handle %19, "ff"
    %22 = hcl.create_loop_handle %19, "yy"
    %23 = hcl.create_loop_handle %19, "xx"
    %24 = hcl.create_loop_handle %19, "conv1_out_msb_rc"
    %25 = hcl.create_loop_handle %19, "conv1_out_msb_rx"
    %26 = hcl.create_loop_handle %19, "conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 6 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %12[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "conv1_out_msb_pad", unsigned} : memref<1x6x34x34xi16>
                    %1588 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "conv1_out_msb_rx", reduction}
              } {loop_name = "conv1_out_msb_ry", reduction}
            } {loop_name = "conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %18[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "conv1_out_msb"}
    %27 = memref.alloc() {name = "conv1_out_lsb_pad", unsigned} : memref<1x6x34x34xi16>
    %28 = hcl.create_op_handle "conv1_out_lsb_pad"
    %29 = hcl.create_loop_handle %28, "ii"
    %30 = hcl.create_loop_handle %28, "cc"
    %31 = hcl.create_loop_handle %28, "hh"
    %32 = hcl.create_loop_handle %28, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 6 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %6[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "x_truncate1", unsigned} : memref<1x6x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %27[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb_pad"} : memref<1x6x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "conv1_out_lsb_pad"}
    %33 = memref.alloc() {name = "conv1_out_lsb"} : memref<1x16x32x32xi16>
    %34 = hcl.create_op_handle "conv1_out_lsb"
    %35 = hcl.create_loop_handle %34, "nn"
    %36 = hcl.create_loop_handle %34, "ff"
    %37 = hcl.create_loop_handle %34, "yy"
    %38 = hcl.create_loop_handle %34, "xx"
    %39 = hcl.create_loop_handle %34, "conv1_out_lsb_rc"
    %40 = hcl.create_loop_handle %34, "conv1_out_lsb_rx"
    %41 = hcl.create_loop_handle %34, "conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 6 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %27[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "conv1_out_lsb_pad", unsigned} : memref<1x6x34x34xi16>
                    %1588 = affine.load %arg1[%arg169, %arg172, %arg173, %arg174] {from = "conv1_weight", unsigned} : memref<16x6x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "conv1_out_lsb_rx", reduction}
              } {loop_name = "conv1_out_lsb_ry", reduction}
            } {loop_name = "conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %33[%arg168, %arg169, %arg170, %arg171] {to = "conv1_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "conv1_out_lsb"}
    %42 = memref.alloc() {name = "bn1"} : memref<1x16x32x32xf32>
    %43 = hcl.create_op_handle "bn1"
    %44 = hcl.create_loop_handle %43, "nn"
    %45 = hcl.create_loop_handle %43, "cc"
    %46 = hcl.create_loop_handle %43, "hh"
    %47 = hcl.create_loop_handle %43, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %18[%arg168, %arg169, %arg170, %arg171] {from = "conv1_out_msb"} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 : i16 to f32
            %1583 = affine.load %arg2[%arg169] {from = "bn1_weight"} : memref<16xf32>
            %1584 = arith.mulf %1582, %1583 : f32
            %1585 = affine.load %arg3[%arg169] {from = "bn1_bias"} : memref<16xf32>
            %1586 = arith.addf %1584, %1585 : f32
            affine.store %1586, %42[%arg168, %arg169, %arg170, %arg171] {to = "bn1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "bn1"}
    %48 = memref.alloc() {name = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2>
    %49 = hcl.create_op_handle "layer1_0_rsign1"
    %50 = hcl.create_loop_handle %49, "nn"
    %51 = hcl.create_loop_handle %49, "cc"
    %52 = hcl.create_loop_handle %49, "hh"
    %53 = hcl.create_loop_handle %49, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %42[%arg168, %arg169, %arg170, %arg171] {from = "bn1", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %48[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_rsign1"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_rsign1"}
    %54 = memref.alloc() {name = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %55 = hcl.create_op_handle "layer1_0_conv1_msb_truncate"
    %56 = hcl.create_loop_handle %55, "i"
    %57 = hcl.create_loop_handle %55, "c"
    %58 = hcl.create_loop_handle %55, "h"
    %59 = hcl.create_loop_handle %55, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_0"
            %1583 = hcl.create_loop_handle %1582, "loop_0"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %48[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_0", op_name = "stage_0"}
            %1584 = affine.load %1581[0] {from = "layer1_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %54[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv1_msb_truncate"}
    %60 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %61 = hcl.create_op_handle "layer1_0_conv1_lsb_truncate"
    %62 = hcl.create_loop_handle %61, "i"
    %63 = hcl.create_loop_handle %61, "c"
    %64 = hcl.create_loop_handle %61, "h"
    %65 = hcl.create_loop_handle %61, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_1"
            %1583 = hcl.create_loop_handle %1582, "loop_1"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %48[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_1", op_name = "stage_1"}
            %1584 = affine.load %1581[0] {from = "layer1_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %60[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv1_lsb_truncate"}
    %66 = memref.alloc() {name = "layer1_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %67 = hcl.create_op_handle "layer1_0_conv1_out_msb_pad"
    %68 = hcl.create_loop_handle %67, "ii"
    %69 = hcl.create_loop_handle %67, "cc"
    %70 = hcl.create_loop_handle %67, "hh"
    %71 = hcl.create_loop_handle %67, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %54[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %66[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv1_out_msb_pad"}
    %72 = memref.alloc() {name = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
    %73 = hcl.create_op_handle "layer1_0_conv1_out_msb"
    %74 = hcl.create_loop_handle %73, "nn"
    %75 = hcl.create_loop_handle %73, "ff"
    %76 = hcl.create_loop_handle %73, "yy"
    %77 = hcl.create_loop_handle %73, "xx"
    %78 = hcl.create_loop_handle %73, "layer1_0_conv1_out_msb_rc"
    %79 = hcl.create_loop_handle %73, "layer1_0_conv1_out_msb_rx"
    %80 = hcl.create_loop_handle %73, "layer1_0_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %66[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg10[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_0_conv1_out_msb_rx", reduction}
              } {loop_name = "layer1_0_conv1_out_msb_ry", reduction}
            } {loop_name = "layer1_0_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %72[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv1_out_msb"}
    %81 = memref.alloc() {name = "layer1_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %82 = hcl.create_op_handle "layer1_0_conv1_out_lsb_pad"
    %83 = hcl.create_loop_handle %82, "ii"
    %84 = hcl.create_loop_handle %82, "cc"
    %85 = hcl.create_loop_handle %82, "hh"
    %86 = hcl.create_loop_handle %82, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %60[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %81[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv1_out_lsb_pad"}
    %87 = memref.alloc() {name = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %88 = hcl.create_op_handle "layer1_0_conv1_out_lsb"
    %89 = hcl.create_loop_handle %88, "nn"
    %90 = hcl.create_loop_handle %88, "ff"
    %91 = hcl.create_loop_handle %88, "yy"
    %92 = hcl.create_loop_handle %88, "xx"
    %93 = hcl.create_loop_handle %88, "layer1_0_conv1_out_lsb_rc"
    %94 = hcl.create_loop_handle %88, "layer1_0_conv1_out_lsb_rx"
    %95 = hcl.create_loop_handle %88, "layer1_0_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %81[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg10[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv1_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_0_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer1_0_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer1_0_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %87[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv1_out_lsb"}
    %96 = memref.alloc() {name = "layer1_0_conv1_pgconv"} : memref<1x16x32x32xf32>
    %97 = hcl.create_op_handle "layer1_0_conv1_pgconv"
    %98 = hcl.create_loop_handle %97, "nn"
    %99 = hcl.create_loop_handle %97, "cc"
    %100 = hcl.create_loop_handle %97, "hh"
    %101 = hcl.create_loop_handle %97, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %72[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_msb", moved} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg11[%arg169] {from = "layer1_0_conv1_threshold", moved} : memref<16xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %87[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %96[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv1_pgconv"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_conv1_pgconv"}
    %102 = memref.alloc() {name = "layer1_0_bn1"} : memref<1x16x32x32xf32>
    %103 = hcl.create_op_handle "layer1_0_bn1"
    %104 = hcl.create_loop_handle %103, "nn"
    %105 = hcl.create_loop_handle %103, "cc"
    %106 = hcl.create_loop_handle %103, "hh"
    %107 = hcl.create_loop_handle %103, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %96[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_conv1_pgconv"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg12[%arg169] {from = "layer1_0_bn1_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg13[%arg169] {from = "layer1_0_bn1_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %102[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn1"}
    %108 = memref.alloc() {name = "layer1_0_rprelu1"} : memref<1x16x32x32xf32>
    %109 = hcl.create_op_handle "layer1_0_rprelu1"
    %110 = hcl.create_loop_handle %109, "nn"
    %111 = hcl.create_loop_handle %109, "cc"
    %112 = hcl.create_loop_handle %109, "hh"
    %113 = hcl.create_loop_handle %109, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %102[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_bn1", moved} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg4[%arg169] {from = "layer1_0_rprelu1_shift_x_bias", moved} : memref<16xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg6[%arg169] {from = "layer1_0_rprelu1_prelu_weight"} : memref<16xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg5[%arg169] {from = "layer1_0_rprelu1_shift_y_bias"} : memref<16xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %108[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_rprelu1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_rprelu1"}
    %114 = memref.alloc() {name = "layer1_0_residual1"} : memref<1x16x32x32xf32>
    %115 = hcl.create_op_handle "layer1_0_residual1"
    %116 = hcl.create_loop_handle %115, "nn"
    %117 = hcl.create_loop_handle %115, "cc"
    %118 = hcl.create_loop_handle %115, "hh"
    %119 = hcl.create_loop_handle %115, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %108[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_rprelu1"} : memref<1x16x32x32xf32>
            %1582 = affine.load %42[%arg168, %arg169, %arg170, %arg171] {from = "bn1"} : memref<1x16x32x32xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %114[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_residual1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_residual1"}
    %120 = memref.alloc() {name = "layer1_0_bn2"} : memref<1x16x32x32xf32>
    %121 = hcl.create_op_handle "layer1_0_bn2"
    %122 = hcl.create_loop_handle %121, "nn"
    %123 = hcl.create_loop_handle %121, "cc"
    %124 = hcl.create_loop_handle %121, "hh"
    %125 = hcl.create_loop_handle %121, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %114[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_residual1"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg18[%arg169] {from = "layer1_0_bn3_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg19[%arg169] {from = "layer1_0_bn3_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %120[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn2"}
    %126 = memref.alloc() {name = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2>
    %127 = hcl.create_op_handle "layer1_0_rsign2"
    %128 = hcl.create_loop_handle %127, "nn"
    %129 = hcl.create_loop_handle %127, "cc"
    %130 = hcl.create_loop_handle %127, "hh"
    %131 = hcl.create_loop_handle %127, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %120[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_bn2", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %126[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_rsign2"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_rsign2"}
    %132 = memref.alloc() {name = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %133 = hcl.create_op_handle "layer1_0_conv2_msb_truncate"
    %134 = hcl.create_loop_handle %133, "i"
    %135 = hcl.create_loop_handle %133, "c"
    %136 = hcl.create_loop_handle %133, "h"
    %137 = hcl.create_loop_handle %133, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_2"
            %1583 = hcl.create_loop_handle %1582, "loop_2"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %126[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_2", op_name = "stage_2"}
            %1584 = affine.load %1581[0] {from = "layer1_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %132[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv2_msb_truncate"}
    %138 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %139 = hcl.create_op_handle "layer1_0_conv2_lsb_truncate"
    %140 = hcl.create_loop_handle %139, "i"
    %141 = hcl.create_loop_handle %139, "c"
    %142 = hcl.create_loop_handle %139, "h"
    %143 = hcl.create_loop_handle %139, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_3"
            %1583 = hcl.create_loop_handle %1582, "loop_3"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %126[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_0_rsign2", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_3", op_name = "stage_3"}
            %1584 = affine.load %1581[0] {from = "layer1_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %138[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_0_conv2_lsb_truncate"}
    %144 = memref.alloc() {name = "layer1_0_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %145 = hcl.create_op_handle "layer1_0_conv2_out_msb_pad"
    %146 = hcl.create_loop_handle %145, "ii"
    %147 = hcl.create_loop_handle %145, "cc"
    %148 = hcl.create_loop_handle %145, "hh"
    %149 = hcl.create_loop_handle %145, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %132[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %144[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv2_out_msb_pad"}
    %150 = memref.alloc() {name = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
    %151 = hcl.create_op_handle "layer1_0_conv2_out_msb"
    %152 = hcl.create_loop_handle %151, "nn"
    %153 = hcl.create_loop_handle %151, "ff"
    %154 = hcl.create_loop_handle %151, "yy"
    %155 = hcl.create_loop_handle %151, "xx"
    %156 = hcl.create_loop_handle %151, "layer1_0_conv2_out_msb_rc"
    %157 = hcl.create_loop_handle %151, "layer1_0_conv2_out_msb_rx"
    %158 = hcl.create_loop_handle %151, "layer1_0_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %144[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_0_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_0_conv2_out_msb_rx", reduction}
              } {loop_name = "layer1_0_conv2_out_msb_ry", reduction}
            } {loop_name = "layer1_0_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %150[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv2_out_msb"}
    %159 = memref.alloc() {name = "layer1_0_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %160 = hcl.create_op_handle "layer1_0_conv2_out_lsb_pad"
    %161 = hcl.create_loop_handle %160, "ii"
    %162 = hcl.create_loop_handle %160, "cc"
    %163 = hcl.create_loop_handle %160, "hh"
    %164 = hcl.create_loop_handle %160, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %138[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_0_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %159[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_0_conv2_out_lsb_pad"}
    %165 = memref.alloc() {name = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %166 = hcl.create_op_handle "layer1_0_conv2_out_lsb"
    %167 = hcl.create_loop_handle %166, "nn"
    %168 = hcl.create_loop_handle %166, "ff"
    %169 = hcl.create_loop_handle %166, "yy"
    %170 = hcl.create_loop_handle %166, "xx"
    %171 = hcl.create_loop_handle %166, "layer1_0_conv2_out_lsb_rc"
    %172 = hcl.create_loop_handle %166, "layer1_0_conv2_out_lsb_rx"
    %173 = hcl.create_loop_handle %166, "layer1_0_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %159[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_0_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg14[%arg169, %arg172, %arg173, %arg174] {from = "layer1_0_conv2_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_0_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer1_0_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer1_0_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %165[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_0_conv2_out_lsb"}
    %174 = memref.alloc() {name = "layer1_0_conv2_pgconv"} : memref<1x16x32x32xf32>
    %175 = hcl.create_op_handle "layer1_0_conv2_pgconv"
    %176 = hcl.create_loop_handle %175, "nn"
    %177 = hcl.create_loop_handle %175, "cc"
    %178 = hcl.create_loop_handle %175, "hh"
    %179 = hcl.create_loop_handle %175, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %150[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_msb", moved} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg15[%arg169] {from = "layer1_0_conv2_threshold", moved} : memref<16xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %165[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %174[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_conv2_pgconv"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_conv2_pgconv"}
    %180 = memref.alloc() {name = "layer1_0_bn3"} : memref<1x16x32x32xf32>
    %181 = hcl.create_op_handle "layer1_0_bn3"
    %182 = hcl.create_loop_handle %181, "nn"
    %183 = hcl.create_loop_handle %181, "cc"
    %184 = hcl.create_loop_handle %181, "hh"
    %185 = hcl.create_loop_handle %181, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %174[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_conv2_pgconv"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg16[%arg169] {from = "layer1_0_bn2_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg17[%arg169] {from = "layer1_0_bn2_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %180[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn3"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn3"}
    %186 = memref.alloc() {name = "layer1_0_rprelu2"} : memref<1x16x32x32xf32>
    %187 = hcl.create_op_handle "layer1_0_rprelu2"
    %188 = hcl.create_loop_handle %187, "nn"
    %189 = hcl.create_loop_handle %187, "cc"
    %190 = hcl.create_loop_handle %187, "hh"
    %191 = hcl.create_loop_handle %187, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %180[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_bn3", moved} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg7[%arg169] {from = "layer1_0_rprelu2_shift_x_bias", moved} : memref<16xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg9[%arg169] {from = "layer1_0_rprelu2_prelu_weight"} : memref<16xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg8[%arg169] {from = "layer1_0_rprelu2_shift_y_bias"} : memref<16xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %186[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_rprelu2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_rprelu2"}
    %192 = memref.alloc() {name = "layer1_0_residual2"} : memref<1x16x32x32xf32>
    %193 = hcl.create_op_handle "layer1_0_residual2"
    %194 = hcl.create_loop_handle %193, "nn"
    %195 = hcl.create_loop_handle %193, "cc"
    %196 = hcl.create_loop_handle %193, "hh"
    %197 = hcl.create_loop_handle %193, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %120[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_bn2"} : memref<1x16x32x32xf32>
            %1582 = affine.load %186[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_rprelu2"} : memref<1x16x32x32xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %192[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_residual2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_residual2"}
    %198 = memref.alloc() {name = "layer1_0_bn4"} : memref<1x16x32x32xf32>
    %199 = hcl.create_op_handle "layer1_0_bn4"
    %200 = hcl.create_loop_handle %199, "nn"
    %201 = hcl.create_loop_handle %199, "cc"
    %202 = hcl.create_loop_handle %199, "hh"
    %203 = hcl.create_loop_handle %199, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %192[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_residual2"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg20[%arg169] {from = "layer1_0_bn4_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg21[%arg169] {from = "layer1_0_bn4_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %198[%arg168, %arg169, %arg170, %arg171] {to = "layer1_0_bn4"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_0_bn4"}
    %204 = memref.alloc() {name = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2>
    %205 = hcl.create_op_handle "layer1_1_rsign1"
    %206 = hcl.create_loop_handle %205, "nn"
    %207 = hcl.create_loop_handle %205, "cc"
    %208 = hcl.create_loop_handle %205, "hh"
    %209 = hcl.create_loop_handle %205, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %198[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_bn4", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %204[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_rsign1"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_rsign1"}
    %210 = memref.alloc() {name = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %211 = hcl.create_op_handle "layer1_1_conv1_msb_truncate"
    %212 = hcl.create_loop_handle %211, "i"
    %213 = hcl.create_loop_handle %211, "c"
    %214 = hcl.create_loop_handle %211, "h"
    %215 = hcl.create_loop_handle %211, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_4"
            %1583 = hcl.create_loop_handle %1582, "loop_4"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %204[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_4", op_name = "stage_4"}
            %1584 = affine.load %1581[0] {from = "layer1_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %210[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv1_msb_truncate"}
    %216 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %217 = hcl.create_op_handle "layer1_1_conv1_lsb_truncate"
    %218 = hcl.create_loop_handle %217, "i"
    %219 = hcl.create_loop_handle %217, "c"
    %220 = hcl.create_loop_handle %217, "h"
    %221 = hcl.create_loop_handle %217, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_5"
            %1583 = hcl.create_loop_handle %1582, "loop_5"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %204[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_5", op_name = "stage_5"}
            %1584 = affine.load %1581[0] {from = "layer1_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %216[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv1_lsb_truncate"}
    %222 = memref.alloc() {name = "layer1_1_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %223 = hcl.create_op_handle "layer1_1_conv1_out_msb_pad"
    %224 = hcl.create_loop_handle %223, "ii"
    %225 = hcl.create_loop_handle %223, "cc"
    %226 = hcl.create_loop_handle %223, "hh"
    %227 = hcl.create_loop_handle %223, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %210[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %222[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv1_out_msb_pad"}
    %228 = memref.alloc() {name = "layer1_1_conv1_out_msb"} : memref<1x16x32x32xi16>
    %229 = hcl.create_op_handle "layer1_1_conv1_out_msb"
    %230 = hcl.create_loop_handle %229, "nn"
    %231 = hcl.create_loop_handle %229, "ff"
    %232 = hcl.create_loop_handle %229, "yy"
    %233 = hcl.create_loop_handle %229, "xx"
    %234 = hcl.create_loop_handle %229, "layer1_1_conv1_out_msb_rc"
    %235 = hcl.create_loop_handle %229, "layer1_1_conv1_out_msb_rx"
    %236 = hcl.create_loop_handle %229, "layer1_1_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %222[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_1_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg28[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv1_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_1_conv1_out_msb_rx", reduction}
              } {loop_name = "layer1_1_conv1_out_msb_ry", reduction}
            } {loop_name = "layer1_1_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %228[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv1_out_msb"}
    %237 = memref.alloc() {name = "layer1_1_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %238 = hcl.create_op_handle "layer1_1_conv1_out_lsb_pad"
    %239 = hcl.create_loop_handle %238, "ii"
    %240 = hcl.create_loop_handle %238, "cc"
    %241 = hcl.create_loop_handle %238, "hh"
    %242 = hcl.create_loop_handle %238, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %216[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %237[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv1_out_lsb_pad"}
    %243 = memref.alloc() {name = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %244 = hcl.create_op_handle "layer1_1_conv1_out_lsb"
    %245 = hcl.create_loop_handle %244, "nn"
    %246 = hcl.create_loop_handle %244, "ff"
    %247 = hcl.create_loop_handle %244, "yy"
    %248 = hcl.create_loop_handle %244, "xx"
    %249 = hcl.create_loop_handle %244, "layer1_1_conv1_out_lsb_rc"
    %250 = hcl.create_loop_handle %244, "layer1_1_conv1_out_lsb_rx"
    %251 = hcl.create_loop_handle %244, "layer1_1_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %237[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_1_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg28[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv1_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_1_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer1_1_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer1_1_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %243[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv1_out_lsb"}
    %252 = memref.alloc() {name = "layer1_1_conv1_pgconv"} : memref<1x16x32x32xf32>
    %253 = hcl.create_op_handle "layer1_1_conv1_pgconv"
    %254 = hcl.create_loop_handle %253, "nn"
    %255 = hcl.create_loop_handle %253, "cc"
    %256 = hcl.create_loop_handle %253, "hh"
    %257 = hcl.create_loop_handle %253, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %228[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_msb", moved} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg29[%arg169] {from = "layer1_1_conv1_threshold", moved} : memref<16xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %243[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %252[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv1_pgconv"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_conv1_pgconv"}
    %258 = memref.alloc() {name = "layer1_1_bn1"} : memref<1x16x32x32xf32>
    %259 = hcl.create_op_handle "layer1_1_bn1"
    %260 = hcl.create_loop_handle %259, "nn"
    %261 = hcl.create_loop_handle %259, "cc"
    %262 = hcl.create_loop_handle %259, "hh"
    %263 = hcl.create_loop_handle %259, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %252[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_conv1_pgconv"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg30[%arg169] {from = "layer1_1_bn1_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg31[%arg169] {from = "layer1_1_bn1_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %258[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn1"}
    %264 = memref.alloc() {name = "layer1_1_rprelu1"} : memref<1x16x32x32xf32>
    %265 = hcl.create_op_handle "layer1_1_rprelu1"
    %266 = hcl.create_loop_handle %265, "nn"
    %267 = hcl.create_loop_handle %265, "cc"
    %268 = hcl.create_loop_handle %265, "hh"
    %269 = hcl.create_loop_handle %265, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %258[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_bn1", moved} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg22[%arg169] {from = "layer1_1_rprelu1_shift_x_bias", moved} : memref<16xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg24[%arg169] {from = "layer1_1_rprelu1_prelu_weight"} : memref<16xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg23[%arg169] {from = "layer1_1_rprelu1_shift_y_bias"} : memref<16xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %264[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_rprelu1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_rprelu1"}
    %270 = memref.alloc() {name = "layer1_1_residual1"} : memref<1x16x32x32xf32>
    %271 = hcl.create_op_handle "layer1_1_residual1"
    %272 = hcl.create_loop_handle %271, "nn"
    %273 = hcl.create_loop_handle %271, "cc"
    %274 = hcl.create_loop_handle %271, "hh"
    %275 = hcl.create_loop_handle %271, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %264[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_rprelu1"} : memref<1x16x32x32xf32>
            %1582 = affine.load %198[%arg168, %arg169, %arg170, %arg171] {from = "layer1_0_bn4"} : memref<1x16x32x32xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %270[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_residual1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_residual1"}
    %276 = memref.alloc() {name = "layer1_1_bn2"} : memref<1x16x32x32xf32>
    %277 = hcl.create_op_handle "layer1_1_bn2"
    %278 = hcl.create_loop_handle %277, "nn"
    %279 = hcl.create_loop_handle %277, "cc"
    %280 = hcl.create_loop_handle %277, "hh"
    %281 = hcl.create_loop_handle %277, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %270[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_residual1"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg36[%arg169] {from = "layer1_1_bn3_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg37[%arg169] {from = "layer1_1_bn3_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %276[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn2"}
    %282 = memref.alloc() {name = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2>
    %283 = hcl.create_op_handle "layer1_1_rsign2"
    %284 = hcl.create_loop_handle %283, "nn"
    %285 = hcl.create_loop_handle %283, "cc"
    %286 = hcl.create_loop_handle %283, "hh"
    %287 = hcl.create_loop_handle %283, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %276[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_bn2", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %282[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_rsign2"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_rsign2"}
    %288 = memref.alloc() {name = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %289 = hcl.create_op_handle "layer1_1_conv2_msb_truncate"
    %290 = hcl.create_loop_handle %289, "i"
    %291 = hcl.create_loop_handle %289, "c"
    %292 = hcl.create_loop_handle %289, "h"
    %293 = hcl.create_loop_handle %289, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_6"
            %1583 = hcl.create_loop_handle %1582, "loop_6"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %282[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_6", op_name = "stage_6"}
            %1584 = affine.load %1581[0] {from = "layer1_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %288[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv2_msb_truncate"}
    %294 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %295 = hcl.create_op_handle "layer1_1_conv2_lsb_truncate"
    %296 = hcl.create_loop_handle %295, "i"
    %297 = hcl.create_loop_handle %295, "c"
    %298 = hcl.create_loop_handle %295, "h"
    %299 = hcl.create_loop_handle %295, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_7"
            %1583 = hcl.create_loop_handle %1582, "loop_7"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %282[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_1_rsign2", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_7", op_name = "stage_7"}
            %1584 = affine.load %1581[0] {from = "layer1_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %294[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_1_conv2_lsb_truncate"}
    %300 = memref.alloc() {name = "layer1_1_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %301 = hcl.create_op_handle "layer1_1_conv2_out_msb_pad"
    %302 = hcl.create_loop_handle %301, "ii"
    %303 = hcl.create_loop_handle %301, "cc"
    %304 = hcl.create_loop_handle %301, "hh"
    %305 = hcl.create_loop_handle %301, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %288[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %300[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv2_out_msb_pad"}
    %306 = memref.alloc() {name = "layer1_1_conv2_out_msb"} : memref<1x16x32x32xi16>
    %307 = hcl.create_op_handle "layer1_1_conv2_out_msb"
    %308 = hcl.create_loop_handle %307, "nn"
    %309 = hcl.create_loop_handle %307, "ff"
    %310 = hcl.create_loop_handle %307, "yy"
    %311 = hcl.create_loop_handle %307, "xx"
    %312 = hcl.create_loop_handle %307, "layer1_1_conv2_out_msb_rc"
    %313 = hcl.create_loop_handle %307, "layer1_1_conv2_out_msb_rx"
    %314 = hcl.create_loop_handle %307, "layer1_1_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %300[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_1_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg32[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv2_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_1_conv2_out_msb_rx", reduction}
              } {loop_name = "layer1_1_conv2_out_msb_ry", reduction}
            } {loop_name = "layer1_1_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %306[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv2_out_msb"}
    %315 = memref.alloc() {name = "layer1_1_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %316 = hcl.create_op_handle "layer1_1_conv2_out_lsb_pad"
    %317 = hcl.create_loop_handle %316, "ii"
    %318 = hcl.create_loop_handle %316, "cc"
    %319 = hcl.create_loop_handle %316, "hh"
    %320 = hcl.create_loop_handle %316, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %294[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_1_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %315[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_1_conv2_out_lsb_pad"}
    %321 = memref.alloc() {name = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %322 = hcl.create_op_handle "layer1_1_conv2_out_lsb"
    %323 = hcl.create_loop_handle %322, "nn"
    %324 = hcl.create_loop_handle %322, "ff"
    %325 = hcl.create_loop_handle %322, "yy"
    %326 = hcl.create_loop_handle %322, "xx"
    %327 = hcl.create_loop_handle %322, "layer1_1_conv2_out_lsb_rc"
    %328 = hcl.create_loop_handle %322, "layer1_1_conv2_out_lsb_rx"
    %329 = hcl.create_loop_handle %322, "layer1_1_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %315[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_1_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg32[%arg169, %arg172, %arg173, %arg174] {from = "layer1_1_conv2_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_1_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer1_1_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer1_1_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %321[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_1_conv2_out_lsb"}
    %330 = memref.alloc() {name = "layer1_1_conv2_pgconv"} : memref<1x16x32x32xf32>
    %331 = hcl.create_op_handle "layer1_1_conv2_pgconv"
    %332 = hcl.create_loop_handle %331, "nn"
    %333 = hcl.create_loop_handle %331, "cc"
    %334 = hcl.create_loop_handle %331, "hh"
    %335 = hcl.create_loop_handle %331, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %306[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_msb", moved} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg33[%arg169] {from = "layer1_1_conv2_threshold", moved} : memref<16xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %321[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %330[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_conv2_pgconv"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_conv2_pgconv"}
    %336 = memref.alloc() {name = "layer1_1_bn3"} : memref<1x16x32x32xf32>
    %337 = hcl.create_op_handle "layer1_1_bn3"
    %338 = hcl.create_loop_handle %337, "nn"
    %339 = hcl.create_loop_handle %337, "cc"
    %340 = hcl.create_loop_handle %337, "hh"
    %341 = hcl.create_loop_handle %337, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %330[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_conv2_pgconv"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg34[%arg169] {from = "layer1_1_bn2_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg35[%arg169] {from = "layer1_1_bn2_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %336[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn3"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn3"}
    %342 = memref.alloc() {name = "layer1_1_rprelu2"} : memref<1x16x32x32xf32>
    %343 = hcl.create_op_handle "layer1_1_rprelu2"
    %344 = hcl.create_loop_handle %343, "nn"
    %345 = hcl.create_loop_handle %343, "cc"
    %346 = hcl.create_loop_handle %343, "hh"
    %347 = hcl.create_loop_handle %343, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %336[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_bn3", moved} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg25[%arg169] {from = "layer1_1_rprelu2_shift_x_bias", moved} : memref<16xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg27[%arg169] {from = "layer1_1_rprelu2_prelu_weight"} : memref<16xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg26[%arg169] {from = "layer1_1_rprelu2_shift_y_bias"} : memref<16xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %342[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_rprelu2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_rprelu2"}
    %348 = memref.alloc() {name = "layer1_1_residual2"} : memref<1x16x32x32xf32>
    %349 = hcl.create_op_handle "layer1_1_residual2"
    %350 = hcl.create_loop_handle %349, "nn"
    %351 = hcl.create_loop_handle %349, "cc"
    %352 = hcl.create_loop_handle %349, "hh"
    %353 = hcl.create_loop_handle %349, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %276[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_bn2"} : memref<1x16x32x32xf32>
            %1582 = affine.load %342[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_rprelu2"} : memref<1x16x32x32xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %348[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_residual2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_residual2"}
    %354 = memref.alloc() {name = "layer1_1_bn4"} : memref<1x16x32x32xf32>
    %355 = hcl.create_op_handle "layer1_1_bn4"
    %356 = hcl.create_loop_handle %355, "nn"
    %357 = hcl.create_loop_handle %355, "cc"
    %358 = hcl.create_loop_handle %355, "hh"
    %359 = hcl.create_loop_handle %355, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %348[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_residual2"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg38[%arg169] {from = "layer1_1_bn4_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg39[%arg169] {from = "layer1_1_bn4_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %354[%arg168, %arg169, %arg170, %arg171] {to = "layer1_1_bn4"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_1_bn4"}
    %360 = memref.alloc() {name = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2>
    %361 = hcl.create_op_handle "layer1_2_rsign1"
    %362 = hcl.create_loop_handle %361, "nn"
    %363 = hcl.create_loop_handle %361, "cc"
    %364 = hcl.create_loop_handle %361, "hh"
    %365 = hcl.create_loop_handle %361, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %354[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_bn4", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %360[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_rsign1"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_rsign1"}
    %366 = memref.alloc() {name = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %367 = hcl.create_op_handle "layer1_2_conv1_msb_truncate"
    %368 = hcl.create_loop_handle %367, "i"
    %369 = hcl.create_loop_handle %367, "c"
    %370 = hcl.create_loop_handle %367, "h"
    %371 = hcl.create_loop_handle %367, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_8"
            %1583 = hcl.create_loop_handle %1582, "loop_8"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %360[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_8", op_name = "stage_8"}
            %1584 = affine.load %1581[0] {from = "layer1_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %366[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv1_msb_truncate"}
    %372 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %373 = hcl.create_op_handle "layer1_2_conv1_lsb_truncate"
    %374 = hcl.create_loop_handle %373, "i"
    %375 = hcl.create_loop_handle %373, "c"
    %376 = hcl.create_loop_handle %373, "h"
    %377 = hcl.create_loop_handle %373, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_9"
            %1583 = hcl.create_loop_handle %1582, "loop_9"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %360[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_9", op_name = "stage_9"}
            %1584 = affine.load %1581[0] {from = "layer1_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %372[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv1_lsb_truncate"}
    %378 = memref.alloc() {name = "layer1_2_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %379 = hcl.create_op_handle "layer1_2_conv1_out_msb_pad"
    %380 = hcl.create_loop_handle %379, "ii"
    %381 = hcl.create_loop_handle %379, "cc"
    %382 = hcl.create_loop_handle %379, "hh"
    %383 = hcl.create_loop_handle %379, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %366[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %378[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv1_out_msb_pad"}
    %384 = memref.alloc() {name = "layer1_2_conv1_out_msb"} : memref<1x16x32x32xi16>
    %385 = hcl.create_op_handle "layer1_2_conv1_out_msb"
    %386 = hcl.create_loop_handle %385, "nn"
    %387 = hcl.create_loop_handle %385, "ff"
    %388 = hcl.create_loop_handle %385, "yy"
    %389 = hcl.create_loop_handle %385, "xx"
    %390 = hcl.create_loop_handle %385, "layer1_2_conv1_out_msb_rc"
    %391 = hcl.create_loop_handle %385, "layer1_2_conv1_out_msb_rx"
    %392 = hcl.create_loop_handle %385, "layer1_2_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %378[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_2_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg46[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv1_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_2_conv1_out_msb_rx", reduction}
              } {loop_name = "layer1_2_conv1_out_msb_ry", reduction}
            } {loop_name = "layer1_2_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %384[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv1_out_msb"}
    %393 = memref.alloc() {name = "layer1_2_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %394 = hcl.create_op_handle "layer1_2_conv1_out_lsb_pad"
    %395 = hcl.create_loop_handle %394, "ii"
    %396 = hcl.create_loop_handle %394, "cc"
    %397 = hcl.create_loop_handle %394, "hh"
    %398 = hcl.create_loop_handle %394, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %372[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %393[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv1_out_lsb_pad"}
    %399 = memref.alloc() {name = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
    %400 = hcl.create_op_handle "layer1_2_conv1_out_lsb"
    %401 = hcl.create_loop_handle %400, "nn"
    %402 = hcl.create_loop_handle %400, "ff"
    %403 = hcl.create_loop_handle %400, "yy"
    %404 = hcl.create_loop_handle %400, "xx"
    %405 = hcl.create_loop_handle %400, "layer1_2_conv1_out_lsb_rc"
    %406 = hcl.create_loop_handle %400, "layer1_2_conv1_out_lsb_rx"
    %407 = hcl.create_loop_handle %400, "layer1_2_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %393[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_2_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg46[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv1_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_2_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer1_2_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer1_2_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %399[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv1_out_lsb"}
    %408 = memref.alloc() {name = "layer1_2_conv1_pgconv"} : memref<1x16x32x32xf32>
    %409 = hcl.create_op_handle "layer1_2_conv1_pgconv"
    %410 = hcl.create_loop_handle %409, "nn"
    %411 = hcl.create_loop_handle %409, "cc"
    %412 = hcl.create_loop_handle %409, "hh"
    %413 = hcl.create_loop_handle %409, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %384[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_msb", moved} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg47[%arg169] {from = "layer1_2_conv1_threshold", moved} : memref<16xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %399[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_out_lsb"} : memref<1x16x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %408[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv1_pgconv"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_conv1_pgconv"}
    %414 = memref.alloc() {name = "layer1_2_bn1"} : memref<1x16x32x32xf32>
    %415 = hcl.create_op_handle "layer1_2_bn1"
    %416 = hcl.create_loop_handle %415, "nn"
    %417 = hcl.create_loop_handle %415, "cc"
    %418 = hcl.create_loop_handle %415, "hh"
    %419 = hcl.create_loop_handle %415, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %408[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_conv1_pgconv"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg48[%arg169] {from = "layer1_2_bn1_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg49[%arg169] {from = "layer1_2_bn1_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %414[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn1"}
    %420 = memref.alloc() {name = "layer1_2_rprelu1"} : memref<1x16x32x32xf32>
    %421 = hcl.create_op_handle "layer1_2_rprelu1"
    %422 = hcl.create_loop_handle %421, "nn"
    %423 = hcl.create_loop_handle %421, "cc"
    %424 = hcl.create_loop_handle %421, "hh"
    %425 = hcl.create_loop_handle %421, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %414[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_bn1", moved} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg40[%arg169] {from = "layer1_2_rprelu1_shift_x_bias", moved} : memref<16xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg42[%arg169] {from = "layer1_2_rprelu1_prelu_weight"} : memref<16xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg41[%arg169] {from = "layer1_2_rprelu1_shift_y_bias"} : memref<16xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %420[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_rprelu1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_rprelu1"}
    %426 = memref.alloc() {name = "layer1_2_residual1"} : memref<1x16x32x32xf32>
    %427 = hcl.create_op_handle "layer1_2_residual1"
    %428 = hcl.create_loop_handle %427, "nn"
    %429 = hcl.create_loop_handle %427, "cc"
    %430 = hcl.create_loop_handle %427, "hh"
    %431 = hcl.create_loop_handle %427, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %420[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_rprelu1"} : memref<1x16x32x32xf32>
            %1582 = affine.load %354[%arg168, %arg169, %arg170, %arg171] {from = "layer1_1_bn4"} : memref<1x16x32x32xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %426[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_residual1"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_residual1"}
    %432 = memref.alloc() {name = "layer1_2_bn2"} : memref<1x16x32x32xf32>
    %433 = hcl.create_op_handle "layer1_2_bn2"
    %434 = hcl.create_loop_handle %433, "nn"
    %435 = hcl.create_loop_handle %433, "cc"
    %436 = hcl.create_loop_handle %433, "hh"
    %437 = hcl.create_loop_handle %433, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %426[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_residual1"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg54[%arg169] {from = "layer1_2_bn3_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg55[%arg169] {from = "layer1_2_bn3_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %432[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn2"}
    %438 = memref.alloc() {name = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2>
    %439 = hcl.create_op_handle "layer1_2_rsign2"
    %440 = hcl.create_loop_handle %439, "nn"
    %441 = hcl.create_loop_handle %439, "cc"
    %442 = hcl.create_loop_handle %439, "hh"
    %443 = hcl.create_loop_handle %439, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %432[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_bn2", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %438[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_rsign2"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_rsign2"}
    %444 = memref.alloc() {name = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %445 = hcl.create_op_handle "layer1_2_conv2_msb_truncate"
    %446 = hcl.create_loop_handle %445, "i"
    %447 = hcl.create_loop_handle %445, "c"
    %448 = hcl.create_loop_handle %445, "h"
    %449 = hcl.create_loop_handle %445, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_10"
            %1583 = hcl.create_loop_handle %1582, "loop_10"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %438[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_10", op_name = "stage_10"}
            %1584 = affine.load %1581[0] {from = "layer1_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %444[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv2_msb_truncate"}
    %450 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %451 = hcl.create_op_handle "layer1_2_conv2_lsb_truncate"
    %452 = hcl.create_loop_handle %451, "i"
    %453 = hcl.create_loop_handle %451, "c"
    %454 = hcl.create_loop_handle %451, "h"
    %455 = hcl.create_loop_handle %451, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_11"
            %1583 = hcl.create_loop_handle %1582, "loop_11"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %438[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer1_2_rsign2", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_11", op_name = "stage_11"}
            %1584 = affine.load %1581[0] {from = "layer1_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %450[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer1_2_conv2_lsb_truncate"}
    %456 = memref.alloc() {name = "layer1_2_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %457 = hcl.create_op_handle "layer1_2_conv2_out_msb_pad"
    %458 = hcl.create_loop_handle %457, "ii"
    %459 = hcl.create_loop_handle %457, "cc"
    %460 = hcl.create_loop_handle %457, "hh"
    %461 = hcl.create_loop_handle %457, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %444[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv2_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %456[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv2_out_msb_pad"}
    %462 = memref.alloc() {name = "layer1_2_conv2_out_msb"} : memref<1x16x32x32xi16>
    %463 = hcl.create_op_handle "layer1_2_conv2_out_msb"
    %464 = hcl.create_loop_handle %463, "nn"
    %465 = hcl.create_loop_handle %463, "ff"
    %466 = hcl.create_loop_handle %463, "yy"
    %467 = hcl.create_loop_handle %463, "xx"
    %468 = hcl.create_loop_handle %463, "layer1_2_conv2_out_msb_rc"
    %469 = hcl.create_loop_handle %463, "layer1_2_conv2_out_msb_rx"
    %470 = hcl.create_loop_handle %463, "layer1_2_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %456[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_2_conv2_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg50[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv2_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_2_conv2_out_msb_rx", reduction}
              } {loop_name = "layer1_2_conv2_out_msb_ry", reduction}
            } {loop_name = "layer1_2_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %462[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_msb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv2_out_msb"}
    %471 = memref.alloc() {name = "layer1_2_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %472 = hcl.create_op_handle "layer1_2_conv2_out_lsb_pad"
    %473 = hcl.create_loop_handle %472, "ii"
    %474 = hcl.create_loop_handle %472, "cc"
    %475 = hcl.create_loop_handle %472, "hh"
    %476 = hcl.create_loop_handle %472, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %450[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer1_2_conv2_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %471[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer1_2_conv2_out_lsb_pad"}
    %477 = memref.alloc() {name = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
    %478 = hcl.create_op_handle "layer1_2_conv2_out_lsb"
    %479 = hcl.create_loop_handle %478, "nn"
    %480 = hcl.create_loop_handle %478, "ff"
    %481 = hcl.create_loop_handle %478, "yy"
    %482 = hcl.create_loop_handle %478, "xx"
    %483 = hcl.create_loop_handle %478, "layer1_2_conv2_out_lsb_rc"
    %484 = hcl.create_loop_handle %478, "layer1_2_conv2_out_lsb_rx"
    %485 = hcl.create_loop_handle %478, "layer1_2_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %471[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer1_2_conv2_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg50[%arg169, %arg172, %arg173, %arg174] {from = "layer1_2_conv2_weight", unsigned} : memref<16x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer1_2_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer1_2_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer1_2_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %477[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer1_2_conv2_out_lsb"}
    %486 = memref.alloc() {name = "layer1_2_conv2_pgconv"} : memref<1x16x32x32xf32>
    %487 = hcl.create_op_handle "layer1_2_conv2_pgconv"
    %488 = hcl.create_loop_handle %487, "nn"
    %489 = hcl.create_loop_handle %487, "cc"
    %490 = hcl.create_loop_handle %487, "hh"
    %491 = hcl.create_loop_handle %487, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %462[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_msb", moved} : memref<1x16x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg51[%arg169] {from = "layer1_2_conv2_threshold", moved} : memref<16xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %477[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_out_lsb"} : memref<1x16x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %486[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_conv2_pgconv"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_conv2_pgconv"}
    %492 = memref.alloc() {name = "layer1_2_bn3"} : memref<1x16x32x32xf32>
    %493 = hcl.create_op_handle "layer1_2_bn3"
    %494 = hcl.create_loop_handle %493, "nn"
    %495 = hcl.create_loop_handle %493, "cc"
    %496 = hcl.create_loop_handle %493, "hh"
    %497 = hcl.create_loop_handle %493, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %486[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_conv2_pgconv"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg52[%arg169] {from = "layer1_2_bn2_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg53[%arg169] {from = "layer1_2_bn2_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %492[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn3"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn3"}
    %498 = memref.alloc() {name = "layer1_2_rprelu2"} : memref<1x16x32x32xf32>
    %499 = hcl.create_op_handle "layer1_2_rprelu2"
    %500 = hcl.create_loop_handle %499, "nn"
    %501 = hcl.create_loop_handle %499, "cc"
    %502 = hcl.create_loop_handle %499, "hh"
    %503 = hcl.create_loop_handle %499, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %492[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_bn3", moved} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg43[%arg169] {from = "layer1_2_rprelu2_shift_x_bias", moved} : memref<16xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg45[%arg169] {from = "layer1_2_rprelu2_prelu_weight"} : memref<16xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg44[%arg169] {from = "layer1_2_rprelu2_shift_y_bias"} : memref<16xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %498[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_rprelu2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_rprelu2"}
    %504 = memref.alloc() {name = "layer1_2_residual2"} : memref<1x16x32x32xf32>
    %505 = hcl.create_op_handle "layer1_2_residual2"
    %506 = hcl.create_loop_handle %505, "nn"
    %507 = hcl.create_loop_handle %505, "cc"
    %508 = hcl.create_loop_handle %505, "hh"
    %509 = hcl.create_loop_handle %505, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %432[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_bn2"} : memref<1x16x32x32xf32>
            %1582 = affine.load %498[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_rprelu2"} : memref<1x16x32x32xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %504[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_residual2"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_residual2"}
    %510 = memref.alloc() {name = "layer1_2_bn4"} : memref<1x16x32x32xf32>
    %511 = hcl.create_op_handle "layer1_2_bn4"
    %512 = hcl.create_loop_handle %511, "nn"
    %513 = hcl.create_loop_handle %511, "cc"
    %514 = hcl.create_loop_handle %511, "hh"
    %515 = hcl.create_loop_handle %511, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %504[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_residual2"} : memref<1x16x32x32xf32>
            %1582 = affine.load %arg56[%arg169] {from = "layer1_2_bn4_weight"} : memref<16xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg57[%arg169] {from = "layer1_2_bn4_bias"} : memref<16xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %510[%arg168, %arg169, %arg170, %arg171] {to = "layer1_2_bn4"} : memref<1x16x32x32xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer1_2_bn4"}
    %516 = memref.alloc() {name = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2>
    %517 = hcl.create_op_handle "layer2_0_rsign1"
    %518 = hcl.create_loop_handle %517, "nn"
    %519 = hcl.create_loop_handle %517, "cc"
    %520 = hcl.create_loop_handle %517, "hh"
    %521 = hcl.create_loop_handle %517, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = affine.load %510[%arg168, %arg169, %arg170, %arg171] {from = "layer1_2_bn4", moved} : memref<1x16x32x32xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %516[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_rsign1"} : memref<1x16x32x32xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_rsign1"}
    %522 = memref.alloc() {name = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
    %523 = hcl.create_op_handle "layer2_0_conv1_msb_truncate"
    %524 = hcl.create_loop_handle %523, "i"
    %525 = hcl.create_loop_handle %523, "c"
    %526 = hcl.create_loop_handle %523, "h"
    %527 = hcl.create_loop_handle %523, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_12"
            %1583 = hcl.create_loop_handle %1582, "loop_12"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %516[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_12", op_name = "stage_12"}
            %1584 = affine.load %1581[0] {from = "layer2_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %522[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_msb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv1_msb_truncate"}
    %528 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
    %529 = hcl.create_op_handle "layer2_0_conv1_lsb_truncate"
    %530 = hcl.create_loop_handle %529, "i"
    %531 = hcl.create_loop_handle %529, "c"
    %532 = hcl.create_loop_handle %529, "h"
    %533 = hcl.create_loop_handle %529, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_13"
            %1583 = hcl.create_loop_handle %1582, "loop_13"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %516[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign1", unsigned} : memref<1x16x32x32xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_13", op_name = "stage_13"}
            %1584 = affine.load %1581[0] {from = "layer2_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %528[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_lsb_truncate"} : memref<1x1x32x32xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv1_lsb_truncate"}
    %534 = memref.alloc() {name = "layer2_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
    %535 = hcl.create_op_handle "layer2_0_conv1_out_msb_pad"
    %536 = hcl.create_loop_handle %535, "ii"
    %537 = hcl.create_loop_handle %535, "cc"
    %538 = hcl.create_loop_handle %535, "hh"
    %539 = hcl.create_loop_handle %535, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %522[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv1_msb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %534[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_msb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv1_out_msb_pad"}
    %540 = memref.alloc() {name = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
    %541 = hcl.create_op_handle "layer2_0_conv1_out_msb"
    %542 = hcl.create_loop_handle %541, "nn"
    %543 = hcl.create_loop_handle %541, "ff"
    %544 = hcl.create_loop_handle %541, "yy"
    %545 = hcl.create_loop_handle %541, "xx"
    %546 = hcl.create_loop_handle %541, "layer2_0_conv1_out_msb_rc"
    %547 = hcl.create_loop_handle %541, "layer2_0_conv1_out_msb_rx"
    %548 = hcl.create_loop_handle %541, "layer2_0_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %534[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_0_conv1_out_msb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg64[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv1_weight", unsigned} : memref<32x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_0_conv1_out_msb_rx", reduction}
              } {loop_name = "layer2_0_conv1_out_msb_ry", reduction}
            } {loop_name = "layer2_0_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %540[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_msb"} : memref<1x32x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv1_out_msb"}
    %549 = memref.alloc() {name = "layer2_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
    %550 = hcl.create_op_handle "layer2_0_conv1_out_lsb_pad"
    %551 = hcl.create_loop_handle %550, "ii"
    %552 = hcl.create_loop_handle %550, "cc"
    %553 = hcl.create_loop_handle %550, "hh"
    %554 = hcl.create_loop_handle %550, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 1 {
        affine.for %arg170 = 0 to 34 {
          affine.for %arg171 = 0 to 34 {
            %1581 = affine.if #set0(%arg171, %arg170) -> i16 {
              %1582 = affine.load %528[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv1_lsb_truncate", unsigned} : memref<1x1x32x32xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %549[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_lsb_pad"} : memref<1x1x34x34xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv1_out_lsb_pad"}
    %555 = memref.alloc() {name = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
    %556 = hcl.create_op_handle "layer2_0_conv1_out_lsb"
    %557 = hcl.create_loop_handle %556, "nn"
    %558 = hcl.create_loop_handle %556, "ff"
    %559 = hcl.create_loop_handle %556, "yy"
    %560 = hcl.create_loop_handle %556, "xx"
    %561 = hcl.create_loop_handle %556, "layer2_0_conv1_out_lsb_rc"
    %562 = hcl.create_loop_handle %556, "layer2_0_conv1_out_lsb_rx"
    %563 = hcl.create_loop_handle %556, "layer2_0_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 32 {
          affine.for %arg171 = 0 to 32 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 1 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set1(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %549[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_0_conv1_out_lsb_pad", unsigned} : memref<1x1x34x34xi16>
                    %1588 = affine.load %arg64[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv1_weight", unsigned} : memref<32x1x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_0_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer2_0_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer2_0_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %555[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv1_out_lsb"}
    %564 = memref.alloc() {name = "layer2_0_conv1_pgconv"} : memref<1x32x16x16xf32>
    %565 = hcl.create_op_handle "layer2_0_conv1_pgconv"
    %566 = hcl.create_loop_handle %565, "nn"
    %567 = hcl.create_loop_handle %565, "cc"
    %568 = hcl.create_loop_handle %565, "hh"
    %569 = hcl.create_loop_handle %565, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %540[%arg168, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_msb", moved} : memref<1x32x32x32xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg65[%arg169] {from = "layer2_0_conv1_threshold", moved} : memref<32xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %555[%arg168, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer2_0_conv1_out_lsb"} : memref<1x32x32x32xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %564[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv1_pgconv"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_conv1_pgconv"}
    %570 = memref.alloc() {name = "layer2_0_bn1"} : memref<1x32x16x16xf32>
    %571 = hcl.create_op_handle "layer2_0_bn1"
    %572 = hcl.create_loop_handle %571, "nn"
    %573 = hcl.create_loop_handle %571, "cc"
    %574 = hcl.create_loop_handle %571, "hh"
    %575 = hcl.create_loop_handle %571, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %564[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_conv1_pgconv"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg66[%arg169] {from = "layer2_0_bn1_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg67[%arg169] {from = "layer2_0_bn1_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %570[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn1"}
    %576 = memref.alloc() {name = "layer2_0_rprelu1"} : memref<1x32x16x16xf32>
    %577 = hcl.create_op_handle "layer2_0_rprelu1"
    %578 = hcl.create_loop_handle %577, "nn"
    %579 = hcl.create_loop_handle %577, "cc"
    %580 = hcl.create_loop_handle %577, "hh"
    %581 = hcl.create_loop_handle %577, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %570[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_bn1", moved} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg58[%arg169] {from = "layer2_0_rprelu1_shift_x_bias", moved} : memref<32xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg60[%arg169] {from = "layer2_0_rprelu1_prelu_weight"} : memref<32xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg59[%arg169] {from = "layer2_0_rprelu1_shift_y_bias"} : memref<32xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %576[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_rprelu1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_rprelu1"}
    %582 = memref.alloc() {name = "layer2_0_avgpool"} : memref<1x16x16x16xf32>
    %583 = hcl.create_op_handle "layer2_0_avgpool"
    %584 = hcl.create_loop_handle %583, "i"
    %585 = hcl.create_loop_handle %583, "c"
    %586 = hcl.create_loop_handle %583, "h"
    %587 = hcl.create_loop_handle %583, "w"
    %588 = hcl.create_loop_handle %583, "rx_0"
    %589 = hcl.create_loop_handle %583, "rx_1"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 16 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 2 {
                %1585 = affine.load %510[%arg168, %arg169, %arg170 * 2 + %arg172, %arg171 * 2 + %arg173] {from = "layer1_2_bn4"} : memref<1x16x32x32xf32>
                %1586 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xf32>
                %1587 = arith.addf %1585, %1586 : f32
                affine.store %1587, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_1", reduction}
            } {loop_name = "rx_0", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xf32>
            %c4_i32 = arith.constant 4 : i32
            %1583 = arith.sitofp %c4_i32 : i32 to f32
            %1584 = arith.divf %1582, %1583 : f32
            affine.store %1584, %582[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_avgpool"} : memref<1x16x16x16xf32>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_avgpool"}
    %590 = memref.alloc() {name = "layer2_0_concat"} : memref<1x32x16x16xf32>
    %591 = hcl.create_op_handle "layer2_0_concat"
    %592 = hcl.create_loop_handle %591, "nn"
    %593 = hcl.create_loop_handle %591, "cc"
    %594 = hcl.create_loop_handle %591, "hh"
    %595 = hcl.create_loop_handle %591, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %582[%arg168, %arg169 mod 16, %arg170, %arg171] {from = "layer2_0_avgpool"} : memref<1x16x16x16xf32>
            affine.store %1581, %590[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_concat"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_concat"}
    %596 = memref.alloc() {name = "layer2_0_residual1"} : memref<1x32x16x16xf32>
    %597 = hcl.create_op_handle "layer2_0_residual1"
    %598 = hcl.create_loop_handle %597, "nn"
    %599 = hcl.create_loop_handle %597, "cc"
    %600 = hcl.create_loop_handle %597, "hh"
    %601 = hcl.create_loop_handle %597, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %576[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_rprelu1"} : memref<1x32x16x16xf32>
            %1582 = affine.load %590[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_concat"} : memref<1x32x16x16xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %596[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_residual1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_residual1"}
    %602 = memref.alloc() {name = "layer2_0_bn2"} : memref<1x32x16x16xf32>
    %603 = hcl.create_op_handle "layer2_0_bn2"
    %604 = hcl.create_loop_handle %603, "nn"
    %605 = hcl.create_loop_handle %603, "cc"
    %606 = hcl.create_loop_handle %603, "hh"
    %607 = hcl.create_loop_handle %603, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %596[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_residual1"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg72[%arg169] {from = "layer2_0_bn3_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg73[%arg169] {from = "layer2_0_bn3_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %602[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn2"}
    %608 = memref.alloc() {name = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2>
    %609 = hcl.create_op_handle "layer2_0_rsign2"
    %610 = hcl.create_loop_handle %609, "nn"
    %611 = hcl.create_loop_handle %609, "cc"
    %612 = hcl.create_loop_handle %609, "hh"
    %613 = hcl.create_loop_handle %609, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %602[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_bn2", moved} : memref<1x32x16x16xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %608[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_rsign2"} : memref<1x32x16x16xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_rsign2"}
    %614 = memref.alloc() {name = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16>
    %615 = hcl.create_op_handle "layer2_0_conv2_msb_truncate"
    %616 = hcl.create_loop_handle %615, "i"
    %617 = hcl.create_loop_handle %615, "c"
    %618 = hcl.create_loop_handle %615, "h"
    %619 = hcl.create_loop_handle %615, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_14"
            %1583 = hcl.create_loop_handle %1582, "loop_14"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %608[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_14", op_name = "stage_14"}
            %1584 = affine.load %1581[0] {from = "layer2_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %614[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_msb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv2_msb_truncate"}
    %620 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
    %621 = hcl.create_op_handle "layer2_0_conv2_lsb_truncate"
    %622 = hcl.create_loop_handle %621, "i"
    %623 = hcl.create_loop_handle %621, "c"
    %624 = hcl.create_loop_handle %621, "h"
    %625 = hcl.create_loop_handle %621, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_15"
            %1583 = hcl.create_loop_handle %1582, "loop_15"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %608[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_0_rsign2", unsigned} : memref<1x32x16x16xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_15", op_name = "stage_15"}
            %1584 = affine.load %1581[0] {from = "layer2_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %620[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_lsb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_0_conv2_lsb_truncate"}
    %626 = memref.alloc() {name = "layer2_0_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
    %627 = hcl.create_op_handle "layer2_0_conv2_out_msb_pad"
    %628 = hcl.create_loop_handle %627, "ii"
    %629 = hcl.create_loop_handle %627, "cc"
    %630 = hcl.create_loop_handle %627, "hh"
    %631 = hcl.create_loop_handle %627, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %614[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %626[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_msb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv2_out_msb_pad"}
    %632 = memref.alloc() {name = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
    %633 = hcl.create_op_handle "layer2_0_conv2_out_msb"
    %634 = hcl.create_loop_handle %633, "nn"
    %635 = hcl.create_loop_handle %633, "ff"
    %636 = hcl.create_loop_handle %633, "yy"
    %637 = hcl.create_loop_handle %633, "xx"
    %638 = hcl.create_loop_handle %633, "layer2_0_conv2_out_msb_rc"
    %639 = hcl.create_loop_handle %633, "layer2_0_conv2_out_msb_rx"
    %640 = hcl.create_loop_handle %633, "layer2_0_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %626[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_0_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_0_conv2_out_msb_rx", reduction}
              } {loop_name = "layer2_0_conv2_out_msb_ry", reduction}
            } {loop_name = "layer2_0_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %632[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_msb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv2_out_msb"}
    %641 = memref.alloc() {name = "layer2_0_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
    %642 = hcl.create_op_handle "layer2_0_conv2_out_lsb_pad"
    %643 = hcl.create_loop_handle %642, "ii"
    %644 = hcl.create_loop_handle %642, "cc"
    %645 = hcl.create_loop_handle %642, "hh"
    %646 = hcl.create_loop_handle %642, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %620[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_0_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %641[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_lsb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_0_conv2_out_lsb_pad"}
    %647 = memref.alloc() {name = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %648 = hcl.create_op_handle "layer2_0_conv2_out_lsb"
    %649 = hcl.create_loop_handle %648, "nn"
    %650 = hcl.create_loop_handle %648, "ff"
    %651 = hcl.create_loop_handle %648, "yy"
    %652 = hcl.create_loop_handle %648, "xx"
    %653 = hcl.create_loop_handle %648, "layer2_0_conv2_out_lsb_rc"
    %654 = hcl.create_loop_handle %648, "layer2_0_conv2_out_lsb_rx"
    %655 = hcl.create_loop_handle %648, "layer2_0_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %641[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_0_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg68[%arg169, %arg172, %arg173, %arg174] {from = "layer2_0_conv2_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_0_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer2_0_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer2_0_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %647[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_0_conv2_out_lsb"}
    %656 = memref.alloc() {name = "layer2_0_conv2_pgconv"} : memref<1x32x16x16xf32>
    %657 = hcl.create_op_handle "layer2_0_conv2_pgconv"
    %658 = hcl.create_loop_handle %657, "nn"
    %659 = hcl.create_loop_handle %657, "cc"
    %660 = hcl.create_loop_handle %657, "hh"
    %661 = hcl.create_loop_handle %657, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %632[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_msb", moved} : memref<1x32x16x16xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg69[%arg169] {from = "layer2_0_conv2_threshold", moved} : memref<32xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %647[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %656[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_conv2_pgconv"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_conv2_pgconv"}
    %662 = memref.alloc() {name = "layer2_0_bn3"} : memref<1x32x16x16xf32>
    %663 = hcl.create_op_handle "layer2_0_bn3"
    %664 = hcl.create_loop_handle %663, "nn"
    %665 = hcl.create_loop_handle %663, "cc"
    %666 = hcl.create_loop_handle %663, "hh"
    %667 = hcl.create_loop_handle %663, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %656[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_conv2_pgconv"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg70[%arg169] {from = "layer2_0_bn2_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg71[%arg169] {from = "layer2_0_bn2_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %662[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn3"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn3"}
    %668 = memref.alloc() {name = "layer2_0_rprelu2"} : memref<1x32x16x16xf32>
    %669 = hcl.create_op_handle "layer2_0_rprelu2"
    %670 = hcl.create_loop_handle %669, "nn"
    %671 = hcl.create_loop_handle %669, "cc"
    %672 = hcl.create_loop_handle %669, "hh"
    %673 = hcl.create_loop_handle %669, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %662[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_bn3", moved} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg61[%arg169] {from = "layer2_0_rprelu2_shift_x_bias", moved} : memref<32xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg63[%arg169] {from = "layer2_0_rprelu2_prelu_weight"} : memref<32xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg62[%arg169] {from = "layer2_0_rprelu2_shift_y_bias"} : memref<32xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %668[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_rprelu2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_rprelu2"}
    %674 = memref.alloc() {name = "layer2_0_residual2"} : memref<1x32x16x16xf32>
    %675 = hcl.create_op_handle "layer2_0_residual2"
    %676 = hcl.create_loop_handle %675, "nn"
    %677 = hcl.create_loop_handle %675, "cc"
    %678 = hcl.create_loop_handle %675, "hh"
    %679 = hcl.create_loop_handle %675, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %602[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_bn2"} : memref<1x32x16x16xf32>
            %1582 = affine.load %668[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_rprelu2"} : memref<1x32x16x16xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %674[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_residual2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_residual2"}
    %680 = memref.alloc() {name = "layer2_0_bn4"} : memref<1x32x16x16xf32>
    %681 = hcl.create_op_handle "layer2_0_bn4"
    %682 = hcl.create_loop_handle %681, "nn"
    %683 = hcl.create_loop_handle %681, "cc"
    %684 = hcl.create_loop_handle %681, "hh"
    %685 = hcl.create_loop_handle %681, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %674[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_residual2"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg74[%arg169] {from = "layer2_0_bn4_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg75[%arg169] {from = "layer2_0_bn4_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %680[%arg168, %arg169, %arg170, %arg171] {to = "layer2_0_bn4"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_0_bn4"}
    %686 = memref.alloc() {name = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2>
    %687 = hcl.create_op_handle "layer2_1_rsign1"
    %688 = hcl.create_loop_handle %687, "nn"
    %689 = hcl.create_loop_handle %687, "cc"
    %690 = hcl.create_loop_handle %687, "hh"
    %691 = hcl.create_loop_handle %687, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %680[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_bn4", moved} : memref<1x32x16x16xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %686[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_rsign1"} : memref<1x32x16x16xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_rsign1"}
    %692 = memref.alloc() {name = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16>
    %693 = hcl.create_op_handle "layer2_1_conv1_msb_truncate"
    %694 = hcl.create_loop_handle %693, "i"
    %695 = hcl.create_loop_handle %693, "c"
    %696 = hcl.create_loop_handle %693, "h"
    %697 = hcl.create_loop_handle %693, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_16"
            %1583 = hcl.create_loop_handle %1582, "loop_16"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %686[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_16", op_name = "stage_16"}
            %1584 = affine.load %1581[0] {from = "layer2_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %692[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_msb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv1_msb_truncate"}
    %698 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
    %699 = hcl.create_op_handle "layer2_1_conv1_lsb_truncate"
    %700 = hcl.create_loop_handle %699, "i"
    %701 = hcl.create_loop_handle %699, "c"
    %702 = hcl.create_loop_handle %699, "h"
    %703 = hcl.create_loop_handle %699, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_17"
            %1583 = hcl.create_loop_handle %1582, "loop_17"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %686[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign1", unsigned} : memref<1x32x16x16xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_17", op_name = "stage_17"}
            %1584 = affine.load %1581[0] {from = "layer2_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %698[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_lsb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv1_lsb_truncate"}
    %704 = memref.alloc() {name = "layer2_1_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
    %705 = hcl.create_op_handle "layer2_1_conv1_out_msb_pad"
    %706 = hcl.create_loop_handle %705, "ii"
    %707 = hcl.create_loop_handle %705, "cc"
    %708 = hcl.create_loop_handle %705, "hh"
    %709 = hcl.create_loop_handle %705, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %692[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %704[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_msb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv1_out_msb_pad"}
    %710 = memref.alloc() {name = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
    %711 = hcl.create_op_handle "layer2_1_conv1_out_msb"
    %712 = hcl.create_loop_handle %711, "nn"
    %713 = hcl.create_loop_handle %711, "ff"
    %714 = hcl.create_loop_handle %711, "yy"
    %715 = hcl.create_loop_handle %711, "xx"
    %716 = hcl.create_loop_handle %711, "layer2_1_conv1_out_msb_rc"
    %717 = hcl.create_loop_handle %711, "layer2_1_conv1_out_msb_rx"
    %718 = hcl.create_loop_handle %711, "layer2_1_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %704[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_1_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_1_conv1_out_msb_rx", reduction}
              } {loop_name = "layer2_1_conv1_out_msb_ry", reduction}
            } {loop_name = "layer2_1_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %710[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_msb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv1_out_msb"}
    %719 = memref.alloc() {name = "layer2_1_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
    %720 = hcl.create_op_handle "layer2_1_conv1_out_lsb_pad"
    %721 = hcl.create_loop_handle %720, "ii"
    %722 = hcl.create_loop_handle %720, "cc"
    %723 = hcl.create_loop_handle %720, "hh"
    %724 = hcl.create_loop_handle %720, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %698[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %719[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_lsb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv1_out_lsb_pad"}
    %725 = memref.alloc() {name = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %726 = hcl.create_op_handle "layer2_1_conv1_out_lsb"
    %727 = hcl.create_loop_handle %726, "nn"
    %728 = hcl.create_loop_handle %726, "ff"
    %729 = hcl.create_loop_handle %726, "yy"
    %730 = hcl.create_loop_handle %726, "xx"
    %731 = hcl.create_loop_handle %726, "layer2_1_conv1_out_lsb_rc"
    %732 = hcl.create_loop_handle %726, "layer2_1_conv1_out_lsb_rx"
    %733 = hcl.create_loop_handle %726, "layer2_1_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %719[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_1_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg82[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv1_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_1_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer2_1_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer2_1_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %725[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv1_out_lsb"}
    %734 = memref.alloc() {name = "layer2_1_conv1_pgconv"} : memref<1x32x16x16xf32>
    %735 = hcl.create_op_handle "layer2_1_conv1_pgconv"
    %736 = hcl.create_loop_handle %735, "nn"
    %737 = hcl.create_loop_handle %735, "cc"
    %738 = hcl.create_loop_handle %735, "hh"
    %739 = hcl.create_loop_handle %735, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %710[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_msb", moved} : memref<1x32x16x16xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg83[%arg169] {from = "layer2_1_conv1_threshold", moved} : memref<32xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %725[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %734[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv1_pgconv"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_conv1_pgconv"}
    %740 = memref.alloc() {name = "layer2_1_bn1"} : memref<1x32x16x16xf32>
    %741 = hcl.create_op_handle "layer2_1_bn1"
    %742 = hcl.create_loop_handle %741, "nn"
    %743 = hcl.create_loop_handle %741, "cc"
    %744 = hcl.create_loop_handle %741, "hh"
    %745 = hcl.create_loop_handle %741, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %734[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_conv1_pgconv"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg84[%arg169] {from = "layer2_1_bn1_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg85[%arg169] {from = "layer2_1_bn1_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %740[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn1"}
    %746 = memref.alloc() {name = "layer2_1_rprelu1"} : memref<1x32x16x16xf32>
    %747 = hcl.create_op_handle "layer2_1_rprelu1"
    %748 = hcl.create_loop_handle %747, "nn"
    %749 = hcl.create_loop_handle %747, "cc"
    %750 = hcl.create_loop_handle %747, "hh"
    %751 = hcl.create_loop_handle %747, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %740[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_bn1", moved} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg76[%arg169] {from = "layer2_1_rprelu1_shift_x_bias", moved} : memref<32xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg78[%arg169] {from = "layer2_1_rprelu1_prelu_weight"} : memref<32xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg77[%arg169] {from = "layer2_1_rprelu1_shift_y_bias"} : memref<32xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %746[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_rprelu1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_rprelu1"}
    %752 = memref.alloc() {name = "layer2_1_residual1"} : memref<1x32x16x16xf32>
    %753 = hcl.create_op_handle "layer2_1_residual1"
    %754 = hcl.create_loop_handle %753, "nn"
    %755 = hcl.create_loop_handle %753, "cc"
    %756 = hcl.create_loop_handle %753, "hh"
    %757 = hcl.create_loop_handle %753, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %746[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_rprelu1"} : memref<1x32x16x16xf32>
            %1582 = affine.load %680[%arg168, %arg169, %arg170, %arg171] {from = "layer2_0_bn4"} : memref<1x32x16x16xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %752[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_residual1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_residual1"}
    %758 = memref.alloc() {name = "layer2_1_bn2"} : memref<1x32x16x16xf32>
    %759 = hcl.create_op_handle "layer2_1_bn2"
    %760 = hcl.create_loop_handle %759, "nn"
    %761 = hcl.create_loop_handle %759, "cc"
    %762 = hcl.create_loop_handle %759, "hh"
    %763 = hcl.create_loop_handle %759, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %752[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_residual1"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg90[%arg169] {from = "layer2_1_bn3_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg91[%arg169] {from = "layer2_1_bn3_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %758[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn2"}
    %764 = memref.alloc() {name = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2>
    %765 = hcl.create_op_handle "layer2_1_rsign2"
    %766 = hcl.create_loop_handle %765, "nn"
    %767 = hcl.create_loop_handle %765, "cc"
    %768 = hcl.create_loop_handle %765, "hh"
    %769 = hcl.create_loop_handle %765, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %758[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_bn2", moved} : memref<1x32x16x16xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %764[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_rsign2"} : memref<1x32x16x16xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_rsign2"}
    %770 = memref.alloc() {name = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16>
    %771 = hcl.create_op_handle "layer2_1_conv2_msb_truncate"
    %772 = hcl.create_loop_handle %771, "i"
    %773 = hcl.create_loop_handle %771, "c"
    %774 = hcl.create_loop_handle %771, "h"
    %775 = hcl.create_loop_handle %771, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_18"
            %1583 = hcl.create_loop_handle %1582, "loop_18"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %764[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_18", op_name = "stage_18"}
            %1584 = affine.load %1581[0] {from = "layer2_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %770[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_msb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv2_msb_truncate"}
    %776 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
    %777 = hcl.create_op_handle "layer2_1_conv2_lsb_truncate"
    %778 = hcl.create_loop_handle %777, "i"
    %779 = hcl.create_loop_handle %777, "c"
    %780 = hcl.create_loop_handle %777, "h"
    %781 = hcl.create_loop_handle %777, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_19"
            %1583 = hcl.create_loop_handle %1582, "loop_19"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %764[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_1_rsign2", unsigned} : memref<1x32x16x16xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_19", op_name = "stage_19"}
            %1584 = affine.load %1581[0] {from = "layer2_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %776[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_lsb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_1_conv2_lsb_truncate"}
    %782 = memref.alloc() {name = "layer2_1_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
    %783 = hcl.create_op_handle "layer2_1_conv2_out_msb_pad"
    %784 = hcl.create_loop_handle %783, "ii"
    %785 = hcl.create_loop_handle %783, "cc"
    %786 = hcl.create_loop_handle %783, "hh"
    %787 = hcl.create_loop_handle %783, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %770[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %782[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_msb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv2_out_msb_pad"}
    %788 = memref.alloc() {name = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
    %789 = hcl.create_op_handle "layer2_1_conv2_out_msb"
    %790 = hcl.create_loop_handle %789, "nn"
    %791 = hcl.create_loop_handle %789, "ff"
    %792 = hcl.create_loop_handle %789, "yy"
    %793 = hcl.create_loop_handle %789, "xx"
    %794 = hcl.create_loop_handle %789, "layer2_1_conv2_out_msb_rc"
    %795 = hcl.create_loop_handle %789, "layer2_1_conv2_out_msb_rx"
    %796 = hcl.create_loop_handle %789, "layer2_1_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %782[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_1_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_1_conv2_out_msb_rx", reduction}
              } {loop_name = "layer2_1_conv2_out_msb_ry", reduction}
            } {loop_name = "layer2_1_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %788[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_msb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv2_out_msb"}
    %797 = memref.alloc() {name = "layer2_1_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
    %798 = hcl.create_op_handle "layer2_1_conv2_out_lsb_pad"
    %799 = hcl.create_loop_handle %798, "ii"
    %800 = hcl.create_loop_handle %798, "cc"
    %801 = hcl.create_loop_handle %798, "hh"
    %802 = hcl.create_loop_handle %798, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %776[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_1_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %797[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_lsb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_1_conv2_out_lsb_pad"}
    %803 = memref.alloc() {name = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %804 = hcl.create_op_handle "layer2_1_conv2_out_lsb"
    %805 = hcl.create_loop_handle %804, "nn"
    %806 = hcl.create_loop_handle %804, "ff"
    %807 = hcl.create_loop_handle %804, "yy"
    %808 = hcl.create_loop_handle %804, "xx"
    %809 = hcl.create_loop_handle %804, "layer2_1_conv2_out_lsb_rc"
    %810 = hcl.create_loop_handle %804, "layer2_1_conv2_out_lsb_rx"
    %811 = hcl.create_loop_handle %804, "layer2_1_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %797[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_1_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg86[%arg169, %arg172, %arg173, %arg174] {from = "layer2_1_conv2_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_1_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer2_1_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer2_1_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %803[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_1_conv2_out_lsb"}
    %812 = memref.alloc() {name = "layer2_1_conv2_pgconv"} : memref<1x32x16x16xf32>
    %813 = hcl.create_op_handle "layer2_1_conv2_pgconv"
    %814 = hcl.create_loop_handle %813, "nn"
    %815 = hcl.create_loop_handle %813, "cc"
    %816 = hcl.create_loop_handle %813, "hh"
    %817 = hcl.create_loop_handle %813, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %788[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_msb", moved} : memref<1x32x16x16xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg87[%arg169] {from = "layer2_1_conv2_threshold", moved} : memref<32xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %803[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %812[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_conv2_pgconv"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_conv2_pgconv"}
    %818 = memref.alloc() {name = "layer2_1_bn3"} : memref<1x32x16x16xf32>
    %819 = hcl.create_op_handle "layer2_1_bn3"
    %820 = hcl.create_loop_handle %819, "nn"
    %821 = hcl.create_loop_handle %819, "cc"
    %822 = hcl.create_loop_handle %819, "hh"
    %823 = hcl.create_loop_handle %819, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %812[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_conv2_pgconv"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg88[%arg169] {from = "layer2_1_bn2_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg89[%arg169] {from = "layer2_1_bn2_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %818[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn3"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn3"}
    %824 = memref.alloc() {name = "layer2_1_rprelu2"} : memref<1x32x16x16xf32>
    %825 = hcl.create_op_handle "layer2_1_rprelu2"
    %826 = hcl.create_loop_handle %825, "nn"
    %827 = hcl.create_loop_handle %825, "cc"
    %828 = hcl.create_loop_handle %825, "hh"
    %829 = hcl.create_loop_handle %825, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %818[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_bn3", moved} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg79[%arg169] {from = "layer2_1_rprelu2_shift_x_bias", moved} : memref<32xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg81[%arg169] {from = "layer2_1_rprelu2_prelu_weight"} : memref<32xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg80[%arg169] {from = "layer2_1_rprelu2_shift_y_bias"} : memref<32xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %824[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_rprelu2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_rprelu2"}
    %830 = memref.alloc() {name = "layer2_1_residual2"} : memref<1x32x16x16xf32>
    %831 = hcl.create_op_handle "layer2_1_residual2"
    %832 = hcl.create_loop_handle %831, "nn"
    %833 = hcl.create_loop_handle %831, "cc"
    %834 = hcl.create_loop_handle %831, "hh"
    %835 = hcl.create_loop_handle %831, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %758[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_bn2"} : memref<1x32x16x16xf32>
            %1582 = affine.load %824[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_rprelu2"} : memref<1x32x16x16xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %830[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_residual2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_residual2"}
    %836 = memref.alloc() {name = "layer2_1_bn4"} : memref<1x32x16x16xf32>
    %837 = hcl.create_op_handle "layer2_1_bn4"
    %838 = hcl.create_loop_handle %837, "nn"
    %839 = hcl.create_loop_handle %837, "cc"
    %840 = hcl.create_loop_handle %837, "hh"
    %841 = hcl.create_loop_handle %837, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %830[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_residual2"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg92[%arg169] {from = "layer2_1_bn4_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg93[%arg169] {from = "layer2_1_bn4_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %836[%arg168, %arg169, %arg170, %arg171] {to = "layer2_1_bn4"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_1_bn4"}
    %842 = memref.alloc() {name = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2>
    %843 = hcl.create_op_handle "layer2_2_rsign1"
    %844 = hcl.create_loop_handle %843, "nn"
    %845 = hcl.create_loop_handle %843, "cc"
    %846 = hcl.create_loop_handle %843, "hh"
    %847 = hcl.create_loop_handle %843, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %836[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_bn4", moved} : memref<1x32x16x16xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %842[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_rsign1"} : memref<1x32x16x16xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_rsign1"}
    %848 = memref.alloc() {name = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16>
    %849 = hcl.create_op_handle "layer2_2_conv1_msb_truncate"
    %850 = hcl.create_loop_handle %849, "i"
    %851 = hcl.create_loop_handle %849, "c"
    %852 = hcl.create_loop_handle %849, "h"
    %853 = hcl.create_loop_handle %849, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_20"
            %1583 = hcl.create_loop_handle %1582, "loop_20"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %842[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_20", op_name = "stage_20"}
            %1584 = affine.load %1581[0] {from = "layer2_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %848[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_msb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv1_msb_truncate"}
    %854 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
    %855 = hcl.create_op_handle "layer2_2_conv1_lsb_truncate"
    %856 = hcl.create_loop_handle %855, "i"
    %857 = hcl.create_loop_handle %855, "c"
    %858 = hcl.create_loop_handle %855, "h"
    %859 = hcl.create_loop_handle %855, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_21"
            %1583 = hcl.create_loop_handle %1582, "loop_21"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %842[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign1", unsigned} : memref<1x32x16x16xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_21", op_name = "stage_21"}
            %1584 = affine.load %1581[0] {from = "layer2_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %854[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_lsb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv1_lsb_truncate"}
    %860 = memref.alloc() {name = "layer2_2_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
    %861 = hcl.create_op_handle "layer2_2_conv1_out_msb_pad"
    %862 = hcl.create_loop_handle %861, "ii"
    %863 = hcl.create_loop_handle %861, "cc"
    %864 = hcl.create_loop_handle %861, "hh"
    %865 = hcl.create_loop_handle %861, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %848[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %860[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_msb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv1_out_msb_pad"}
    %866 = memref.alloc() {name = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
    %867 = hcl.create_op_handle "layer2_2_conv1_out_msb"
    %868 = hcl.create_loop_handle %867, "nn"
    %869 = hcl.create_loop_handle %867, "ff"
    %870 = hcl.create_loop_handle %867, "yy"
    %871 = hcl.create_loop_handle %867, "xx"
    %872 = hcl.create_loop_handle %867, "layer2_2_conv1_out_msb_rc"
    %873 = hcl.create_loop_handle %867, "layer2_2_conv1_out_msb_rx"
    %874 = hcl.create_loop_handle %867, "layer2_2_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %860[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_2_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_2_conv1_out_msb_rx", reduction}
              } {loop_name = "layer2_2_conv1_out_msb_ry", reduction}
            } {loop_name = "layer2_2_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %866[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_msb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv1_out_msb"}
    %875 = memref.alloc() {name = "layer2_2_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
    %876 = hcl.create_op_handle "layer2_2_conv1_out_lsb_pad"
    %877 = hcl.create_loop_handle %876, "ii"
    %878 = hcl.create_loop_handle %876, "cc"
    %879 = hcl.create_loop_handle %876, "hh"
    %880 = hcl.create_loop_handle %876, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %854[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %875[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_lsb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv1_out_lsb_pad"}
    %881 = memref.alloc() {name = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
    %882 = hcl.create_op_handle "layer2_2_conv1_out_lsb"
    %883 = hcl.create_loop_handle %882, "nn"
    %884 = hcl.create_loop_handle %882, "ff"
    %885 = hcl.create_loop_handle %882, "yy"
    %886 = hcl.create_loop_handle %882, "xx"
    %887 = hcl.create_loop_handle %882, "layer2_2_conv1_out_lsb_rc"
    %888 = hcl.create_loop_handle %882, "layer2_2_conv1_out_lsb_rx"
    %889 = hcl.create_loop_handle %882, "layer2_2_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %875[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_2_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg100[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv1_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_2_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer2_2_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer2_2_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %881[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv1_out_lsb"}
    %890 = memref.alloc() {name = "layer2_2_conv1_pgconv"} : memref<1x32x16x16xf32>
    %891 = hcl.create_op_handle "layer2_2_conv1_pgconv"
    %892 = hcl.create_loop_handle %891, "nn"
    %893 = hcl.create_loop_handle %891, "cc"
    %894 = hcl.create_loop_handle %891, "hh"
    %895 = hcl.create_loop_handle %891, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %866[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_msb", moved} : memref<1x32x16x16xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg101[%arg169] {from = "layer2_2_conv1_threshold", moved} : memref<32xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %881[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_out_lsb"} : memref<1x32x16x16xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %890[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv1_pgconv"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_conv1_pgconv"}
    %896 = memref.alloc() {name = "layer2_2_bn1"} : memref<1x32x16x16xf32>
    %897 = hcl.create_op_handle "layer2_2_bn1"
    %898 = hcl.create_loop_handle %897, "nn"
    %899 = hcl.create_loop_handle %897, "cc"
    %900 = hcl.create_loop_handle %897, "hh"
    %901 = hcl.create_loop_handle %897, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %890[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_conv1_pgconv"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg102[%arg169] {from = "layer2_2_bn1_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg103[%arg169] {from = "layer2_2_bn1_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %896[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn1"}
    %902 = memref.alloc() {name = "layer2_2_rprelu1"} : memref<1x32x16x16xf32>
    %903 = hcl.create_op_handle "layer2_2_rprelu1"
    %904 = hcl.create_loop_handle %903, "nn"
    %905 = hcl.create_loop_handle %903, "cc"
    %906 = hcl.create_loop_handle %903, "hh"
    %907 = hcl.create_loop_handle %903, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %896[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_bn1", moved} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg94[%arg169] {from = "layer2_2_rprelu1_shift_x_bias", moved} : memref<32xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg96[%arg169] {from = "layer2_2_rprelu1_prelu_weight"} : memref<32xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg95[%arg169] {from = "layer2_2_rprelu1_shift_y_bias"} : memref<32xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %902[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_rprelu1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_rprelu1"}
    %908 = memref.alloc() {name = "layer2_2_residual1"} : memref<1x32x16x16xf32>
    %909 = hcl.create_op_handle "layer2_2_residual1"
    %910 = hcl.create_loop_handle %909, "nn"
    %911 = hcl.create_loop_handle %909, "cc"
    %912 = hcl.create_loop_handle %909, "hh"
    %913 = hcl.create_loop_handle %909, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %902[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_rprelu1"} : memref<1x32x16x16xf32>
            %1582 = affine.load %836[%arg168, %arg169, %arg170, %arg171] {from = "layer2_1_bn4"} : memref<1x32x16x16xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %908[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_residual1"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_residual1"}
    %914 = memref.alloc() {name = "layer2_2_bn2"} : memref<1x32x16x16xf32>
    %915 = hcl.create_op_handle "layer2_2_bn2"
    %916 = hcl.create_loop_handle %915, "nn"
    %917 = hcl.create_loop_handle %915, "cc"
    %918 = hcl.create_loop_handle %915, "hh"
    %919 = hcl.create_loop_handle %915, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %908[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_residual1"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg108[%arg169] {from = "layer2_2_bn3_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg109[%arg169] {from = "layer2_2_bn3_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %914[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn2"}
    %920 = memref.alloc() {name = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2>
    %921 = hcl.create_op_handle "layer2_2_rsign2"
    %922 = hcl.create_loop_handle %921, "nn"
    %923 = hcl.create_loop_handle %921, "cc"
    %924 = hcl.create_loop_handle %921, "hh"
    %925 = hcl.create_loop_handle %921, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %914[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_bn2", moved} : memref<1x32x16x16xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %920[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_rsign2"} : memref<1x32x16x16xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_rsign2"}
    %926 = memref.alloc() {name = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16>
    %927 = hcl.create_op_handle "layer2_2_conv2_msb_truncate"
    %928 = hcl.create_loop_handle %927, "i"
    %929 = hcl.create_loop_handle %927, "c"
    %930 = hcl.create_loop_handle %927, "h"
    %931 = hcl.create_loop_handle %927, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_22"
            %1583 = hcl.create_loop_handle %1582, "loop_22"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %920[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_22", op_name = "stage_22"}
            %1584 = affine.load %1581[0] {from = "layer2_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %926[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_msb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv2_msb_truncate"}
    %932 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
    %933 = hcl.create_op_handle "layer2_2_conv2_lsb_truncate"
    %934 = hcl.create_loop_handle %933, "i"
    %935 = hcl.create_loop_handle %933, "c"
    %936 = hcl.create_loop_handle %933, "h"
    %937 = hcl.create_loop_handle %933, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_23"
            %1583 = hcl.create_loop_handle %1582, "loop_23"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %920[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer2_2_rsign2", unsigned} : memref<1x32x16x16xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_23", op_name = "stage_23"}
            %1584 = affine.load %1581[0] {from = "layer2_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %932[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_lsb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer2_2_conv2_lsb_truncate"}
    %938 = memref.alloc() {name = "layer2_2_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
    %939 = hcl.create_op_handle "layer2_2_conv2_out_msb_pad"
    %940 = hcl.create_loop_handle %939, "ii"
    %941 = hcl.create_loop_handle %939, "cc"
    %942 = hcl.create_loop_handle %939, "hh"
    %943 = hcl.create_loop_handle %939, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %926[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_msb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %938[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_msb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv2_out_msb_pad"}
    %944 = memref.alloc() {name = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
    %945 = hcl.create_op_handle "layer2_2_conv2_out_msb"
    %946 = hcl.create_loop_handle %945, "nn"
    %947 = hcl.create_loop_handle %945, "ff"
    %948 = hcl.create_loop_handle %945, "yy"
    %949 = hcl.create_loop_handle %945, "xx"
    %950 = hcl.create_loop_handle %945, "layer2_2_conv2_out_msb_rc"
    %951 = hcl.create_loop_handle %945, "layer2_2_conv2_out_msb_rx"
    %952 = hcl.create_loop_handle %945, "layer2_2_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %938[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_2_conv2_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_2_conv2_out_msb_rx", reduction}
              } {loop_name = "layer2_2_conv2_out_msb_ry", reduction}
            } {loop_name = "layer2_2_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %944[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_msb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv2_out_msb"}
    %953 = memref.alloc() {name = "layer2_2_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
    %954 = hcl.create_op_handle "layer2_2_conv2_out_lsb_pad"
    %955 = hcl.create_loop_handle %954, "ii"
    %956 = hcl.create_loop_handle %954, "cc"
    %957 = hcl.create_loop_handle %954, "hh"
    %958 = hcl.create_loop_handle %954, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %932[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer2_2_conv2_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %953[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_lsb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer2_2_conv2_out_lsb_pad"}
    %959 = memref.alloc() {name = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
    %960 = hcl.create_op_handle "layer2_2_conv2_out_lsb"
    %961 = hcl.create_loop_handle %960, "nn"
    %962 = hcl.create_loop_handle %960, "ff"
    %963 = hcl.create_loop_handle %960, "yy"
    %964 = hcl.create_loop_handle %960, "xx"
    %965 = hcl.create_loop_handle %960, "layer2_2_conv2_out_lsb_rc"
    %966 = hcl.create_loop_handle %960, "layer2_2_conv2_out_lsb_rx"
    %967 = hcl.create_loop_handle %960, "layer2_2_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %953[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer2_2_conv2_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg104[%arg169, %arg172, %arg173, %arg174] {from = "layer2_2_conv2_weight", unsigned} : memref<32x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer2_2_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer2_2_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer2_2_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %959[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer2_2_conv2_out_lsb"}
    %968 = memref.alloc() {name = "layer2_2_conv2_pgconv"} : memref<1x32x16x16xf32>
    %969 = hcl.create_op_handle "layer2_2_conv2_pgconv"
    %970 = hcl.create_loop_handle %969, "nn"
    %971 = hcl.create_loop_handle %969, "cc"
    %972 = hcl.create_loop_handle %969, "hh"
    %973 = hcl.create_loop_handle %969, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %944[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_msb", moved} : memref<1x32x16x16xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg105[%arg169] {from = "layer2_2_conv2_threshold", moved} : memref<32xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %959[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_out_lsb"} : memref<1x32x16x16xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %968[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_conv2_pgconv"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_conv2_pgconv"}
    %974 = memref.alloc() {name = "layer2_2_bn3"} : memref<1x32x16x16xf32>
    %975 = hcl.create_op_handle "layer2_2_bn3"
    %976 = hcl.create_loop_handle %975, "nn"
    %977 = hcl.create_loop_handle %975, "cc"
    %978 = hcl.create_loop_handle %975, "hh"
    %979 = hcl.create_loop_handle %975, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %968[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_conv2_pgconv"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg106[%arg169] {from = "layer2_2_bn2_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg107[%arg169] {from = "layer2_2_bn2_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %974[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn3"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn3"}
    %980 = memref.alloc() {name = "layer2_2_rprelu2"} : memref<1x32x16x16xf32>
    %981 = hcl.create_op_handle "layer2_2_rprelu2"
    %982 = hcl.create_loop_handle %981, "nn"
    %983 = hcl.create_loop_handle %981, "cc"
    %984 = hcl.create_loop_handle %981, "hh"
    %985 = hcl.create_loop_handle %981, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %974[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_bn3", moved} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg97[%arg169] {from = "layer2_2_rprelu2_shift_x_bias", moved} : memref<32xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg99[%arg169] {from = "layer2_2_rprelu2_prelu_weight"} : memref<32xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg98[%arg169] {from = "layer2_2_rprelu2_shift_y_bias"} : memref<32xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %980[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_rprelu2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_rprelu2"}
    %986 = memref.alloc() {name = "layer2_2_residual2"} : memref<1x32x16x16xf32>
    %987 = hcl.create_op_handle "layer2_2_residual2"
    %988 = hcl.create_loop_handle %987, "nn"
    %989 = hcl.create_loop_handle %987, "cc"
    %990 = hcl.create_loop_handle %987, "hh"
    %991 = hcl.create_loop_handle %987, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %914[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_bn2"} : memref<1x32x16x16xf32>
            %1582 = affine.load %980[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_rprelu2"} : memref<1x32x16x16xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %986[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_residual2"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_residual2"}
    %992 = memref.alloc() {name = "layer2_2_bn4"} : memref<1x32x16x16xf32>
    %993 = hcl.create_op_handle "layer2_2_bn4"
    %994 = hcl.create_loop_handle %993, "nn"
    %995 = hcl.create_loop_handle %993, "cc"
    %996 = hcl.create_loop_handle %993, "hh"
    %997 = hcl.create_loop_handle %993, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %986[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_residual2"} : memref<1x32x16x16xf32>
            %1582 = affine.load %arg110[%arg169] {from = "layer2_2_bn4_weight"} : memref<32xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg111[%arg169] {from = "layer2_2_bn4_bias"} : memref<32xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %992[%arg168, %arg169, %arg170, %arg171] {to = "layer2_2_bn4"} : memref<1x32x16x16xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer2_2_bn4"}
    %998 = memref.alloc() {name = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2>
    %999 = hcl.create_op_handle "layer3_0_rsign1"
    %1000 = hcl.create_loop_handle %999, "nn"
    %1001 = hcl.create_loop_handle %999, "cc"
    %1002 = hcl.create_loop_handle %999, "hh"
    %1003 = hcl.create_loop_handle %999, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = affine.load %992[%arg168, %arg169, %arg170, %arg171] {from = "layer2_2_bn4", moved} : memref<1x32x16x16xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %998[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_rsign1"} : memref<1x32x16x16xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_rsign1"}
    %1004 = memref.alloc() {name = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16>
    %1005 = hcl.create_op_handle "layer3_0_conv1_msb_truncate"
    %1006 = hcl.create_loop_handle %1005, "i"
    %1007 = hcl.create_loop_handle %1005, "c"
    %1008 = hcl.create_loop_handle %1005, "h"
    %1009 = hcl.create_loop_handle %1005, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_24"
            %1583 = hcl.create_loop_handle %1582, "loop_24"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %998[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_24", op_name = "stage_24"}
            %1584 = affine.load %1581[0] {from = "layer3_0_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1004[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_msb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv1_msb_truncate"}
    %1010 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
    %1011 = hcl.create_op_handle "layer3_0_conv1_lsb_truncate"
    %1012 = hcl.create_loop_handle %1011, "i"
    %1013 = hcl.create_loop_handle %1011, "c"
    %1014 = hcl.create_loop_handle %1011, "h"
    %1015 = hcl.create_loop_handle %1011, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_25"
            %1583 = hcl.create_loop_handle %1582, "loop_25"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %998[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign1", unsigned} : memref<1x32x16x16xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_25", op_name = "stage_25"}
            %1584 = affine.load %1581[0] {from = "layer3_0_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1010[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_lsb_truncate"} : memref<1x2x16x16xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv1_lsb_truncate"}
    %1016 = memref.alloc() {name = "layer3_0_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
    %1017 = hcl.create_op_handle "layer3_0_conv1_out_msb_pad"
    %1018 = hcl.create_loop_handle %1017, "ii"
    %1019 = hcl.create_loop_handle %1017, "cc"
    %1020 = hcl.create_loop_handle %1017, "hh"
    %1021 = hcl.create_loop_handle %1017, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1004[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_msb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1016[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_msb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv1_out_msb_pad"}
    %1022 = memref.alloc() {name = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
    %1023 = hcl.create_op_handle "layer3_0_conv1_out_msb"
    %1024 = hcl.create_loop_handle %1023, "nn"
    %1025 = hcl.create_loop_handle %1023, "ff"
    %1026 = hcl.create_loop_handle %1023, "yy"
    %1027 = hcl.create_loop_handle %1023, "xx"
    %1028 = hcl.create_loop_handle %1023, "layer3_0_conv1_out_msb_rc"
    %1029 = hcl.create_loop_handle %1023, "layer3_0_conv1_out_msb_rx"
    %1030 = hcl.create_loop_handle %1023, "layer3_0_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1016[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_0_conv1_out_msb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_0_conv1_out_msb_rx", reduction}
              } {loop_name = "layer3_0_conv1_out_msb_ry", reduction}
            } {loop_name = "layer3_0_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1022[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_msb"} : memref<1x64x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv1_out_msb"}
    %1031 = memref.alloc() {name = "layer3_0_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
    %1032 = hcl.create_op_handle "layer3_0_conv1_out_lsb_pad"
    %1033 = hcl.create_loop_handle %1032, "ii"
    %1034 = hcl.create_loop_handle %1032, "cc"
    %1035 = hcl.create_loop_handle %1032, "hh"
    %1036 = hcl.create_loop_handle %1032, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 2 {
        affine.for %arg170 = 0 to 18 {
          affine.for %arg171 = 0 to 18 {
            %1581 = affine.if #set2(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1010[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv1_lsb_truncate", unsigned} : memref<1x2x16x16xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1031[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_lsb_pad"} : memref<1x2x18x18xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv1_out_lsb_pad"}
    %1037 = memref.alloc() {name = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
    %1038 = hcl.create_op_handle "layer3_0_conv1_out_lsb"
    %1039 = hcl.create_loop_handle %1038, "nn"
    %1040 = hcl.create_loop_handle %1038, "ff"
    %1041 = hcl.create_loop_handle %1038, "yy"
    %1042 = hcl.create_loop_handle %1038, "xx"
    %1043 = hcl.create_loop_handle %1038, "layer3_0_conv1_out_lsb_rc"
    %1044 = hcl.create_loop_handle %1038, "layer3_0_conv1_out_lsb_rx"
    %1045 = hcl.create_loop_handle %1038, "layer3_0_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 16 {
          affine.for %arg171 = 0 to 16 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set3(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1031[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_0_conv1_out_lsb_pad", unsigned} : memref<1x2x18x18xi16>
                    %1588 = affine.load %arg118[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv1_weight", unsigned} : memref<64x2x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_0_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer3_0_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer3_0_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1037[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv1_out_lsb"}
    %1046 = memref.alloc() {name = "layer3_0_conv1_pgconv"} : memref<1x64x8x8xf32>
    %1047 = hcl.create_op_handle "layer3_0_conv1_pgconv"
    %1048 = hcl.create_loop_handle %1047, "nn"
    %1049 = hcl.create_loop_handle %1047, "cc"
    %1050 = hcl.create_loop_handle %1047, "hh"
    %1051 = hcl.create_loop_handle %1047, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1022[%arg168, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_msb", moved} : memref<1x64x16x16xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg119[%arg169] {from = "layer3_0_conv1_threshold", moved} : memref<64xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %1037[%arg168, %arg169, %arg170 * 2, %arg171 * 2] {from = "layer3_0_conv1_out_lsb"} : memref<1x64x16x16xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %1046[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv1_pgconv"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_conv1_pgconv"}
    %1052 = memref.alloc() {name = "layer3_0_bn1"} : memref<1x64x8x8xf32>
    %1053 = hcl.create_op_handle "layer3_0_bn1"
    %1054 = hcl.create_loop_handle %1053, "nn"
    %1055 = hcl.create_loop_handle %1053, "cc"
    %1056 = hcl.create_loop_handle %1053, "hh"
    %1057 = hcl.create_loop_handle %1053, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1046[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_conv1_pgconv"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg120[%arg169] {from = "layer3_0_bn1_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg121[%arg169] {from = "layer3_0_bn1_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1052[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn1"}
    %1058 = memref.alloc() {name = "layer3_0_rprelu1"} : memref<1x64x8x8xf32>
    %1059 = hcl.create_op_handle "layer3_0_rprelu1"
    %1060 = hcl.create_loop_handle %1059, "nn"
    %1061 = hcl.create_loop_handle %1059, "cc"
    %1062 = hcl.create_loop_handle %1059, "hh"
    %1063 = hcl.create_loop_handle %1059, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1052[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_bn1", moved} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg112[%arg169] {from = "layer3_0_rprelu1_shift_x_bias", moved} : memref<64xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg114[%arg169] {from = "layer3_0_rprelu1_prelu_weight"} : memref<64xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg113[%arg169] {from = "layer3_0_rprelu1_shift_y_bias"} : memref<64xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %1058[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_rprelu1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_rprelu1"}
    %1064 = memref.alloc() {name = "layer3_0_avgpool"} : memref<1x32x8x8xf32>
    %1065 = hcl.create_op_handle "layer3_0_avgpool"
    %1066 = hcl.create_loop_handle %1065, "i"
    %1067 = hcl.create_loop_handle %1065, "c"
    %1068 = hcl.create_loop_handle %1065, "h"
    %1069 = hcl.create_loop_handle %1065, "w"
    %1070 = hcl.create_loop_handle %1065, "rx_2"
    %1071 = hcl.create_loop_handle %1065, "rx_3"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 32 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg172 = 0 to 2 {
              affine.for %arg173 = 0 to 2 {
                %1585 = affine.load %992[%arg168, %arg169, %arg170 * 2 + %arg172, %arg171 * 2 + %arg173] {from = "layer2_2_bn4"} : memref<1x32x16x16xf32>
                %1586 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xf32>
                %1587 = arith.addf %1585, %1586 : f32
                affine.store %1587, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_3", reduction}
            } {loop_name = "rx_2", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xf32>
            %c4_i32 = arith.constant 4 : i32
            %1583 = arith.sitofp %c4_i32 : i32 to f32
            %1584 = arith.divf %1582, %1583 : f32
            affine.store %1584, %1064[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_avgpool"} : memref<1x32x8x8xf32>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_avgpool"}
    %1072 = memref.alloc() {name = "layer3_0_concat"} : memref<1x64x8x8xf32>
    %1073 = hcl.create_op_handle "layer3_0_concat"
    %1074 = hcl.create_loop_handle %1073, "nn"
    %1075 = hcl.create_loop_handle %1073, "cc"
    %1076 = hcl.create_loop_handle %1073, "hh"
    %1077 = hcl.create_loop_handle %1073, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1064[%arg168, %arg169 mod 32, %arg170, %arg171] {from = "layer3_0_avgpool"} : memref<1x32x8x8xf32>
            affine.store %1581, %1072[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_concat"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_concat"}
    %1078 = memref.alloc() {name = "layer3_0_residual1"} : memref<1x64x8x8xf32>
    %1079 = hcl.create_op_handle "layer3_0_residual1"
    %1080 = hcl.create_loop_handle %1079, "nn"
    %1081 = hcl.create_loop_handle %1079, "cc"
    %1082 = hcl.create_loop_handle %1079, "hh"
    %1083 = hcl.create_loop_handle %1079, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1058[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_rprelu1"} : memref<1x64x8x8xf32>
            %1582 = affine.load %1072[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_concat"} : memref<1x64x8x8xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %1078[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_residual1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_residual1"}
    %1084 = memref.alloc() {name = "layer3_0_bn2"} : memref<1x64x8x8xf32>
    %1085 = hcl.create_op_handle "layer3_0_bn2"
    %1086 = hcl.create_loop_handle %1085, "nn"
    %1087 = hcl.create_loop_handle %1085, "cc"
    %1088 = hcl.create_loop_handle %1085, "hh"
    %1089 = hcl.create_loop_handle %1085, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1078[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_residual1"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg126[%arg169] {from = "layer3_0_bn3_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg127[%arg169] {from = "layer3_0_bn3_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1084[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn2"}
    %1090 = memref.alloc() {name = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2>
    %1091 = hcl.create_op_handle "layer3_0_rsign2"
    %1092 = hcl.create_loop_handle %1091, "nn"
    %1093 = hcl.create_loop_handle %1091, "cc"
    %1094 = hcl.create_loop_handle %1091, "hh"
    %1095 = hcl.create_loop_handle %1091, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1084[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_bn2", moved} : memref<1x64x8x8xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %1090[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_rsign2"} : memref<1x64x8x8xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_rsign2"}
    %1096 = memref.alloc() {name = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1097 = hcl.create_op_handle "layer3_0_conv2_msb_truncate"
    %1098 = hcl.create_loop_handle %1097, "i"
    %1099 = hcl.create_loop_handle %1097, "c"
    %1100 = hcl.create_loop_handle %1097, "h"
    %1101 = hcl.create_loop_handle %1097, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_26"
            %1583 = hcl.create_loop_handle %1582, "loop_26"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1090[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_26", op_name = "stage_26"}
            %1584 = affine.load %1581[0] {from = "layer3_0_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1096[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_msb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv2_msb_truncate"}
    %1102 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1103 = hcl.create_op_handle "layer3_0_conv2_lsb_truncate"
    %1104 = hcl.create_loop_handle %1103, "i"
    %1105 = hcl.create_loop_handle %1103, "c"
    %1106 = hcl.create_loop_handle %1103, "h"
    %1107 = hcl.create_loop_handle %1103, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_27"
            %1583 = hcl.create_loop_handle %1582, "loop_27"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1090[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_0_rsign2", unsigned} : memref<1x64x8x8xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_27", op_name = "stage_27"}
            %1584 = affine.load %1581[0] {from = "layer3_0_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1102[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_lsb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_0_conv2_lsb_truncate"}
    %1108 = memref.alloc() {name = "layer3_0_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
    %1109 = hcl.create_op_handle "layer3_0_conv2_out_msb_pad"
    %1110 = hcl.create_loop_handle %1109, "ii"
    %1111 = hcl.create_loop_handle %1109, "cc"
    %1112 = hcl.create_loop_handle %1109, "hh"
    %1113 = hcl.create_loop_handle %1109, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1096[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1108[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_msb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv2_out_msb_pad"}
    %1114 = memref.alloc() {name = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
    %1115 = hcl.create_op_handle "layer3_0_conv2_out_msb"
    %1116 = hcl.create_loop_handle %1115, "nn"
    %1117 = hcl.create_loop_handle %1115, "ff"
    %1118 = hcl.create_loop_handle %1115, "yy"
    %1119 = hcl.create_loop_handle %1115, "xx"
    %1120 = hcl.create_loop_handle %1115, "layer3_0_conv2_out_msb_rc"
    %1121 = hcl.create_loop_handle %1115, "layer3_0_conv2_out_msb_rx"
    %1122 = hcl.create_loop_handle %1115, "layer3_0_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1108[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_0_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_0_conv2_out_msb_rx", reduction}
              } {loop_name = "layer3_0_conv2_out_msb_ry", reduction}
            } {loop_name = "layer3_0_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1114[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_msb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv2_out_msb"}
    %1123 = memref.alloc() {name = "layer3_0_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
    %1124 = hcl.create_op_handle "layer3_0_conv2_out_lsb_pad"
    %1125 = hcl.create_loop_handle %1124, "ii"
    %1126 = hcl.create_loop_handle %1124, "cc"
    %1127 = hcl.create_loop_handle %1124, "hh"
    %1128 = hcl.create_loop_handle %1124, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1102[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_0_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1123[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_lsb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_0_conv2_out_lsb_pad"}
    %1129 = memref.alloc() {name = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %1130 = hcl.create_op_handle "layer3_0_conv2_out_lsb"
    %1131 = hcl.create_loop_handle %1130, "nn"
    %1132 = hcl.create_loop_handle %1130, "ff"
    %1133 = hcl.create_loop_handle %1130, "yy"
    %1134 = hcl.create_loop_handle %1130, "xx"
    %1135 = hcl.create_loop_handle %1130, "layer3_0_conv2_out_lsb_rc"
    %1136 = hcl.create_loop_handle %1130, "layer3_0_conv2_out_lsb_rx"
    %1137 = hcl.create_loop_handle %1130, "layer3_0_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1123[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_0_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg122[%arg169, %arg172, %arg173, %arg174] {from = "layer3_0_conv2_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_0_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer3_0_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer3_0_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1129[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_0_conv2_out_lsb"}
    %1138 = memref.alloc() {name = "layer3_0_conv2_pgconv"} : memref<1x64x8x8xf32>
    %1139 = hcl.create_op_handle "layer3_0_conv2_pgconv"
    %1140 = hcl.create_loop_handle %1139, "nn"
    %1141 = hcl.create_loop_handle %1139, "cc"
    %1142 = hcl.create_loop_handle %1139, "hh"
    %1143 = hcl.create_loop_handle %1139, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1114[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_msb", moved} : memref<1x64x8x8xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg123[%arg169] {from = "layer3_0_conv2_threshold", moved} : memref<64xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %1129[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %1138[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_conv2_pgconv"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_conv2_pgconv"}
    %1144 = memref.alloc() {name = "layer3_0_bn3"} : memref<1x64x8x8xf32>
    %1145 = hcl.create_op_handle "layer3_0_bn3"
    %1146 = hcl.create_loop_handle %1145, "nn"
    %1147 = hcl.create_loop_handle %1145, "cc"
    %1148 = hcl.create_loop_handle %1145, "hh"
    %1149 = hcl.create_loop_handle %1145, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1138[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_conv2_pgconv"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg124[%arg169] {from = "layer3_0_bn2_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg125[%arg169] {from = "layer3_0_bn2_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1144[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn3"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn3"}
    %1150 = memref.alloc() {name = "layer3_0_rprelu2"} : memref<1x64x8x8xf32>
    %1151 = hcl.create_op_handle "layer3_0_rprelu2"
    %1152 = hcl.create_loop_handle %1151, "nn"
    %1153 = hcl.create_loop_handle %1151, "cc"
    %1154 = hcl.create_loop_handle %1151, "hh"
    %1155 = hcl.create_loop_handle %1151, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1144[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_bn3", moved} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg115[%arg169] {from = "layer3_0_rprelu2_shift_x_bias", moved} : memref<64xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg117[%arg169] {from = "layer3_0_rprelu2_prelu_weight"} : memref<64xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg116[%arg169] {from = "layer3_0_rprelu2_shift_y_bias"} : memref<64xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %1150[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_rprelu2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_rprelu2"}
    %1156 = memref.alloc() {name = "layer3_0_residual2"} : memref<1x64x8x8xf32>
    %1157 = hcl.create_op_handle "layer3_0_residual2"
    %1158 = hcl.create_loop_handle %1157, "nn"
    %1159 = hcl.create_loop_handle %1157, "cc"
    %1160 = hcl.create_loop_handle %1157, "hh"
    %1161 = hcl.create_loop_handle %1157, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1084[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_bn2"} : memref<1x64x8x8xf32>
            %1582 = affine.load %1150[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_rprelu2"} : memref<1x64x8x8xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %1156[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_residual2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_residual2"}
    %1162 = memref.alloc() {name = "layer3_0_bn4"} : memref<1x64x8x8xf32>
    %1163 = hcl.create_op_handle "layer3_0_bn4"
    %1164 = hcl.create_loop_handle %1163, "nn"
    %1165 = hcl.create_loop_handle %1163, "cc"
    %1166 = hcl.create_loop_handle %1163, "hh"
    %1167 = hcl.create_loop_handle %1163, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1156[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_residual2"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg128[%arg169] {from = "layer3_0_bn4_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg129[%arg169] {from = "layer3_0_bn4_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1162[%arg168, %arg169, %arg170, %arg171] {to = "layer3_0_bn4"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_0_bn4"}
    %1168 = memref.alloc() {name = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2>
    %1169 = hcl.create_op_handle "layer3_1_rsign1"
    %1170 = hcl.create_loop_handle %1169, "nn"
    %1171 = hcl.create_loop_handle %1169, "cc"
    %1172 = hcl.create_loop_handle %1169, "hh"
    %1173 = hcl.create_loop_handle %1169, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1162[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_bn4", moved} : memref<1x64x8x8xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %1168[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_rsign1"} : memref<1x64x8x8xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_rsign1"}
    %1174 = memref.alloc() {name = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1175 = hcl.create_op_handle "layer3_1_conv1_msb_truncate"
    %1176 = hcl.create_loop_handle %1175, "i"
    %1177 = hcl.create_loop_handle %1175, "c"
    %1178 = hcl.create_loop_handle %1175, "h"
    %1179 = hcl.create_loop_handle %1175, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_28"
            %1583 = hcl.create_loop_handle %1582, "loop_28"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1168[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_28", op_name = "stage_28"}
            %1584 = affine.load %1581[0] {from = "layer3_1_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1174[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_msb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv1_msb_truncate"}
    %1180 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1181 = hcl.create_op_handle "layer3_1_conv1_lsb_truncate"
    %1182 = hcl.create_loop_handle %1181, "i"
    %1183 = hcl.create_loop_handle %1181, "c"
    %1184 = hcl.create_loop_handle %1181, "h"
    %1185 = hcl.create_loop_handle %1181, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_29"
            %1583 = hcl.create_loop_handle %1582, "loop_29"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1168[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign1", unsigned} : memref<1x64x8x8xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_29", op_name = "stage_29"}
            %1584 = affine.load %1581[0] {from = "layer3_1_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1180[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_lsb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv1_lsb_truncate"}
    %1186 = memref.alloc() {name = "layer3_1_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
    %1187 = hcl.create_op_handle "layer3_1_conv1_out_msb_pad"
    %1188 = hcl.create_loop_handle %1187, "ii"
    %1189 = hcl.create_loop_handle %1187, "cc"
    %1190 = hcl.create_loop_handle %1187, "hh"
    %1191 = hcl.create_loop_handle %1187, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1174[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1186[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_msb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv1_out_msb_pad"}
    %1192 = memref.alloc() {name = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
    %1193 = hcl.create_op_handle "layer3_1_conv1_out_msb"
    %1194 = hcl.create_loop_handle %1193, "nn"
    %1195 = hcl.create_loop_handle %1193, "ff"
    %1196 = hcl.create_loop_handle %1193, "yy"
    %1197 = hcl.create_loop_handle %1193, "xx"
    %1198 = hcl.create_loop_handle %1193, "layer3_1_conv1_out_msb_rc"
    %1199 = hcl.create_loop_handle %1193, "layer3_1_conv1_out_msb_rx"
    %1200 = hcl.create_loop_handle %1193, "layer3_1_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1186[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_1_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_1_conv1_out_msb_rx", reduction}
              } {loop_name = "layer3_1_conv1_out_msb_ry", reduction}
            } {loop_name = "layer3_1_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1192[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_msb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv1_out_msb"}
    %1201 = memref.alloc() {name = "layer3_1_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
    %1202 = hcl.create_op_handle "layer3_1_conv1_out_lsb_pad"
    %1203 = hcl.create_loop_handle %1202, "ii"
    %1204 = hcl.create_loop_handle %1202, "cc"
    %1205 = hcl.create_loop_handle %1202, "hh"
    %1206 = hcl.create_loop_handle %1202, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1180[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1201[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_lsb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv1_out_lsb_pad"}
    %1207 = memref.alloc() {name = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %1208 = hcl.create_op_handle "layer3_1_conv1_out_lsb"
    %1209 = hcl.create_loop_handle %1208, "nn"
    %1210 = hcl.create_loop_handle %1208, "ff"
    %1211 = hcl.create_loop_handle %1208, "yy"
    %1212 = hcl.create_loop_handle %1208, "xx"
    %1213 = hcl.create_loop_handle %1208, "layer3_1_conv1_out_lsb_rc"
    %1214 = hcl.create_loop_handle %1208, "layer3_1_conv1_out_lsb_rx"
    %1215 = hcl.create_loop_handle %1208, "layer3_1_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1201[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_1_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg136[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv1_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_1_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer3_1_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer3_1_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1207[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv1_out_lsb"}
    %1216 = memref.alloc() {name = "layer3_1_conv1_pgconv"} : memref<1x64x8x8xf32>
    %1217 = hcl.create_op_handle "layer3_1_conv1_pgconv"
    %1218 = hcl.create_loop_handle %1217, "nn"
    %1219 = hcl.create_loop_handle %1217, "cc"
    %1220 = hcl.create_loop_handle %1217, "hh"
    %1221 = hcl.create_loop_handle %1217, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1192[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_msb", moved} : memref<1x64x8x8xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg137[%arg169] {from = "layer3_1_conv1_threshold", moved} : memref<64xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %1207[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %1216[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv1_pgconv"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_conv1_pgconv"}
    %1222 = memref.alloc() {name = "layer3_1_bn1"} : memref<1x64x8x8xf32>
    %1223 = hcl.create_op_handle "layer3_1_bn1"
    %1224 = hcl.create_loop_handle %1223, "nn"
    %1225 = hcl.create_loop_handle %1223, "cc"
    %1226 = hcl.create_loop_handle %1223, "hh"
    %1227 = hcl.create_loop_handle %1223, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1216[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_conv1_pgconv"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg138[%arg169] {from = "layer3_1_bn1_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg139[%arg169] {from = "layer3_1_bn1_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1222[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn1"}
    %1228 = memref.alloc() {name = "layer3_1_rprelu1"} : memref<1x64x8x8xf32>
    %1229 = hcl.create_op_handle "layer3_1_rprelu1"
    %1230 = hcl.create_loop_handle %1229, "nn"
    %1231 = hcl.create_loop_handle %1229, "cc"
    %1232 = hcl.create_loop_handle %1229, "hh"
    %1233 = hcl.create_loop_handle %1229, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1222[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_bn1", moved} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg130[%arg169] {from = "layer3_1_rprelu1_shift_x_bias", moved} : memref<64xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg132[%arg169] {from = "layer3_1_rprelu1_prelu_weight"} : memref<64xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg131[%arg169] {from = "layer3_1_rprelu1_shift_y_bias"} : memref<64xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %1228[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_rprelu1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_rprelu1"}
    %1234 = memref.alloc() {name = "layer3_1_residual1"} : memref<1x64x8x8xf32>
    %1235 = hcl.create_op_handle "layer3_1_residual1"
    %1236 = hcl.create_loop_handle %1235, "nn"
    %1237 = hcl.create_loop_handle %1235, "cc"
    %1238 = hcl.create_loop_handle %1235, "hh"
    %1239 = hcl.create_loop_handle %1235, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1228[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_rprelu1"} : memref<1x64x8x8xf32>
            %1582 = affine.load %1162[%arg168, %arg169, %arg170, %arg171] {from = "layer3_0_bn4"} : memref<1x64x8x8xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %1234[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_residual1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_residual1"}
    %1240 = memref.alloc() {name = "layer3_1_bn2"} : memref<1x64x8x8xf32>
    %1241 = hcl.create_op_handle "layer3_1_bn2"
    %1242 = hcl.create_loop_handle %1241, "nn"
    %1243 = hcl.create_loop_handle %1241, "cc"
    %1244 = hcl.create_loop_handle %1241, "hh"
    %1245 = hcl.create_loop_handle %1241, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1234[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_residual1"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg144[%arg169] {from = "layer3_1_bn3_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg145[%arg169] {from = "layer3_1_bn3_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1240[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn2"}
    %1246 = memref.alloc() {name = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2>
    %1247 = hcl.create_op_handle "layer3_1_rsign2"
    %1248 = hcl.create_loop_handle %1247, "nn"
    %1249 = hcl.create_loop_handle %1247, "cc"
    %1250 = hcl.create_loop_handle %1247, "hh"
    %1251 = hcl.create_loop_handle %1247, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1240[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_bn2", moved} : memref<1x64x8x8xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %1246[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_rsign2"} : memref<1x64x8x8xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_rsign2"}
    %1252 = memref.alloc() {name = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1253 = hcl.create_op_handle "layer3_1_conv2_msb_truncate"
    %1254 = hcl.create_loop_handle %1253, "i"
    %1255 = hcl.create_loop_handle %1253, "c"
    %1256 = hcl.create_loop_handle %1253, "h"
    %1257 = hcl.create_loop_handle %1253, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_30"
            %1583 = hcl.create_loop_handle %1582, "loop_30"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1246[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_30", op_name = "stage_30"}
            %1584 = affine.load %1581[0] {from = "layer3_1_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1252[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_msb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv2_msb_truncate"}
    %1258 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1259 = hcl.create_op_handle "layer3_1_conv2_lsb_truncate"
    %1260 = hcl.create_loop_handle %1259, "i"
    %1261 = hcl.create_loop_handle %1259, "c"
    %1262 = hcl.create_loop_handle %1259, "h"
    %1263 = hcl.create_loop_handle %1259, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_31"
            %1583 = hcl.create_loop_handle %1582, "loop_31"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1246[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_1_rsign2", unsigned} : memref<1x64x8x8xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_31", op_name = "stage_31"}
            %1584 = affine.load %1581[0] {from = "layer3_1_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1258[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_lsb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_1_conv2_lsb_truncate"}
    %1264 = memref.alloc() {name = "layer3_1_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
    %1265 = hcl.create_op_handle "layer3_1_conv2_out_msb_pad"
    %1266 = hcl.create_loop_handle %1265, "ii"
    %1267 = hcl.create_loop_handle %1265, "cc"
    %1268 = hcl.create_loop_handle %1265, "hh"
    %1269 = hcl.create_loop_handle %1265, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1252[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1264[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_msb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv2_out_msb_pad"}
    %1270 = memref.alloc() {name = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
    %1271 = hcl.create_op_handle "layer3_1_conv2_out_msb"
    %1272 = hcl.create_loop_handle %1271, "nn"
    %1273 = hcl.create_loop_handle %1271, "ff"
    %1274 = hcl.create_loop_handle %1271, "yy"
    %1275 = hcl.create_loop_handle %1271, "xx"
    %1276 = hcl.create_loop_handle %1271, "layer3_1_conv2_out_msb_rc"
    %1277 = hcl.create_loop_handle %1271, "layer3_1_conv2_out_msb_rx"
    %1278 = hcl.create_loop_handle %1271, "layer3_1_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1264[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_1_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_1_conv2_out_msb_rx", reduction}
              } {loop_name = "layer3_1_conv2_out_msb_ry", reduction}
            } {loop_name = "layer3_1_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1270[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_msb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv2_out_msb"}
    %1279 = memref.alloc() {name = "layer3_1_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
    %1280 = hcl.create_op_handle "layer3_1_conv2_out_lsb_pad"
    %1281 = hcl.create_loop_handle %1280, "ii"
    %1282 = hcl.create_loop_handle %1280, "cc"
    %1283 = hcl.create_loop_handle %1280, "hh"
    %1284 = hcl.create_loop_handle %1280, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1258[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_1_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1279[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_lsb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_1_conv2_out_lsb_pad"}
    %1285 = memref.alloc() {name = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %1286 = hcl.create_op_handle "layer3_1_conv2_out_lsb"
    %1287 = hcl.create_loop_handle %1286, "nn"
    %1288 = hcl.create_loop_handle %1286, "ff"
    %1289 = hcl.create_loop_handle %1286, "yy"
    %1290 = hcl.create_loop_handle %1286, "xx"
    %1291 = hcl.create_loop_handle %1286, "layer3_1_conv2_out_lsb_rc"
    %1292 = hcl.create_loop_handle %1286, "layer3_1_conv2_out_lsb_rx"
    %1293 = hcl.create_loop_handle %1286, "layer3_1_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1279[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_1_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg140[%arg169, %arg172, %arg173, %arg174] {from = "layer3_1_conv2_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_1_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer3_1_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer3_1_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1285[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_1_conv2_out_lsb"}
    %1294 = memref.alloc() {name = "layer3_1_conv2_pgconv"} : memref<1x64x8x8xf32>
    %1295 = hcl.create_op_handle "layer3_1_conv2_pgconv"
    %1296 = hcl.create_loop_handle %1295, "nn"
    %1297 = hcl.create_loop_handle %1295, "cc"
    %1298 = hcl.create_loop_handle %1295, "hh"
    %1299 = hcl.create_loop_handle %1295, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1270[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_msb", moved} : memref<1x64x8x8xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg141[%arg169] {from = "layer3_1_conv2_threshold", moved} : memref<64xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %1285[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %1294[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_conv2_pgconv"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_conv2_pgconv"}
    %1300 = memref.alloc() {name = "layer3_1_bn3"} : memref<1x64x8x8xf32>
    %1301 = hcl.create_op_handle "layer3_1_bn3"
    %1302 = hcl.create_loop_handle %1301, "nn"
    %1303 = hcl.create_loop_handle %1301, "cc"
    %1304 = hcl.create_loop_handle %1301, "hh"
    %1305 = hcl.create_loop_handle %1301, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1294[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_conv2_pgconv"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg142[%arg169] {from = "layer3_1_bn2_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg143[%arg169] {from = "layer3_1_bn2_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1300[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn3"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn3"}
    %1306 = memref.alloc() {name = "layer3_1_rprelu2"} : memref<1x64x8x8xf32>
    %1307 = hcl.create_op_handle "layer3_1_rprelu2"
    %1308 = hcl.create_loop_handle %1307, "nn"
    %1309 = hcl.create_loop_handle %1307, "cc"
    %1310 = hcl.create_loop_handle %1307, "hh"
    %1311 = hcl.create_loop_handle %1307, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1300[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_bn3", moved} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg133[%arg169] {from = "layer3_1_rprelu2_shift_x_bias", moved} : memref<64xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg135[%arg169] {from = "layer3_1_rprelu2_prelu_weight"} : memref<64xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg134[%arg169] {from = "layer3_1_rprelu2_shift_y_bias"} : memref<64xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %1306[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_rprelu2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_rprelu2"}
    %1312 = memref.alloc() {name = "layer3_1_residual2"} : memref<1x64x8x8xf32>
    %1313 = hcl.create_op_handle "layer3_1_residual2"
    %1314 = hcl.create_loop_handle %1313, "nn"
    %1315 = hcl.create_loop_handle %1313, "cc"
    %1316 = hcl.create_loop_handle %1313, "hh"
    %1317 = hcl.create_loop_handle %1313, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1240[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_bn2"} : memref<1x64x8x8xf32>
            %1582 = affine.load %1306[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_rprelu2"} : memref<1x64x8x8xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %1312[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_residual2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_residual2"}
    %1318 = memref.alloc() {name = "layer3_1_bn4"} : memref<1x64x8x8xf32>
    %1319 = hcl.create_op_handle "layer3_1_bn4"
    %1320 = hcl.create_loop_handle %1319, "nn"
    %1321 = hcl.create_loop_handle %1319, "cc"
    %1322 = hcl.create_loop_handle %1319, "hh"
    %1323 = hcl.create_loop_handle %1319, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1312[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_residual2"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg146[%arg169] {from = "layer3_1_bn4_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg147[%arg169] {from = "layer3_1_bn4_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1318[%arg168, %arg169, %arg170, %arg171] {to = "layer3_1_bn4"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_1_bn4"}
    %1324 = memref.alloc() {name = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2>
    %1325 = hcl.create_op_handle "layer3_2_rsign1"
    %1326 = hcl.create_loop_handle %1325, "nn"
    %1327 = hcl.create_loop_handle %1325, "cc"
    %1328 = hcl.create_loop_handle %1325, "hh"
    %1329 = hcl.create_loop_handle %1325, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1318[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_bn4", moved} : memref<1x64x8x8xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %1324[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_rsign1"} : memref<1x64x8x8xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_rsign1"}
    %1330 = memref.alloc() {name = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1331 = hcl.create_op_handle "layer3_2_conv1_msb_truncate"
    %1332 = hcl.create_loop_handle %1331, "i"
    %1333 = hcl.create_loop_handle %1331, "c"
    %1334 = hcl.create_loop_handle %1331, "h"
    %1335 = hcl.create_loop_handle %1331, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_32"
            %1583 = hcl.create_loop_handle %1582, "loop_32"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1324[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_32", op_name = "stage_32"}
            %1584 = affine.load %1581[0] {from = "layer3_2_conv1_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1330[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_msb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv1_msb_truncate"}
    %1336 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1337 = hcl.create_op_handle "layer3_2_conv1_lsb_truncate"
    %1338 = hcl.create_loop_handle %1337, "i"
    %1339 = hcl.create_loop_handle %1337, "c"
    %1340 = hcl.create_loop_handle %1337, "h"
    %1341 = hcl.create_loop_handle %1337, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_33"
            %1583 = hcl.create_loop_handle %1582, "loop_33"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1324[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign1", unsigned} : memref<1x64x8x8xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_33", op_name = "stage_33"}
            %1584 = affine.load %1581[0] {from = "layer3_2_conv1_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1336[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_lsb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv1_lsb_truncate"}
    %1342 = memref.alloc() {name = "layer3_2_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
    %1343 = hcl.create_op_handle "layer3_2_conv1_out_msb_pad"
    %1344 = hcl.create_loop_handle %1343, "ii"
    %1345 = hcl.create_loop_handle %1343, "cc"
    %1346 = hcl.create_loop_handle %1343, "hh"
    %1347 = hcl.create_loop_handle %1343, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1330[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_msb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1342[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_msb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv1_out_msb_pad"}
    %1348 = memref.alloc() {name = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
    %1349 = hcl.create_op_handle "layer3_2_conv1_out_msb"
    %1350 = hcl.create_loop_handle %1349, "nn"
    %1351 = hcl.create_loop_handle %1349, "ff"
    %1352 = hcl.create_loop_handle %1349, "yy"
    %1353 = hcl.create_loop_handle %1349, "xx"
    %1354 = hcl.create_loop_handle %1349, "layer3_2_conv1_out_msb_rc"
    %1355 = hcl.create_loop_handle %1349, "layer3_2_conv1_out_msb_rx"
    %1356 = hcl.create_loop_handle %1349, "layer3_2_conv1_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1342[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_2_conv1_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_2_conv1_out_msb_rx", reduction}
              } {loop_name = "layer3_2_conv1_out_msb_ry", reduction}
            } {loop_name = "layer3_2_conv1_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1348[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_msb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv1_out_msb"}
    %1357 = memref.alloc() {name = "layer3_2_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
    %1358 = hcl.create_op_handle "layer3_2_conv1_out_lsb_pad"
    %1359 = hcl.create_loop_handle %1358, "ii"
    %1360 = hcl.create_loop_handle %1358, "cc"
    %1361 = hcl.create_loop_handle %1358, "hh"
    %1362 = hcl.create_loop_handle %1358, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1336[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv1_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1357[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_lsb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv1_out_lsb_pad"}
    %1363 = memref.alloc() {name = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
    %1364 = hcl.create_op_handle "layer3_2_conv1_out_lsb"
    %1365 = hcl.create_loop_handle %1364, "nn"
    %1366 = hcl.create_loop_handle %1364, "ff"
    %1367 = hcl.create_loop_handle %1364, "yy"
    %1368 = hcl.create_loop_handle %1364, "xx"
    %1369 = hcl.create_loop_handle %1364, "layer3_2_conv1_out_lsb_rc"
    %1370 = hcl.create_loop_handle %1364, "layer3_2_conv1_out_lsb_rx"
    %1371 = hcl.create_loop_handle %1364, "layer3_2_conv1_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1357[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_2_conv1_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg154[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv1_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_2_conv1_out_lsb_rx", reduction}
              } {loop_name = "layer3_2_conv1_out_lsb_ry", reduction}
            } {loop_name = "layer3_2_conv1_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1363[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv1_out_lsb"}
    %1372 = memref.alloc() {name = "layer3_2_conv1_pgconv"} : memref<1x64x8x8xf32>
    %1373 = hcl.create_op_handle "layer3_2_conv1_pgconv"
    %1374 = hcl.create_loop_handle %1373, "nn"
    %1375 = hcl.create_loop_handle %1373, "cc"
    %1376 = hcl.create_loop_handle %1373, "hh"
    %1377 = hcl.create_loop_handle %1373, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1348[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_msb", moved} : memref<1x64x8x8xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg155[%arg169] {from = "layer3_2_conv1_threshold", moved} : memref<64xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %1363[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_out_lsb"} : memref<1x64x8x8xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %1372[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv1_pgconv"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_conv1_pgconv"}
    %1378 = memref.alloc() {name = "layer3_2_bn1"} : memref<1x64x8x8xf32>
    %1379 = hcl.create_op_handle "layer3_2_bn1"
    %1380 = hcl.create_loop_handle %1379, "nn"
    %1381 = hcl.create_loop_handle %1379, "cc"
    %1382 = hcl.create_loop_handle %1379, "hh"
    %1383 = hcl.create_loop_handle %1379, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1372[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_conv1_pgconv"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg156[%arg169] {from = "layer3_2_bn1_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg157[%arg169] {from = "layer3_2_bn1_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1378[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn1"}
    %1384 = memref.alloc() {name = "layer3_2_rprelu1"} : memref<1x64x8x8xf32>
    %1385 = hcl.create_op_handle "layer3_2_rprelu1"
    %1386 = hcl.create_loop_handle %1385, "nn"
    %1387 = hcl.create_loop_handle %1385, "cc"
    %1388 = hcl.create_loop_handle %1385, "hh"
    %1389 = hcl.create_loop_handle %1385, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1378[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_bn1", moved} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg148[%arg169] {from = "layer3_2_rprelu1_shift_x_bias", moved} : memref<64xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg150[%arg169] {from = "layer3_2_rprelu1_prelu_weight"} : memref<64xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg149[%arg169] {from = "layer3_2_rprelu1_shift_y_bias"} : memref<64xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %1384[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_rprelu1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_rprelu1"}
    %1390 = memref.alloc() {name = "layer3_2_residual1"} : memref<1x64x8x8xf32>
    %1391 = hcl.create_op_handle "layer3_2_residual1"
    %1392 = hcl.create_loop_handle %1391, "nn"
    %1393 = hcl.create_loop_handle %1391, "cc"
    %1394 = hcl.create_loop_handle %1391, "hh"
    %1395 = hcl.create_loop_handle %1391, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1384[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_rprelu1"} : memref<1x64x8x8xf32>
            %1582 = affine.load %1318[%arg168, %arg169, %arg170, %arg171] {from = "layer3_1_bn4"} : memref<1x64x8x8xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %1390[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_residual1"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_residual1"}
    %1396 = memref.alloc() {name = "layer3_2_bn2"} : memref<1x64x8x8xf32>
    %1397 = hcl.create_op_handle "layer3_2_bn2"
    %1398 = hcl.create_loop_handle %1397, "nn"
    %1399 = hcl.create_loop_handle %1397, "cc"
    %1400 = hcl.create_loop_handle %1397, "hh"
    %1401 = hcl.create_loop_handle %1397, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1390[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_residual1"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg162[%arg169] {from = "layer3_2_bn3_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg163[%arg169] {from = "layer3_2_bn3_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1396[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn2"}
    %1402 = memref.alloc() {name = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2>
    %1403 = hcl.create_op_handle "layer3_2_rsign2"
    %1404 = hcl.create_loop_handle %1403, "nn"
    %1405 = hcl.create_loop_handle %1403, "cc"
    %1406 = hcl.create_loop_handle %1403, "hh"
    %1407 = hcl.create_loop_handle %1403, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1396[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_bn2", moved} : memref<1x64x8x8xf32>
            %cst = arith.constant {moved} 0.666666686 : f32
            %1582 = arith.cmpf ogt, %1581, %cst {moved} : f32
            %1583 = scf.if %1582 -> (i32) {
              %c3_i32 = arith.constant 3 : i32
              scf.yield %c3_i32 : i32
            } else {
              %c0_i32 = arith.constant {moved} 0 : i32
              %1585 = arith.sitofp %c0_i32 {moved} : i32 to f32
              %1586 = arith.cmpf oge, %1581, %1585 {moved} : f32
              %cst_0 = arith.constant {moved} 0.666666686 : f32
              %1587 = arith.cmpf ole, %1581, %cst_0 {moved} : f32
              %1588 = arith.andi %1586, %1587 {moved} : i1
              %1589 = scf.if %1588 -> (i32) {
                %c2_i32 = arith.constant 2 : i32
                scf.yield %c2_i32 : i32
              } else {
                %c0_i32_1 = arith.constant {moved} 0 : i32
                %1590 = arith.sitofp %c0_i32_1 {moved} : i32 to f32
                %1591 = arith.cmpf olt, %1581, %1590 {moved} : f32
                %cst_2 = arith.constant {moved} -0.666666686 : f32
                %1592 = arith.cmpf oge, %1581, %cst_2 {moved} : f32
                %1593 = arith.andi %1591, %1592 {moved} : i1
                %1594 = scf.if %1593 -> (i32) {
                  %c1_i32 = arith.constant 1 : i32
                  scf.yield %c1_i32 : i32
                } else {
                  %c0_i32_3 = arith.constant 0 : i32
                  scf.yield %c0_i32_3 : i32
                }
                scf.yield %1594 : i32
              }
              scf.yield %1589 : i32
            }
            %1584 = arith.trunci %1583 : i32 to i2
            affine.store %1584, %1402[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_rsign2"} : memref<1x64x8x8xi2>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_rsign2"}
    %1408 = memref.alloc() {name = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1409 = hcl.create_op_handle "layer3_2_conv2_msb_truncate"
    %1410 = hcl.create_loop_handle %1409, "i"
    %1411 = hcl.create_loop_handle %1409, "c"
    %1412 = hcl.create_loop_handle %1409, "h"
    %1413 = hcl.create_loop_handle %1409, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_34"
            %1583 = hcl.create_loop_handle %1582, "loop_34"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1402[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2>
              %c1 = arith.constant 1 : index
              %1586 = hcl.get_bit(%1585 : i2, %c1) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_34", op_name = "stage_34"}
            %1584 = affine.load %1581[0] {from = "layer3_2_conv2_msb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1408[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_msb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv2_msb_truncate"}
    %1414 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
    %1415 = hcl.create_op_handle "layer3_2_conv2_lsb_truncate"
    %1416 = hcl.create_loop_handle %1415, "i"
    %1417 = hcl.create_loop_handle %1415, "c"
    %1418 = hcl.create_loop_handle %1415, "h"
    %1419 = hcl.create_loop_handle %1415, "w"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant {unsigned} 0 : i16
            affine.store %c0_i16, %1581[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            %1582 = hcl.create_op_handle "stage_35"
            %1583 = hcl.create_loop_handle %1582, "loop_35"
            affine.for %arg172 = 0 to 16 {
              %1585 = affine.load %1402[%arg168, %arg169 * 16 + %arg172, %arg170, %arg171] {from = "layer3_2_rsign2", unsigned} : memref<1x64x8x8xi2>
              %c0_0 = arith.constant 0 : index
              %1586 = hcl.get_bit(%1585 : i2, %c0_0) -> i1
              %1587 = affine.load %1581[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
              hcl.set_bit(%1587 : i16, %arg172, %1586 : i1)
              affine.store %1587, %1581[0] {to = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            } {loop_name = "loop_35", op_name = "stage_35"}
            %1584 = affine.load %1581[0] {from = "layer3_2_conv2_lsb_truncate_pack", unsigned} : memref<1xi16>
            affine.store %1584, %1414[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_lsb_truncate"} : memref<1x4x8x8xi16>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "layer3_2_conv2_lsb_truncate"}
    %1420 = memref.alloc() {name = "layer3_2_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
    %1421 = hcl.create_op_handle "layer3_2_conv2_out_msb_pad"
    %1422 = hcl.create_loop_handle %1421, "ii"
    %1423 = hcl.create_loop_handle %1421, "cc"
    %1424 = hcl.create_loop_handle %1421, "hh"
    %1425 = hcl.create_loop_handle %1421, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1408[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_msb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1420[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_msb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv2_out_msb_pad"}
    %1426 = memref.alloc() {name = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
    %1427 = hcl.create_op_handle "layer3_2_conv2_out_msb"
    %1428 = hcl.create_loop_handle %1427, "nn"
    %1429 = hcl.create_loop_handle %1427, "ff"
    %1430 = hcl.create_loop_handle %1427, "yy"
    %1431 = hcl.create_loop_handle %1427, "xx"
    %1432 = hcl.create_loop_handle %1427, "layer3_2_conv2_out_msb_rc"
    %1433 = hcl.create_loop_handle %1427, "layer3_2_conv2_out_msb_rx"
    %1434 = hcl.create_loop_handle %1427, "layer3_2_conv2_out_msb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1420[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_2_conv2_out_msb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_2_conv2_out_msb_rx", reduction}
              } {loop_name = "layer3_2_conv2_out_msb_ry", reduction}
            } {loop_name = "layer3_2_conv2_out_msb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1426[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_msb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv2_out_msb"}
    %1435 = memref.alloc() {name = "layer3_2_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
    %1436 = hcl.create_op_handle "layer3_2_conv2_out_lsb_pad"
    %1437 = hcl.create_loop_handle %1436, "ii"
    %1438 = hcl.create_loop_handle %1436, "cc"
    %1439 = hcl.create_loop_handle %1436, "hh"
    %1440 = hcl.create_loop_handle %1436, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 4 {
        affine.for %arg170 = 0 to 10 {
          affine.for %arg171 = 0 to 10 {
            %1581 = affine.if #set4(%arg171, %arg170) -> i16 {
              %1582 = affine.load %1414[%arg168, %arg169, %arg170 - 1, %arg171 - 1] {from = "layer3_2_conv2_lsb_truncate", unsigned} : memref<1x4x8x8xi16>
              affine.yield %1582 : i16
            } else {
              %c0_i32 = arith.constant 0 : i32
              %1582 = arith.trunci %c0_i32 {unsigned} : i32 to i16
              affine.yield %1582 : i16
            } {unsigned}
            affine.store %1581, %1435[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_lsb_pad"} : memref<1x4x10x10xi16>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "ii", op_name = "layer3_2_conv2_out_lsb_pad"}
    %1441 = memref.alloc() {name = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
    %1442 = hcl.create_op_handle "layer3_2_conv2_out_lsb"
    %1443 = hcl.create_loop_handle %1442, "nn"
    %1444 = hcl.create_loop_handle %1442, "ff"
    %1445 = hcl.create_loop_handle %1442, "yy"
    %1446 = hcl.create_loop_handle %1442, "xx"
    %1447 = hcl.create_loop_handle %1442, "layer3_2_conv2_out_lsb_rc"
    %1448 = hcl.create_loop_handle %1442, "layer3_2_conv2_out_lsb_rx"
    %1449 = hcl.create_loop_handle %1442, "layer3_2_conv2_out_lsb_ry"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xi16>
            %c0 = arith.constant 0 : index
            %c0_i16 = arith.constant 0 : i16
            affine.store %c0_i16, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
            affine.for %arg172 = 0 to 4 {
              affine.for %arg173 = 0 to 3 {
                affine.for %arg174 = 0 to 3 {
                  %1583 = affine.if #set5(%arg171, %arg174, %arg170, %arg173) -> i16 {
                    %c16_i32 = arith.constant 16 : i32
                    %1586 = arith.extsi %c16_i32 : i32 to i128
                    %1587 = affine.load %1435[%arg168, %arg172, %arg170 + %arg173, %arg171 + %arg174] {from = "layer3_2_conv2_out_lsb_pad", unsigned} : memref<1x4x10x10xi16>
                    %1588 = affine.load %arg158[%arg169, %arg172, %arg173, %arg174] {from = "layer3_2_conv2_weight", unsigned} : memref<64x4x3x3xi16>
                    %1589 = arith.xori %1587, %1588 {unsigned} : i16
                    %c1_i32 = arith.constant 1 : i32
                    %1590 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                    %1591 = arith.shrui %1589, %1590 {unsigned} : i16
                    %c6148914691236517205_i64 = arith.constant 6148914691236517205 : i64
                    %1592 = arith.trunci %c6148914691236517205_i64 {unsigned} : i64 to i16
                    %1593 = arith.andi %1591, %1592 {unsigned} : i16
                    %1594 = arith.subi %1589, %1593 {unsigned} : i16
                    %c3689348814741910323_i64 = arith.constant 3689348814741910323 : i64
                    %1595 = arith.trunci %c3689348814741910323_i64 {unsigned} : i64 to i16
                    %1596 = arith.andi %1594, %1595 {unsigned} : i16
                    %c2_i32 = arith.constant 2 : i32
                    %1597 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                    %1598 = arith.shrui %1594, %1597 {unsigned} : i16
                    %c3689348814741910323_i64_1 = arith.constant 3689348814741910323 : i64
                    %1599 = arith.trunci %c3689348814741910323_i64_1 {unsigned} : i64 to i16
                    %1600 = arith.andi %1598, %1599 {unsigned} : i16
                    %1601 = arith.addi %1596, %1600 {unsigned} : i16
                    %c4_i32 = arith.constant 4 : i32
                    %1602 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    %1603 = arith.shrui %1601, %1602 {unsigned} : i16
                    %1604 = arith.addi %1601, %1603 {unsigned} : i16
                    %c1085102592571150095_i64 = arith.constant 1085102592571150095 : i64
                    %1605 = arith.trunci %c1085102592571150095_i64 {unsigned} : i64 to i16
                    %1606 = arith.andi %1604, %1605 {unsigned} : i16
                    %1607 = arith.extui %1606 : i16 to i64
                    %c72340172838076673_i64 = arith.constant 72340172838076673 : i64
                    %1608 = arith.muli %1607, %c72340172838076673_i64 : i64
                    %c56_i32 = arith.constant 56 : i32
                    %1609 = arith.extsi %c56_i32 : i32 to i64
                    %1610 = arith.shrui %1608, %1609 : i64
                    %1611 = arith.extsi %1610 : i64 to i128
                    %c1_i32_2 = arith.constant 1 : i32
                    %1612 = arith.extsi %c1_i32_2 : i32 to i64
                    %1613 = arith.extsi %1612 : i64 to i128
                    %1614 = arith.shli %1611, %1613 : i128
                    %1615 = arith.subi %1586, %1614 : i128
                    %1616 = arith.trunci %1615 : i128 to i16
                    affine.yield %1616 : i16
                  } else {
                    %c0_i32 = arith.constant 0 : i32
                    %1586 = arith.trunci %c0_i32 : i32 to i16
                    affine.yield %1586 : i16
                  }
                  %1584 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xi16>
                  %1585 = arith.addi %1583, %1584 : i16
                  affine.store %1585, %1581[%c0] {to = "sum_rv"} : memref<1xi16>
                } {loop_name = "layer3_2_conv2_out_lsb_rx", reduction}
              } {loop_name = "layer3_2_conv2_out_lsb_ry", reduction}
            } {loop_name = "layer3_2_conv2_out_lsb_rc", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xi16>
            affine.store %1582, %1441[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
          } {loop_name = "xx"}
        } {loop_name = "yy"}
      } {loop_name = "ff"}
    } {loop_name = "nn", op_name = "layer3_2_conv2_out_lsb"}
    %1450 = memref.alloc() {name = "layer3_2_conv2_pgconv"} : memref<1x64x8x8xf32>
    %1451 = hcl.create_op_handle "layer3_2_conv2_pgconv"
    %1452 = hcl.create_loop_handle %1451, "nn"
    %1453 = hcl.create_loop_handle %1451, "cc"
    %1454 = hcl.create_loop_handle %1451, "hh"
    %1455 = hcl.create_loop_handle %1451, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1426[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_msb", moved} : memref<1x64x8x8xi16>
            %1582 = arith.sitofp %1581 {moved} : i16 to f32
            %cst = arith.constant {moved} 2.000000e+00 : f32
            %1583 = arith.mulf %1582, %cst {moved} : f32
            %cst_0 = arith.constant {moved} 3.000000e+00 : f32
            %1584 = arith.divf %1583, %cst_0 {moved} : f32
            %1585 = affine.load %arg159[%arg169] {from = "layer3_2_conv2_threshold", moved} : memref<64xf32>
            %1586 = arith.cmpf ogt, %1584, %1585 {moved} : f32
            %1587 = scf.if %1586 -> (f32) {
              %1588 = affine.load %1441[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_out_lsb"} : memref<1x64x8x8xi16>
              %1589 = arith.sitofp %1588 : i16 to f32
              %cst_1 = arith.constant 3.000000e+00 : f32
              %1590 = arith.divf %1589, %cst_1 : f32
              %1591 = arith.addf %1590, %1584 : f32
              scf.yield %1591 : f32
            } else {
              scf.yield %1584 : f32
            }
            affine.store %1587, %1450[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_conv2_pgconv"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_conv2_pgconv"}
    %1456 = memref.alloc() {name = "layer3_2_bn3"} : memref<1x64x8x8xf32>
    %1457 = hcl.create_op_handle "layer3_2_bn3"
    %1458 = hcl.create_loop_handle %1457, "nn"
    %1459 = hcl.create_loop_handle %1457, "cc"
    %1460 = hcl.create_loop_handle %1457, "hh"
    %1461 = hcl.create_loop_handle %1457, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1450[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_conv2_pgconv"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg160[%arg169] {from = "layer3_2_bn2_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg161[%arg169] {from = "layer3_2_bn2_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1456[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn3"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn3"}
    %1462 = memref.alloc() {name = "layer3_2_rprelu2"} : memref<1x64x8x8xf32>
    %1463 = hcl.create_op_handle "layer3_2_rprelu2"
    %1464 = hcl.create_loop_handle %1463, "nn"
    %1465 = hcl.create_loop_handle %1463, "cc"
    %1466 = hcl.create_loop_handle %1463, "hh"
    %1467 = hcl.create_loop_handle %1463, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1456[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_bn3", moved} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg151[%arg169] {from = "layer3_2_rprelu2_shift_x_bias", moved} : memref<64xf32>
            %1583 = arith.addf %1581, %1582 {moved} : f32
            %c0_i32 = arith.constant {moved} 0 : i32
            %1584 = arith.sitofp %c0_i32 {moved} : i32 to f32
            %1585 = arith.cmpf ogt, %1583, %1584 {moved} : f32
            %1586 = scf.if %1585 -> (f32) {
              scf.yield %1583 : f32
            } else {
              %1589 = affine.load %arg153[%arg169] {from = "layer3_2_rprelu2_prelu_weight"} : memref<64xf32>
              %1590 = arith.mulf %1589, %1583 : f32
              scf.yield %1590 : f32
            }
            %1587 = affine.load %arg152[%arg169] {from = "layer3_2_rprelu2_shift_y_bias"} : memref<64xf32>
            %1588 = arith.addf %1586, %1587 : f32
            affine.store %1588, %1462[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_rprelu2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_rprelu2"}
    %1468 = memref.alloc() {name = "layer3_2_residual2"} : memref<1x64x8x8xf32>
    %1469 = hcl.create_op_handle "layer3_2_residual2"
    %1470 = hcl.create_loop_handle %1469, "nn"
    %1471 = hcl.create_loop_handle %1469, "cc"
    %1472 = hcl.create_loop_handle %1469, "hh"
    %1473 = hcl.create_loop_handle %1469, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1396[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_bn2"} : memref<1x64x8x8xf32>
            %1582 = affine.load %1462[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_rprelu2"} : memref<1x64x8x8xf32>
            %1583 = arith.addf %1581, %1582 : f32
            affine.store %1583, %1468[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_residual2"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_residual2"}
    %1474 = memref.alloc() {name = "layer3_2_bn4"} : memref<1x64x8x8xf32>
    %1475 = hcl.create_op_handle "layer3_2_bn4"
    %1476 = hcl.create_loop_handle %1475, "nn"
    %1477 = hcl.create_loop_handle %1475, "cc"
    %1478 = hcl.create_loop_handle %1475, "hh"
    %1479 = hcl.create_loop_handle %1475, "ww"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 8 {
          affine.for %arg171 = 0 to 8 {
            %1581 = affine.load %1468[%arg168, %arg169, %arg170, %arg171] {from = "layer3_2_residual2"} : memref<1x64x8x8xf32>
            %1582 = affine.load %arg164[%arg169] {from = "layer3_2_bn4_weight"} : memref<64xf32>
            %1583 = arith.mulf %1581, %1582 : f32
            %1584 = affine.load %arg165[%arg169] {from = "layer3_2_bn4_bias"} : memref<64xf32>
            %1585 = arith.addf %1583, %1584 : f32
            affine.store %1585, %1474[%arg168, %arg169, %arg170, %arg171] {to = "layer3_2_bn4"} : memref<1x64x8x8xf32>
          } {loop_name = "ww"}
        } {loop_name = "hh"}
      } {loop_name = "cc"}
    } {loop_name = "nn", op_name = "layer3_2_bn4"}
    %1480 = memref.alloc() {name = "avgpool"} : memref<1x64x1x1xf32>
    %1481 = hcl.create_op_handle "avgpool"
    %1482 = hcl.create_loop_handle %1481, "i"
    %1483 = hcl.create_loop_handle %1481, "c"
    %1484 = hcl.create_loop_handle %1481, "h"
    %1485 = hcl.create_loop_handle %1481, "w"
    %1486 = hcl.create_loop_handle %1481, "rx_4"
    %1487 = hcl.create_loop_handle %1481, "rx_5"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        affine.for %arg170 = 0 to 1 {
          affine.for %arg171 = 0 to 1 {
            %1581 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg172 = 0 to 8 {
              affine.for %arg173 = 0 to 8 {
                %1585 = affine.load %1474[%arg168, %arg169, %arg170 * 8 + %arg172, %arg171 * 8 + %arg173] {from = "layer3_2_bn4"} : memref<1x64x8x8xf32>
                %1586 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xf32>
                %1587 = arith.addf %1585, %1586 : f32
                affine.store %1587, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_5", reduction}
            } {loop_name = "rx_4", reduction}
            %c0_0 = arith.constant 0 : index
            %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xf32>
            %c64_i32 = arith.constant 64 : i32
            %1583 = arith.sitofp %c64_i32 : i32 to f32
            %1584 = arith.divf %1582, %1583 : f32
            affine.store %1584, %1480[%arg168, %arg169, %arg170, %arg171] {to = "avgpool"} : memref<1x64x1x1xf32>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "i", op_name = "avgpool"}
    %1488 = memref.alloc() {name = "flatten"} : memref<1x64xf32>
    %1489 = hcl.create_op_handle "flatten"
    %1490 = hcl.create_loop_handle %1489, "i"
    %1491 = hcl.create_loop_handle %1489, "j"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 64 {
        %1581 = affine.load %1480[%arg168, %arg169 mod 64, %arg169 floordiv 64, 0] {from = "avgpool"} : memref<1x64x1x1xf32>
        affine.store %1581, %1488[%arg168, %arg169] {to = "flatten"} : memref<1x64xf32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "flatten"}
    %1492 = memref.alloc() {name = "fc_matmul"} : memref<1x10xf32>
    %1493 = hcl.create_op_handle "fc_matmul"
    %1494 = hcl.create_loop_handle %1493, "i"
    %1495 = hcl.create_loop_handle %1493, "j"
    %1496 = hcl.create_loop_handle %1493, "rx_6"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 10 {
        %1581 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
        %c0 = arith.constant 0 : index
        %cst = arith.constant 0.000000e+00 : f32
        affine.store %cst, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
        affine.for %arg170 = 0 to 64 {
          %1583 = affine.load %1488[%arg168, %arg170] {from = "flatten"} : memref<1x64xf32>
          %1584 = affine.load %arg166[%arg169, %arg170] {from = "linear_weight"} : memref<10x64xf32>
          %1585 = arith.mulf %1583, %1584 : f32
          %1586 = affine.load %1581[%c0] {from = "sum_rv"} : memref<1xf32>
          %1587 = arith.addf %1585, %1586 : f32
          affine.store %1587, %1581[%c0] {to = "sum_rv"} : memref<1xf32>
        } {loop_name = "rx_6", reduction}
        %c0_0 = arith.constant 0 : index
        %1582 = affine.load %1581[%c0_0] {from = "sum_rv"} : memref<1xf32>
        affine.store %1582, %1492[%arg168, %arg169] {to = "fc_matmul"} : memref<1x10xf32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "fc_matmul"}
    %1497 = memref.alloc() {name = "fc"} : memref<1x10xf32>
    %1498 = hcl.create_op_handle "fc"
    %1499 = hcl.create_loop_handle %1498, "i"
    %1500 = hcl.create_loop_handle %1498, "j"
    affine.for %arg168 = 0 to 1 {
      affine.for %arg169 = 0 to 10 {
        %1581 = affine.load %1492[%arg168, %arg169] {from = "fc_matmul"} : memref<1x10xf32>
        %1582 = affine.load %arg167[%arg169] {from = "linear_bias"} : memref<10xf32>
        %1583 = arith.addf %1581, %1582 : f32
        affine.store %1583, %1497[%arg168, %arg169] {to = "fc"} : memref<1x10xf32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "fc"}
    hcl.pipeline(%4, 1)
    hcl.partition(%0 : memref<1x6x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%10, 1)
    hcl.partition(%6 : memref<1x6x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%17, 1)
    hcl.pipeline(%23, 1)
    %1501 = hcl.reuse_at(%12 : memref<1x6x34x34xi16>, %22) -> memref<1xf32>
    %1502 = hcl.reuse_at(%1501 : memref<1xf32>, %23) -> memref<1xf32>
    hcl.partition(%1501 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1502 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1502 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%12 : memref<1x6x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg1 : memref<16x6x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg1 : memref<16x6x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg1 : memref<16x6x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%32, 1)
    hcl.pipeline(%38, 1)
    %1503 = hcl.reuse_at(%27 : memref<1x6x34x34xi16>, %37) -> memref<1xf32>
    %1504 = hcl.reuse_at(%1503 : memref<1xf32>, %38) -> memref<1xf32>
    hcl.partition(%1503 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1504 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1504 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%27 : memref<1x6x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg1 : memref<16x6x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg1 : memref<16x6x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg1 : memref<16x6x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%46, 1)
    hcl.partition(%arg2 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg3 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%42 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%52, 1)
    hcl.partition(%48 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%58, 1)
    hcl.partition(%54 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%64, 1)
    hcl.partition(%60 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%71, 1)
    hcl.pipeline(%77, 1)
    %1505 = hcl.reuse_at(%66 : memref<1x1x34x34xi16>, %76) -> memref<1xf32>
    %1506 = hcl.reuse_at(%1505 : memref<1xf32>, %77) -> memref<1xf32>
    hcl.partition(%1505 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1506 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1506 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%66 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg10 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg10 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg10 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%86, 1)
    hcl.pipeline(%92, 1)
    %1507 = hcl.reuse_at(%81 : memref<1x1x34x34xi16>, %91) -> memref<1xf32>
    %1508 = hcl.reuse_at(%1507 : memref<1xf32>, %92) -> memref<1xf32>
    hcl.partition(%1507 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1508 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1508 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%81 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg10 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg10 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg10 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%100, 1)
    hcl.partition(%96 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg11 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%106, 1)
    hcl.partition(%arg12 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg13 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%102 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%112, 1)
    hcl.partition(%108 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg4 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg5 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg6 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%118, 1)
    hcl.partition(%114 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%124, 1)
    hcl.partition(%arg16 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg17 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%120 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%130, 1)
    hcl.partition(%126 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%136, 1)
    hcl.partition(%132 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%142, 1)
    hcl.partition(%138 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%149, 1)
    hcl.pipeline(%155, 1)
    %1509 = hcl.reuse_at(%144 : memref<1x1x34x34xi16>, %154) -> memref<1xf32>
    %1510 = hcl.reuse_at(%1509 : memref<1xf32>, %155) -> memref<1xf32>
    hcl.partition(%1509 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1510 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1510 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%144 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg14 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg14 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg14 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%164, 1)
    hcl.pipeline(%170, 1)
    %1511 = hcl.reuse_at(%159 : memref<1x1x34x34xi16>, %169) -> memref<1xf32>
    %1512 = hcl.reuse_at(%1511 : memref<1xf32>, %170) -> memref<1xf32>
    hcl.partition(%1511 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1512 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1512 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%159 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg14 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg14 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg14 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%178, 1)
    hcl.partition(%174 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg15 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%184, 1)
    hcl.partition(%arg18 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg19 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%180 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%190, 1)
    hcl.partition(%186 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg7 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg8 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg9 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%196, 1)
    hcl.partition(%192 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%202, 1)
    hcl.partition(%arg20 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg21 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%198 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%208, 1)
    hcl.partition(%204 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%214, 1)
    hcl.partition(%210 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%220, 1)
    hcl.partition(%216 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%227, 1)
    hcl.pipeline(%233, 1)
    %1513 = hcl.reuse_at(%222 : memref<1x1x34x34xi16>, %232) -> memref<1xf32>
    %1514 = hcl.reuse_at(%1513 : memref<1xf32>, %233) -> memref<1xf32>
    hcl.partition(%1513 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1514 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1514 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%222 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg28 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg28 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg28 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%242, 1)
    hcl.pipeline(%248, 1)
    %1515 = hcl.reuse_at(%237 : memref<1x1x34x34xi16>, %247) -> memref<1xf32>
    %1516 = hcl.reuse_at(%1515 : memref<1xf32>, %248) -> memref<1xf32>
    hcl.partition(%1515 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1516 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1516 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%237 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg28 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg28 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg28 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%256, 1)
    hcl.partition(%252 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg29 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%262, 1)
    hcl.partition(%arg30 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg31 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%258 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%268, 1)
    hcl.partition(%264 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg22 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg23 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg24 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%274, 1)
    hcl.partition(%270 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%280, 1)
    hcl.partition(%arg34 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg35 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%276 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%286, 1)
    hcl.partition(%282 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%292, 1)
    hcl.partition(%288 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%298, 1)
    hcl.partition(%294 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%305, 1)
    hcl.pipeline(%311, 1)
    %1517 = hcl.reuse_at(%300 : memref<1x1x34x34xi16>, %310) -> memref<1xf32>
    %1518 = hcl.reuse_at(%1517 : memref<1xf32>, %311) -> memref<1xf32>
    hcl.partition(%1517 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1518 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1518 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%300 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg32 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg32 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg32 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%320, 1)
    hcl.pipeline(%326, 1)
    %1519 = hcl.reuse_at(%315 : memref<1x1x34x34xi16>, %325) -> memref<1xf32>
    %1520 = hcl.reuse_at(%1519 : memref<1xf32>, %326) -> memref<1xf32>
    hcl.partition(%1519 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1520 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1520 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%315 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg32 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg32 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg32 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%334, 1)
    hcl.partition(%330 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg33 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%340, 1)
    hcl.partition(%arg36 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg37 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%336 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%346, 1)
    hcl.partition(%342 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg25 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg26 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg27 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%352, 1)
    hcl.partition(%348 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%358, 1)
    hcl.partition(%arg38 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg39 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%354 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%364, 1)
    hcl.partition(%360 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%370, 1)
    hcl.partition(%366 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%376, 1)
    hcl.partition(%372 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%383, 1)
    hcl.pipeline(%389, 1)
    %1521 = hcl.reuse_at(%378 : memref<1x1x34x34xi16>, %388) -> memref<1xf32>
    %1522 = hcl.reuse_at(%1521 : memref<1xf32>, %389) -> memref<1xf32>
    hcl.partition(%1521 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1522 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1522 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%378 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg46 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg46 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg46 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%398, 1)
    hcl.pipeline(%404, 1)
    %1523 = hcl.reuse_at(%393 : memref<1x1x34x34xi16>, %403) -> memref<1xf32>
    %1524 = hcl.reuse_at(%1523 : memref<1xf32>, %404) -> memref<1xf32>
    hcl.partition(%1523 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1524 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1524 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%393 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg46 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg46 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg46 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%412, 1)
    hcl.partition(%408 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg47 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%418, 1)
    hcl.partition(%arg48 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg49 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%414 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%424, 1)
    hcl.partition(%420 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg40 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg41 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg42 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%430, 1)
    hcl.partition(%426 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%436, 1)
    hcl.partition(%arg52 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg53 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%432 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%442, 1)
    hcl.partition(%438 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%448, 1)
    hcl.partition(%444 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%454, 1)
    hcl.partition(%450 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%461, 1)
    hcl.pipeline(%467, 1)
    %1525 = hcl.reuse_at(%456 : memref<1x1x34x34xi16>, %466) -> memref<1xf32>
    %1526 = hcl.reuse_at(%1525 : memref<1xf32>, %467) -> memref<1xf32>
    hcl.partition(%1525 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1526 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1526 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%456 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg50 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg50 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg50 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%476, 1)
    hcl.pipeline(%482, 1)
    %1527 = hcl.reuse_at(%471 : memref<1x1x34x34xi16>, %481) -> memref<1xf32>
    %1528 = hcl.reuse_at(%1527 : memref<1xf32>, %482) -> memref<1xf32>
    hcl.partition(%1527 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1528 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1528 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%471 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg50 : memref<16x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg50 : memref<16x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg50 : memref<16x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%490, 1)
    hcl.partition(%486 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg51 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%496, 1)
    hcl.partition(%arg54 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg55 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%492 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%502, 1)
    hcl.partition(%498 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg43 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg44 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg45 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%508, 1)
    hcl.partition(%504 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%514, 1)
    hcl.partition(%arg56 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg57 : memref<16xf32>, CompletePartition, 1, 0)
    hcl.partition(%510 : memref<1x16x32x32xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%520, 1)
    hcl.partition(%516 : memref<1x16x32x32xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%526, 1)
    hcl.partition(%522 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%532, 1)
    hcl.partition(%528 : memref<1x1x32x32xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%539, 1)
    hcl.pipeline(%545, 1)
    %1529 = hcl.reuse_at(%534 : memref<1x1x34x34xi16>, %544) -> memref<1xf32>
    %1530 = hcl.reuse_at(%1529 : memref<1xf32>, %545) -> memref<1xf32>
    hcl.partition(%1529 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1530 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1530 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%534 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg64 : memref<32x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg64 : memref<32x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg64 : memref<32x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%554, 1)
    hcl.pipeline(%560, 1)
    %1531 = hcl.reuse_at(%549 : memref<1x1x34x34xi16>, %559) -> memref<1xf32>
    %1532 = hcl.reuse_at(%1531 : memref<1xf32>, %560) -> memref<1xf32>
    hcl.partition(%1531 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1532 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1532 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%549 : memref<1x1x34x34xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg64 : memref<32x1x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg64 : memref<32x1x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg64 : memref<32x1x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%568, 1)
    hcl.partition(%564 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg65 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%574, 1)
    hcl.partition(%arg66 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg67 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%570 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%580, 1)
    hcl.partition(%576 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg58 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg59 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg60 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%586, 1)
    %1533 = hcl.reuse_at(%510 : memref<1x16x32x32xf32>, %586) -> memref<1xf32>
    %1534 = hcl.reuse_at(%1533 : memref<1xf32>, %587) -> memref<1xf32>
    hcl.partition(%1533 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1534 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1534 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%582 : memref<1x16x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%594, 1)
    hcl.partition(%590 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%600, 1)
    hcl.partition(%596 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%606, 1)
    hcl.partition(%arg70 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg71 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%602 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%612, 1)
    hcl.partition(%608 : memref<1x32x16x16xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%618, 1)
    hcl.partition(%614 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%624, 1)
    hcl.partition(%620 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%631, 1)
    hcl.pipeline(%637, 1)
    %1535 = hcl.reuse_at(%626 : memref<1x2x18x18xi16>, %636) -> memref<1xf32>
    %1536 = hcl.reuse_at(%1535 : memref<1xf32>, %637) -> memref<1xf32>
    hcl.partition(%1535 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1536 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1536 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%626 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg68 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg68 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg68 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%646, 1)
    hcl.pipeline(%652, 1)
    %1537 = hcl.reuse_at(%641 : memref<1x2x18x18xi16>, %651) -> memref<1xf32>
    %1538 = hcl.reuse_at(%1537 : memref<1xf32>, %652) -> memref<1xf32>
    hcl.partition(%1537 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1538 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1538 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%641 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg68 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg68 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg68 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%660, 1)
    hcl.partition(%656 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg69 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%666, 1)
    hcl.partition(%arg72 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg73 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%662 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%672, 1)
    hcl.partition(%668 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg61 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg62 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg63 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%678, 1)
    hcl.partition(%674 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%684, 1)
    hcl.partition(%arg74 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg75 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%680 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%690, 1)
    hcl.partition(%686 : memref<1x32x16x16xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%696, 1)
    hcl.partition(%692 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%702, 1)
    hcl.partition(%698 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%709, 1)
    hcl.pipeline(%715, 1)
    %1539 = hcl.reuse_at(%704 : memref<1x2x18x18xi16>, %714) -> memref<1xf32>
    %1540 = hcl.reuse_at(%1539 : memref<1xf32>, %715) -> memref<1xf32>
    hcl.partition(%1539 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1540 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1540 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%704 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg82 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg82 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg82 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%724, 1)
    hcl.pipeline(%730, 1)
    %1541 = hcl.reuse_at(%719 : memref<1x2x18x18xi16>, %729) -> memref<1xf32>
    %1542 = hcl.reuse_at(%1541 : memref<1xf32>, %730) -> memref<1xf32>
    hcl.partition(%1541 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1542 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1542 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%719 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg82 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg82 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg82 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%738, 1)
    hcl.partition(%734 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg83 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%744, 1)
    hcl.partition(%arg84 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg85 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%740 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%750, 1)
    hcl.partition(%746 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg76 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg77 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg78 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%756, 1)
    hcl.partition(%752 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%762, 1)
    hcl.partition(%arg88 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg89 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%758 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%768, 1)
    hcl.partition(%764 : memref<1x32x16x16xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%774, 1)
    hcl.partition(%770 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%780, 1)
    hcl.partition(%776 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%787, 1)
    hcl.pipeline(%793, 1)
    %1543 = hcl.reuse_at(%782 : memref<1x2x18x18xi16>, %792) -> memref<1xf32>
    %1544 = hcl.reuse_at(%1543 : memref<1xf32>, %793) -> memref<1xf32>
    hcl.partition(%1543 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1544 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1544 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%782 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg86 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg86 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg86 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%802, 1)
    hcl.pipeline(%808, 1)
    %1545 = hcl.reuse_at(%797 : memref<1x2x18x18xi16>, %807) -> memref<1xf32>
    %1546 = hcl.reuse_at(%1545 : memref<1xf32>, %808) -> memref<1xf32>
    hcl.partition(%1545 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1546 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1546 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%797 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg86 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg86 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg86 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%816, 1)
    hcl.partition(%812 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg87 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%822, 1)
    hcl.partition(%arg90 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg91 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%818 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%828, 1)
    hcl.partition(%824 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg79 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg80 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg81 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%834, 1)
    hcl.partition(%830 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%840, 1)
    hcl.partition(%arg92 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg93 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%836 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%846, 1)
    hcl.partition(%842 : memref<1x32x16x16xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%852, 1)
    hcl.partition(%848 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%858, 1)
    hcl.partition(%854 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%865, 1)
    hcl.pipeline(%871, 1)
    %1547 = hcl.reuse_at(%860 : memref<1x2x18x18xi16>, %870) -> memref<1xf32>
    %1548 = hcl.reuse_at(%1547 : memref<1xf32>, %871) -> memref<1xf32>
    hcl.partition(%1547 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1548 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1548 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%860 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg100 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg100 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg100 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%880, 1)
    hcl.pipeline(%886, 1)
    %1549 = hcl.reuse_at(%875 : memref<1x2x18x18xi16>, %885) -> memref<1xf32>
    %1550 = hcl.reuse_at(%1549 : memref<1xf32>, %886) -> memref<1xf32>
    hcl.partition(%1549 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1550 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1550 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%875 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg100 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg100 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg100 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%894, 1)
    hcl.partition(%890 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg101 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%900, 1)
    hcl.partition(%arg102 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg103 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%896 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%906, 1)
    hcl.partition(%902 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg94 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg95 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg96 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%912, 1)
    hcl.partition(%908 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%918, 1)
    hcl.partition(%arg106 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg107 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%914 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%924, 1)
    hcl.partition(%920 : memref<1x32x16x16xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%930, 1)
    hcl.partition(%926 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%936, 1)
    hcl.partition(%932 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%943, 1)
    hcl.pipeline(%949, 1)
    %1551 = hcl.reuse_at(%938 : memref<1x2x18x18xi16>, %948) -> memref<1xf32>
    %1552 = hcl.reuse_at(%1551 : memref<1xf32>, %949) -> memref<1xf32>
    hcl.partition(%1551 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1552 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1552 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%938 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg104 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg104 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg104 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%958, 1)
    hcl.pipeline(%964, 1)
    %1553 = hcl.reuse_at(%953 : memref<1x2x18x18xi16>, %963) -> memref<1xf32>
    %1554 = hcl.reuse_at(%1553 : memref<1xf32>, %964) -> memref<1xf32>
    hcl.partition(%1553 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1554 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1554 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%953 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg104 : memref<32x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg104 : memref<32x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg104 : memref<32x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%972, 1)
    hcl.partition(%968 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg105 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%978, 1)
    hcl.partition(%arg108 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg109 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%974 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%984, 1)
    hcl.partition(%980 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg97 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg98 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg99 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%990, 1)
    hcl.partition(%986 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%996, 1)
    hcl.partition(%arg110 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg111 : memref<32xf32>, CompletePartition, 1, 0)
    hcl.partition(%992 : memref<1x32x16x16xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1002, 1)
    hcl.partition(%998 : memref<1x32x16x16xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%1008, 1)
    hcl.partition(%1004 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1014, 1)
    hcl.partition(%1010 : memref<1x2x16x16xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1021, 1)
    hcl.pipeline(%1027, 1)
    %1555 = hcl.reuse_at(%1016 : memref<1x2x18x18xi16>, %1026) -> memref<1xf32>
    %1556 = hcl.reuse_at(%1555 : memref<1xf32>, %1027) -> memref<1xf32>
    hcl.partition(%1555 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1556 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1556 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1016 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg118 : memref<64x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg118 : memref<64x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg118 : memref<64x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1036, 1)
    hcl.pipeline(%1042, 1)
    %1557 = hcl.reuse_at(%1031 : memref<1x2x18x18xi16>, %1041) -> memref<1xf32>
    %1558 = hcl.reuse_at(%1557 : memref<1xf32>, %1042) -> memref<1xf32>
    hcl.partition(%1557 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1558 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1558 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1031 : memref<1x2x18x18xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg118 : memref<64x2x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg118 : memref<64x2x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg118 : memref<64x2x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1050, 1)
    hcl.partition(%1046 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg119 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1056, 1)
    hcl.partition(%arg120 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg121 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1052 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1062, 1)
    hcl.partition(%1058 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg112 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg113 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg114 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1068, 1)
    %1559 = hcl.reuse_at(%992 : memref<1x32x16x16xf32>, %1068) -> memref<1xf32>
    %1560 = hcl.reuse_at(%1559 : memref<1xf32>, %1069) -> memref<1xf32>
    hcl.partition(%1559 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1560 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1560 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1064 : memref<1x32x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1076, 1)
    hcl.partition(%1072 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1082, 1)
    hcl.partition(%1078 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1088, 1)
    hcl.partition(%arg124 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg125 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1084 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1094, 1)
    hcl.partition(%1090 : memref<1x64x8x8xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%1100, 1)
    hcl.partition(%1096 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1106, 1)
    hcl.partition(%1102 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1113, 1)
    hcl.pipeline(%1119, 1)
    %1561 = hcl.reuse_at(%1108 : memref<1x4x10x10xi16>, %1118) -> memref<1xf32>
    %1562 = hcl.reuse_at(%1561 : memref<1xf32>, %1119) -> memref<1xf32>
    hcl.partition(%1561 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1562 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1562 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1108 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg122 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg122 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg122 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1128, 1)
    hcl.pipeline(%1134, 1)
    %1563 = hcl.reuse_at(%1123 : memref<1x4x10x10xi16>, %1133) -> memref<1xf32>
    %1564 = hcl.reuse_at(%1563 : memref<1xf32>, %1134) -> memref<1xf32>
    hcl.partition(%1563 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1564 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1564 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1123 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg122 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg122 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg122 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1142, 1)
    hcl.partition(%1138 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg123 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1148, 1)
    hcl.partition(%arg126 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg127 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1144 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1154, 1)
    hcl.partition(%1150 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg115 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg116 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg117 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1160, 1)
    hcl.partition(%1156 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1166, 1)
    hcl.partition(%arg128 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg129 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1162 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1172, 1)
    hcl.partition(%1168 : memref<1x64x8x8xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%1178, 1)
    hcl.partition(%1174 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1184, 1)
    hcl.partition(%1180 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1191, 1)
    hcl.pipeline(%1197, 1)
    %1565 = hcl.reuse_at(%1186 : memref<1x4x10x10xi16>, %1196) -> memref<1xf32>
    %1566 = hcl.reuse_at(%1565 : memref<1xf32>, %1197) -> memref<1xf32>
    hcl.partition(%1565 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1566 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1566 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1186 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg136 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg136 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg136 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1206, 1)
    hcl.pipeline(%1212, 1)
    %1567 = hcl.reuse_at(%1201 : memref<1x4x10x10xi16>, %1211) -> memref<1xf32>
    %1568 = hcl.reuse_at(%1567 : memref<1xf32>, %1212) -> memref<1xf32>
    hcl.partition(%1567 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1568 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1568 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1201 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg136 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg136 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg136 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1220, 1)
    hcl.partition(%1216 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg137 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1226, 1)
    hcl.partition(%arg138 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg139 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1222 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1232, 1)
    hcl.partition(%1228 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg130 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg131 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg132 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1238, 1)
    hcl.partition(%1234 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1244, 1)
    hcl.partition(%arg142 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg143 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1240 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1250, 1)
    hcl.partition(%1246 : memref<1x64x8x8xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%1256, 1)
    hcl.partition(%1252 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1262, 1)
    hcl.partition(%1258 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1269, 1)
    hcl.pipeline(%1275, 1)
    %1569 = hcl.reuse_at(%1264 : memref<1x4x10x10xi16>, %1274) -> memref<1xf32>
    %1570 = hcl.reuse_at(%1569 : memref<1xf32>, %1275) -> memref<1xf32>
    hcl.partition(%1569 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1570 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1570 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1264 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg140 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg140 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg140 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1284, 1)
    hcl.pipeline(%1290, 1)
    %1571 = hcl.reuse_at(%1279 : memref<1x4x10x10xi16>, %1289) -> memref<1xf32>
    %1572 = hcl.reuse_at(%1571 : memref<1xf32>, %1290) -> memref<1xf32>
    hcl.partition(%1571 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1572 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1572 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1279 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg140 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg140 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg140 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1298, 1)
    hcl.partition(%1294 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg141 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1304, 1)
    hcl.partition(%arg144 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg145 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1300 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1310, 1)
    hcl.partition(%1306 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg133 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg134 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg135 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1316, 1)
    hcl.partition(%1312 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1322, 1)
    hcl.partition(%arg146 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg147 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1318 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1328, 1)
    hcl.partition(%1324 : memref<1x64x8x8xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%1334, 1)
    hcl.partition(%1330 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1340, 1)
    hcl.partition(%1336 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1347, 1)
    hcl.pipeline(%1353, 1)
    %1573 = hcl.reuse_at(%1342 : memref<1x4x10x10xi16>, %1352) -> memref<1xf32>
    %1574 = hcl.reuse_at(%1573 : memref<1xf32>, %1353) -> memref<1xf32>
    hcl.partition(%1573 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1574 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1574 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1342 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg154 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg154 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg154 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1362, 1)
    hcl.pipeline(%1368, 1)
    %1575 = hcl.reuse_at(%1357 : memref<1x4x10x10xi16>, %1367) -> memref<1xf32>
    %1576 = hcl.reuse_at(%1575 : memref<1xf32>, %1368) -> memref<1xf32>
    hcl.partition(%1575 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1576 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1576 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1357 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg154 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg154 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg154 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1376, 1)
    hcl.partition(%1372 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg155 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1382, 1)
    hcl.partition(%arg156 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg157 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1378 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1388, 1)
    hcl.partition(%1384 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg148 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg149 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg150 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1394, 1)
    hcl.partition(%1390 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1400, 1)
    hcl.partition(%arg160 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg161 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1396 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1406, 1)
    hcl.partition(%1402 : memref<1x64x8x8xi2>, CompletePartition, 4, 0)
    hcl.pipeline(%1412, 1)
    hcl.partition(%1408 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1418, 1)
    hcl.partition(%1414 : memref<1x4x8x8xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1425, 1)
    hcl.pipeline(%1431, 1)
    %1577 = hcl.reuse_at(%1420 : memref<1x4x10x10xi16>, %1430) -> memref<1xf32>
    %1578 = hcl.reuse_at(%1577 : memref<1xf32>, %1431) -> memref<1xf32>
    hcl.partition(%1577 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1578 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1578 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1420 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg158 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg158 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg158 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1440, 1)
    hcl.pipeline(%1446, 1)
    %1579 = hcl.reuse_at(%1435 : memref<1x4x10x10xi16>, %1445) -> memref<1xf32>
    %1580 = hcl.reuse_at(%1579 : memref<1xf32>, %1446) -> memref<1xf32>
    hcl.partition(%1579 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1580 : memref<1xf32>, CompletePartition, 1, 0)
    hcl.partition(%1580 : memref<1xf32>, CompletePartition, 2, 0)
    hcl.partition(%1435 : memref<1x4x10x10xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg158 : memref<64x4x3x3xi16>, CompletePartition, 2, 0)
    hcl.partition(%arg158 : memref<64x4x3x3xi16>, CompletePartition, 3, 0)
    hcl.partition(%arg158 : memref<64x4x3x3xi16>, CompletePartition, 4, 0)
    hcl.pipeline(%1454, 1)
    hcl.partition(%1450 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg159 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1460, 1)
    hcl.partition(%arg162 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg163 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1456 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1466, 1)
    hcl.partition(%1462 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.partition(%arg151 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg152 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg153 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1472, 1)
    hcl.partition(%1468 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1478, 1)
    hcl.partition(%arg164 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%arg165 : memref<64xf32>, CompletePartition, 1, 0)
    hcl.partition(%1474 : memref<1x64x8x8xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1485, 1)
    hcl.partition(%1480 : memref<1x64x1x1xf32>, CompletePartition, 4, 0)
    hcl.pipeline(%1491, 1)
    hcl.partition(%1488 : memref<1x64xf32>, CompletePartition, 2, 0)
    hcl.pipeline(%1495, 1)
    hcl.partition(%1492 : memref<1x10xf32>, CompletePartition, 2, 0)
    hcl.partition(%arg166 : memref<10x64xf32>, CompletePartition, 2, 0)
    hcl.partition(%arg167 : memref<10xf32>, CompletePartition, 1, 0)
    hcl.pipeline(%1500, 1)
    hcl.partition(%1497 : memref<1x10xf32>, CompletePartition, 2, 0)
    hcl.compute_at(%13, %28, %32)
    hcl.compute_at(%19, %34, %38)
    hcl.compute_at(%55, %61, %64)
    hcl.compute_at(%49, %61, %64)
    hcl.compute_at(%67, %82, %86)
    hcl.compute_at(%73, %88, %92)
    hcl.compute_at(%97, %103, %107)
    hcl.compute_at(%103, %109, %113)
    hcl.compute_at(%109, %115, %119)
    hcl.compute_at(%115, %121, %125)
    hcl.compute_at(%133, %139, %142)
    hcl.compute_at(%127, %139, %142)
    hcl.compute_at(%145, %160, %164)
    hcl.compute_at(%151, %166, %170)
    hcl.compute_at(%175, %181, %185)
    hcl.compute_at(%181, %187, %191)
    hcl.compute_at(%187, %193, %197)
    hcl.compute_at(%193, %199, %203)
    hcl.compute_at(%211, %217, %220)
    hcl.compute_at(%205, %217, %220)
    hcl.compute_at(%223, %238, %242)
    hcl.compute_at(%229, %244, %248)
    hcl.compute_at(%253, %259, %263)
    hcl.compute_at(%259, %265, %269)
    hcl.compute_at(%265, %271, %275)
    hcl.compute_at(%271, %277, %281)
    hcl.compute_at(%289, %295, %298)
    hcl.compute_at(%283, %295, %298)
    hcl.compute_at(%301, %316, %320)
    hcl.compute_at(%307, %322, %326)
    hcl.compute_at(%331, %337, %341)
    hcl.compute_at(%337, %343, %347)
    hcl.compute_at(%343, %349, %353)
    hcl.compute_at(%349, %355, %359)
    hcl.compute_at(%367, %373, %376)
    hcl.compute_at(%361, %373, %376)
    hcl.compute_at(%379, %394, %398)
    hcl.compute_at(%385, %400, %404)
    hcl.compute_at(%409, %415, %419)
    hcl.compute_at(%415, %421, %425)
    hcl.compute_at(%421, %427, %431)
    hcl.compute_at(%427, %433, %437)
    hcl.compute_at(%445, %451, %454)
    hcl.compute_at(%439, %451, %454)
    hcl.compute_at(%457, %472, %476)
    hcl.compute_at(%463, %478, %482)
    hcl.compute_at(%487, %493, %497)
    hcl.compute_at(%493, %499, %503)
    hcl.compute_at(%499, %505, %509)
    hcl.compute_at(%505, %511, %515)
    hcl.compute_at(%523, %529, %532)
    hcl.compute_at(%517, %529, %532)
    hcl.compute_at(%535, %550, %554)
    hcl.compute_at(%541, %556, %560)
    hcl.compute_at(%565, %571, %575)
    hcl.compute_at(%571, %577, %581)
    hcl.compute_at(%577, %597, %601)
    hcl.compute_at(%597, %603, %607)
    hcl.compute_at(%615, %621, %624)
    hcl.compute_at(%609, %621, %624)
    hcl.compute_at(%627, %642, %646)
    hcl.compute_at(%633, %648, %652)
    hcl.compute_at(%657, %663, %667)
    hcl.compute_at(%663, %669, %673)
    hcl.compute_at(%669, %675, %679)
    hcl.compute_at(%675, %681, %685)
    hcl.compute_at(%693, %699, %702)
    hcl.compute_at(%687, %699, %702)
    hcl.compute_at(%705, %720, %724)
    hcl.compute_at(%711, %726, %730)
    hcl.compute_at(%735, %741, %745)
    hcl.compute_at(%741, %747, %751)
    hcl.compute_at(%747, %753, %757)
    hcl.compute_at(%753, %759, %763)
    hcl.compute_at(%771, %777, %780)
    hcl.compute_at(%765, %777, %780)
    hcl.compute_at(%783, %798, %802)
    hcl.compute_at(%789, %804, %808)
    hcl.compute_at(%813, %819, %823)
    hcl.compute_at(%819, %825, %829)
    hcl.compute_at(%825, %831, %835)
    hcl.compute_at(%831, %837, %841)
    hcl.compute_at(%849, %855, %858)
    hcl.compute_at(%843, %855, %858)
    hcl.compute_at(%861, %876, %880)
    hcl.compute_at(%867, %882, %886)
    hcl.compute_at(%891, %897, %901)
    hcl.compute_at(%897, %903, %907)
    hcl.compute_at(%903, %909, %913)
    hcl.compute_at(%909, %915, %919)
    hcl.compute_at(%927, %933, %936)
    hcl.compute_at(%921, %933, %936)
    hcl.compute_at(%939, %954, %958)
    hcl.compute_at(%945, %960, %964)
    hcl.compute_at(%969, %975, %979)
    hcl.compute_at(%975, %981, %985)
    hcl.compute_at(%981, %987, %991)
    hcl.compute_at(%987, %993, %997)
    hcl.compute_at(%1005, %1011, %1014)
    hcl.compute_at(%999, %1011, %1014)
    hcl.compute_at(%1017, %1032, %1036)
    hcl.compute_at(%1023, %1038, %1042)
    hcl.compute_at(%1047, %1053, %1057)
    hcl.compute_at(%1053, %1059, %1063)
    hcl.compute_at(%1059, %1079, %1083)
    hcl.compute_at(%1079, %1085, %1089)
    hcl.compute_at(%1097, %1103, %1106)
    hcl.compute_at(%1091, %1103, %1106)
    hcl.compute_at(%1109, %1124, %1128)
    hcl.compute_at(%1115, %1130, %1134)
    hcl.compute_at(%1139, %1145, %1149)
    hcl.compute_at(%1145, %1151, %1155)
    hcl.compute_at(%1151, %1157, %1161)
    hcl.compute_at(%1157, %1163, %1167)
    hcl.compute_at(%1175, %1181, %1184)
    hcl.compute_at(%1169, %1181, %1184)
    hcl.compute_at(%1187, %1202, %1206)
    hcl.compute_at(%1193, %1208, %1212)
    hcl.compute_at(%1217, %1223, %1227)
    hcl.compute_at(%1223, %1229, %1233)
    hcl.compute_at(%1229, %1235, %1239)
    hcl.compute_at(%1235, %1241, %1245)
    hcl.compute_at(%1253, %1259, %1262)
    hcl.compute_at(%1247, %1259, %1262)
    hcl.compute_at(%1265, %1280, %1284)
    hcl.compute_at(%1271, %1286, %1290)
    hcl.compute_at(%1295, %1301, %1305)
    hcl.compute_at(%1301, %1307, %1311)
    hcl.compute_at(%1307, %1313, %1317)
    hcl.compute_at(%1313, %1319, %1323)
    hcl.compute_at(%1331, %1337, %1340)
    hcl.compute_at(%1325, %1337, %1340)
    hcl.compute_at(%1343, %1358, %1362)
    hcl.compute_at(%1349, %1364, %1368)
    hcl.compute_at(%1373, %1379, %1383)
    hcl.compute_at(%1379, %1385, %1389)
    hcl.compute_at(%1385, %1391, %1395)
    hcl.compute_at(%1391, %1397, %1401)
    hcl.compute_at(%1409, %1415, %1418)
    hcl.compute_at(%1403, %1415, %1418)
    hcl.compute_at(%1421, %1436, %1440)
    hcl.compute_at(%1427, %1442, %1446)
    hcl.compute_at(%1451, %1457, %1461)
    hcl.compute_at(%1457, %1463, %1467)
    hcl.compute_at(%1463, %1469, %1473)
    hcl.compute_at(%1469, %1475, %1479)
    hcl.compute_at(%1493, %1498, %1500)
    return %1497 : memref<1x10xf32>
  }
}
