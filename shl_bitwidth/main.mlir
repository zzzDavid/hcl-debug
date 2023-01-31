module {
    func.func private @printMemrefI32(%ptr : memref<*xi32>)

    func.func @top () -> () {
        // allocate a memref<1xi32> and store a constant 50 into it
        %0 = memref.alloc() : memref<1xi32>
        %1 = arith.constant 50 : i32
        affine.store %1, %0[0] : memref<1xi32>

        // load the value from memref and shift left for 32 bits
        %2 = affine.load %0[0] : memref<1xi32>
        %cst_32 = arith.constant 32 : i32
        %3 = arith.shli %2, %cst_32 : i32
        
        // store it back to memref
        affine.store %3, %0[0] : memref<1xi32>

        // print memref
        %casted_memref = memref.cast %0 : memref<1xi32> to memref<*xi32>
        call @printMemrefI32(%casted_memref) : (memref<*xi32>) -> ()

        return
    }
    func.func @main() -> () {
        call @top() : () -> ()
        return
    }
}