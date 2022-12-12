module {
  func.func @top(%arg0: memref<10xi32>) -> memref<40xi8> attributes {bit, itypes = "u", otypes = "u"} {
    %0 = memref.alloc() {name = "B"} : memref<40xi8>
    affine.for %arg1 = 0 to 40 {
      %c4_i32 = arith.constant 4 : i32
      %1 = arith.index_cast %arg1 : index to i32
      %2 = arith.floordivsi %1, %c4_i32 : i32 // arg1 // 4
      %3 = arith.index_cast %2 {unsigned} : i32 to index
      %4 = memref.load %arg0[%3] {from = "A", unsigned} : memref<10xi32>
      %5 = arith.remsi %1, %c4_i32 : i32 // arg1 % 4
      %c8_i32 = arith.constant 8 : i32
      %6 = arith.muli %5, %c8_i32 : i32 // (arg1 % 4) * 8
      %7 = arith.index_cast %6 {unsigned} : i32 to index
      %8 = arith.addi %6, %c8_i32 : i32 // (arg1 % 4) * 8 + 8
      %c1_i32 = arith.constant 1 : i32
      %9 = arith.subi %8, %c1_i32 : i32 // (arg1 % 4) * 8 + 8 - 1
      %10 = arith.index_cast %9 {unsigned} : i32 to index
      %11 = hcl.get_slice(%4 : i32, %10, %7) -> i8
      affine.store %11, %0[%arg1] {to = "B", unsigned} : memref<40xi8>
    } {loop_name = "i0", op_name = "B"}
    return %0 : memref<40xi8>
  }
}
