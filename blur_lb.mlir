module {
  func.func @top(%arg0: memref<10x10xi32>) -> memref<10x8xi32> attributes {itypes = "s", otypes = "s"} {
    %0 = hcl.create_op_handle "compute_1"
    %1 = hcl.create_loop_handle %0, "y"
    %2 = hcl.create_loop_handle %0, "x"
    %3 = memref.alloc() {name = "compute_1"} : memref<10x8xi32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 8 {
        %5 = affine.load %arg0[%arg1, %arg2] {from = "compute_0"} : memref<10x10xi32>
        %6 = affine.load %arg0[%arg1, %arg2 + 1] {from = "compute_0"} : memref<10x10xi32>
        %7 = arith.addi %5, %6 : i32
        %8 = affine.load %arg0[%arg1, %arg2 + 2] {from = "compute_0"} : memref<10x10xi32>
        %9 = arith.addi %7, %8 : i32
        affine.store %9, %3[%arg1, %arg2] {to = "compute_1"} : memref<10x8xi32>
      } {loop_name = "x"}
    } {loop_name = "y", op_name = "compute_1"}
    %4 = hcl.reuse_at(%arg0 : memref<10x10xi32>, %2) -> memref<1xf32>
    return %3 : memref<10x8xi32>
  }
}