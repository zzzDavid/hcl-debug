func.func @gemm(%arg0 : memref<1024x512xf32>,
           %arg1 : memref<512x256xf32>,
           %arg2 : memref<1024x256xf32>)
{
  linalg.matmul ins(%arg0, %arg1: memref<1024x512xf32>, memref<512x256xf32>)
               outs(%arg2: memref<1024x256xf32>)
  return
}

func.func @top() {
    %0 = memref.alloc() : memref<1024x512xf32>
    %1 = memref.alloc() : memref<512x256xf32>
    %2 = memref.alloc() : memref<1024x256xf32>

    call @gemm(%0, %1, %2) : (memref<1024x512xf32>, memref<512x256xf32>, memref<1024x256xf32>) -> ()

    return
}

func.func @main() {
    affine.for %arg1 = 0 to 10 {
        func.call @top() : () -> ()
    }
    return
}