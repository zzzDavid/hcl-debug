#map0 = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d1 + d0)>
#set = affine_set<(d0) : (d0 - 2 >= 0)>
module {
  func.func @top(%arg0: memref<10x10xi32>) -> memref<8x8xi32> attributes {itypes = "s", otypes = "s"} {
    %0 = memref.alloc() {name = "compute_1"} : memref<8x8xi32>
    %1 = memref.alloc() {name = "compute_1_reuse_1"} : memref<3x10xi32>
    affine.for %arg1 = 0 to 2 {
      affine.for %arg2 = 0 to 10 {
        affine.for %arg3 = 0 to 10 {
          %2 = affine.load %1[1, %arg3] : memref<3x10xi32>
          affine.store %2, %1[0, %arg3] : memref<3x10xi32>
          %3 = affine.load %1[2, %arg3] : memref<3x10xi32>
          affine.store %3, %1[1, %arg3] : memref<3x10xi32>
          %4 = affine.load %arg0[%arg2, %arg3] : memref<10x10xi32>
          affine.store %4, %1[2, %arg3] : memref<3x10xi32>
        } {spatial}
        affine.if #set(%arg2) {
          affine.for %arg3 = 0 to 4 {
            %2 = affine.apply #map0(%arg1)
            %3 = affine.apply #map1(%2, %arg3)
            %4 = memref.alloc() {name = "sum_rv"} : memref<1xi32>
            %c0 = arith.constant 0 : index
            %c0_i32 = arith.constant 0 : i32
            affine.store %c0_i32, %4[%c0] {to = "sum_rv"} : memref<1xi32>
            affine.for %arg4 = 0 to 3 {
              affine.for %arg5 = 0 to 3 {
                %6 = affine.load %1[%arg4, %3 + %arg5] : memref<3x10xi32>
                %7 = affine.load %4[%c0] {from = "sum_rv"} : memref<1xi32>
                %8 = arith.addi %6, %7 : i32
                affine.store %8, %4[%c0] {to = "sum_rv"} : memref<1xi32>
              } {loop_name = "rx_1", reduction}
            } {loop_name = "rx_0", reduction}
            %c0_0 = arith.constant 0 : index
            %5 = affine.load %4[%c0_0] {from = "sum_rv"} : memref<1xi32>
            affine.store %5, %0[%arg2 - 2, %3] : memref<8x8xi32>
          } {loop_name = "x.inner"}
        }
      } {loop_name = "y"}
    } {loop_name = "x.outer", op_name = "compute_1"}
    
    %s = hcl.create_op_handle "compute_1"
    %inner = hcl.create_loop_handle %s, "x.inner"
    %7 = hcl.reuse_at(%1 : memref<3x10xi32>, %inner) -> memref<3x3xi32>
    
    return %0 : memref<8x8xi32>
  }
}

