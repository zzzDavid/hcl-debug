module {
  llvm.mlir.global internal constant @nl("\0A\00")
  llvm.mlir.global internal constant @frmt_spec("%.1f %.1f %.1f \0A")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global private @gv0(dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00], [1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00], [1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00], [1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]]> : tensor<4x4xf64>) : !llvm.array<4 x array<4 x f64>>
  llvm.func @top() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(16 : index) : i64
    %4 = llvm.mlir.null : !llvm.ptr<f64>
    %5 = llvm.getelementptr %4[%3] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %6 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %7 = llvm.mlir.addressof @gv0 : !llvm.ptr<array<4 x array<4 x f64>>>
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.getelementptr %7[%8, %8, %8] : (!llvm.ptr<array<4 x array<4 x f64>>>, i64, i64, i64) -> !llvm.ptr<f64>
    %10 = llvm.mlir.constant(3735928559 : index) : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<f64>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %11, %12[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %14 = llvm.insertvalue %9, %13[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.insertvalue %15, %14[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %0, %16[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.insertvalue %1, %17[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %1, %18[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.insertvalue %2, %19[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.mlir.addressof @frmt_spec : !llvm.ptr<array<16 x i8>>
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.getelementptr %21[%22, %22] : (!llvm.ptr<array<16 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %24 = llvm.mlir.addressof @nl : !llvm.ptr<array<2 x i8>>
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.getelementptr %24[%25, %25] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%27 : i64)
  ^bb1(%30: i64):  // 2 preds: ^bb0, ^bb5
    %31 = llvm.icmp "slt" %30, %28 : i64
    llvm.cond_br %31, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%32 : i64)
  ^bb3(%35: i64):  // 2 preds: ^bb2, ^bb4
    %36 = llvm.icmp "slt" %35, %33 : i64
    llvm.cond_br %36, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %37 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %38 = llvm.mlir.constant(4 : index) : i64
    %39 = llvm.mul %30, %38  : i64
    %40 = llvm.add %39, %35  : i64
    %41 = llvm.getelementptr %37[%40] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %42 = llvm.load %41 : !llvm.ptr<f64>
    %43 = llvm.call @printf(%23, %42, %42, %42) : (!llvm.ptr<i8>, f64, f64, f64) -> i32 // %23 is format string
    %44 = llvm.add %35, %34  : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    %45 = llvm.call @printf(%26) : (!llvm.ptr<i8>) -> i32
    %46 = llvm.add %30, %29  : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
}

