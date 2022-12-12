module {
  func.func @top(%arg0: memref<10x20x30xi32>, %arg1: memref<10x20x30xi32>) attributes {itypes = "ss", otypes = ""} {
    %0 = memref.alloc() {name = "B"}: memref<10x20x30xi32>
    affine.for %arg2 = 0 to 10 {
      affine.for %arg3 = 0 to 20 {
        affine.for %arg4 = 0 to 30 {
          %9 = affine.load %arg0[%arg2, %arg3, %arg4] {from = "A"} : memref<10x20x30xi32>
          %c2_i32 = arith.constant 2 : i32
          %10 = arith.extsi %9 : i32 to i1024
          %11 = arith.extsi %c2_i32 : i32 to i1024
          %12 = arith.muli %10, %11 : i1024
          %13 = arith.trunci %12 : i1024 to i32
          affine.store %13, %0[%arg2, %arg3, %arg4] {to = "B"} : memref<10x20x30xi32>
        } {loop_name = "m"}
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "B"}
    affine.for %arg2 = 0 to 10 {
      affine.for %arg3 = 0 to 20 {
        affine.for %arg4 = 0 to 30 {
          %9 = affine.load %0[%arg2, %arg3, %arg4] {from = "B"} : memref<10x20x30xi32>
          %c1_i32 = arith.constant 1 : i32
          %10 = arith.addi %9, %c1_i32 : i32
          affine.store %10, %arg1[%arg2, %arg3, %arg4] {to = "C"} : memref<10x20x30xi32>
        } {loop_name = "mm"}
      } {loop_name = "jj"}
    } {loop_name = "ii", op_name = "C"}
    %1 = hcl.create_op_handle "B"
    %2 = hcl.create_loop_handle %1, "i"
    %3 = hcl.create_loop_handle %1, "j"
    %4 = hcl.create_loop_handle %1, "m"
    %5 = hcl.create_op_handle "C"
    %6 = hcl.create_loop_handle %5, "ii"
    %7 = hcl.create_loop_handle %5, "jj"
    %8 = hcl.create_loop_handle %5, "mm"
    hcl.compute_at(%1, %5, %7)
    return
  }
}
