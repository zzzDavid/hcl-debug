  func.func @top(%arg0: memref<10xi32>, %arg1: memref<10xi32>) -> memref<10xi32> attributes {itypes = "ss", otypes = "s"} {
    %0 = memref.alloc() {name = "C"} : memref<10xi32>
    affine.for %arg2 = 0 to 10 {
      %1 = affine.load %arg0[%arg2] {from = "A"} : memref<10xi32>
      %2 = affine.load %arg1[%arg2] {from = "B"} : memref<10xi32>
      %3 = arith.extsi %1 : i32 to i33
      %4 = arith.extsi %2 : i32 to i33
      %5 = arith.addi %3, %4 : i33
      %6 = arith.trunci %5 : i33 to i32
      affine.store %6, %0[%arg2] {to = "C"} : memref<10xi32>
    } {loop_name = "x", op_name = "C"}
    return %0 : memref<10xi32>
  }