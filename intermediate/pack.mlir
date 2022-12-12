Using mlir as IR
Done HCL-MLIR initialization
module {
  func.func @top(%arg0: memref<10xi4>) -> memref<40xi1> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi1>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi1>
      %false = arith.constant {unsigned} false
      affine.store %false, %1[0] {to = "unpacked_B", unsigned} : memref<1xi1>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %c1_i32 = arith.constant 1 : i32
      %5 = arith.index_cast %c1_i32 : i32 to index
      %6 = arith.muli %4, %5 : index
      %7 = arith.addi %6, %5 : index
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi4>
      %9 = arith.subi %7, %5 : index
      %10 = hcl.get_slice(%8 : i4, %9, %6) {unsigned} -> i4
      %11 = arith.trunci %10 {unsigned} : i4 to i1
      %12 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi1>
      %c0 = arith.constant 0 : index
      hcl.set_slice(%12 : i1, %c0, %c0, %11 : i1)
      affine.store %12, %1[0] {to = "unpacked_B", unsigned} : memref<1xi1>
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi1>
      affine.store %13, %0[%arg1] {to = "B"} : memref<40xi1>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi1>
  }
}

module {
  func.func @top(%arg0: memref<10xi8>) -> memref<40xi2> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi2>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi2>
      %c0_i2 = arith.constant {unsigned} 0 : i2
      affine.store %c0_i2, %1[0] {to = "unpacked_B", unsigned} : memref<1xi2>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %c2_i32 = arith.constant 2 : i32
      %5 = arith.index_cast %c2_i32 : i32 to index
      %6 = arith.muli %4, %5 : index
      %7 = arith.addi %6, %5 : index
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi8>
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.index_cast %c1_i32 : i32 to index
      %10 = arith.subi %7, %9 : index
      %11 = hcl.get_slice(%8 : i8, %10, %6) {unsigned} -> i8
      %12 = arith.trunci %11 {unsigned} : i8 to i2
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi2>
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%13 : i2, %c1, %c0, %12 : i2)
      affine.store %13, %1[0] {to = "unpacked_B", unsigned} : memref<1xi2>
      %14 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi2>
      affine.store %14, %0[%arg1] {to = "B"} : memref<40xi2>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi2>
  }
}

module {
  func.func @top(%arg0: memref<10xi12>) -> memref<40xi3> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi3>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi3>
      %c0_i3 = arith.constant {unsigned} 0 : i3
      affine.store %c0_i3, %1[0] {to = "unpacked_B", unsigned} : memref<1xi3>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %c3_i32 = arith.constant 3 : i32
      %5 = arith.index_cast %c3_i32 : i32 to index
      %6 = arith.muli %4, %5 : index
      %7 = arith.addi %6, %5 : index
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi12>
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.index_cast %c1_i32 : i32 to index
      %10 = arith.subi %7, %9 : index
      %11 = hcl.get_slice(%8 : i12, %10, %6) {unsigned} -> i12
      %12 = arith.trunci %11 {unsigned} : i12 to i3
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi3>
      %c2 = arith.constant 2 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%13 : i3, %c2, %c0, %12 : i3)
      affine.store %13, %1[0] {to = "unpacked_B", unsigned} : memref<1xi3>
      %14 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi3>
      affine.store %14, %0[%arg1] {to = "B"} : memref<40xi3>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi3>
  }
}

module {
  func.func @top(%arg0: memref<10xi16>) -> memref<40xi4> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi4>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi4>
      %c0_i4 = arith.constant {unsigned} 0 : i4
      affine.store %c0_i4, %1[0] {to = "unpacked_B", unsigned} : memref<1xi4>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %5 = arith.muli %4, %2 : index
      %6 = arith.addi %5, %2 : index
      %7 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi16>
      %c1_i32 = arith.constant 1 : i32
      %8 = arith.index_cast %c1_i32 : i32 to index
      %9 = arith.subi %6, %8 : index
      %10 = hcl.get_slice(%7 : i16, %9, %5) {unsigned} -> i16
      %11 = arith.trunci %10 {unsigned} : i16 to i4
      %12 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi4>
      %c3 = arith.constant 3 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%12 : i4, %c3, %c0, %11 : i4)
      affine.store %12, %1[0] {to = "unpacked_B", unsigned} : memref<1xi4>
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi4>
      affine.store %13, %0[%arg1] {to = "B"} : memref<40xi4>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi4>
  }
}

module {
  func.func @top(%arg0: memref<10xi20>) -> memref<40xi5> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi5>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi5>
      %c0_i5 = arith.constant {unsigned} 0 : i5
      affine.store %c0_i5, %1[0] {to = "unpacked_B", unsigned} : memref<1xi5>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %c5_i32 = arith.constant 5 : i32
      %5 = arith.index_cast %c5_i32 : i32 to index
      %6 = arith.muli %4, %5 : index
      %7 = arith.addi %6, %5 : index
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi20>
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.index_cast %c1_i32 : i32 to index
      %10 = arith.subi %7, %9 : index
      %11 = hcl.get_slice(%8 : i20, %10, %6) {unsigned} -> i20
      %12 = arith.trunci %11 {unsigned} : i20 to i5
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi5>
      %c4 = arith.constant 4 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%13 : i5, %c4, %c0, %12 : i5)
      affine.store %13, %1[0] {to = "unpacked_B", unsigned} : memref<1xi5>
      %14 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi5>
      affine.store %14, %0[%arg1] {to = "B"} : memref<40xi5>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi5>
  }
}

module {
  func.func @top(%arg0: memref<10xi24>) -> memref<40xi6> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi6>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi6>
      %c0_i6 = arith.constant {unsigned} 0 : i6
      affine.store %c0_i6, %1[0] {to = "unpacked_B", unsigned} : memref<1xi6>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %c6_i32 = arith.constant 6 : i32
      %5 = arith.index_cast %c6_i32 : i32 to index
      %6 = arith.muli %4, %5 : index
      %7 = arith.addi %6, %5 : index
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi24>
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.index_cast %c1_i32 : i32 to index
      %10 = arith.subi %7, %9 : index
      %11 = hcl.get_slice(%8 : i24, %10, %6) {unsigned} -> i24
      %12 = arith.trunci %11 {unsigned} : i24 to i6
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi6>
      %c5 = arith.constant 5 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%13 : i6, %c5, %c0, %12 : i6)
      affine.store %13, %1[0] {to = "unpacked_B", unsigned} : memref<1xi6>
      %14 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi6>
      affine.store %14, %0[%arg1] {to = "B"} : memref<40xi6>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi6>
  }
}

module {
  func.func @top(%arg0: memref<10xi28>) -> memref<40xi7> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi7>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi7>
      %c0_i7 = arith.constant {unsigned} 0 : i7
      affine.store %c0_i7, %1[0] {to = "unpacked_B", unsigned} : memref<1xi7>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index
      %4 = arith.remsi %arg1, %2 : index
      %c7_i32 = arith.constant 7 : i32
      %5 = arith.index_cast %c7_i32 : i32 to index
      %6 = arith.muli %4, %5 : index
      %7 = arith.addi %6, %5 : index
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi28>
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.index_cast %c1_i32 : i32 to index
      %10 = arith.subi %7, %9 : index
      %11 = hcl.get_slice(%8 : i28, %10, %6) {unsigned} -> i28
      %12 = arith.trunci %11 {unsigned} : i28 to i7
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi7>
      %c6 = arith.constant 6 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%13 : i7, %c6, %c0, %12 : i7)
      affine.store %13, %1[0] {to = "unpacked_B", unsigned} : memref<1xi7>
      %14 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi7>
      affine.store %14, %0[%arg1] {to = "B"} : memref<40xi7>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi7>
  }
}

module {
  func.func @top(%arg0: memref<10xi32>) -> memref<40xi8> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B", unsigned} : memref<40xi8>
    affine.for %arg1 = 0 to 40 {
      %1 = memref.alloc() {name = "unpacked_B", unsigned} : memref<1xi8>
      %c0_i8 = arith.constant {unsigned} 0 : i8
      affine.store %c0_i8, %1[0] {to = "unpacked_B", unsigned} : memref<1xi8>
      %c4_i32 = arith.constant 4 : i32
      %2 = arith.index_cast %c4_i32 : i32 to index
      %3 = arith.divsi %arg1, %2 : index // arg1 / 4
      %4 = arith.remsi %arg1, %2 : index // arg1 % 4
      %c8_i32 = arith.constant 8 : i32
      %5 = arith.index_cast %c8_i32 : i32 to index
      %6 = arith.muli %4, %5 : index //  (arg1 % 4) * 8
      %7 = arith.addi %6, %5 : index // (arg1 % 4) * 8 + 8
      %8 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi32>
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.index_cast %c1_i32 : i32 to index
      %10 = arith.subi %7, %9 : index // (arg1 % 4) * 8 + 8 - 1
      %11 = hcl.get_slice(%8 : i32, %10, %6) {unsigned} -> i32
      %12 = arith.trunci %11 {unsigned} : i32 to i8
      %13 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi8>
      %c7 = arith.constant 7 : index
      %c0 = arith.constant 0 : index
      hcl.set_slice(%13 : i8, %c7, %c0, %12 : i8)
      affine.store %13, %1[0] {to = "unpacked_B", unsigned} : memref<1xi8>
      %14 = affine.load %1[0] {from = "unpacked_B", unsigned} : memref<1xi8>
      affine.store %14, %0[%arg1] {to = "B"} : memref<40xi8>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi8>
  }
}

