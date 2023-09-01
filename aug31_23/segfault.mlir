module {
  memref.global "private" constant @const_0 : memref<3xi64> = dense<[5, 2, 4]>
  memref.global "private" constant @const_1 : memref<2xi64> = dense<[5, 8]>
  func.func @kernel(%arg0: memref<5x3x2xf32>, %arg1: memref<4x3xf32>, %arg2: memref<4xf32>) -> memref<5x8xf32> attributes {itypes = "___", otypes = "_"} {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.sitofp %c1_i32 : i32 to f32
    %1 = arith.negf %0 : f32
    %c2_i32 = arith.constant 2 : i32
    %2 = arith.sitofp %c2_i32 : i32 to f32
    %3 = arith.negf %2 : f32
    %alloc = memref.alloc() {name = "output1"} : memref<5x2x3xf32>
    %c0_i32 = arith.constant 0 : i32
    %4 = arith.sitofp %c0_i32 : i32 to f32
    linalg.fill {op_name = "transpose_init_zero_0"} ins(%4 : f32) outs(%alloc : memref<5x2x3xf32>)
    linalg.transpose ins(%arg0 : memref<5x3x2xf32>) outs(%alloc : memref<5x2x3xf32>) permutation = [0, 2, 1]  {op_name = "transpose_1"}
    %alloc_0 = memref.alloc() : memref<5x2x4xf32>
    %c0_i32_1 = arith.constant 0 : i32
    %5 = arith.sitofp %c0_i32_1 : i32 to f32
    linalg.fill {op_name = "linear_init_zero_2"} ins(%5 : f32) outs(%alloc_0 : memref<5x2x4xf32>)
    %alloc_2 = memref.alloc() : memref<3x4xf32>
    %c0_i32_3 = arith.constant 0 : i32
    %6 = arith.sitofp %c0_i32_3 : i32 to f32
    linalg.fill {op_name = "transpose_init_zero_3"} ins(%6 : f32) outs(%alloc_2 : memref<3x4xf32>)
    linalg.transpose ins(%arg1 : memref<4x3xf32>) outs(%alloc_2 : memref<3x4xf32>) permutation = [1, 0]  {op_name = "transpose_4"}
    %alloc_4 = memref.alloc() : memref<5x2x4xf32>
    %c0_i32_5 = arith.constant 0 : i32
    %7 = arith.sitofp %c0_i32_5 : i32 to f32
    linalg.fill {op_name = "matmul_init_zero_5"} ins(%7 : f32) outs(%alloc_4 : memref<5x2x4xf32>)
    %alloc_6 = memref.alloc() : memref<5x3x4xf32>
    linalg.broadcast ins(%alloc_2 : memref<3x4xf32>) outs(%alloc_6 : memref<5x3x4xf32>) dimensions = [0] 
    %alloc_7 = memref.alloc() : memref<5x2x4xf32>
    %c0_i32_8 = arith.constant 0 : i32
    %8 = arith.sitofp %c0_i32_8 : i32 to f32
    linalg.fill {op_name = "bmm_init_zero_6"} ins(%8 : f32) outs(%alloc_7 : memref<5x2x4xf32>)
    linalg.batch_matmul {op_name = "bmm_7"} ins(%alloc, %alloc_6 : memref<5x2x3xf32>, memref<5x3x4xf32>) outs(%alloc_7 : memref<5x2x4xf32>)
    %alloc_9 = memref.alloc() : memref<5x2x4xf32>
    %c0_i32_10 = arith.constant 0 : i32
    %9 = arith.sitofp %c0_i32_10 : i32 to f32
    linalg.fill {op_name = "view_init_zero_8"} ins(%9 : f32) outs(%alloc_9 : memref<5x2x4xf32>)
    %10 = memref.get_global @const_0 : memref<3xi64>
    %reshape = memref.reshape %alloc_7(%10) : (memref<5x2x4xf32>, memref<3xi64>) -> memref<5x2x4xf32>
    %alloc_11 = memref.alloc() : memref<5x2x4xf32>
    linalg.broadcast ins(%arg2 : memref<4xf32>) outs(%alloc_11 : memref<5x2x4xf32>) dimensions = [0, 1] 
    %alloc_12 = memref.alloc() {name = "output2"} : memref<5x2x4xf32>
    %c0_i32_13 = arith.constant 0 : i32
    %11 = arith.sitofp %c0_i32_13 : i32 to f32
    linalg.fill {op_name = "add_init_zero_9"} ins(%11 : f32) outs(%alloc_12 : memref<5x2x4xf32>)
    linalg.add {op_name = "add_10"} ins(%reshape, %alloc_11 : memref<5x2x4xf32>, memref<5x2x4xf32>) outs(%alloc_12 : memref<5x2x4xf32>)
    %alloc_14 = memref.alloc() : memref<5x8xf32>
    %c0_i32_15 = arith.constant 0 : i32
    %12 = arith.sitofp %c0_i32_15 : i32 to f32
    linalg.fill {op_name = "view_init_zero_11"} ins(%12 : f32) outs(%alloc_14 : memref<5x8xf32>)
    %13 = memref.get_global @const_1 : memref<2xi64>
    %reshape_16 = memref.reshape %alloc_12(%13) {name = "output"} : (memref<5x2x4xf32>, memref<2xi64>) -> memref<5x8xf32>
    return %reshape_16 : memref<5x8xf32>
  }


  func.func @main() {
	%arg0 = memref.alloc() : memref<5x3x2xf32>
	%arg1 = memref.alloc() : memref<4x3xf32>
	%arg2 = memref.alloc() : memref<4xf32>
	%arg3 = func.call @kernel(%arg0, %arg1, %arg2) : (memref<5x3x2xf32>, memref<4x3xf32>, memref<4xf32>) -> memref<5x8xf32>
	return
  }

}