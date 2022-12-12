module {
  func.func @top() -> memref<2xi32> attributes {itypes = "", otypes = "s"} {
    %0 = memref.alloc() {name = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %c0 = arith.constant 0 : index
    %c18_i8 = arith.constant 18 : i8
    %c0_i8 = arith.constant 0 : i8
    %1 = hcl.struct_construct(%c18_i8, %c0_i8) : i8, i8 -> <i8, i8>
    affine.store %1, %0[0] {to = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %2 = affine.load %0[0] {from = "foo"} : memref<1x!hcl.struct<i8, i8>>
    %3 = hcl.struct_get %2[0] : <i8, i8> -> i8
    %4 = arith.extsi %3 : i8 to i16
    %5 = memref.alloc() {name = "ab"} : memref<1x!hcl.struct<i8, i8>>
    %c0_0 = arith.constant 0 : index
    %6 = hcl.int_to_struct(%4) : i16 -> <i8, i8>
    affine.store %6, %5[0] {to = "ab"} : memref<1x!hcl.struct<i8, i8>>
    %7 = affine.load %5[0] {from = "ab"} : memref<1x!hcl.struct<i8, i8>>
    %8 = memref.alloc() {name = "compute_0"} : memref<2xi32>
    %9 = hcl.create_op_handle "compute_0"
    %10 = hcl.create_loop_handle %9, "i"
    affine.for %arg0 = 0 to 2 {
      %c0_i32 = arith.constant 0 : i32
      affine.store %c0_i32, %8[%arg0] {to = "compute_0"} : memref<2xi32>
    } {loop_name = "i", op_name = "compute_0"}
    return %8 : memref<2xi32>
  }
}
