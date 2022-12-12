#set = affine_set<(d0) : (d0 mod 2 == 0, d0 - 2 >= 0, -d0 + (d0 floordiv 2) * 2 + 1 >= 0, d0 mod 2 >= 0)>
module {
  func.func @top(%arg0: memref<10x10xi32>) -> memref<4x4xi32> attributes {itypes = "s", llvm.emit_c_interface, otypes = "s", top} {
    %0 = memref.alloc() {name = "compute_1"} : memref<4x4xi32>
    %1 = memref.alloc() {name = "compute_1_reuse_0"} : memref<3x10xi32>
    %2 = memref.alloc() {name = "compute_1_reuse_1"} : memref<3x3xi32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 10 {
        %3 = affine.load %1[1, %arg2] : memref<3x10xi32>
        affine.store %3, %1[0, %arg2] : memref<3x10xi32>
        %4 = affine.load %1[2, %arg2] : memref<3x10xi32>
        affine.store %4, %1[1, %arg2] : memref<3x10xi32>
        %5 = affine.load %arg0[%arg1, %arg2] : memref<10x10xi32>
        affine.store %5, %1[2, %arg2] : memref<3x10xi32>
        affine.if #set(%arg1) {
          affine.for %arg3 = 0 to 3 {
            %6 = affine.load %2[%arg3, 1] : memref<3x3xi32>
            affine.store %6, %2[%arg3, 0] : memref<3x3xi32>
            %7 = affine.load %2[%arg3, 2] : memref<3x3xi32>
            affine.store %7, %2[%arg3, 1] : memref<3x3xi32>
            %8 = affine.load %1[%arg3, %arg2] : memref<3x10xi32>
            affine.store %8, %2[%arg3, 2] : memref<3x3xi32>
          } {spatial}
          affine.if #set(%arg2) {
            %6 = memref.alloc() {name = "sum_rv"} : memref<1xi32>
            %c0 = arith.constant 0 : index
            %c0_i32 = arith.constant 0 : i32
            affine.store %c0_i32, %6[%c0] {to = "sum_rv"} : memref<1xi32>
            affine.for %arg3 = 0 to 3 {
              affine.for %arg4 = 0 to 3 {
                %8 = affine.load %2[%arg3, %arg4] : memref<3x3xi32>
                %9 = affine.load %6[%c0] {from = "sum_rv"} : memref<1xi32>
                %10 = arith.addi %8, %9 : i32
                affine.store %10, %6[%c0] {to = "sum_rv"} : memref<1xi32>
              } {loop_name = "rx_1", reduction}
            } {loop_name = "rx_0", reduction}
            %7 = affine.load %6[%c0] {from = "sum_rv"} : memref<1xi32>
            affine.store %7, %0[%arg1 floordiv 2 - 1, %arg2 floordiv 2 - 1] : memref<4x4xi32>
          }
        }
      } {loop_name = "x"}
    } {loop_name = "y", op_name = "compute_1"}
    return %0 : memref<4x4xi32>
  }
}
