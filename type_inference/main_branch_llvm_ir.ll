; ModuleID = 'default_function'
source_filename = "default_function"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i16, i8, i8 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [69 x i8] c"Assert fail: (num_args == 2), default_function: num_args should be 2\00", align 4
@.str.1 = private constant [87 x i8] c"Assert fail: (1 == int32(arg0.strides[0])), arg0.strides: expected to be compact array\00", align 4
@.str.2 = private constant [87 x i8] c"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array\00", align 4
@.str.3 = private constant [121 x i8] c"Assert fail: (((arg0.code == 3) || (arg0.code == 7)) || (arg0.code == 4)), default_function: Expect arg[0] to be pointer\00", align 4
@.str.4 = private constant [121 x i8] c"Assert fail: (((arg1.code == 3) || (arg1.code == 7)) || (arg1.code == 4)), default_function: Expect arg[1] to be pointer\00", align 4
@.str.5 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 4
@.str.6 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 1\00", align 4
@.str.7 = private constant [232 x i8] c"Assert fail: ((((tvm_struct_get(arg0, 0, 5) == (uint16)1) && (tvm_struct_get(arg0, 0, 6) == (uint16)32)) && (tvm_struct_get(arg0, 0, 8) == (uint8)0)) && (tvm_struct_get(arg0, 0, 7) == (uint8)1)), arg0.dtype is expected to be uint32\00", align 4
@.str.8 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1\00", align 4
@.str.9 = private constant [232 x i8] c"Assert fail: ((((tvm_struct_get(arg1, 0, 5) == (uint16)1) && (tvm_struct_get(arg1, 0, 6) == (uint16)32)) && (tvm_struct_get(arg1, 0, 8) == (uint8)0)) && (tvm_struct_get(arg1, 0, 7) == (uint8)1)), arg1.dtype is expected to be uint32\00", align 4
@.str.10 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 11)), Argument arg1.device_type has an unsatisfied constraint\00", align 4
@.str.11 = private constant [108 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_id has an unsatisfied constraint\00", align 4
@__tvm_main__ = weak local_unnamed_addr constant [17 x i8] c"default_function\00", align 1

define dllexport i32 @default_function(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32) local_unnamed_addr {
entry:
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %assert_end, label %assert_fail, !prof !1

assert_fail:                                      ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %4(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %5 = bitcast i8* %0 to %0**
  %6 = load %0*, %0** %5, align 8
  %7 = bitcast i8* %1 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i8, i8* %0, i64 8
  %10 = bitcast i8* %9 to %0**
  %11 = load %0*, %0** %10, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !19
  %15 = getelementptr inbounds %0, %0* %6, i64 0, i32 5
  %16 = load i64*, i64** %15, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %if_end, label %if_then, !prof !21

if_then:                                          ; preds = %assert_end
  %18 = load i64, i64* %16, align 8, !tbaa !22
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %if_end, label %assert_fail1, !prof !1

if_end:                                           ; preds = %assert_end, %if_then
  %21 = getelementptr inbounds %0, %0* %6, i64 0, i32 1, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %0, %0* %6, i64 0, i32 1, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %0, %0* %11, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %0, %0* %11, i64 0, i32 5
  %28 = load i64*, i64** %27, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %if_end4, label %if_then3, !prof !21

assert_fail1:                                     ; preds = %if_then
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %30(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

if_then3:                                         ; preds = %if_end
  %31 = load i64, i64* %28, align 8, !tbaa !36
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %if_end4, label %assert_fail5, !prof !1

if_end4:                                          ; preds = %if_end, %if_then3
  switch i32 %8, label %assert_fail7 [
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail5:                                     ; preds = %if_then3
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %34(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_fail7:                                     ; preds = %if_end4
  %35 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %35(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %if_end4, %if_end4, %if_end4
  switch i32 %14, label %assert_fail9 [
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ]

assert_fail9:                                     ; preds = %assert_end8
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %36(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8
  %37 = icmp eq i32 %22, 1
  br i1 %37, label %assert_end12, label %assert_fail11, !prof !1

assert_fail11:                                    ; preds = %assert_end10
  %38 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %38(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %39 = getelementptr inbounds %0, %0* %6, i64 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end14, label %assert_fail13, !prof !1

assert_fail13:                                    ; preds = %assert_end12
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %42(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %43 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 1
  %44 = load i8, i8* %43, align 1
  %45 = icmp eq i8 %44, 1
  %46 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 0
  %50 = load i16, i16* %49, align 2
  %51 = icmp eq i16 %50, 1025
  %52 = and i1 %48, %51
  %53 = and i1 %45, %52
  br i1 %53, label %assert_end16, label %assert_fail15, !prof !1

assert_fail15:                                    ; preds = %assert_end14
  %54 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %54(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %55 = getelementptr inbounds %0, %0* %11, i64 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %assert_end18, label %assert_fail17, !prof !1

assert_fail17:                                    ; preds = %assert_end16
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %58(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %59 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 1
  %60 = load i8, i8* %59, align 1
  %61 = icmp eq i8 %60, 1
  %62 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 2
  %63 = load i8, i8* %62, align 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 0
  %66 = load i16, i16* %65, align 2
  %67 = icmp eq i16 %66, 1025
  %68 = and i1 %64, %67
  %69 = and i1 %61, %68
  br i1 %69, label %assert_end20, label %assert_fail19, !prof !1

assert_fail19:                                    ; preds = %assert_end18
  %70 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %70(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %71 = getelementptr inbounds %0, %0* %11, i64 0, i32 1, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %assert_end22, label %assert_fail21, !prof !1

assert_fail21:                                    ; preds = %assert_end20
  %74 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %74(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %75 = getelementptr inbounds %0, %0* %11, i64 0, i32 1, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %24, %76
  br i1 %77, label %if_end26, label %assert_fail23, !prof !1

assert_fail23:                                    ; preds = %assert_end22
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %78(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

if_end26:                                         ; preds = %assert_end22
  tail call fastcc void @default_function_compute_(i8* %26)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind writeonly
define private fastcc void @default_function_compute_(i8* noalias nocapture) unnamed_addr #0 {
entry:
  %1 = bitcast i8* %0 to i32*
  store i32 -1, i32* %1, align 4, !tbaa !50
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %2 to i32*
  store i32 0, i32* %3, align 4, !tbaa !64
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to i32*
  store i32 0, i32* %5, align 4, !tbaa !66
  %6 = getelementptr inbounds i8, i8* %0, i64 12
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 4, !tbaa !69
  ret void
}

attributes #0 = { nofree noinline norecurse nounwind writeonly }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"tvm_target", !"llvm"}
!1 = !{!"branch_weights", i32 1048576, i32 1}
!2 = !{!3, !3, i64 0}
!3 = !{!"ctx_ptr", !4, i64 0}
!4 = !{!"tvm-tbaa"}
!5 = !{!6, !6, i64 0}
!6 = !{!"0x5621855c02d0.w1.b0", !7, i64 0}
!7 = !{!"0x5621855c02d0.w2.b0", !8, i64 0}
!8 = !{!"0x5621855c02d0.w4.b0", !9, i64 0}
!9 = !{!"0x5621855c02d0.w8.b0", !10, i64 0}
!10 = !{!"0x5621855c02d0.w16.b0", !11, i64 0}
!11 = !{!"0x5621855c02d0.w32.b0", !12, i64 0}
!12 = !{!"0x5621855c02d0.w64.b0", !13, i64 0}
!13 = !{!"0x5621855c02d0.w128.b0", !14, i64 0}
!14 = !{!"0x5621855c02d0.w256.b0", !15, i64 0}
!15 = !{!"0x5621855c02d0.w512.b0", !16, i64 0}
!16 = !{!"0x5621855c02d0.w1024.b0", !17, i64 0}
!17 = !{!"int32", !18, i64 0}
!18 = !{!"0x5621855c02d0", !4, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"0x5621855c02d0.w1.b1", !7, i64 0}
!21 = !{!"branch_weights", i32 1, i32 1048576}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x5621855d0290.w1.b0", !24, i64 0}
!24 = !{!"0x5621855d0290.w2.b0", !25, i64 0}
!25 = !{!"0x5621855d0290.w4.b0", !26, i64 0}
!26 = !{!"0x5621855d0290.w8.b0", !27, i64 0}
!27 = !{!"0x5621855d0290.w16.b0", !28, i64 0}
!28 = !{!"0x5621855d0290.w32.b0", !29, i64 0}
!29 = !{!"0x5621855d0290.w64.b0", !30, i64 0}
!30 = !{!"0x5621855d0290.w128.b0", !31, i64 0}
!31 = !{!"0x5621855d0290.w256.b0", !32, i64 0}
!32 = !{!"0x5621855d0290.w512.b0", !33, i64 0}
!33 = !{!"0x5621855d0290.w1024.b0", !34, i64 0}
!34 = !{!"int64", !35, i64 0}
!35 = !{!"0x5621855d0290", !4, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"0x562184feba20.w1.b0", !38, i64 0}
!38 = !{!"0x562184feba20.w2.b0", !39, i64 0}
!39 = !{!"0x562184feba20.w4.b0", !40, i64 0}
!40 = !{!"0x562184feba20.w8.b0", !41, i64 0}
!41 = !{!"0x562184feba20.w16.b0", !42, i64 0}
!42 = !{!"0x562184feba20.w32.b0", !43, i64 0}
!43 = !{!"0x562184feba20.w64.b0", !44, i64 0}
!44 = !{!"0x562184feba20.w128.b0", !45, i64 0}
!45 = !{!"0x562184feba20.w256.b0", !46, i64 0}
!46 = !{!"0x562184feba20.w512.b0", !47, i64 0}
!47 = !{!"0x562184feba20.w1024.b0", !48, i64 0}
!48 = !{!"int64", !49, i64 0}
!49 = !{!"0x562184feba20", !4, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x562185916a60.w1.b0", !52, i64 0}
!52 = !{!"0x562185916a60.w2.b0", !53, i64 0}
!53 = !{!"0x562185916a60.w4.b0", !54, i64 0}
!54 = !{!"0x562185916a60.w8.b0", !55, i64 0}
!55 = !{!"0x562185916a60.w16.b0", !56, i64 0}
!56 = !{!"0x562185916a60.w32.b0", !57, i64 0}
!57 = !{!"0x562185916a60.w64.b0", !58, i64 0}
!58 = !{!"0x562185916a60.w128.b0", !59, i64 0}
!59 = !{!"0x562185916a60.w256.b0", !60, i64 0}
!60 = !{!"0x562185916a60.w512.b0", !61, i64 0}
!61 = !{!"0x562185916a60.w1024.b0", !62, i64 0}
!62 = !{!"uint32", !63, i64 0}
!63 = !{!"0x562185916a60", !4, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"0x562185916a60.w1.b1", !52, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"0x562185916a60.w1.b2", !68, i64 0}
!68 = !{!"0x562185916a60.w2.b2", !53, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"0x562185916a60.w1.b3", !68, i64 0}
