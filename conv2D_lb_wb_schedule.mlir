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
        %9 = memref.alloc() {name = "sum_rv"} : memref<1xi32>
        %c0 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        affine.store %c0_i32, %9[%c0] {to = "sum_rv"} : memref<1xi32>
        affine.for %arg3 = 0 to 3 {
          affine.for %arg4 = 0 to 3 {
            %11 = affine.load %arg0[%arg1 + %arg3, %arg2 + %arg4] {from = "compute_0"} : memref<10x10xi32>
            %12 = affine.load %9[%c0] {from = "sum_rv"} : memref<1xi32>
            %13 = arith.addi %11, %12 : i32
            affine.store %13, %9[%c0] {to = "sum_rv"} : memref<1xi32>
          } {loop_name = "rx_1", reduction}
        } {loop_name = "rx_0", reduction}
        %c0_0 = arith.constant 0 : index
        %10 = affine.load %9[%c0_0] {from = "sum_rv"} : memref<1xi32>
        affine.store %10, %5[%arg1, %arg2] {to = "compute_1"} : memref<8x8xi32>
      } {loop_name = "x"} 
    } {loop_name = "y", op_name = "compute_1"}
    %outer, %inner = hcl.split(%2, 4)
    hcl.reorder(%outer, %1, %inner)
    %6 = hcl.reuse_at(%arg0 : memref<10x10xi32>, %1) -> memref<3x10xf32>
    // %7 = hcl.reuse_at(%6 : memref<3x10xf32>, %inner) -> memref<3x3xf32>
    // hcl.partition(%6 : memref<1xf32>, CompletePartition, 2, 0)
    // hcl.partition(%7 : memref<1xf32>, CompletePartition, 0, 0)
    // %8 = hcl.reshape %5 : memref<8x8xi32> to memref<8x2x4xi32>
    // hcl.pipeline(%1, 1)
    return %5 : memref<8x8xi32>
  }
}
