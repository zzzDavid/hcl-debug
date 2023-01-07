module {
  func.func @top(%arg0: memref<10x32xi32>, %arg1: memref<10x32xi32>) -> memref<10x32xi32> attributes {dataflow, itypes = "ss", otypes = "s"} {
    %0 = memref.alloc() {name = "C"} : memref<10x32xi32>
    %1 = hcl.create_op_handle "C"
    %2 = hcl.create_loop_handle %1, "i"
    %3 = hcl.create_loop_handle %1, "j"
    affine.for %arg2 = 0 to 10 {
      affine.for %arg3 = 0 to 32 {
        %8 = affine.load %arg0[%arg2, %arg3] {from = "A"} : memref<10x32xi32>
        %9 = affine.load %arg1[%arg2, %arg3] {from = "B"} : memref<10x32xi32>
        %10 = arith.addi %8, %9 : i32
        affine.store %10, %0[%arg2, %arg3] {to = "C"} : memref<10x32xi32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "C"}
    %4 = memref.alloc() {name = "D"} : memref<10x32xi32>
    %5 = hcl.create_op_handle "D"
    %6 = hcl.create_loop_handle %5, "i"
    %7 = hcl.create_loop_handle %5, "j"
    affine.for %arg2 = 0 to 10 {
      affine.for %arg3 = 0 to 32 {
        %8 = affine.load %0[%arg2, %arg3] {from = "C"} : memref<10x32xi32>
        affine.store %8, %4[%arg2, %arg3] {to = "D"} : memref<10x32xi32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "D"}
    hcl.inter_kernel_to(%0 : memref<10x32xi32>, %5, -1)
    hcl.outline(%1)
    hcl.outline(%5)
    return %4 : memref<10x32xi32>
  }
}
