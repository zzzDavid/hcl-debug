module {
  func.func @top(%arg0: memref<10x10xi32>) -> memref<8x8xi32> attributes {itypes = "s", otypes = "s"} {
    %0 = hcl.create_op_handle "compute_1"
    %1 = hcl.create_loop_handle %0, "y"
    %2 = hcl.create_loop_handle %0, "x"
    %3 = hcl.create_loop_handle %0, "rx_1"
    %4 = hcl.create_loop_handle %0, "rx_0"
    %5 = memref.alloc() {name = "compute_1"} : memref<8x8xi32>
    affine.for %arg1 = 0 to 8 {
      affine.for %arg2 = 0 to 8 {
        %7 = memref.alloc() {name = "sum_rv"} : memref<1xi32>
        %c0 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        affine.store %c0_i32, %7[%c0] {to = "sum_rv"} : memref<1xi32>
        affine.for %arg3 = 0 to 3 {
          affine.for %arg4 = 0 to 3 {
            %9 = affine.load %arg0[%arg1 + %arg3, %arg2 + %arg4] {from = "compute_0"} : memref<10x10xi32>
            %10 = affine.load %7[%c0] {from = "sum_rv"} : memref<1xi32>
            %11 = arith.addi %9, %10 : i32
            affine.store %11, %7[%c0] {to = "sum_rv"} : memref<1xi32>
          } {loop_name = "rx_1", reduction}
        } {loop_name = "rx_0", reduction}
        %c0_0 = arith.constant 0 : index
        %8 = affine.load %7[%c0_0] {from = "sum_rv"} : memref<1xi32>
        affine.store %8, %5[%arg1, %arg2] {to = "compute_1"} : memref<8x8xi32>
      } {loop_name = "x"}
    } {loop_name = "y", op_name = "compute_1"}
    %outer, %inner = hcl.split(%2, 4)
    hcl.reorder(%outer, %1, %inner)
    %6 = hcl.reuse_at(%arg0 : memref<10x10xi32>, %1) -> memref<1xf32>
    return %5 : memref<8x8xi32>
  }
}
