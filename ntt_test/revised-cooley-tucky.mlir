module {
  func @top(%arg0: memref<8xi32>, %arg1: memref<4xi32>, %arg2: memref<1xi32>) -> memref<8xi32> attributes {itypes = "uuu", otypes = "u"} {
    %0 = memref.alloc() {name = "alloc:A_b", unsigned} : memref<8xi32>
    affine.for %arg3 = 0 to 8 {
      %c0_i32_0 = arith.constant {unsigned} 0 : i32
      affine.store %c0_i32_0, %0[%arg3] {to = "alloc:A_b"} : memref<8xi32>
    } {loop_name = "i0", stage_name = "alloc:A_b"}
    %1 = affine.load %arg0[0] {from = "A", unsigned} : memref<8xi32>
    affine.store %1, %0[0] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %2 = affine.load %arg0[4] {from = "A", unsigned} : memref<8xi32>
    affine.store %2, %0[1] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %3 = affine.load %arg0[2] {from = "A", unsigned} : memref<8xi32>
    affine.store %3, %0[2] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %4 = affine.load %arg0[6] {from = "A", unsigned} : memref<8xi32>
    affine.store %4, %0[3] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %5 = affine.load %arg0[1] {from = "A", unsigned} : memref<8xi32>
    affine.store %5, %0[4] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %6 = affine.load %arg0[5] {from = "A", unsigned} : memref<8xi32>
    affine.store %6, %0[5] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %7 = affine.load %arg0[3] {from = "A", unsigned} : memref<8xi32>
    affine.store %7, %0[6] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %8 = affine.load %arg0[7] {from = "A", unsigned} : memref<8xi32>
    affine.store %8, %0[7] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %9 = memref.alloc() {name = "size", unsigned} : memref<1xi32>
    %c1_i32 = arith.constant {unsigned} 1 : i32
    affine.store %c1_i32, %9[0] {to = "size", unsigned} : memref<1xi32>
    %10 = memref.alloc() {name = "half", unsigned} : memref<1xi32>
    affine.store %c1_i32, %10[0] {to = "half", unsigned} : memref<1xi32>
    %11 = memref.alloc() {name = "step", unsigned} : memref<1xi32>
    %c8_i32 = arith.constant {unsigned} 8 : i32
    affine.store %c8_i32, %11[0] {to = "step", unsigned} : memref<1xi32>
    %12 = memref.alloc() {name = "k", unsigned} : memref<1xi32>
    %c0_i32 = arith.constant {unsigned} 0 : i32
    affine.store %c0_i32, %12[0] {to = "k", unsigned} : memref<1xi32>
    %13 = memref.alloc() {name = "e", unsigned} : memref<1xi32>
    affine.store %c0_i32, %13[0] {to = "e", unsigned} : memref<1xi32>
    %14 = memref.alloc() {name = "l", unsigned} : memref<1xi32>
    affine.store %c0_i32, %14[0] {to = "l", unsigned} : memref<1xi32>
    %15 = memref.alloc() {name = "r", unsigned} : memref<1xi32>
    affine.store %c0_i32, %15[0] {to = "r", unsigned} : memref<1xi32>
    %16 = memref.alloc() {name = "N", unsigned} : memref<1xi32>
    affine.store %c0_i32, %16[0] {to = "N", unsigned} : memref<1xi32>
    %17 = memref.alloc() {name = "t1", unsigned} : memref<1xi32>
    affine.store %c0_i32, %17[0] {to = "t1", unsigned} : memref<1xi32>
    %18 = memref.alloc() {name = "t2", unsigned} : memref<1xi32>
    affine.store %c0_i32, %18[0] {to = "t2", unsigned} : memref<1xi32>
    affine.for %arg3 = 0 to 3 {
      %19 = affine.load %9[0] {from = "size", unsigned} : memref<1xi32>
      affine.store %19, %10[0] {to = "half", unsigned} : memref<1xi32>
      %20 = affine.load %9[0] {from = "size", unsigned} : memref<1xi32>
      %c1_i32_0 = arith.constant 1 : i32
      %21 = arith.extui %20 : i32 to i64
      %22 = arith.extui %c1_i32_0 : i32 to i64
      %23 = arith.shli %21, %22 : i64
      %24 = arith.trunci %23 {unsigned} : i64 to i32
      affine.store %24, %9[0] {to = "size", unsigned} : memref<1xi32>
      %25 = affine.load %11[0] {from = "step", unsigned} : memref<1xi32>
      %26 = arith.shrui %25, %c1_i32_0 {unsigned} : i32
      affine.store %26, %11[0] {to = "step", unsigned} : memref<1xi32>
      %27 = memref.alloc() {name = "i", unsigned} : memref<1xi32>
      affine.store %c0_i32, %27[0] {to = "i", unsigned} : memref<1xi32>
      scf.while : () -> () {
        %29 = affine.load %27[0] {from = "i", unsigned} : memref<1xi32>
        %30 = affine.load %16[0] {from = "N", unsigned} : memref<1xi32>
        %31 = arith.cmpi ult, %29, %30 : i32
        scf.condition(%31)
      } do {
        %c0_i32_1 = arith.constant 0 : i32
        affine.store %c0_i32_1, %12[0] {to = "k", unsigned} : memref<1xi32>
        %29 = affine.load %27[0] {from = "i", unsigned} : memref<1xi32>
        %30 = affine.load %27[0] {from = "i", unsigned} : memref<1xi32>
        %31 = affine.load %10[0] {from = "half", unsigned} : memref<1xi32>
        %32 = arith.addi %30, %31 {unsigned} : i32
        %33 = arith.index_cast %29 : i32 to index
        %34 = arith.index_cast %32 : i32 to index
        %35 = arith.index_cast %c1_i32_0 : i32 to index
        scf.for %arg4 = %33 to %34 step %35 {
          %39 = affine.load %10[0] {from = "half", unsigned} : memref<1xi32>
          %40 = arith.index_cast %39 : i32 to index
          %41 = arith.addi %arg4, %40 : index
          %42 = arith.index_cast %41 {unsigned} : index to i32
          affine.store %42, %13[0] {to = "e", unsigned} : memref<1xi32>
          %43 = memref.load %0[%arg4] {from = "alloc:A_b", unsigned} : memref<8xi32>
          affine.store %43, %14[0] {to = "l", unsigned} : memref<1xi32>
          %44 = affine.load %13[0] {from = "e", unsigned} : memref<1xi32>
          %45 = arith.index_cast %44 : i32 to index
          %46 = memref.load %0[%45] {from = "alloc:A_b", unsigned} : memref<8xi32>
          %47 = affine.load %12[0] {from = "k", unsigned} : memref<1xi32>
          %48 = arith.index_cast %47 : i32 to index
          %49 = memref.load %arg1[%48] {from = "omega", unsigned} : memref<4xi32>
          %50 = arith.muli %46, %49 {unsigned} : i32
          %51 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %52 = arith.remsi %50, %51 {unsigned} : i32
          affine.store %52, %15[0] {to = "r", unsigned} : memref<1xi32>
          %53 = affine.load %14[0] {from = "l", unsigned} : memref<1xi32>
          %54 = affine.load %15[0] {from = "r", unsigned} : memref<1xi32>
          %55 = arith.addi %53, %54 {unsigned} : i32
          %56 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %57 = arith.remsi %55, %56 {unsigned} : i32
          affine.store %57, %17[0] {to = "t1", unsigned} : memref<1xi32>
          %58 = affine.load %14[0] {from = "l", unsigned} : memref<1xi32>
          %59 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %60 = arith.addi %59, %58 {unsigned} : i32
          %61 = affine.load %15[0] {from = "r", unsigned} : memref<1xi32>
          %62 = arith.subi %60, %61 {unsigned} : i32
          %63 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %64 = arith.remsi %62, %63 {unsigned} : i32
          affine.store %64, %18[0] {to = "t2", unsigned} : memref<1xi32>
          %65 = affine.load %17[0] {from = "t1", unsigned} : memref<1xi32>
          memref.store %65, %0[%arg4] {to = "alloc:A_b", unsigned} : memref<8xi32>
          %66 = affine.load %18[0] {from = "t2", unsigned} : memref<1xi32>
          %67 = affine.load %13[0] {from = "e", unsigned} : memref<1xi32>
          %68 = arith.index_cast %67 : i32 to index
          memref.store %66, %0[%68] {to = "alloc:A_b", unsigned} : memref<8xi32>
          %69 = affine.load %12[0] {from = "k", unsigned} : memref<1xi32>
          %70 = affine.load %11[0] {from = "step", unsigned} : memref<1xi32>
          %71 = arith.addi %69, %70 {unsigned} : i32
          affine.store %71, %12[0] {to = "k", unsigned} : memref<1xi32>
        } {loop_name = "loop_1"}
        %36 = affine.load %27[0] {from = "i", unsigned} : memref<1xi32>
        %37 = affine.load %9[0] {from = "size", unsigned} : memref<1xi32>
        %38 = arith.addi %36, %37 {unsigned} : i32
        affine.store %38, %27[0] {to = "i", unsigned} : memref<1xi32>
        scf.yield
      }
      %28 = hcl.create_loop_handle "loop_1" : !hcl.LoopHandle
    } {loop_name = "loop_0"}
    return %0 : memref<8xi32>
  }
}
