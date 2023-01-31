// input 
module {
  func.func @A(%arg0 : memref<100xi32>, %arg1 : memref<100xi32>) -> memref<100xi32> {
    %res = memref.alloc() : memref<100xi32>
    affine.for %arg2 = 0 to 100 {
      %0 = affine.load %arg0[%arg2] : memref<100xi32>
      %1 = affine.load %arg1[%arg2] : memref<100xi32>
      %2 = arith.muli %0, %1 : i32
      affine.store %2, %res[%arg2] : memref<100xi32>
    } 
    func.return %res : memref<100xi32>
  }
}

// %fifo = hcl.create_fifo "load_fifo" : !hcl.fifo<16xi32>
// %0 = hcl.fifo_get %fifo : !hcl.fifo<16xi32>
// %1 = hcl.fifo_get %fifo : !hcl.fifo<16xi32>
// hcl.fifo_put %fifo, %2 : !hcl.fifo<16xi32>

// output
module {
  func.func @loader(%target0 : memref<100xi32>, %target1 : memref<100xi32>, %induction_var : index) -> (i32, i32) {
    %0 = affine.load %target0[%induction_var] : memref<100xi32>
    %1 = affine.load %target1[%induction_var] : memref<100xi32>
    func.return %0, %1 : i32, i32 {fifo_depth = 16}
  }

  func.func @A(%arg0 : memref<100xi32>, %arg1 : memref<100xi32>) -> memref<100xi32> {
    %res = memref.alloc() : memref<100xi32>
    affine.for %arg2 = 0 to 100 {
      %0, %1 = func.call @loader(%arg0, %arg1, %arg2) : (memref<100xi32>, memref<100xi32>, index) -> (i32, i32)
      %2 = arith.muli %0, %1 : i32
      affine.store %2, %res[%arg2] : memref<100xi32>
    }
    func.return %res : memref<100xi32>
  }
}
