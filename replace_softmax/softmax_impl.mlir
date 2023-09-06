#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  func.func @softmax(%arg0: memref<2x16x32xf32>, %arg1: memref<2x16x32xf32>) -> memref<2x16x32xf32> {
    %alloc = memref.alloc() : memref<2x16xf32>
    %cst = arith.constant 0xFF800000 : f32
    linalg.fill ins(%cst : f32) outs(%alloc : memref<2x16xf32>)
    linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg0 : memref<2x16x32xf32>) outs(%alloc : memref<2x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %0 = arith.maxf %in, %out : f32
      linalg.yield %0 : f32
    }
    linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg0, %alloc : memref<2x16x32xf32>, memref<2x16xf32>) outs(%arg1 : memref<2x16x32xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %0 = arith.subf %in, %in_2 : f32
      %1 = math.exp %0 : f32
      linalg.yield %1 : f32
    }
    %alloc_0 = memref.alloc() : memref<2x16xf32>
    %cst_1 = arith.constant 0.000000e+00 : f32
    linalg.fill ins(%cst_1 : f32) outs(%alloc_0 : memref<2x16xf32>)
    linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg1 : memref<2x16x32xf32>) outs(%alloc_0 : memref<2x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %0 = arith.addf %in, %out : f32
      linalg.yield %0 : f32
    }
    linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg1, %alloc_0 : memref<2x16x32xf32>, memref<2x16xf32>) outs(%arg1 : memref<2x16x32xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %0 = arith.divf %in, %in_2 : f32
      linalg.yield %0 : f32
    }
    return %arg1 : memref<2x16x32xf32>
  }
}
