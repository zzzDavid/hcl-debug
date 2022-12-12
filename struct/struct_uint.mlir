module {
  func.func @top() -> memref<1xi32> attributes {itypes = "", otypes = "u"} {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.trunci %c0_i32 {unsigned} : i32 to i16
    %1 = memref.alloc() {name = "d"} : memref<1x!hcl.struct<i8, i8>>
    %c0 = arith.constant 0 : index
    %2 = hcl.int_to_struct(%0) {unsigned} : i16 -> <i8, i8>
    affine.store %2, %1[0] {to = "d"} : memref<1x!hcl.struct<i8, i8>>
    %3 = affine.load %1[0] {from = "d"} : memref<1x!hcl.struct<i8, i8>>
    %4 = memref.alloc() {name = "compute_0", unsigned} : memref<1xi32>
    %5 = hcl.create_op_handle "compute_0"
    %6 = hcl.create_loop_handle %5, "_"
    affine.for %arg0 = 0 to 1 {
      %c0_i32_2 = arith.constant {unsigned} 0 : i32
      affine.store %c0_i32_2, %4[%arg0] {to = "compute_0"} : memref<1xi32>
    } {loop_name = "_", op_name = "compute_0"}
    %7 = arith.extui %0 {unsigned} : i16 to i24
    %8 = memref.alloc() {name = "d_nested"} : memref<1x!hcl.struct<i8, !hcl.struct<i8, i8>>>
    %c0_0 = arith.constant 0 : index
    %9 = hcl.int_to_struct(%7) {unsigned} : i24 -> <i8, !hcl.struct<i8, i8>>
    affine.store %9, %8[0] {to = "d_nested"} : memref<1x!hcl.struct<i8, !hcl.struct<i8, i8>>>
    %10 = hcl.struct_get %3[0] : <i8, i8> -> i8
    %c0_1 = arith.constant 0 : index
    %11 = arith.extsi %10 {unsigned} : i8 to i32
    affine.store %11, %4[0] {to = "compute_0", unsigned} : memref<1xi32>
    return %4 : memref<1xi32>
  }
}
