module {
  func.func @top(%arg0: memref<10xf32>) -> memref<10xf32> attributes {itypes = "_", otypes = "_"} {
    %0 = memref.alloc() {name = "B"} : memref<10xf32>
    %1 = hcl.create_op_handle "B"
    %2 = hcl.create_loop_handle %1, "x"
    affine.for %arg1 = 0 to 10 {
      %3 = affine.load %arg0[%arg1] {from = "compute_0"} : memref<10xf32>
      %4 = math.tanh %3 : f32
      affine.store %4, %0[%arg1] {to = "B"} : memref<10xf32>
    } {loop_name = "x", op_name = "B"}
    return %0 : memref<10xf32>
  }
}
