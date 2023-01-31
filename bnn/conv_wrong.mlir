module {
  func.func @top(%arg0: memref<1x1x3x3xf32>, %arg1: memref<2x1x3x3xf32>) -> memref<1x2x3x3xf32> attributes {bit, itypes = "__", otypes = "_"} {
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
              %10 = arith.extsi %9 : i64 to i65
              %11 = arith.index_cast %arg6 : index to i65
              %12 = arith.addi %10, %11 : i65
              %13 = arith.extsi %c1_i32 : i32 to i65
              %14 = arith.cmpi sge, %12, %13 : i65
              %15 = arith.andi %true, %14 {unsigned} : i1
              %c4_i32 = arith.constant 4 : i32
              %16 = arith.extsi %c4_i32 : i32 to i65
              %17 = arith.cmpi slt, %12, %16 : i65
              %18 = arith.andi %15, %17 {unsigned} : i1
              %19 = arith.index_cast %arg3 : index to i64
              %20 = arith.muli %19, %8 : i64
              %21 = arith.extsi %20 : i64 to i65
              %22 = arith.index_cast %arg5 : index to i65
              %23 = arith.addi %21, %22 : i65
              %24 = arith.cmpi sge, %23, %13 : i65
              %25 = arith.andi %18, %24 {unsigned} : i1
              %26 = arith.cmpi slt, %23, %16 : i65
              %27 = arith.andi %25, %26 {unsigned} : i1
              %28 = affine.load %2[%c0, %c0, %arg3 + %arg5, %arg4 + %arg6] {from = "conv_conv2d_pad", unsigned} : memref<1x1x5x5xi1>
              %29 = affine.load %1[%arg2, %c0, %arg5, %arg6] {from = "weight_3", unsigned} : memref<2x1x3x3xi1>
              %30 = arith.xori %28, %29 {unsigned} : i1
              %31 = hcl.get_bit(%30 : i1, %c0) -> i1
              %false = arith.constant {unsigned} false
              %32 = arith.extsi %c1_i32 : i32 to i33
              %33 = arith.extui %false : i1 to i33
              %34 = arith.subi %32, %33 : i33
              %35 = arith.sitofp %34 : i33 to f32
              %36 = arith.select %27, %35, %5 : f32
              %37 = affine.load %4[0] {from = "conv_conv2d_sum"} : memref<1xf32>
              %38 = arith.addf %36, %37 : f32
              affine.store %38, %4[0] {to = "conv_conv2d_sum"} : memref<1xf32>
            } {loop_name = "conv_conv2d_rx", reduction}
          } {loop_name = "conv_conv2d_ry", reduction}
          %6 = affine.load %4[0] {from = "conv_conv2d_sum"} : memref<1xf32>
          affine.store %6, %3[%c0, %arg2, %arg3, %arg4] {to = "conv_conv2d"} : memref<1x2x3x3xf32>
        } {loop_name = "xx"}
      } {loop_name = "yy"}
    } {loop_name = "ff"}
    return %3 : memref<1x2x3x3xf32>
  }
}
