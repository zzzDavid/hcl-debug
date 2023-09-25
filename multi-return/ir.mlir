// module {
//   func.func @kernel(%arg0: memref<10xi32>, %arg1: memref<10xi32>) -> (memref<10xi32>, memref<10xi32>) attributes {itypes = "ss", otypes = "ss", llvm.emit_c_interface} {
//     %alloc = memref.alloc() {name = "res0"} : memref<10xi32>
//     %c0_i32 = arith.constant 0 : i32
//     linalg.fill ins(%c0_i32 : i32) outs(%alloc : memref<10xi32>)
//     %alloc_0 = memref.alloc() {name = "res1"} : memref<10xi32>
//     %c0_i32_1 = arith.constant 0 : i32
//     linalg.fill ins(%c0_i32_1 : i32) outs(%alloc_0 : memref<10xi32>)
//     affine.for %arg2 = 0 to 10 {
//       %0 = affine.load %arg0[%arg2] {from = "A"} : memref<10xi32>
//       %1 = arith.extsi %0 : i32 to i33
//       %c1_i32 = arith.constant 1 : i32
//       %2 = arith.extsi %c1_i32 : i32 to i33
//       %3 = arith.addi %1, %2 : i33
//       %4 = arith.trunci %3 : i33 to i32
//       affine.store %4, %alloc[%arg2] {to = "res0"} : memref<10xi32>
//       %5 = affine.load %arg1[%arg2] {from = "B"} : memref<10xi32>
//       %6 = arith.extsi %5 : i32 to i33
//       %c1_i32_2 = arith.constant 1 : i32
//       %7 = arith.extsi %c1_i32_2 : i32 to i33
//       %8 = arith.addi %6, %7 : i33
//       %9 = arith.trunci %8 : i33 to i32
//       affine.store %9, %alloc_0[%arg2] {to = "res1"} : memref<10xi32>
//     } {loop_name = "i", op_name = "S_i_0"}
//     return %alloc, %alloc_0 : memref<10xi32>, memref<10xi32>
//   }
// }

module {
  func.func @kernel(%arg0: memref<10xi32>, %arg1: memref<10xi32>) -> memref<10xi32> attributes {itypes = "ss", otypes = "s", llvm.emit_c_interface} {
    %alloc = memref.alloc() {name = "res0"} : memref<10xi32>
    %c0_i32 = arith.constant 0 : i32
    linalg.fill ins(%c0_i32 : i32) outs(%alloc : memref<10xi32>)
    %alloc_0 = memref.alloc() {name = "res1"} : memref<10xi32>
    %c0_i32_1 = arith.constant 0 : i32
    linalg.fill ins(%c0_i32_1 : i32) outs(%alloc_0 : memref<10xi32>)
    affine.for %arg2 = 0 to 10 {
      %0 = affine.load %arg0[%arg2] {from = "A"} : memref<10xi32>
      %1 = arith.extsi %0 : i32 to i33
      %c1_i32 = arith.constant 1 : i32
      %2 = arith.extsi %c1_i32 : i32 to i33
      %3 = arith.addi %1, %2 : i33
      %4 = arith.trunci %3 : i33 to i32
      affine.store %4, %alloc[%arg2] {to = "res0"} : memref<10xi32>
      %5 = affine.load %arg1[%arg2] {from = "B"} : memref<10xi32>
      %6 = arith.extsi %5 : i32 to i33
      %c1_i32_2 = arith.constant 1 : i32
      %7 = arith.extsi %c1_i32_2 : i32 to i33
      %8 = arith.addi %6, %7 : i33
      %9 = arith.trunci %8 : i33 to i32
      affine.store %9, %alloc_0[%arg2] {to = "res1"} : memref<10xi32>
    } {loop_name = "i", op_name = "S_i_0"}
    return %alloc: memref<10xi32>
  }
}
