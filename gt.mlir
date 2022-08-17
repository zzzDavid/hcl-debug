#map0 = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d1 + d0)>
#set = affine_set<(d0) : (d0 - 2 >= 0)>
module {
  func.func @top(%arg0: memref<10x10xi32>) -> memref<8x8xi32> attributes {itypes = "s", otypes = "s"} {
    %0 = memref.alloc() {name = "compute_1"} : memref<8x8xi32>
    %1 = memref.alloc() {name = "compute_1_reuse_1"} : memref<3x10xi32>
    %2 = memref.alloc() {name = "compute_1_reuse_2"} : memref<3x3xi32>
    affine.for %arg1 = 0 to 2 {
      affine.for %arg2 = 0 to 10 {
        affine.for %arg3 = 0 to 10 {
          %6 = affine.load %1[1, %arg3] : memref<3x10xi32>
          affine.store %6, %1[0, %arg3] : memref<3x10xi32>
          %7 = affine.load %1[2, %arg3] : memref<3x10xi32>
          affine.store %7, %1[1, %arg3] : memref<3x10xi32>
          %8 = affine.load %arg0[%arg2, %arg3] : memref<10x10xi32>
          affine.store %8, %1[2, %arg3] : memref<3x10xi32>
        } {spatial}
        affine.if #set(%arg2) {
          affine.for %arg3 = 0 to 6 { // 4 + 2
            affine.for %arg4 = 0 to 3 {
              %6 = affine.load %2[%arg4, 1] : memref<3x3xi32>
              affine.store %6, %2[%arg4, 0] : memref<3x3xi32>
              %7 = affine.load %2[%arg4, 2] : memref<3x3xi32>
              affine.store %7, %2[%arg4, 1] : memref<3x3xi32>
              %8 = affine.apply #map0(%arg1)
              %9 = affine.apply #map1(%8, %arg3)
              %10 = affine.load %1[%arg4, %9] : memref<3x10xi32>
              affine.store %10, %2[%arg4, 2] : memref<3x3xi32>
            } {spatial}
            affine.if #set(%arg3) {
              %6 = affine.apply #map0(%arg1)
              %7 = affine.apply #map1(%6, %arg3)
              %8 = memref.alloc() {name = "sum_rv"} : memref<1xi32>
              %c0 = arith.constant 0 : index
              %c0_i32 = arith.constant 0 : i32
              affine.store %c0_i32, %8[%c0] {to = "sum_rv"} : memref<1xi32>
              affine.for %arg4 = 0 to 3 {
                affine.for %arg5 = 0 to 3 {
                  %10 = affine.load %2[%arg4, %arg5] : memref<3x3xi32>
                  %11 = affine.load %8[%c0] {from = "sum_rv"} : memref<1xi32>
                  %12 = arith.addi %10, %11 : i32
                  affine.store %12, %8[%c0] {to = "sum_rv"} : memref<1xi32>
                } {loop_name = "rx_1", reduction}
              } {loop_name = "rx_0", reduction}
              %c0_0 = arith.constant 0 : index
              %9 = affine.load %8[%c0_0] {from = "sum_rv"} : memref<1xi32>
              affine.store %9, %0[%arg2, %7 - 2] : memref<8x8xi32>
            }
          } {loop_name = "x.inner"}
        }
      } {loop_name = "y"}
    } {loop_name = "x.outer", op_name = "compute_1"}
    return %0 : memref<8x8xi32>
  }
}

