module {
    memref.global "private" @gv0 : memref<4x4xf32> = dense<[[1.0, 2.0, 3.0, 4.0], [1.0, 2.0, 3.0, 4.0], [1.0, 2.0, 3.0, 4.0], [1.0, 2.0, 3.0, 4.0]]>
    func.func private @func1(%arg0 : memref<4x4xf32>) -> ()
    func.func private @func2(%arg0 : memref<4x4xf32>) -> ()
    func.func private @printMemrefF32(%ptr : memref<*xf32>)
    func.func @main() -> () {
        %0 = memref.get_global @gv0 : memref<4x4xf32>
        func.call @func1(%0) : (memref<4x4xf32>) -> ()
        func.call @func2(%0) : (memref<4x4xf32>) -> ()
        %casted = memref.cast %0 : memref<4x4xf32> to memref<*xf32>
        func.call @printMemrefF32(%casted) : (memref<*xf32>) -> ()
        func.return
    }
}

module {
    func.func @top() -> () {
        func.return
    }
}