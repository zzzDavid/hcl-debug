module {
  func.func private @printMemrefF64(memref<*xf64>)
  memref.global "private" @gv_cst : memref<1xi64> = dense<8>
  memref.global "private" @gv_f64 : memref<1xf64> = dense<8.000000e+00>
  func.func @top() {
    %0 = memref.get_global @gv_f64 : memref<1xf64>
    %1 = memref.cast %0 : memref<1xf64> to memref<*xf64>
    func.call @printMemrefF64(%1) : (memref<*xf64>) -> ()
    return
  }
}

