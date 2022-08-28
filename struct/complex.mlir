module {
  func.func @top(%arg0: memref<100xi32>, %arg1: memref<100xi32>, %arg2: memref<100xi32>, %arg3: memref<100x6xi32>) attributes {itypes = "ssss", otypes = ""} {
    %0 = memref.alloc() {name = "compute_4"} : memref<100x!hcl.struct<i32, i32, i32>>
    affine.for %arg4 = 0 to 100 {
      %2 = affine.load %arg0[%arg4] {from = "compute_0"} : memref<100xi32>
      %3 = affine.load %arg1[%arg4] {from = "compute_1"} : memref<100xi32>
      %4 = affine.load %arg2[%arg4] {from = "compute_2"} : memref<100xi32>
      %5 = hcl.struct_construct(%2, %3, %4) : i32, i32, i32 -> <i32, i32, i32>
      affine.store %5, %0[%arg4] {to = "compute_4"} : memref<100x!hcl.struct<i32, i32, i32>>
    } {loop_name = "x", op_name = "compute_4"}
    %1 = memref.alloc() {name = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
    affine.for %arg4 = 0 to 100 {
      %2 = affine.load %0[%arg4] {from = "compute_4"} : memref<100x!hcl.struct<i32, i32, i32>>
      %3 = hcl.struct_get %2[0] : <i32, i32, i32> -> i32
      %4 = arith.muli %3, %3 : i32
      %5 = hcl.struct_get %2[1] : <i32, i32, i32> -> i32
      %6 = arith.muli %5, %5 : i32
      %7 = hcl.struct_get %2[2] : <i32, i32, i32> -> i32
      %8 = arith.muli %7, %7 : i32
      %9 = arith.muli %3, %5 : i32
      %10 = arith.muli %5, %7 : i32
      %11 = arith.muli %3, %7 : i32
      %12 = hcl.struct_construct(%4, %6, %8, %9, %10, %11) : i32, i32, i32, i32, i32, i32 -> <i32, i32, i32, i32, i32, i32>
      affine.store %12, %1[%arg4] {to = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
    } {loop_name = "x", op_name = "compute_5"}
    affine.for %arg4 = 0 to 100 {
      %2 = affine.load %1[%arg4] {from = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
      %3 = hcl.struct_get %2[0] : <i32, i32, i32, i32, i32, i32> -> i32
      affine.store %3, %arg3[%arg4, 0] {to = "compute_3"} : memref<100x6xi32>
      %4 = affine.load %1[%arg4] {from = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
      %5 = hcl.struct_get %4[1] : <i32, i32, i32, i32, i32, i32> -> i32
      affine.store %5, %arg3[%arg4, 1] {to = "compute_3"} : memref<100x6xi32>
      %6 = affine.load %1[%arg4] {from = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
      %7 = hcl.struct_get %6[2] : <i32, i32, i32, i32, i32, i32> -> i32
      affine.store %7, %arg3[%arg4, 2] {to = "compute_3"} : memref<100x6xi32>
      %8 = affine.load %1[%arg4] {from = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
      %9 = hcl.struct_get %8[3] : <i32, i32, i32, i32, i32, i32> -> i32
      affine.store %9, %arg3[%arg4, 3] {to = "compute_3"} : memref<100x6xi32>
      %10 = affine.load %1[%arg4] {from = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
      %11 = hcl.struct_get %10[4] : <i32, i32, i32, i32, i32, i32> -> i32
      affine.store %11, %arg3[%arg4, 4] {to = "compute_3"} : memref<100x6xi32>
      %12 = affine.load %1[%arg4] {from = "compute_5"} : memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
      %13 = hcl.struct_get %12[5] : <i32, i32, i32, i32, i32, i32> -> i32
      affine.store %13, %arg3[%arg4, 5] {to = "compute_3"} : memref<100x6xi32>
    } {loop_name = "loop_0"}
    return
  }
}
