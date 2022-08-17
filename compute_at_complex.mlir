module {
  func.func @top(%arg0: memref<10x20x30xi32>) -> memref<10x20x30xi32> attributes {itypes = "s", otypes = "s"} {
    %B = hcl.create_op_handle "B"
    %1 = hcl.create_loop_handle %B, "i"
    %2 = hcl.create_loop_handle %B, "j"
    %3 = hcl.create_loop_handle %B, "m"
    %4 = memref.alloc() {name = "B"} : memref<10x20x30xi32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 20 {
        affine.for %arg3 = 0 to 30 {
          %15 = affine.load %arg0[%arg1, %arg2, %arg3] {from = "A"} : memref<10x20x30xi32>
          %c2_i32 = arith.constant 2 : i32
          %16 = arith.muli %15, %c2_i32 : i32
          affine.store %16, %4[%arg1, %arg2, %arg3] {to = "B"} : memref<10x20x30xi32>
        } {loop_name = "m"}
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "B"}
    %C = hcl.create_op_handle "C"
    %6 = hcl.create_loop_handle %C, "ii"
    %7 = hcl.create_loop_handle %C, "jj"
    %8 = hcl.create_loop_handle %C, "mm"
    %9 = memref.alloc() {name = "C"} : memref<10x20x30xi32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 20 {
        affine.for %arg3 = 0 to 30 {
          %15 = affine.load %4[%arg1, %arg2, %arg3] {from = "B"} : memref<10x20x30xi32>
          %c1_i32 = arith.constant 1 : i32
          %16 = arith.addi %15, %c1_i32 : i32
          affine.store %16, %9[%arg1, %arg2, %arg3] {to = "C"} : memref<10x20x30xi32>
        } {loop_name = "mm"}
      } {loop_name = "jj"}
    } {loop_name = "ii", op_name = "C"}
    %D = hcl.create_op_handle "D"
    %11 = hcl.create_loop_handle %D, "iii"
    %12 = hcl.create_loop_handle %D, "jjj"
    %13 = hcl.create_loop_handle %D, "mmm"
    %14 = memref.alloc() {name = "D"} : memref<10x20x30xi32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 20 {
        affine.for %arg3 = 0 to 30 {
          %15 = affine.load %9[%arg1, %arg2, %arg3] {from = "C"} : memref<10x20x30xi32>
          %c3_i32 = arith.constant 3 : i32
          %16 = arith.remsi %15, %c3_i32 : i32
          affine.store %16, %14[%arg1, %arg2, %arg3] {to = "D"} : memref<10x20x30xi32>
        } {loop_name = "mmm"}
      } {loop_name = "jjj"}
    } {loop_name = "iii", op_name = "D"}
    hcl.compute_at(%B, %C, %7)
    // hcl.compute_at(%C, %D, %13)
    return %14 : memref<10x20x30xi32>
  }
}
