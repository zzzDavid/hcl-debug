module {
    func.func private @printMemrefF32(%ptr : memref<*xf32>)
    func.func private @printMemrefF64(%ptr : memref<*xf64>)
    func.func private @printMemrefI32(%ptr : memref<*xi32>)
    func.func private @printMemrefI64(%ptr : memref<*xi64>)

    func.func @top(%arg0 : memref<3x3x3xi32>, %arg1 : memref<3x3x3xi64>, %arg2 : memref<3x3x3xf32>, %arg3 : memref<3x3x3xf64>)->() attributes {llvm.emit_c_interface}{
        %arg0_casted = memref.cast %arg0 : memref<3x3x3xi32> to memref<*xi32>
        %arg1_casted = memref.cast %arg1 : memref<3x3x3xi64> to memref<*xi64>
        %arg2_casted = memref.cast %arg2 : memref<3x3x3xf32> to memref<*xf32>
        %arg3_casted = memref.cast %arg3 : memref<3x3x3xf64> to memref<*xf64>
        
        func.call @printMemrefI32(%arg0_casted) : (memref<*xi32>) -> ()
        func.call @printMemrefI64(%arg1_casted) : (memref<*xi64>) -> ()
        func.call @printMemrefF32(%arg2_casted) : (memref<*xf32>) -> ()
        func.call @printMemrefF64(%arg3_casted) : (memref<*xf64>) -> ()
        return
    }
}