module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @const_0(dense<[5, 2, 4]> : tensor<3xi64>) {addr_space = 0 : i32} : !llvm.array<3 x i64>
  llvm.mlir.global private constant @const_1(dense<[5, 8]> : tensor<2xi64>) {addr_space = 0 : i32} : !llvm.array<2 x i64>
  llvm.func @kernel(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> attributes {itypes = "___", llvm.emit_c_interface, otypes = "_", top} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %arg16, %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %25 = llvm.mlir.constant(5 : index) : i64
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.mlir.constant(3 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(6 : index) : i64
    %30 = llvm.mlir.constant(30 : index) : i64
    %31 = llvm.mlir.null : !llvm.ptr
    %32 = llvm.getelementptr %31[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.call @malloc(%33) : (i64) -> !llvm.ptr
    %35 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %25, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %26, %40[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.insertvalue %27, %41[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.insertvalue %29, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %27, %43[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.insertvalue %28, %44[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.mlir.constant(5 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%46 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb8
    %50 = llvm.icmp "slt" %49, %47 : i64
    llvm.cond_br %50, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%51 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb7
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(3 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%56 : i64)
  ^bb5(%59: i64):  // 2 preds: ^bb4, ^bb6
    %60 = llvm.icmp "slt" %59, %57 : i64
    llvm.cond_br %60, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %61 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.mlir.constant(6 : index) : i64
    %63 = llvm.mul %49, %62  : i64
    %64 = llvm.mlir.constant(3 : index) : i64
    %65 = llvm.mul %54, %64  : i64
    %66 = llvm.add %63, %65  : i64
    %67 = llvm.add %66, %59  : i64
    %68 = llvm.getelementptr %61[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %68 : f32, !llvm.ptr
    %69 = llvm.add %59, %58  : i64
    llvm.br ^bb5(%69 : i64)
  ^bb7:  // pred: ^bb5
    %70 = llvm.add %54, %53  : i64
    llvm.br ^bb3(%70 : i64)
  ^bb8:  // pred: ^bb3
    %71 = llvm.add %49, %48  : i64
    llvm.br ^bb1(%71 : i64)
  ^bb9:  // pred: ^bb1
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(5 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%72 : i64)
  ^bb10(%75: i64):  // 2 preds: ^bb9, ^bb17
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(3 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%77 : i64)
  ^bb12(%80: i64):  // 2 preds: ^bb11, ^bb16
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%82 : i64)
  ^bb14(%85: i64):  // 2 preds: ^bb13, ^bb15
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %87 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.mlir.constant(6 : index) : i64
    %89 = llvm.mul %75, %88  : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mul %80, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.add %92, %85  : i64
    %94 = llvm.getelementptr %87[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %95 = llvm.load %94 : !llvm.ptr -> f32
    %96 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.mlir.constant(6 : index) : i64
    %98 = llvm.mul %75, %97  : i64
    %99 = llvm.mlir.constant(3 : index) : i64
    %100 = llvm.mul %85, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.add %101, %80  : i64
    %103 = llvm.getelementptr %96[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %95, %103 : f32, !llvm.ptr
    %104 = llvm.add %85, %84  : i64
    llvm.br ^bb14(%104 : i64)
  ^bb16:  // pred: ^bb14
    %105 = llvm.add %80, %79  : i64
    llvm.br ^bb12(%105 : i64)
  ^bb17:  // pred: ^bb12
    %106 = llvm.add %75, %74  : i64
    llvm.br ^bb10(%106 : i64)
  ^bb18:  // pred: ^bb10
    %107 = llvm.mlir.constant(5 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(8 : index) : i64
    %112 = llvm.mlir.constant(40 : index) : i64
    %113 = llvm.mlir.null : !llvm.ptr
    %114 = llvm.getelementptr %113[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %115 = llvm.ptrtoint %114 : !llvm.ptr to i64
    %116 = llvm.call @malloc(%115) : (i64) -> !llvm.ptr
    %117 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %118 = llvm.insertvalue %116, %117[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.insertvalue %116, %118[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.insertvalue %120, %119[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.insertvalue %107, %121[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.insertvalue %108, %122[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.insertvalue %109, %123[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.insertvalue %111, %124[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.insertvalue %109, %125[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.insertvalue %110, %126[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(5 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%128 : i64)
  ^bb19(%131: i64):  // 2 preds: ^bb18, ^bb26
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%133 : i64)
  ^bb21(%136: i64):  // 2 preds: ^bb20, ^bb25
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(4 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%138 : i64)
  ^bb23(%141: i64):  // 2 preds: ^bb22, ^bb24
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %143 = llvm.extractvalue %127[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(8 : index) : i64
    %145 = llvm.mul %131, %144  : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mul %136, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.add %148, %141  : i64
    %150 = llvm.getelementptr %143[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %150 : f32, !llvm.ptr
    %151 = llvm.add %141, %140  : i64
    llvm.br ^bb23(%151 : i64)
  ^bb25:  // pred: ^bb23
    %152 = llvm.add %136, %135  : i64
    llvm.br ^bb21(%152 : i64)
  ^bb26:  // pred: ^bb21
    %153 = llvm.add %131, %130  : i64
    llvm.br ^bb19(%153 : i64)
  ^bb27:  // pred: ^bb19
    %154 = llvm.mlir.constant(3 : index) : i64
    %155 = llvm.mlir.constant(4 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(12 : index) : i64
    %158 = llvm.mlir.null : !llvm.ptr
    %159 = llvm.getelementptr %158[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %160 = llvm.ptrtoint %159 : !llvm.ptr to i64
    %161 = llvm.call @malloc(%160) : (i64) -> !llvm.ptr
    %162 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %163 = llvm.insertvalue %161, %162[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %161, %163[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.insertvalue %165, %164[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %154, %166[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.insertvalue %155, %167[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %155, %168[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.insertvalue %156, %169[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(3 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%171 : i64)
  ^bb28(%174: i64):  // 2 preds: ^bb27, ^bb32
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(4 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%176 : i64)
  ^bb30(%179: i64):  // 2 preds: ^bb29, ^bb31
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %181 = llvm.extractvalue %170[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.mlir.constant(4 : index) : i64
    %183 = llvm.mul %174, %182  : i64
    %184 = llvm.add %183, %179  : i64
    %185 = llvm.getelementptr %181[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %185 : f32, !llvm.ptr
    %186 = llvm.add %179, %178  : i64
    llvm.br ^bb30(%186 : i64)
  ^bb32:  // pred: ^bb30
    %187 = llvm.add %174, %173  : i64
    llvm.br ^bb28(%187 : i64)
  ^bb33:  // pred: ^bb28
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%188 : i64)
  ^bb34(%191: i64):  // 2 preds: ^bb33, ^bb38
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(3 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%193 : i64)
  ^bb36(%196: i64):  // 2 preds: ^bb35, ^bb37
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %198 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %199 = llvm.mlir.constant(3 : index) : i64
    %200 = llvm.mul %191, %199  : i64
    %201 = llvm.add %200, %196  : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %203 = llvm.load %202 : !llvm.ptr -> f32
    %204 = llvm.extractvalue %170[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mul %196, %205  : i64
    %207 = llvm.add %206, %191  : i64
    %208 = llvm.getelementptr %204[%207] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %203, %208 : f32, !llvm.ptr
    %209 = llvm.add %196, %195  : i64
    llvm.br ^bb36(%209 : i64)
  ^bb38:  // pred: ^bb36
    %210 = llvm.add %191, %190  : i64
    llvm.br ^bb34(%210 : i64)
  ^bb39:  // pred: ^bb34
    %211 = llvm.mlir.constant(5 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(8 : index) : i64
    %216 = llvm.mlir.constant(40 : index) : i64
    %217 = llvm.mlir.null : !llvm.ptr
    %218 = llvm.getelementptr %217[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %219 = llvm.ptrtoint %218 : !llvm.ptr to i64
    %220 = llvm.call @malloc(%219) : (i64) -> !llvm.ptr
    %221 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %222 = llvm.insertvalue %220, %221[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.insertvalue %220, %222[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.insertvalue %224, %223[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %226 = llvm.insertvalue %211, %225[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.insertvalue %212, %226[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.insertvalue %213, %227[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.insertvalue %215, %228[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.insertvalue %213, %229[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %214, %230[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(5 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%232 : i64)
  ^bb40(%235: i64):  // 2 preds: ^bb39, ^bb47
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%237 : i64)
  ^bb42(%240: i64):  // 2 preds: ^bb41, ^bb46
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%242 : i64)
  ^bb44(%245: i64):  // 2 preds: ^bb43, ^bb45
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %247 = llvm.extractvalue %231[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %248 = llvm.mlir.constant(8 : index) : i64
    %249 = llvm.mul %235, %248  : i64
    %250 = llvm.mlir.constant(4 : index) : i64
    %251 = llvm.mul %240, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.add %252, %245  : i64
    %254 = llvm.getelementptr %247[%253] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %254 : f32, !llvm.ptr
    %255 = llvm.add %245, %244  : i64
    llvm.br ^bb44(%255 : i64)
  ^bb46:  // pred: ^bb44
    %256 = llvm.add %240, %239  : i64
    llvm.br ^bb42(%256 : i64)
  ^bb47:  // pred: ^bb42
    %257 = llvm.add %235, %234  : i64
    llvm.br ^bb40(%257 : i64)
  ^bb48:  // pred: ^bb40
    %258 = llvm.mlir.constant(5 : index) : i64
    %259 = llvm.mlir.constant(3 : index) : i64
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(12 : index) : i64
    %263 = llvm.mlir.constant(60 : index) : i64
    %264 = llvm.mlir.null : !llvm.ptr
    %265 = llvm.getelementptr %264[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %266 = llvm.ptrtoint %265 : !llvm.ptr to i64
    %267 = llvm.call @malloc(%266) : (i64) -> !llvm.ptr
    %268 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %269 = llvm.insertvalue %267, %268[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.insertvalue %258, %272[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %274 = llvm.insertvalue %259, %273[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %275 = llvm.insertvalue %260, %274[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %276 = llvm.insertvalue %262, %275[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.insertvalue %260, %276[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.insertvalue %261, %277[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(5 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%279 : i64)
  ^bb49(%282: i64):  // 2 preds: ^bb48, ^bb56
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(3 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%284 : i64)
  ^bb51(%287: i64):  // 2 preds: ^bb50, ^bb55
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%289 : i64)
  ^bb53(%292: i64):  // 2 preds: ^bb52, ^bb54
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %294 = llvm.extractvalue %170[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mul %287, %295  : i64
    %297 = llvm.add %296, %292  : i64
    %298 = llvm.getelementptr %294[%297] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %299 = llvm.load %298 : !llvm.ptr -> f32
    %300 = llvm.extractvalue %278[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.mlir.constant(12 : index) : i64
    %302 = llvm.mul %282, %301  : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mul %287, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %292  : i64
    %307 = llvm.getelementptr %300[%306] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %299, %307 : f32, !llvm.ptr
    %308 = llvm.add %292, %291  : i64
    llvm.br ^bb53(%308 : i64)
  ^bb55:  // pred: ^bb53
    %309 = llvm.add %287, %286  : i64
    llvm.br ^bb51(%309 : i64)
  ^bb56:  // pred: ^bb51
    %310 = llvm.add %282, %281  : i64
    llvm.br ^bb49(%310 : i64)
  ^bb57:  // pred: ^bb49
    %311 = llvm.mlir.constant(5 : index) : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(8 : index) : i64
    %316 = llvm.mlir.constant(40 : index) : i64
    %317 = llvm.mlir.null : !llvm.ptr
    %318 = llvm.getelementptr %317[%316] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %319 = llvm.ptrtoint %318 : !llvm.ptr to i64
    %320 = llvm.call @malloc(%319) : (i64) -> !llvm.ptr
    %321 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %322 = llvm.insertvalue %320, %321[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %320, %322[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.insertvalue %324, %323[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.insertvalue %311, %325[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.insertvalue %312, %326[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.insertvalue %313, %327[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.insertvalue %315, %328[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %330 = llvm.insertvalue %313, %329[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %331 = llvm.insertvalue %314, %330[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(5 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%332 : i64)
  ^bb58(%335: i64):  // 2 preds: ^bb57, ^bb65
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%337 : i64)
  ^bb60(%340: i64):  // 2 preds: ^bb59, ^bb64
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%342 : i64)
  ^bb62(%345: i64):  // 2 preds: ^bb61, ^bb63
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %347 = llvm.extractvalue %331[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.mlir.constant(8 : index) : i64
    %349 = llvm.mul %335, %348  : i64
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mul %340, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.add %352, %345  : i64
    %354 = llvm.getelementptr %347[%353] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %354 : f32, !llvm.ptr
    %355 = llvm.add %345, %344  : i64
    llvm.br ^bb62(%355 : i64)
  ^bb64:  // pred: ^bb62
    %356 = llvm.add %340, %339  : i64
    llvm.br ^bb60(%356 : i64)
  ^bb65:  // pred: ^bb60
    %357 = llvm.add %335, %334  : i64
    llvm.br ^bb58(%357 : i64)
  ^bb66:  // pred: ^bb58
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(5 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%358 : i64)
  ^bb67(%361: i64):  // 2 preds: ^bb66, ^bb77
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%363 : i64)
  ^bb69(%366: i64):  // 2 preds: ^bb68, ^bb76
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%368 : i64)
  ^bb71(%371: i64):  // 2 preds: ^bb70, ^bb75
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(3 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%373 : i64)
  ^bb73(%376: i64):  // 2 preds: ^bb72, ^bb74
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %378 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.mlir.constant(6 : index) : i64
    %380 = llvm.mul %361, %379  : i64
    %381 = llvm.mlir.constant(3 : index) : i64
    %382 = llvm.mul %366, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %376  : i64
    %385 = llvm.getelementptr %378[%384] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %386 = llvm.load %385 : !llvm.ptr -> f32
    %387 = llvm.extractvalue %278[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.mlir.constant(12 : index) : i64
    %389 = llvm.mul %361, %388  : i64
    %390 = llvm.mlir.constant(4 : index) : i64
    %391 = llvm.mul %376, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %371  : i64
    %394 = llvm.getelementptr %387[%393] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %395 = llvm.load %394 : !llvm.ptr -> f32
    %396 = llvm.extractvalue %331[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.mlir.constant(8 : index) : i64
    %398 = llvm.mul %361, %397  : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mul %366, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.add %401, %371  : i64
    %403 = llvm.getelementptr %396[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %404 = llvm.load %403 : !llvm.ptr -> f32
    %405 = llvm.fmul %386, %395  : f32
    %406 = llvm.fadd %404, %405  : f32
    %407 = llvm.extractvalue %331[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.mlir.constant(8 : index) : i64
    %409 = llvm.mul %361, %408  : i64
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mul %366, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.add %412, %371  : i64
    %414 = llvm.getelementptr %407[%413] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %406, %414 : f32, !llvm.ptr
    %415 = llvm.add %376, %375  : i64
    llvm.br ^bb73(%415 : i64)
  ^bb75:  // pred: ^bb73
    %416 = llvm.add %371, %370  : i64
    llvm.br ^bb71(%416 : i64)
  ^bb76:  // pred: ^bb71
    %417 = llvm.add %366, %365  : i64
    llvm.br ^bb69(%417 : i64)
  ^bb77:  // pred: ^bb69
    %418 = llvm.add %361, %360  : i64
    llvm.br ^bb67(%418 : i64)
  ^bb78:  // pred: ^bb67
    %419 = llvm.mlir.constant(5 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(8 : index) : i64
    %424 = llvm.mlir.constant(40 : index) : i64
    %425 = llvm.mlir.null : !llvm.ptr
    %426 = llvm.getelementptr %425[%424] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %427 = llvm.ptrtoint %426 : !llvm.ptr to i64
    %428 = llvm.call @malloc(%427) : (i64) -> !llvm.ptr
    %429 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %430 = llvm.insertvalue %428, %429[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %431 = llvm.insertvalue %428, %430[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.insertvalue %432, %431[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.insertvalue %419, %433[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %435 = llvm.insertvalue %420, %434[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.insertvalue %421, %435[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %437 = llvm.insertvalue %423, %436[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %438 = llvm.insertvalue %421, %437[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %439 = llvm.insertvalue %422, %438[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(5 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%440 : i64)
  ^bb79(%443: i64):  // 2 preds: ^bb78, ^bb86
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb80, ^bb87
  ^bb80:  // pred: ^bb79
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%445 : i64)
  ^bb81(%448: i64):  // 2 preds: ^bb80, ^bb85
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb82, ^bb86
  ^bb82:  // pred: ^bb81
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%450 : i64)
  ^bb83(%453: i64):  // 2 preds: ^bb82, ^bb84
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb84, ^bb85
  ^bb84:  // pred: ^bb83
    %455 = llvm.extractvalue %439[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %456 = llvm.mlir.constant(8 : index) : i64
    %457 = llvm.mul %443, %456  : i64
    %458 = llvm.mlir.constant(4 : index) : i64
    %459 = llvm.mul %448, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.add %460, %453  : i64
    %462 = llvm.getelementptr %455[%461] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %462 : f32, !llvm.ptr
    %463 = llvm.add %453, %452  : i64
    llvm.br ^bb83(%463 : i64)
  ^bb85:  // pred: ^bb83
    %464 = llvm.add %448, %447  : i64
    llvm.br ^bb81(%464 : i64)
  ^bb86:  // pred: ^bb81
    %465 = llvm.add %443, %442  : i64
    llvm.br ^bb79(%465 : i64)
  ^bb87:  // pred: ^bb79
    %466 = llvm.mlir.constant(3 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.null : !llvm.ptr
    %469 = llvm.getelementptr %468[%466] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %470 = llvm.ptrtoint %469 : !llvm.ptr to i64
    %471 = llvm.mlir.addressof @const_0 : !llvm.ptr
    %472 = llvm.getelementptr %471[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i64>
    %473 = llvm.mlir.constant(3735928559 : index) : i64
    %474 = llvm.inttoptr %473 : i64 to !llvm.ptr
    %475 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %476 = llvm.insertvalue %474, %475[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.insertvalue %472, %476[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.insertvalue %478, %477[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %466, %479[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.insertvalue %467, %480[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %483 = llvm.extractvalue %331[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %484 = llvm.extractvalue %331[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.insertvalue %483, %482[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %486 = llvm.insertvalue %484, %485[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.insertvalue %487, %486[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.insertvalue %490, %488[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %492 = llvm.insertvalue %489, %491[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.mul %489, %490  : i64
    %494 = llvm.mlir.constant(4 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.insertvalue %495, %492[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.insertvalue %494, %496[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %498 = llvm.mul %494, %495  : i64
    %499 = llvm.mlir.constant(8 : index) : i64
    %500 = llvm.mlir.constant(5 : index) : i64
    %501 = llvm.insertvalue %500, %497[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %502 = llvm.insertvalue %499, %501[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %503 = llvm.mul %499, %500  : i64
    %504 = llvm.mlir.constant(5 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(4 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(8 : index) : i64
    %509 = llvm.mlir.constant(40 : index) : i64
    %510 = llvm.mlir.null : !llvm.ptr
    %511 = llvm.getelementptr %510[%509] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %512 = llvm.ptrtoint %511 : !llvm.ptr to i64
    %513 = llvm.call @malloc(%512) : (i64) -> !llvm.ptr
    %514 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %515 = llvm.insertvalue %513, %514[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %516 = llvm.insertvalue %513, %515[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.insertvalue %517, %516[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.insertvalue %504, %518[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %520 = llvm.insertvalue %505, %519[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %521 = llvm.insertvalue %506, %520[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %522 = llvm.insertvalue %508, %521[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %523 = llvm.insertvalue %506, %522[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %524 = llvm.insertvalue %507, %523[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(5 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%525 : i64)
  ^bb88(%528: i64):  // 2 preds: ^bb87, ^bb95
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb89, ^bb96
  ^bb89:  // pred: ^bb88
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%530 : i64)
  ^bb90(%533: i64):  // 2 preds: ^bb89, ^bb94
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb91, ^bb95
  ^bb91:  // pred: ^bb90
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(4 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%535 : i64)
  ^bb92(%538: i64):  // 2 preds: ^bb91, ^bb93
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb93, ^bb94
  ^bb93:  // pred: ^bb92
    %540 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %541 = llvm.getelementptr %540[%538] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %542 = llvm.load %541 : !llvm.ptr -> f32
    %543 = llvm.extractvalue %524[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.mlir.constant(8 : index) : i64
    %545 = llvm.mul %528, %544  : i64
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %533, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.add %548, %538  : i64
    %550 = llvm.getelementptr %543[%549] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %542, %550 : f32, !llvm.ptr
    %551 = llvm.add %538, %537  : i64
    llvm.br ^bb92(%551 : i64)
  ^bb94:  // pred: ^bb92
    %552 = llvm.add %533, %532  : i64
    llvm.br ^bb90(%552 : i64)
  ^bb95:  // pred: ^bb90
    %553 = llvm.add %528, %527  : i64
    llvm.br ^bb88(%553 : i64)
  ^bb96:  // pred: ^bb88
    %554 = llvm.mlir.constant(5 : index) : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mlir.constant(4 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(8 : index) : i64
    %559 = llvm.mlir.constant(40 : index) : i64
    %560 = llvm.mlir.null : !llvm.ptr
    %561 = llvm.getelementptr %560[%559] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %562 = llvm.ptrtoint %561 : !llvm.ptr to i64
    %563 = llvm.call @malloc(%562) : (i64) -> !llvm.ptr
    %564 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %565 = llvm.insertvalue %563, %564[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.insertvalue %563, %565[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.insertvalue %567, %566[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %569 = llvm.insertvalue %554, %568[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.insertvalue %555, %569[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.insertvalue %556, %570[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %572 = llvm.insertvalue %558, %571[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %573 = llvm.insertvalue %556, %572[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %574 = llvm.insertvalue %557, %573[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(5 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%575 : i64)
  ^bb97(%578: i64):  // 2 preds: ^bb96, ^bb104
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(2 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%580 : i64)
  ^bb99(%583: i64):  // 2 preds: ^bb98, ^bb103
    %584 = llvm.icmp "slt" %583, %581 : i64
    llvm.cond_br %584, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %585 = llvm.mlir.constant(0 : index) : i64
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%585 : i64)
  ^bb101(%588: i64):  // 2 preds: ^bb100, ^bb102
    %589 = llvm.icmp "slt" %588, %586 : i64
    llvm.cond_br %589, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %590 = llvm.extractvalue %574[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %591 = llvm.mlir.constant(8 : index) : i64
    %592 = llvm.mul %578, %591  : i64
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mul %583, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.add %595, %588  : i64
    %597 = llvm.getelementptr %590[%596] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %597 : f32, !llvm.ptr
    %598 = llvm.add %588, %587  : i64
    llvm.br ^bb101(%598 : i64)
  ^bb103:  // pred: ^bb101
    %599 = llvm.add %583, %582  : i64
    llvm.br ^bb99(%599 : i64)
  ^bb104:  // pred: ^bb99
    %600 = llvm.add %578, %577  : i64
    llvm.br ^bb97(%600 : i64)
  ^bb105:  // pred: ^bb97
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(5 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%601 : i64)
  ^bb106(%604: i64):  // 2 preds: ^bb105, ^bb113
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb107, ^bb114
  ^bb107:  // pred: ^bb106
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(2 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%606 : i64)
  ^bb108(%609: i64):  // 2 preds: ^bb107, ^bb112
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb109, ^bb113
  ^bb109:  // pred: ^bb108
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(4 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%611 : i64)
  ^bb110(%614: i64):  // 2 preds: ^bb109, ^bb111
    %615 = llvm.icmp "slt" %614, %612 : i64
    llvm.cond_br %615, ^bb111, ^bb112
  ^bb111:  // pred: ^bb110
    %616 = llvm.extractvalue %502[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %617 = llvm.mlir.constant(8 : index) : i64
    %618 = llvm.mul %604, %617  : i64
    %619 = llvm.mlir.constant(4 : index) : i64
    %620 = llvm.mul %609, %619  : i64
    %621 = llvm.add %618, %620  : i64
    %622 = llvm.add %621, %614  : i64
    %623 = llvm.getelementptr %616[%622] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %624 = llvm.load %623 : !llvm.ptr -> f32
    %625 = llvm.extractvalue %524[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %626 = llvm.mlir.constant(8 : index) : i64
    %627 = llvm.mul %604, %626  : i64
    %628 = llvm.mlir.constant(4 : index) : i64
    %629 = llvm.mul %609, %628  : i64
    %630 = llvm.add %627, %629  : i64
    %631 = llvm.add %630, %614  : i64
    %632 = llvm.getelementptr %625[%631] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %633 = llvm.load %632 : !llvm.ptr -> f32
    %634 = llvm.fadd %624, %633  : f32
    %635 = llvm.extractvalue %574[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %636 = llvm.mlir.constant(8 : index) : i64
    %637 = llvm.mul %604, %636  : i64
    %638 = llvm.mlir.constant(4 : index) : i64
    %639 = llvm.mul %609, %638  : i64
    %640 = llvm.add %637, %639  : i64
    %641 = llvm.add %640, %614  : i64
    %642 = llvm.getelementptr %635[%641] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %634, %642 : f32, !llvm.ptr
    %643 = llvm.add %614, %613  : i64
    llvm.br ^bb110(%643 : i64)
  ^bb112:  // pred: ^bb110
    %644 = llvm.add %609, %608  : i64
    llvm.br ^bb108(%644 : i64)
  ^bb113:  // pred: ^bb108
    %645 = llvm.add %604, %603  : i64
    llvm.br ^bb106(%645 : i64)
  ^bb114:  // pred: ^bb106
    %646 = llvm.mlir.constant(5 : index) : i64
    %647 = llvm.mlir.constant(8 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    %649 = llvm.mlir.constant(40 : index) : i64
    %650 = llvm.mlir.null : !llvm.ptr
    %651 = llvm.getelementptr %650[%649] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %652 = llvm.ptrtoint %651 : !llvm.ptr to i64
    %653 = llvm.call @malloc(%652) : (i64) -> !llvm.ptr
    %654 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %655 = llvm.insertvalue %653, %654[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %656 = llvm.insertvalue %653, %655[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %657 = llvm.mlir.constant(0 : index) : i64
    %658 = llvm.insertvalue %657, %656[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %659 = llvm.insertvalue %646, %658[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %660 = llvm.insertvalue %647, %659[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %661 = llvm.insertvalue %647, %660[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %662 = llvm.insertvalue %648, %661[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %663 = llvm.mlir.constant(0 : index) : i64
    %664 = llvm.mlir.constant(5 : index) : i64
    %665 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%663 : i64)
  ^bb115(%666: i64):  // 2 preds: ^bb114, ^bb119
    %667 = llvm.icmp "slt" %666, %664 : i64
    llvm.cond_br %667, ^bb116, ^bb120
  ^bb116:  // pred: ^bb115
    %668 = llvm.mlir.constant(0 : index) : i64
    %669 = llvm.mlir.constant(8 : index) : i64
    %670 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb117(%668 : i64)
  ^bb117(%671: i64):  // 2 preds: ^bb116, ^bb118
    %672 = llvm.icmp "slt" %671, %669 : i64
    llvm.cond_br %672, ^bb118, ^bb119
  ^bb118:  // pred: ^bb117
    %673 = llvm.extractvalue %662[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %674 = llvm.mlir.constant(8 : index) : i64
    %675 = llvm.mul %666, %674  : i64
    %676 = llvm.add %675, %671  : i64
    %677 = llvm.getelementptr %673[%676] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %24, %677 : f32, !llvm.ptr
    %678 = llvm.add %671, %670  : i64
    llvm.br ^bb117(%678 : i64)
  ^bb119:  // pred: ^bb117
    %679 = llvm.add %666, %665  : i64
    llvm.br ^bb115(%679 : i64)
  ^bb120:  // pred: ^bb115
    %680 = llvm.mlir.constant(2 : index) : i64
    %681 = llvm.mlir.constant(1 : index) : i64
    %682 = llvm.mlir.null : !llvm.ptr
    %683 = llvm.getelementptr %682[%680] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %684 = llvm.ptrtoint %683 : !llvm.ptr to i64
    %685 = llvm.mlir.addressof @const_1 : !llvm.ptr
    %686 = llvm.getelementptr %685[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %687 = llvm.mlir.constant(3735928559 : index) : i64
    %688 = llvm.inttoptr %687 : i64 to !llvm.ptr
    %689 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %690 = llvm.insertvalue %688, %689[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %691 = llvm.insertvalue %686, %690[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %692 = llvm.mlir.constant(0 : index) : i64
    %693 = llvm.insertvalue %692, %691[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %694 = llvm.insertvalue %680, %693[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.insertvalue %681, %694[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %696 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %697 = llvm.extractvalue %574[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %698 = llvm.extractvalue %574[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %699 = llvm.insertvalue %697, %696[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %700 = llvm.insertvalue %698, %699[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %701 = llvm.mlir.constant(0 : index) : i64
    %702 = llvm.insertvalue %701, %700[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %703 = llvm.mlir.constant(1 : index) : i64
    %704 = llvm.mlir.constant(8 : index) : i64
    %705 = llvm.insertvalue %704, %702[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %706 = llvm.insertvalue %703, %705[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %707 = llvm.mul %703, %704  : i64
    %708 = llvm.mlir.constant(8 : index) : i64
    %709 = llvm.mlir.constant(5 : index) : i64
    %710 = llvm.insertvalue %709, %706[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %711 = llvm.insertvalue %708, %710[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %712 = llvm.mul %708, %709  : i64
    llvm.return %711 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_kernel(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: !llvm.ptr) attributes {itypes = "___", llvm.emit_c_interface, otypes = "_", top} {
    %0 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.load %arg3 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.call @kernel(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %24, %arg0 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.return
  }
}
