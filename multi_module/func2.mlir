module {
    func.func @func1(%0 : memref<4x4xf32>) -> () {
        affine.for %arg0 = 0 to 4 {
            affine.for %arg1 = 0 to 4 {
                %1 = affine.load %0[%arg0, %arg1] : memref<4x4xf32>
                %2 = arith.addf %1, %1 : f32
                affine.store %2, %0[%arg0, %arg1] : memref<4x4xf32>
            }
        }
        func.return
    }
}