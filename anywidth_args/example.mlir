module {
  func.func private @printMemrefI64(memref<*xi64>)
  func.func @main(%arg0: memref<3xi23>) attributes {llvm.emit_c_interface} {
    %0 = memref.alloc() : memref<3xi64>
    affine.for %arg1 = 0 to 3 {
      %2 = affine.load %arg0[%arg1] : memref<3xi23>
      %3 = arith.extsi %2 : i23 to i64
      affine.store %3, %0[%arg1] : memref<3xi64>
    }
    %1 = memref.cast %0 : memref<3xi64> to memref<*xi64>
    call @printMemrefI64(%1) : (memref<*xi64>) -> ()
    return
  }
}

