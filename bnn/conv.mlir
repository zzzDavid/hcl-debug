module {
  func.func @top(%arg0: memref<1x1x3x3xf32>, %arg1: memref<2x1x3x3xf32>) -> memref<1x2x3x3xf32> attributes {itypes = "__", otypes = "_"} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "data_2"} : memref<1x1x3x3xi1>
    affine.for %arg2 = 0 to 3 {
      affine.for %arg3 = 0 to 3 {
        %4 = affine.load %arg0[%c0, %c0, %arg2, %arg3] {from = "data"} : memref<1x1x3x3xf32>
        %c0_i32 = arith.constant 0 : i32
        %5 = arith.sitofp %c0_i32 : i32 to f32
        %6 = arith.cmpf ogt, %4, %5 : f32
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.select %6, %c1_i32, %c0_i32 : i32
        %8 = arith.trunci %7 {unsigned} : i32 to i1
        affine.store %8, %0[%c0, %c0, %arg2, %arg3] {to = "data_2", unsigned} : memref<1x1x3x3xi1>
      } {loop_name = "i3"}
    } {loop_name = "i2"}
    %1 = memref.alloc() {name = "weight_3"} : memref<2x1x3x3xi1>
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to 3 {
        affine.for %arg4 = 0 to 3 {
          %4 = affine.load %arg1[%arg2, %c0, %arg3, %arg4] {from = "weight"} : memref<2x1x3x3xf32>
          %c0_i32 = arith.constant 0 : i32
          %5 = arith.sitofp %c0_i32 : i32 to f32
          %6 = arith.cmpf ogt, %4, %5 : f32
          %c1_i32 = arith.constant 1 : i32
          %7 = arith.select %6, %c1_i32, %c0_i32 : i32
          %8 = arith.trunci %7 {unsigned} : i32 to i1
          affine.store %8, %1[%arg2, %c0, %arg3, %arg4] {to = "weight_3", unsigned} : memref<2x1x3x3xi1>
        } {loop_name = "i3"}
      } {loop_name = "i2"}
    } {loop_name = "i0", op_name = "weight_3"}
    %2 = memref.alloc() {name = "conv_conv2d_pad"} : memref<1x1x5x5xi1>
    affine.for %arg2 = 0 to 5 {
      affine.for %arg3 = 0 to 5 {
        %true = arith.constant {unsigned} true
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.index_cast %arg3 : index to i33
        %5 = arith.extsi %c1_i32 : i32 to i33
        %6 = arith.cmpi sge, %4, %5 : i33
        %7 = arith.andi %true, %6 {unsigned} : i1
        %c4_i32 = arith.constant 4 : i32
        %8 = arith.extsi %c4_i32 : i32 to i33
        %9 = arith.cmpi slt, %4, %8 : i33
        %10 = arith.andi %7, %9 {unsigned} : i1
        %11 = arith.index_cast %arg2 : index to i33
        %12 = arith.cmpi sge, %11, %5 : i33
        %13 = arith.andi %10, %12 {unsigned} : i1
        %14 = arith.cmpi slt, %11, %8 : i33
        %15 = arith.andi %13, %14 {unsigned} : i1
        %16 = affine.load %0[%c0, %c0, %arg2 - 1, %arg3 - 1] {from = "data_2", unsigned} : memref<1x1x3x3xi1>
        %c0_i32 = arith.constant 0 : i32
        %17 = arith.trunci %c0_i32 {unsigned} : i32 to i1
        %18 = arith.select %15, %16, %17 : i1
        affine.store %18, %2[%c0, %c0, %arg2, %arg3] {to = "conv_conv2d_pad", unsigned} : memref<1x1x5x5xi1>
      } {loop_name = "ww"}
    } {loop_name = "hh"}
    %3 = memref.alloc() {name = "conv_conv2d"} : memref<1x2x3x3xf32>
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to 3 {
        affine.for %arg4 = 0 to 3 {
          %4 = memref.alloc() {name = "conv_conv2d_sum"} : memref<1xf32>
          %c0_i32 = arith.constant 0 : i32
          %5 = arith.sitofp %c0_i32 : i32 to f32
          affine.store %5, %4[0] {to = "conv_conv2d_sum"} : memref<1xf32>
          affine.for %arg5 = 0 to 3 {
            affine.for %arg6 = 0 to 3 {
              %true = arith.constant {unsigned} true
              %c1_i32 = arith.constant 1 : i32
              %7 = arith.index_cast %arg4 : index to i64
              %8 = arith.extsi %c1_i32 : i32 to i64
              %9 = arith.muli %7, %8 : i64
              %10 = arith.index_cast %arg6 : index to i64
              %11 = arith.muli %10, %8 : i64
              %12 = arith.extsi %9 : i64 to i65
              %13 = arith.extsi %11 : i64 to i65
              %14 = arith.addi %12, %13 : i65
              %15 = arith.extsi %c1_i32 : i32 to i65
              %16 = arith.cmpi sge, %14, %15 : i65
              %17 = arith.andi %true, %16 {unsigned} : i1
              %c4_i32 = arith.constant 4 : i32
              %18 = arith.extsi %c4_i32 : i32 to i65
              %19 = arith.cmpi slt, %14, %18 : i65
              %20 = arith.andi %17, %19 {unsigned} : i1
              %21 = arith.index_cast %arg3 : index to i64
              %22 = arith.muli %21, %8 : i64
              %23 = arith.index_cast %arg5 : index to i64
              %24 = arith.muli %23, %8 : i64
              %25 = arith.extsi %22 : i64 to i65
              %26 = arith.extsi %24 : i64 to i65
              %27 = arith.addi %25, %26 : i65
              %28 = arith.cmpi sge, %27, %15 : i65
              %29 = arith.andi %20, %28 {unsigned} : i1
              %30 = arith.cmpi slt, %27, %18 : i65
              %31 = arith.andi %29, %30 {unsigned} : i1
              %32 = affine.load %2[%c0, 0, %arg3 + %arg5, %arg4 + %arg6] {from = "conv_conv2d_pad", unsigned} : memref<1x1x5x5xi1>
              %33 = arith.extsi %c1_i32 : i32 to i33
              %34 = arith.extui %32 : i1 to i33
              %35 = arith.subi %33, %34 : i33
              %36 = affine.load %1[%arg2, 0, %arg5, %arg6] {from = "weight_3", unsigned} : memref<2x1x3x3xi1>
              %37 = arith.extui %36 : i1 to i33
              %38 = arith.xori %35, %37 : i33
              %39 = arith.shli %38, %33 : i33
              %c33_i33 = arith.constant 33 : i33
              %40 = arith.cmpi eq, %39, %c33_i33 : i33
              %c0_i33 = arith.constant 0 : i33
              %41 = arith.select %40, %c0_i33, %39 : i33
              %42 = arith.extui %41 : i33 to i34
              %43 = arith.extsi %c1_i32 : i32 to i34
              %44 = arith.subi %42, %43 : i34
              %45 = arith.sitofp %44 : i34 to f32
              %46 = arith.select %31, %45, %5 : f32
              %47 = affine.load %4[0] {from = "conv_conv2d_sum"} : memref<1xf32>
              %48 = arith.addf %46, %47 : f32
              affine.store %48, %4[0] {to = "conv_conv2d_sum"} : memref<1xf32>
            } {loop_name = "rx", reduction}
          } {loop_name = "ry", reduction}
          %6 = affine.load %4[0] {from = "conv_conv2d_sum"} : memref<1xf32>
          affine.store %6, %3[%c0, %arg2, %arg3, %arg4] {to = "conv_conv2d"} : memref<1x2x3x3xf32>
        } {loop_name = "xx"}
      } {loop_name = "yy"}
    } {loop_name = "ff"}
    return %3 : memref<1x2x3x3xf32>
  }
}
