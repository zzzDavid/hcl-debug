module {
  func.func private @convert_1(memref<1x2x3x3xf32>) -> memref<1x2x3x3x!hcl.Fixed<8, 4>>
  func.func private @convert_2(memref<1x2x3x3x!hcl.Fixed<8, 4>>) -> memref<1x2x3x3xf32>
  func.func @main() {
    %0 = memref.alloc() : memref<1x2x3x3xf32>
    %1 = call @convert_1(%0) : (memref<1x2x3x3xf32>) -> memref<1x2x3x3x!hcl.Fixed<8, 4>>
    %2 = call @convert_2(%1) : (memref<1x2x3x3x!hcl.Fixed<8, 4>>) -> memref<1x2x3x3xf32>
    return
  }
}