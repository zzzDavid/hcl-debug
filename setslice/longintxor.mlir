module {
  func.func @top() attributes {itypes = "", otypes = ""} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "a"} : memref<1xi96>
    %c1_i32 = arith.constant 1 : i32
    %1 = arith.extsi %c1_i32 {unsigned} : i32 to i96
    affine.store %1, %0[%c0] {to = "a", unsigned} : memref<1xi96>
    %2 = affine.load %0[0] {from = "a", unsigned} : memref<1xi96>
    %c69_i32 = arith.constant 69 : i32
    %3 = arith.extsi %c69_i32 {unsigned} : i32 to i96
    %4 = arith.shli %2, %3 {unsigned} : i96
    %c96_i96 = arith.constant 96 : i96
    %5 = arith.cmpi uge, %3, %c96_i96 : i96
    %c0_i96 = arith.constant 0 : i96
    %6 = arith.select %5, %c0_i96, %4 {unsigned} : i96
    affine.store %6, %0[0] {to = "a", unsigned} : memref<1xi96>
    %7 = memref.alloc() {name = "b"} : memref<1xi96>
    %c-1_i32 = arith.constant -1 : i32
    %8 = arith.extsi %c-1_i32 {unsigned} : i32 to i96
    affine.store %8, %7[%c0] {to = "b", unsigned} : memref<1xi96>
    %9 = affine.load %0[0] {from = "a", unsigned} : memref<1xi96>
    %10 = affine.load %7[0] {from = "b", unsigned} : memref<1xi96>
    %11 = arith.xori %9, %10 {unsigned} : i96
    affine.store %11, %0[0] {to = "a", unsigned} : memref<1xi96>
    return
  }
}
