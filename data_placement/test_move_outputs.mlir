module {
  func.func @top(%arg0: memref<10x32xi32>) -> memref<10x32xi32> attributes {itypes = "s", otypes = "s"} {
    %0 = memref.alloc() {name = "B"} : memref<10x32xi32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 32 {
        %1 = affine.load %arg0[%arg1, %arg2] {from = "A"} : memref<10x32xi32>
        %c2_i32 = arith.constant 2 : i32
        %2 = arith.extsi %1 : i32 to i64
        %3 = arith.extsi %c2_i32 : i32 to i64
        %4 = arith.muli %2, %3 : i64
        %5 = arith.trunci %4 : i64 to i32
        affine.store %5, %0[%arg1, %arg2] {to = "B"} : memref<10x32xi32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "B"}
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 32 {
        %1 = affine.load %0[%arg1, %arg2] {from = "B"} : memref<10x32xi32>
        %c1_i32 = arith.constant 1 : i32
        %2 = arith.extsi %1 : i32 to i33
        %3 = arith.extsi %c1_i32 : i32 to i33
        %4 = arith.addi %2, %3 : i33
        %5 = arith.trunci %4 : i33 to i32
        affine.store %5, %0[%arg1, %arg2] {to = "B"} : memref<10x32xi32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "update1"}
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 32 {
        %1 = affine.load %0[%arg1, %arg2] {from = "B"} : memref<10x32xi32>
        %c2_i32 = arith.constant 2 : i32
        %2 = arith.extsi %1 : i32 to i64
        %3 = arith.extsi %c2_i32 : i32 to i64
        %4 = arith.muli %2, %3 : i64
        %5 = arith.trunci %4 : i64 to i32
        affine.store %5, %0[%arg1, %arg2] {to = "B"} : memref<10x32xi32>
      } {loop_name = "j"}
    } {loop_name = "i", op_name = "update2"}
    // host-xcel data placement
    hcl.host_xcel_to(%arg0: memref<10x32xi32>, FPGADevice)
    %s1 = hcl.create_op_handle "update1"
    %l1 = hcl.create_loop_handle %s1, "i"
    hcl.host_xcel_to(%0: memref<10x32xi32>, CPUDevice, %l1)
    return %0 : memref<10x32xi32>
  }
}
