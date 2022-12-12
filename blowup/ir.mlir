module {
  func.func @top(%arg100 : memref<1xi32>) -> memref<1xi32> attributes {itypes = "", otypes = "u"} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "compute_0", unsigned} : memref<1xi32>
    %c0_i32 = arith.constant {unsigned} 0 : i32
    affine.store %c0_i32, %0[%c0] {to = "compute_0"} : memref<1xi32>
    %1 = memref.alloc() {name = "cnt", unsigned} : memref<1xi32>
    affine.store %c0_i32, %1[0] {to = "cnt", unsigned} : memref<1xi32>
    scf.while : () -> () {
      %2 = affine.load %1[0] {from = "cnt", unsigned} : memref<1xi32>
      %c10000_i32 = arith.constant 10000 : i32
      %3 = arith.cmpi slt, %2, %c10000_i32 : i32
      scf.condition(%3)
    } do {
      %2 = affine.load %1[0] {from = "cnt", unsigned} : memref<1xi32>
      %c1_i32 = arith.constant 1 : i32
      %3 = arith.addi %2, %c1_i32 : i32
      affine.store %3, %1[0] {to = "cnt", unsigned} : memref<1xi32>
      %4 = memref.alloc() {name = "tmp", unsigned} : memref<8192xi32>
      affine.for %arg0 = 0 to 8192 {
        affine.store %c0_i32, %4[%arg0] {to = "tmp"} : memref<8192xi32>
      } {loop_name = "i", op_name = "tmp"}
      %7 = affine.load %0[0] {from = "compute_0", unsigned} : memref<1xi32>
      %8 = affine.load %4[0] {from = "tmp", unsigned} : memref<8192xi32>
      %9 = arith.addi %7, %8 {unsigned} : i32
      affine.store %9, %0[0] {to = "compute_0", unsigned} : memref<1xi32>
      scf.yield
    }
    return %0 : memref<1xi32>
  }
}
