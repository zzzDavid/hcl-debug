module {
  func.func @top() -> memref<2xi32> attributes {itypes = "", otypes = "u"} {
    %0 = memref.alloc() {name = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %c18_i8 = arith.constant {unsigned} 18 : i8
    %c0_i8 = arith.constant {unsigned} 0 : i8
    %1 = hcl.struct_construct(%c18_i8, %c0_i8) : i8, i8 -> <i8, i8>
    affine.store %1, %0[0] {to = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %2 = memref.alloc() {name = "compute_23", unsigned} : memref<2xi32>
    affine.for %arg0 = 0 to 2 {
      %c0_i32 = arith.constant {unsigned} 0 : i32
      affine.store %c0_i32, %2[%arg0] {to = "compute_23"} : memref<2xi32>
    } {loop_name = "i", op_name = "compute_23"}
    return %2 : memref<2xi32>
  }
}
