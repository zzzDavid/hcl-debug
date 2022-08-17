module{
func.func @top(%arg0: memref<10x20x30xi32>) -> memref<10x20x30xi32> attributes {itypes = "s", otypes = "s"} {
  %0 = hcl.create_op_handle "B"
  %1 = hcl.create_loop_handle %0, "i"
  %2 = hcl.create_loop_handle %0, "j"
  %3 = hcl.create_loop_handle %0, "m"
  %4 = memref.alloc() {name = "B"} : memref<10x20x30xi32>
  %5 = hcl.create_op_handle "C"
  %6 = hcl.create_loop_handle %5, "ii"
  %7 = hcl.create_loop_handle %5, "jj"
  %8 = hcl.create_loop_handle %5, "mm"
  %9 = memref.alloc() {name = "C"} : memref<10x20x30xi32>
  affine.for %arg1 = 0 to 10 {
    affine.for %arg2 = 0 to 20 {
      affine.for %arg3 = 0 to 30 {
        %15 = affine.load %arg0[%arg1, %arg2, %arg3] {from = "A"} : memref<10x20x30xi32>
        %c2_i32 = arith.constant 2 : i32
        %16 = arith.muli %15, %c2_i32 : i32
        affine.store %16, %4[%arg1, %arg2, %arg3] {to = "B"} : memref<10x20x30xi32>
      } {loop_name = "m"}
      affine.for %arg3 = 0 to 30 {
        %15 = affine.load %4[%arg1, %arg2, %arg3] {from = "B"} : memref<10x20x30xi32>
        %c1_i32 = arith.constant 1 : i32
        %16 = arith.addi %15, %c1_i32 : i32
        affine.store %16, %9[%arg1, %arg2, %arg3] {to = "C"} : memref<10x20x30xi32>
      } {loop_name = "mm"}
    } {loop_name = "jj"}
  } {loop_name = "ii", op_name = "C"}
  %10 = hcl.create_op_handle "D"
  %11 = hcl.create_loop_handle %10, "iii"
  %12 = hcl.create_loop_handle %10, "jjj"
  %13 = hcl.create_loop_handle %10, "mmm"
  %14 = memref.alloc() {name = "D"} : memref<10x20x30xi32>
  affine.for %arg1 = 0 to 10 {
    affine.for %arg2 = 0 to 20 {
      affine.for %arg3 = 0 to 30 {
        %15 = affine.load %9[%arg1, %arg2, %arg3] {from = "C"} : memref<10x20x30xi32>
        %c3_i32 = arith.constant 3 : i32
        %16 = arith.remsi %15, %c3_i32 : i32
        affine.store %16, %14[%arg1, %arg2, %arg3] {to = "D"} : memref<10x20x30xi32>
      } {loop_name = "mmm"}
    } {loop_name = "jjj"}
  } {loop_name = "iii", op_name = "D"}
  hcl.compute_at(%0, %5, %7)
  return %14 : memref<10x20x30xi32>
}
}