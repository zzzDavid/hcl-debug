module {

func.func @top(%arg0: memref<10x10xui32>) -> memref<10x8xui32> {
%3 = memref.alloc() {name = "compute_1"} : memref<10x8xui32>
    affine.for %arg1 = 0 to 10 {
      affine.for %arg2 = 0 to 8 {
        %5 = affine.load %arg0[%arg1, %arg2] {from = "compute_0"} : memref<10x10xui32>
        %6 = affine.load %arg0[%arg1, %arg2 + 1] {from = "compute_0"} : memref<10x10xui32>
        %7 = arith.addi %5, %6 : ui32
        %8 = affine.load %arg0[%arg1, %arg2 + 2] {from = "compute_0"} : memref<10x10xui32>
        %9 = arith.addi %7, %8 : ui32
        affine.store %9, %3[%arg1, %arg2] {to = "compute_1"} : memref<10x8xui32>
      } {loop_name = "x"}
    } {loop_name = "y", op_name = "compute_1"}
    return %3 : memref<10x8xui32>
}

}