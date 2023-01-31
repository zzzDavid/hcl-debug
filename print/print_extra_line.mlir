module {
  func.func @top() -> () attributes {itypes = "", otypes = "u"} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "ip"} : memref<1xi32>
    %c10_i32 = arith.constant 10 : i32
    affine.store %c10_i32, %0[%c0] {to = "ip", unsigned} : memref<1xi32>
    %1 = memref.alloc() {name = "tel"} : memref<1xi32>
    affine.store %c10_i32, %1[%c0] {to = "tel", unsigned} : memref<1xi32>
    %2 = memref.alloc() {name = "a1"} : memref<1xi11>
    %c1_i32 = arith.constant 1 : i32
    %3 = arith.trunci %c1_i32 {unsigned} : i32 to i11
    affine.store %3, %2[%c0] {to = "a1", unsigned} : memref<1xi11>
    %4 = memref.alloc() {name = "y1"} : memref<1xi21>
    %c265_i32 = arith.constant 265 : i32
    %5 = arith.trunci %c265_i32 {unsigned} : i32 to i21
    affine.store %5, %4[%c0] {to = "y1", unsigned} : memref<1xi21>
    %c0_i32 = arith.constant 0 : i32
    hcl.print(%c0_i32) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
    %6 = affine.load %0[0] {from = "ip", unsigned} : memref<1xi32>
    hcl.print(%6) {format = "ip=%d ", signedness = "u"} : i32
    %7 = affine.load %1[0] {from = "tel", unsigned} : memref<1xi32>
    hcl.print(%7) {format = "cnt=%d ", signedness = "u"} : i32
    %8 = affine.load %2[0] {from = "a1", unsigned} : memref<1xi11>
    %9 = affine.load %4[0] {from = "y1", unsigned} : memref<1xi21>
    hcl.print(%8, %9) {format = "mload spadaddr=%d hbmaddr=%d\00", signedness = "uu"} : i11, i21
    hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
    %10 = memref.alloc() {name = "tensor_0"} : memref<2xi32>
    affine.for %arg0 = 0 to 2 {
      affine.store %c0_i32, %10[%arg0] {to = "tensor_0", unsigned} : memref<2xi32>
    } {loop_name = "i", op_name = "tensor_0"}
    return
  }
}
