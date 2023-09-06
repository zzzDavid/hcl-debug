module {
  func.func @kernel(%arg0: memref<2x16x32xf32>) -> memref<2x16x32xf32> attributes {itypes = "_", otypes = "_"} {
    %alloc = memref.alloc() {name = "outs"} : memref<2x16x32xf32>
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.sitofp %c0_i32 : i32 to f32
    linalg.fill {op_name = "softmax_init_zero_0"} ins(%0 : f32) outs(%alloc : memref<2x16x32xf32>)
    linalg.softmax {op_name = "softmax_1"} dimension(2) ins(%arg0 : memref<2x16x32xf32>) outs(%alloc : memref<2x16x32xf32>)
    return %alloc : memref<2x16x32xf32>
  }
}