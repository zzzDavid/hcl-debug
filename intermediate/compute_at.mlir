module {
  func.func @top() -> memref<10x8xi32> attributes {itypes = "", otypes = "s"} {
    %0 = hcl.create_op_handle "A"
    %1 = hcl.create_loop_handle %0, "y"
    %2 = hcl.create_loop_handle %0, "x"
    %3 = memref.alloc() {name = "A"} : memref<10x10xi32>
    affine.for %arg0 = 0 to 10 {
      affine.for %arg1 = 0 to 10 {
        %8 = arith.addi %arg1, %arg0 : index
        %9 = arith.index_cast %8 : index to i32
        affine.store %9, %3[%arg0, %arg1] {to = "A"} : memref<10x10xi32>
      } {loop_name = "x"}
    } {loop_name = "y", op_name = "A"}
    %4 = hcl.create_op_handle "B"
    %5 = hcl.create_loop_handle %4, "y"
    %6 = hcl.create_loop_handle %4, "x"
    %7 = memref.alloc() {name = "B"} : memref<10x8xi32>
    affine.for %arg0 = 0 to 10 {
      affine.for %arg1 = 0 to 8 {
        %8 = affine.load %3[%arg0, %arg1] {from = "A"} : memref<10x10xi32>
        %9 = affine.load %3[%arg0, %arg1 + 1] {from = "A"} : memref<10x10xi32>
        %10 = arith.addi %8, %9 : i32
        %11 = affine.load %3[%arg0, %arg1 + 2] {from = "A"} : memref<10x10xi32>
        %12 = arith.addi %10, %11 : i32
        affine.store %12, %7[%arg0, %arg1] {to = "B"} : memref<10x8xi32>
      } {loop_name = "x"}
    } {loop_name = "y", op_name = "B"}
    hcl.compute_at(%0, %4, %6)
    return %7 : memref<10x8xi32>
  }
}
