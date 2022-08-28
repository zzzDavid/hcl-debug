module {
  func.func @top() -> memref<2xi32> attributes {itypes = "", otypes = "u"} {
    %0 = memref.alloc() {name = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %c52_i8 = arith.constant {unsigned} 52 : i8
    %c18_i8 = arith.constant {unsigned} 18 : i8
    %1 = hcl.struct_construct(%c52_i8, %c18_i8) : i8, i8 -> <i8, i8>
    affine.store %1, %0[0] {to = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %2 = affine.load %0[0] {from = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %3 = memref.alloc() {name = "compute_0", unsigned} : memref<2xi32>
    affine.for %arg0 = 0 to 2 {
      %c0_i32 = arith.constant {unsigned} 0 : i32
      affine.store %c0_i32, %3[%arg0] {to = "compute_0"} : memref<2xi32>
    } {loop_name = "i", op_name = "compute_0"}
    %4 = hcl.struct_get %2[1] : <i8, i8> -> i8
    %5 = arith.extsi %4 {unsigned} : i8 to i32
    affine.store %5, %3[0] {to = "compute_0", unsigned} : memref<2xi32>
    %6 = hcl.struct_get %2[0] : <i8, i8> -> i8
    %7 = arith.extsi %6 {unsigned} : i8 to i32
    affine.store %7, %3[1] {to = "compute_0", unsigned} : memref<2xi32>
    return %3 : memref<2xi32>
  }
}
