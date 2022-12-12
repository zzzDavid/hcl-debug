module {
  func.func @top(%arg0: memref<4x16x8x8xf32>) -> memref<4x16x4x4xf32> attributes {itypes = "_", otypes = "_"} {
    %0 = memref.alloc() {name = "B"} : memref<4x16x4x4xf32>
    %1 = hcl.create_op_handle "B"
    %2 = hcl.create_loop_handle %1, "n"
    %3 = hcl.create_loop_handle %1, "c"
    %4 = hcl.create_loop_handle %1, "h"
    %5 = hcl.create_loop_handle %1, "w"
    %6 = hcl.create_loop_handle %1, "rx_0"
    %7 = hcl.create_loop_handle %1, "rx_1"
    affine.for %arg1 = 0 to 4 {
      affine.for %arg2 = 0 to 16 {
        affine.for %arg3 = 0 to 4 {
          affine.for %arg4 = 0 to 4 {
            %10 = memref.alloc() {name = "sum_rv"} : memref<1xf32>
            %c0 = arith.constant 0 : index
            %cst = arith.constant 0.000000e+00 : f32
            affine.store %cst, %10[%c0] {to = "sum_rv"} : memref<1xf32>
            affine.for %arg5 = 0 to 2 {
              affine.for %arg6 = 0 to 2 {
                %14 = affine.load %arg0[%arg1, %arg2, %arg3 * 2 + %arg5, %arg4 * 2 + %arg6] {from = "compute_0"} : memref<4x16x8x8xf32>
                %15 = affine.load %10[%c0] {from = "sum_rv"} : memref<1xf32>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %10[%c0] {to = "sum_rv"} : memref<1xf32>
              } {loop_name = "rx_1", reduction}
            } {loop_name = "rx_0", reduction}
            %c0_0 = arith.constant 0 : index
            %11 = affine.load %10[%c0_0] {from = "sum_rv"} : memref<1xf32>
            %c4_i32 = arith.constant 4 : i32
            %12 = arith.sitofp %c4_i32 : i32 to f32
            %13 = arith.divf %11, %12 : f32
            affine.store %13, %0[%arg1, %arg2, %arg3, %arg4] {to = "B"} : memref<4x16x4x4xf32>
          } {loop_name = "w"}
        } {loop_name = "h"}
      } {loop_name = "c"}
    } {loop_name = "n", op_name = "B"}
    %8 = hcl.reuse_at(%arg0 : memref<4x16x8x8xf32>, %4) -> memref<1xf32>
    %9 = hcl.reuse_at(%8 : memref<1xf32>, %5) -> memref<1xf32>
    return %0 : memref<4x16x4x4xf32>
  }
}
