module {

  memref.global "private" @gv0 : memref<10xi6> = dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]>
  func.func @top() -> () attributes {itypes = "s", llvm.emit_c_interface, otypes = "s", top} {
    %arg0 = memref.get_global @gv0 : memref<10xi6>
    %0 = memref.alloc() {name = "cast"} : memref<10xi8>
    affine.for %arg1 = 0 to 10 {
      %3 = affine.load %arg0[%arg1] {from = "A"} : memref<10xi6>
      %c4_i8 = arith.constant 4 : i8
      %extended = arith.extsi %3 : i6 to i8
      %5 = arith.shli %extended, %c4_i8 : i8
      
    //   %4 = arith.shli %3, %c4_i6 : i6
    //   %5 = arith.extsi %4 : i6 to i8
      affine.store %5, %0[%arg1] {to = "cast"} : memref<10xi8>
    } {loop_name = "i0", op_name = "cast"}

    hcl.print_memref(%0) : memref<10xi8>

    %1 = memref.alloc() : memref<10xf64>
    affine.for %arg1 = 0 to 10 {
      %3 = affine.load %0[%arg1] : memref<10xi8>

      // try just do sign int to float
      // %4 = arith.sitofp %3 : i8 to f64
      // affine.store %4, %1[%arg1] : memref<10xf64>
      // I got: 
      // [0,  16,  -32,  -16,  0,  16,  -32,  -16,  0,  16]

      // try int extension first
      %4 = arith.extsi %3 : i8 to i64
      %5 = arith.sitofp %4 : i64 to f64
      affine.store %5, %1[%arg1] : memref<10xf64>
      // still
      // [0,  16,  -32,  -16,  0,  16,  -32,  -16,  0,  16]


    //   %cst = arith.constant 1.600000e+01 : f64
    //   %5 = arith.divf %4, %cst : f64
    //   affine.store %5, %1[%arg1] : memref<10xf64>
    }
    hcl.print_memref(%1) : memref<10xf64>
    %2 = memref.alloc() : memref<10xi64>
    affine.for %arg1 = 0 to 10 {
      %3 = affine.load %0[%arg1] : memref<10xi8>
      %4 = arith.extsi %3 : i8 to i64
      affine.store %4, %2[%arg1] : memref<10xi64>
    }
    return
  }
}