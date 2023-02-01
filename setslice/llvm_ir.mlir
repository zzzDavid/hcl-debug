module {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @frmt_spec0("%.0f\0A\00") {alignment = 32 : i64}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.func @top() attributes {bit, itypes = "", otypes = ""} {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.null : !llvm.ptr<i96>
    %4 = llvm.getelementptr %3[%1] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    %5 = llvm.ptrtoint %4 : !llvm.ptr<i96> to i64
    %6 = llvm.call @malloc(%5) : (i64) -> !llvm.ptr<i8>
    %7 = llvm.bitcast %6 : !llvm.ptr<i8> to !llvm.ptr<i96>
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %7, %8[0] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %10 = llvm.insertvalue %7, %9[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.insertvalue %11, %10[2] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %1, %12[3, 0] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.insertvalue %2, %13[4, 0] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : i96) : i96
    %17 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.getelementptr %17[%0] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    llvm.store %16, %18 : !llvm.ptr<i96>
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.getelementptr %20[%19] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    %22 = llvm.load %21 : !llvm.ptr<i96>

    // set bit 64 to 1
    %23 = llvm.mlir.constant(true) {unsigned} : i1
    %24 = llvm.mlir.constant(64 : index) {unsigned} : i64
    %25 = llvm.mlir.constant(1 : i96) : i96
    %26 = llvm.mlir.constant(64 : i96) : i96
    %27 = llvm.shl %25, %26  : i96
    %28 = llvm.mlir.constant(18446744073709551615 : i96) : i96
    %29 = llvm.xor %28, %27  : i96
    %30 = llvm.or %22, %27  : i96
    %31 = llvm.and %22, %29  : i96
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.getelementptr %33[%32] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    llvm.store %30, %34 : !llvm.ptr<i96>

    // set bit 65 to 0
    // somehow this operation affect bit 64 and set it to 0
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.getelementptr %36[%35] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    %38 = llvm.load %37 : !llvm.ptr<i96> // CORRECT
    %41 = llvm.mlir.constant(1 : i96) : i96
    %42 = llvm.mlir.constant(65 : i96) : i96
    
    // debug shl
    %43 = llvm.shl %41, %42  : i96 // %43 is bitmask // should be 2^65 (1 << 65)
    // %43 = llvm.mlir.constant( 36893488147419103232 : i96) : i96
    
    // debug all one
    // %44 = llvm.mlir.constant(18446744073709551615 : i96) : i96 // all 1s
    // %44 = llvm.mlir.constant(79228162514264337593543950335 : i96) : i96
    %one = llvm.mlir.constant(1 : i1) : i1
    %44 = llvm.sext %one : i1 to i96
    
    // xor is not working
    %45 = llvm.xor %44, %43  : i96 // %44 is all 1s, %43 is bitmask
    // if I change it to this it works
    // %45 = llvm.mlir.constant(79228162477370849446124847103 : i96) : i96
    
    %46 = llvm.or %38, %43  : i96
    // %47 = llvm.and %38, %45  : i96 // %38 is input, %45 is inverted bitmask
    %47 = llvm.and %30, %45  : i96 // %38 is input, %45 is inverted bitmask
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    llvm.store %47, %50 : !llvm.ptr<i96> // if I remove this, the result is correct

    // set bit 66 to 1
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.getelementptr %52[%51] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    %54 = llvm.load %53 : !llvm.ptr<i96>
    %55 = llvm.mlir.constant(66 : index) {unsigned} : i64
    %56 = llvm.mlir.constant(1 : i96) : i96
    %57 = llvm.mlir.constant(66 : i96) : i96
    %58 = llvm.shl %56, %57  : i96
    %59 = llvm.mlir.constant(18446744073709551615 : i96) : i96
    %60 = llvm.xor %59, %58  : i96
    %61 = llvm.or %54, %58  : i96
    %62 = llvm.and %54, %60  : i96
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.getelementptr %64[%63] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    llvm.store %61, %65 : !llvm.ptr<i96>


    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i96>, ptr<i96>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.getelementptr %67[%66] : (!llvm.ptr<i96>, i64) -> !llvm.ptr<i96>
    %69 = llvm.load %68 : !llvm.ptr<i96>
    %70 = llvm.mlir.constant(95 : index) {unsigned} : i64
    %71 = llvm.mlir.constant(64 : i96) : i96
    %72 = llvm.mlir.constant(95 : i96) : i96
    %73 = llvm.mlir.constant(95 : i96) : i96
    %74 = llvm.sub %73, %72  : i96
    %75 = llvm.shl %69, %74  : i96
    %76 = llvm.lshr %75, %74  : i96
    %77 = llvm.lshr %76, %71  : i96
    %78 = llvm.trunc %77 : i96 to i32
    %79 = llvm.mlir.addressof @frmt_spec0 : !llvm.ptr<array<6 x i8>>
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.getelementptr %79[%80, %80] : (!llvm.ptr<array<6 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %82 = llvm.zext %78 : i32 to i64
    %83 = llvm.uitofp %82 : i64 to f64
    %84 = llvm.call @printf(%81, %83) : (!llvm.ptr<i8>, f64) -> i32
    llvm.return
  }
}

