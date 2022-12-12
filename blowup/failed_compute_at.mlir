#map0 = affine_map<(d0) -> (3, d0 * -3 + 10)>
#map1 = affine_map<(d0) -> (3, d0 * -3 + 20)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 3)>
module {
  func.func @top(%arg0: memref<10x20x30xi32>) -> memref<10x20x30xi32> attributes {itypes = "s", otypes = "s"} {
    %0 = memref.alloc() {name = "C"} : memref<10x20x30xi32>
    affine.for %arg1 = 0 to 4 {
      affine.for %arg2 = 0 to min #map0(%arg1) {
        affine.for %arg3 = 0 to 7 {
          affine.for %arg4 = 0 to min #map1(%arg3) {
            affine.for %arg5 = 0 to 30 {
              %1 = affine.apply #map2(%arg4, %arg3)
              %2 = affine.apply #map2(%arg2, %arg1)
              %3 = affine.load %arg0[%2, %1, %arg5] {from = "A"} : memref<10x20x30xi32>
              %c2_i32 = arith.constant 2 : i32
              %4 = arith.muli %3, %c2_i32 : i32
              %c1_i32 = arith.constant 1 : i32
              %5 = arith.addi %4, %c1_i32 : i32
              affine.store %5, %0[%2, %1, %arg5] {to = "C"} : memref<10x20x30xi32>
            } {loop_name = "mm"}
          } {loop_name = "jj.inner"}
        } {loop_name = "jj.outer"}
      } {loop_name = "ii.inner"}
    } {loop_name = "ii.outer", op_name = "C"}
    return %0 : memref<10x20x30xi32>
  }
}
