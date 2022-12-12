module {
  func.func @top(%arg0: memref<33554432xi32>, %arg1: memref<1xi32>) attributes {bit, itypes = "uu", otypes = ""} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
    affine.for %arg2 = 0 to 33554432 {
      %c0_i32_1 = arith.constant {unsigned} 0 : i32
      affine.store %c0_i32_1, %0[%arg2] {to = "SPAD.alloc_c"} : memref<33554432xi32>
    } {loop_name = "i0", op_name = "SPAD.alloc_c"}
    %1 = memref.alloc() {name = "minstq.alloc_c", unsigned} : memref<8192xi64>
    affine.for %arg2 = 0 to 8192 {
      %c0_i64 = arith.constant {unsigned} 0 : i64
      affine.store %c0_i64, %1[%arg2] {to = "minstq.alloc_c"} : memref<8192xi64>
    } {loop_name = "i0", op_name = "minstq.alloc_c"}
    %2 = memref.alloc() {name = "flags_msyncc", unsigned} : memref<1xi1>
    %false = arith.constant {unsigned} false
    affine.store %false, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
    %3 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %3[0] {to = "flags_active", unsigned} : memref<1xi1>
    %4 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %4[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %5 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %5[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %6 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
    %7 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi16>
    %c0_i16 = arith.constant {unsigned} 0 : i16
    affine.store %c0_i16, %7[0] {to = "inst_addr", unsigned} : memref<1xi16>
    %8 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i16, %8[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    %9 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    %c0_i32 = arith.constant {unsigned} 0 : i32
    affine.store %c0_i32, %9[0] {to = "latency_count", unsigned} : memref<1xi32>
    %10 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %10[0] {to = "latstalled", unsigned} : memref<1xi1>
    %11 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %11[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %12 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %12[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %13 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %13[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %14 = memref.alloc() {name = "xinstq.alloc_c", unsigned} : memref<8192xi128>
    affine.for %arg2 = 0 to 8192 {
      %c0_i128 = arith.constant {unsigned} 0 : i128
      affine.store %c0_i128, %14[%arg2] {to = "xinstq.alloc_c"} : memref<8192xi128>
    } {loop_name = "i0", op_name = "xinstq.alloc_c"}
    %15 = memref.alloc() {name = "cinstq.alloc_c", unsigned} : memref<8192xi64>
    affine.for %arg2 = 0 to 8192 {
      %c0_i64 = arith.constant {unsigned} 0 : i64
      affine.store %c0_i64, %15[%arg2] {to = "cinstq.alloc_c"} : memref<8192xi64>
    } {loop_name = "i0", op_name = "cinstq.alloc_c"}
    %16 = memref.alloc() {name = "nop_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %16[0] {to = "nop_count", unsigned} : memref<1xi32>
    %17 = memref.alloc() {name = "csyncm", unsigned} : memref<1xi1>
    affine.store %false, %17[0] {to = "csyncm", unsigned} : memref<1xi1>
    %18 = memref.alloc() {name = "cstore_cycle", unsigned} : memref<1xi3>
    %c0_i3 = arith.constant {unsigned} 0 : i3
    affine.store %c0_i3, %18[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
    %19 = memref.alloc() {name = "cstore_valid", unsigned} : memref<1xi1>
    affine.store %false, %19[0] {to = "cstore_valid", unsigned} : memref<1xi1>
    %20 = memref.alloc() {name = "cstore_spadaddr", unsigned} : memref<1xi48>
    %c0_i48 = arith.constant {unsigned} 0 : i48
    affine.store %c0_i48, %20[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
    %21 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %21[0] {to = "flags_active", unsigned} : memref<1xi1>
    %22 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %23 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %24 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
    %25 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi16>
    affine.store %c0_i16, %25[0] {to = "inst_addr", unsigned} : memref<1xi16>
    %26 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i16, %26[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    %27 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %27[0] {to = "latency_count", unsigned} : memref<1xi32>
    %28 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %28[0] {to = "latstalled", unsigned} : memref<1xi1>
    %29 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %29[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %30 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %31 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %31[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %32 = memref.alloc() {name = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
    affine.for %arg2 = 0 to 4 {
      affine.for %arg3 = 0 to 72 {
        affine.for %arg4 = 0 to 8192 {
          affine.store %c0_i32, %32[%arg2, %arg3, %arg4] {to = "RF.alloc_c"} : memref<4x72x8192xi32>
        } {loop_name = "i2"}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "RF.alloc_c"}
    %33 = memref.alloc() {name = "residue_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %33[0] {to = "residue_count", unsigned} : memref<1xi32>
    %34 = memref.alloc() {name = "stage_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %34[0] {to = "stage_count", unsigned} : memref<1xi32>
    %35 = memref.alloc() {name = "tw_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %35[0] {to = "tw_count", unsigned} : memref<1xi32>
    affine.for %arg2 = 0 to 64 {
    } {loop_name = "i0", op_name = "residues.alloc_c"}
    %36 = memref.alloc() {name = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
    affine.for %arg2 = 0 to 71303168 {
      affine.store %c0_i32, %36[%arg2] {to = "nttroots.alloc_c"} : memref<71303168xi32>
    } {loop_name = "i0", op_name = "nttroots.alloc_c"}
    %37 = memref.alloc() {name = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
    affine.for %arg2 = 0 to 71303168 {
      affine.store %c0_i32, %37[%arg2] {to = "inttroots.alloc_c"} : memref<71303168xi32>
    } {loop_name = "i0", op_name = "inttroots.alloc_c"}
    %38 = memref.alloc() {name = "nop_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %38[0] {to = "nop_count", unsigned} : memref<1xi32>
    %39 = memref.alloc() {name = "flag_ntt", unsigned} : memref<1xi1>
    affine.store %false, %39[0] {to = "flag_ntt", unsigned} : memref<1xi1>
    %40 = memref.alloc() {name = "flag_intt", unsigned} : memref<1xi1>
    affine.store %false, %40[0] {to = "flag_intt", unsigned} : memref<1xi1>
    %41 = memref.alloc() {name = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    %c0_i9 = arith.constant {unsigned} 0 : i9
    affine.store %c0_i9, %41[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    %42 = memref.alloc() {name = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    affine.store %c0_i9, %42[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    %43 = memref.alloc() {name = "instq.alloc_c", unsigned} : memref<16xi128>
    affine.for %arg2 = 0 to 16 {
      %c0_i128 = arith.constant {unsigned} 0 : i128
      affine.store %c0_i128, %43[%arg2] {to = "instq.alloc_c"} : memref<16xi128>
    } {loop_name = "i0", op_name = "instq.alloc_c"}
    %44 = memref.alloc() {name = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %44[%arg2] {to = "nttdataintop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataintop.alloc_c"}
    %45 = memref.alloc() {name = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %45[%arg2] {to = "nttdatainbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdatainbot.alloc_c"}
    %46 = memref.alloc() {name = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %46[%arg2] {to = "nttdataouttop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataouttop.alloc_c"}
    %47 = memref.alloc() {name = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %47[%arg2] {to = "nttdataoutbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataoutbot.alloc_c"}
    %48 = memref.alloc() {name = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %48[%arg2] {to = "inttdataintop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataintop.alloc_c"}
    %49 = memref.alloc() {name = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %49[%arg2] {to = "inttdatainbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdatainbot.alloc_c"}
    %50 = memref.alloc() {name = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %50[%arg2] {to = "inttdataouttop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataouttop.alloc_c"}
    %51 = memref.alloc() {name = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %51[%arg2] {to = "inttdataoutbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataoutbot.alloc_c"}
    %52 = memref.alloc() {name = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %52[%arg2] {to = "ntt_ain.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_ain.alloc_c"}
    %53 = memref.alloc() {name = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %53[%arg2] {to = "ntt_bin.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_bin.alloc_c"}
    %54 = memref.alloc() {name = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %54[%arg2] {to = "ntt_win.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_win.alloc_c"}
    %55 = memref.alloc() {name = "uc_start_delay", unsigned} : memref<1xi4>
    %c0_i4 = arith.constant {unsigned} 0 : i4
    affine.store %c0_i4, %55[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
    %56 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %56[0] {to = "flags_active", unsigned} : memref<1xi1>
    %57 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %57[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %58 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %58[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %59 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
    %60 = memref.alloc() {name = "addr_stop", unsigned} : memref<1xi1>
    affine.store %false, %60[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %61 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi5>
    %c0_i5 = arith.constant {unsigned} 0 : i5
    affine.store %c0_i5, %61[0] {to = "inst_addr", unsigned} : memref<1xi5>
    %62 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi5>
    affine.store %c0_i5, %62[0] {to = "inst_naddr", unsigned} : memref<1xi5>
    %63 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %63[0] {to = "latency_count", unsigned} : memref<1xi32>
    %64 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %64[0] {to = "latstalled", unsigned} : memref<1xi1>
    %65 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %65[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %66 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %66[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %67 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %67[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %68 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %68[0] {to = "flags_active", unsigned} : memref<1xi1>
    %69 = memref.alloc() {name = "proc_started", unsigned} : memref<1xi1>
    affine.store %false, %69[0] {to = "proc_started", unsigned} : memref<1xi1>
    %70 = memref.alloc() {name = "sys_steps", unsigned} : memref<1xi32>
    %c1_i32 = arith.constant {unsigned} 1 : i32
    affine.store %c1_i32, %70[0] {to = "sys_steps", unsigned} : memref<1xi32>
    %71 = memref.alloc() {name = "sys_done", unsigned} : memref<1xi1>
    affine.store %false, %71[0] {to = "sys_done", unsigned} : memref<1xi1>
    %c0_i32_0 = arith.constant 0 : i32
    %72 = arith.trunci %c0_i32_0 {unsigned} : i32 to i1
    affine.store %72, %69[0] {to = "proc_started", unsigned} : memref<1xi1>
    affine.store %72, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
    affine.store %72, %3[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %72, %4[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %72, %5[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %72, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
    %73 = arith.trunci %c0_i32_0 {unsigned} : i32 to i16
    affine.store %73, %7[0] {to = "inst_addr", unsigned} : memref<1xi16>
    affine.store %73, %8[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i32_0, %9[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %72, %10[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32_0, %11[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %12[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %13[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %16[0] {to = "nop_count", unsigned} : memref<1xi32>
    affine.store %72, %17[0] {to = "csyncm", unsigned} : memref<1xi1>
    %74 = arith.trunci %c0_i32_0 {unsigned} : i32 to i3
    affine.store %74, %18[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
    affine.store %72, %19[0] {to = "cstore_valid", unsigned} : memref<1xi1>
    %75 = arith.extsi %c0_i32_0 {unsigned} : i32 to i48
    affine.store %75, %20[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
    affine.store %72, %21[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %72, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %72, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %72, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
    affine.store %73, %25[0] {to = "inst_addr", unsigned} : memref<1xi16>
    affine.store %73, %26[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i32_0, %27[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %72, %28[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32_0, %29[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %31[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %38[0] {to = "nop_count", unsigned} : memref<1xi32>
    affine.store %72, %39[0] {to = "flag_ntt", unsigned} : memref<1xi1>
    affine.store %72, %40[0] {to = "flag_intt", unsigned} : memref<1xi1>
    %76 = arith.trunci %c0_i32_0 {unsigned} : i32 to i9
    affine.store %76, %41[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    affine.store %76, %42[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    %77 = arith.trunci %c0_i32_0 {unsigned} : i32 to i4
    affine.store %77, %55[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
    affine.store %72, %56[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %72, %57[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %72, %58[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %72, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
    affine.store %72, %60[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %78 = arith.trunci %c0_i32_0 {unsigned} : i32 to i5
    affine.store %78, %61[0] {to = "inst_addr", unsigned} : memref<1xi5>
    affine.store %78, %62[0] {to = "inst_naddr", unsigned} : memref<1xi5>
    affine.store %c0_i32_0, %63[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %72, %64[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32_0, %65[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %66[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %67[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    scf.while : () -> () {
      %86 = affine.load %71[0] {from = "sys_done", unsigned} : memref<1xi1>
      %87 = arith.extui %86 : i1 to i32
      %88 = arith.cmpi eq, %87, %c0_i32_0 : i32
      scf.condition(%88)
    } do {
      %86 = affine.load %70[0] {from = "sys_steps", unsigned} : memref<1xi32>
      hcl.print(%86) {format = "step=%d ------------------------------------------------------------\0A", signedness = "u"} : i32
      %87 = affine.load %39[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %88 = arith.extui %87 : i1 to i32
      %89 = arith.cmpi ne, %88, %c0_i32_0 : i32
      scf.if %89 {
        %116 = affine.load %41[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %117 = memref.alloc() : memref<1xi7>
        %118 = memref.alloc() : memref<1xi2>
        %c6 = arith.constant 6 : index
        %c0_2 = arith.constant 0 : index
        %119 = hcl.get_slice(%116 : i9, %c6, %c0_2) -> i7
        %c8 = arith.constant 8 : index
        %c7 = arith.constant 7 : index
        %120 = hcl.get_slice(%116 : i9, %c8, %c7) -> i2
        affine.store %119, %117[0] : memref<1xi7>
        affine.store %120, %118[0] : memref<1xi2>
        %121 = affine.load %118[0] : memref<1xi2>
        %122 = affine.load %117[0] : memref<1xi7>
        %123 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        %c8192_i32 = arith.constant {unsigned} 8192 : i32
        affine.store %c8192_i32, %123[0] {to = "count", unsigned} : memref<1xi32>
        %124 = affine.load %123[0] {from = "count", unsigned} : memref<1xi32>
        %125 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %125[0] {to = "src_addr", unsigned} : memref<1xi32>
        %126 = affine.load %125[0] {from = "src_addr", unsigned} : memref<1xi32>
        %127 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %127[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %128 = affine.load %127[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %129 = hcl.create_op_handle "copyN"
        %130 = arith.index_cast %c0_i32_0 : i32 to index
        %131 = arith.index_cast %124 : i32 to index
        %c1_i32_3 = arith.constant 1 : i32
        %132 = arith.index_cast %c1_i32_3 : i32 to index
        scf.for %arg2 = %130 to %131 step %132 {
          %148 = arith.index_cast %126 : i32 to index
          %149 = arith.addi %148, %arg2 : index
          %150 = memref.load %44[%149] {from = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %151 = arith.index_cast %128 : i32 to index
          %152 = arith.addi %151, %arg2 : index
          %153 = arith.index_cast %121 : i2 to index
          %154 = arith.index_cast %122 : i7 to index
          memref.store %150, %32[%153, %154, %152] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %133 = affine.load %42[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %134 = memref.alloc() : memref<1xi7>
        %135 = memref.alloc() : memref<1xi2>
        %c6_4 = arith.constant 6 : index
        %c0_5 = arith.constant 0 : index
        %136 = hcl.get_slice(%133 : i9, %c6_4, %c0_5) -> i7
        %c8_6 = arith.constant 8 : index
        %c7_7 = arith.constant 7 : index
        %137 = hcl.get_slice(%133 : i9, %c8_6, %c7_7) -> i2
        affine.store %136, %134[0] : memref<1xi7>
        affine.store %137, %135[0] : memref<1xi2>
        %138 = affine.load %135[0] : memref<1xi2>
        %139 = affine.load %134[0] : memref<1xi7>
        %140 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        affine.store %c8192_i32, %140[0] {to = "count", unsigned} : memref<1xi32>
        %141 = affine.load %140[0] {from = "count", unsigned} : memref<1xi32>
        %142 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %142[0] {to = "src_addr", unsigned} : memref<1xi32>
        %143 = affine.load %142[0] {from = "src_addr", unsigned} : memref<1xi32>
        %144 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %144[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %145 = affine.load %144[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %146 = hcl.create_op_handle "copyN"
        %147 = arith.index_cast %141 : i32 to index
        scf.for %arg2 = %130 to %147 step %132 {
          %148 = arith.index_cast %143 : i32 to index
          %149 = arith.addi %148, %arg2 : index
          %150 = memref.load %45[%149] {from = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %151 = arith.index_cast %145 : i32 to index
          %152 = arith.addi %151, %arg2 : index
          %153 = arith.index_cast %138 : i2 to index
          %154 = arith.index_cast %139 : i7 to index
          memref.store %150, %32[%153, %154, %152] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        affine.store %72, %39[0] {to = "flag_ntt", unsigned} : memref<1xi1>
      }
      %90 = affine.load %40[0] {from = "flag_intt", unsigned} : memref<1xi1>
      %91 = arith.extui %90 : i1 to i32
      %92 = arith.cmpi ne, %91, %c0_i32_0 : i32
      scf.if %92 {
        %116 = affine.load %41[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %117 = memref.alloc() : memref<1xi7>
        %118 = memref.alloc() : memref<1xi2>
        %c6 = arith.constant 6 : index
        %c0_2 = arith.constant 0 : index
        %119 = hcl.get_slice(%116 : i9, %c6, %c0_2) -> i7
        %c8 = arith.constant 8 : index
        %c7 = arith.constant 7 : index
        %120 = hcl.get_slice(%116 : i9, %c8, %c7) -> i2
        affine.store %119, %117[0] : memref<1xi7>
        affine.store %120, %118[0] : memref<1xi2>
        %121 = affine.load %118[0] : memref<1xi2>
        %122 = affine.load %117[0] : memref<1xi7>
        %123 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        %c8192_i32 = arith.constant {unsigned} 8192 : i32
        affine.store %c8192_i32, %123[0] {to = "count", unsigned} : memref<1xi32>
        %124 = affine.load %123[0] {from = "count", unsigned} : memref<1xi32>
        %125 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %125[0] {to = "src_addr", unsigned} : memref<1xi32>
        %126 = affine.load %125[0] {from = "src_addr", unsigned} : memref<1xi32>
        %127 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %127[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %128 = affine.load %127[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %129 = hcl.create_op_handle "copyN"
        %130 = arith.index_cast %c0_i32_0 : i32 to index
        %131 = arith.index_cast %124 : i32 to index
        %c1_i32_3 = arith.constant 1 : i32
        %132 = arith.index_cast %c1_i32_3 : i32 to index
        scf.for %arg2 = %130 to %131 step %132 {
          %148 = arith.index_cast %126 : i32 to index
          %149 = arith.addi %148, %arg2 : index
          %150 = memref.load %48[%149] {from = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %151 = arith.index_cast %128 : i32 to index
          %152 = arith.addi %151, %arg2 : index
          %153 = arith.index_cast %121 : i2 to index
          %154 = arith.index_cast %122 : i7 to index
          memref.store %150, %32[%153, %154, %152] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %133 = affine.load %42[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %134 = memref.alloc() : memref<1xi7>
        %135 = memref.alloc() : memref<1xi2>
        %c6_4 = arith.constant 6 : index
        %c0_5 = arith.constant 0 : index
        %136 = hcl.get_slice(%133 : i9, %c6_4, %c0_5) -> i7
        %c8_6 = arith.constant 8 : index
        %c7_7 = arith.constant 7 : index
        %137 = hcl.get_slice(%133 : i9, %c8_6, %c7_7) -> i2
        affine.store %136, %134[0] : memref<1xi7>
        affine.store %137, %135[0] : memref<1xi2>
        %138 = affine.load %135[0] : memref<1xi2>
        %139 = affine.load %134[0] : memref<1xi7>
        %140 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        affine.store %c8192_i32, %140[0] {to = "count", unsigned} : memref<1xi32>
        %141 = affine.load %140[0] {from = "count", unsigned} : memref<1xi32>
        %142 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %142[0] {to = "src_addr", unsigned} : memref<1xi32>
        %143 = affine.load %142[0] {from = "src_addr", unsigned} : memref<1xi32>
        %144 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %144[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %145 = affine.load %144[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %146 = hcl.create_op_handle "copyN"
        %147 = arith.index_cast %141 : i32 to index
        scf.for %arg2 = %130 to %147 step %132 {
          %148 = arith.index_cast %143 : i32 to index
          %149 = arith.addi %148, %arg2 : index
          %150 = memref.load %49[%149] {from = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %151 = arith.index_cast %145 : i32 to index
          %152 = arith.addi %151, %arg2 : index
          %153 = arith.index_cast %138 : i2 to index
          %154 = arith.index_cast %139 : i7 to index
          memref.store %150, %32[%153, %154, %152] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        affine.store %72, %40[0] {to = "flag_intt", unsigned} : memref<1xi1>
      }
      %93 = affine.load %69[0] {from = "proc_started", unsigned} : memref<1xi1>
      %94 = arith.extui %93 : i1 to i32
      %95 = arith.cmpi eq, %94, %c0_i32_0 : i32
      scf.if %95 {
        %c1_i32_2 = arith.constant 1 : i32
        %116 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
        affine.store %116, %69[0] {to = "proc_started", unsigned} : memref<1xi1>
        %117 = affine.load %68[0] {from = "flags_active", unsigned} : memref<1xi1>
        affine.store %72, %68[0] {to = "flags_active", unsigned} : memref<1xi1>
        affine.store %116, %68[0] {to = "flags_active", unsigned} : memref<1xi1>
      } else {
        %116 = affine.load %68[0] {from = "flags_active", unsigned} : memref<1xi1>
        %117 = arith.extui %116 : i1 to i32
        %118 = arith.cmpi eq, %117, %c0_i32_0 : i32
        scf.if %118 {
          %c1_i32_2 = arith.constant 1 : i32
          %119 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
          affine.store %119, %71[0] {to = "sys_done", unsigned} : memref<1xi1>
        }
      }
      affine.store %72, %4[0] {to = "flags_stall", unsigned} : memref<1xi1>
      affine.store %72, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
      %96 = affine.load %3[0] {from = "flags_active", unsigned} : memref<1xi1>
      %97 = arith.extui %96 : i1 to i32
      %98 = arith.cmpi ne, %97, %c0_i32_0 : i32
      %99 = affine.load %6[0] {from = "flags_break", unsigned} : memref<1xi1>
      %100 = arith.extui %99 : i1 to i32
      %101 = arith.cmpi eq, %100, %c0_i32_0 : i32
      scf.while : () -> () {
        %116 = arith.andi %98, %101 : i1
        scf.condition(%116)
      } do {
        %116 = affine.load %9[0] {from = "latency_count", unsigned} : memref<1xi32>
        %117 = arith.cmpi eq, %116, %c0_i32_0 : i32
        scf.if %117 {
          %118 = affine.load %7[0] {from = "inst_addr", unsigned} : memref<1xi16>
          %119 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi16>
          affine.store %118, %119[0] {to = "_cur_address", unsigned} : memref<1xi16>
          %c1_i32_2 = arith.constant 1 : i32
          %120 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi16>
          affine.store %118, %120[0] {to = "read_addr", unsigned} : memref<1xi16>
          %121 = affine.load %120[0] {from = "read_addr", unsigned} : memref<1xi16>
          %122 = arith.extui %121 : i16 to i32
          %123 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi64>
          %124 = hcl.create_op_handle "Mem.read_c"
          %125 = affine.load %120[0] {from = "read_addr", unsigned} : memref<1xi16>
          %126 = arith.index_cast %125 : i16 to index
          %127 = arith.addi %126, %c0 : index
          %128 = memref.load %1[%127] {from = "minstq.alloc_c", unsigned} : memref<8192xi64>
          affine.store %128, %123[%c0] {to = "Mem.read_c"} : memref<1xi64>
          %129 = affine.load %123[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
          %130 = memref.alloc() {name = "inst", unsigned} : memref<1xi64>
          affine.store %129, %130[0] {to = "inst", unsigned} : memref<1xi64>
          %131 = affine.load %130[0] {from = "inst", unsigned} : memref<1xi64>
          %132 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
          affine.store %c0_i32, %132[0] {to = "inst_lat", unsigned} : memref<1xi32>
          %133 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi64>
          affine.store %131, %133[0] {to = "decode_inst", unsigned} : memref<1xi64>
          %134 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
          affine.store %c0_i16, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
          %135 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %136 = memref.alloc() : memref<1xi4>
          %c3 = arith.constant 3 : index
          %c0_3 = arith.constant 0 : index
          %137 = hcl.get_slice(%135 : i64, %c3, %c0_3) -> i4
          %c63 = arith.constant 63 : index
          %c4 = arith.constant 4 : index
          affine.store %137, %136[0] : memref<1xi4>
          %138 = affine.load %136[0] : memref<1xi4>
          %c15_i32 = arith.constant 15 : i32
          %139 = arith.extsi %138 : i4 to i32
          %140 = arith.cmpi eq, %139, %c15_i32 : i32
          scf.if %140 {
            affine.store %73, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
          } else {
            %150 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %151 = memref.alloc() : memref<1xi4>
            %c3_4 = arith.constant 3 : index
            %c0_5 = arith.constant 0 : index
            %152 = hcl.get_slice(%150 : i64, %c3_4, %c0_5) -> i4
            %c63_6 = arith.constant 63 : index
            %c4_7 = arith.constant 4 : index
            affine.store %152, %151[0] : memref<1xi4>
            %153 = affine.load %151[0] : memref<1xi4>
            %c14_i32 = arith.constant 14 : i32
            %154 = arith.extsi %153 : i4 to i32
            %155 = arith.cmpi eq, %154, %c14_i32 : i32
            scf.if %155 {
              %156 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
              affine.store %156, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %156 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %157 = memref.alloc() : memref<1xi4>
              %c3_8 = arith.constant 3 : index
              %c0_9 = arith.constant 0 : index
              %158 = hcl.get_slice(%156 : i64, %c3_8, %c0_9) -> i4
              %c63_10 = arith.constant 63 : index
              %c4_11 = arith.constant 4 : index
              affine.store %158, %157[0] : memref<1xi4>
              %159 = affine.load %157[0] : memref<1xi4>
              %c12_i32 = arith.constant 12 : i32
              %160 = arith.extsi %159 : i4 to i32
              %161 = arith.cmpi eq, %160, %c12_i32 : i32
              scf.if %161 {
                %c2_i32 = arith.constant 2 : i32
                %162 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %162, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %162 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %163 = memref.alloc() : memref<1xi4>
                %c3_12 = arith.constant 3 : index
                %c0_13 = arith.constant 0 : index
                %164 = hcl.get_slice(%162 : i64, %c3_12, %c0_13) -> i4
                %c63_14 = arith.constant 63 : index
                %c4_15 = arith.constant 4 : index
                affine.store %164, %163[0] : memref<1xi4>
                %165 = affine.load %163[0] : memref<1xi4>
                %c11_i32 = arith.constant 11 : i32
                %166 = arith.extsi %165 : i4 to i32
                %167 = arith.cmpi eq, %166, %c11_i32 : i32
                scf.if %167 {
                  %c3_i32 = arith.constant 3 : i32
                  %168 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %168, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %168 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                  %169 = memref.alloc() : memref<1xi4>
                  %c3_16 = arith.constant 3 : index
                  %c0_17 = arith.constant 0 : index
                  %170 = hcl.get_slice(%168 : i64, %c3_16, %c0_17) -> i4
                  %c33 = arith.constant 33 : index
                  %c4_18 = arith.constant 4 : index
                  %c63_19 = arith.constant 63 : index
                  %c34 = arith.constant 34 : index
                  affine.store %170, %169[0] : memref<1xi4>
                  %171 = affine.load %169[0] : memref<1xi4>
                  %172 = arith.extsi %171 : i4 to i32
                  %173 = arith.cmpi eq, %172, %c1_i32_2 : i32
                  scf.if %173 {
                    %c4_i32 = arith.constant 4 : i32
                    %174 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %174, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %174 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %175 = memref.alloc() : memref<1xi4>
                    %c3_20 = arith.constant 3 : index
                    %c0_21 = arith.constant 0 : index
                    %176 = hcl.get_slice(%174 : i64, %c3_20, %c0_21) -> i4
                    %c33_22 = arith.constant 33 : index
                    %c4_23 = arith.constant 4 : index
                    %c63_24 = arith.constant 63 : index
                    %c34_25 = arith.constant 34 : index
                    affine.store %176, %175[0] : memref<1xi4>
                    %177 = affine.load %175[0] : memref<1xi4>
                    %c2_i32 = arith.constant 2 : i32
                    %178 = arith.extsi %177 : i4 to i32
                    %179 = arith.cmpi eq, %178, %c2_i32 : i32
                    scf.if %179 {
                      %c5_i32 = arith.constant 5 : i32
                      %180 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %180, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %180 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                      %181 = memref.alloc() : memref<1xi4>
                      %c3_26 = arith.constant 3 : index
                      %c0_27 = arith.constant 0 : index
                      %182 = hcl.get_slice(%180 : i64, %c3_26, %c0_27) -> i4
                      %c33_28 = arith.constant 33 : index
                      %c4_29 = arith.constant 4 : index
                      %c57 = arith.constant 57 : index
                      %c34_30 = arith.constant 34 : index
                      %c63_31 = arith.constant 63 : index
                      %c58 = arith.constant 58 : index
                      affine.store %182, %181[0] : memref<1xi4>
                      %183 = affine.load %181[0] : memref<1xi4>
                      %c3_i32 = arith.constant 3 : i32
                      %184 = arith.extsi %183 : i4 to i32
                      %185 = arith.cmpi eq, %184, %c3_i32 : i32
                      scf.if %185 {
                        %c6_i32 = arith.constant 6 : i32
                        %186 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %186, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %186 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                        %187 = memref.alloc() : memref<1xi4>
                        %c3_32 = arith.constant 3 : index
                        %c0_33 = arith.constant 0 : index
                        %188 = hcl.get_slice(%186 : i64, %c3_32, %c0_33) -> i4
                        %c33_34 = arith.constant 33 : index
                        %c4_35 = arith.constant 4 : index
                        %c57_36 = arith.constant 57 : index
                        %c34_37 = arith.constant 34 : index
                        %c63_38 = arith.constant 63 : index
                        %c58_39 = arith.constant 58 : index
                        affine.store %188, %187[0] : memref<1xi4>
                        %189 = affine.load %187[0] : memref<1xi4>
                        %c4_i32 = arith.constant 4 : i32
                        %190 = arith.extsi %189 : i4 to i32
                        %191 = arith.cmpi eq, %190, %c4_i32 : i32
                        scf.if %191 {
                          %c7_i32 = arith.constant 7 : i32
                          %192 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %192, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %c8_i32 = arith.constant 8 : i32
                          %192 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                          affine.store %192, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          %141 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
          affine.store %false, %141[0] {to = "tmp", unsigned} : memref<1xi1>
          %142 = affine.load %132[0] {from = "inst_lat", unsigned} : memref<1xi32>
          %143 = arith.cmpi sle, %142, %c1_i32_2 : i32
          scf.if %143 {
            %150 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %150, %141[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %144 = affine.load %10[0] {from = "latstalled", unsigned} : memref<1xi1>
          %145 = arith.extui %144 : i1 to i32
          %146 = arith.cmpi eq, %145, %c1_i32_2 : i32
          scf.if %146 {
            %150 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %150, %141[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %147 = affine.load %141[0] {from = "tmp", unsigned} : memref<1xi1>
          %148 = arith.extui %147 : i1 to i32
          %149 = arith.cmpi ne, %148, %c0_i32_0 : i32
          scf.if %149 {
            %150 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi64>
            affine.store %131, %150[0] {to = "execute_inst", unsigned} : memref<1xi64>
            %151 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
            %152 = arith.extui %151 : i16 to i32
            %153 = arith.cmpi eq, %152, %c0_i32_0 : i32
            scf.if %153 {
              %159 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %c3_4 = arith.constant 3 : index
              %c0_5 = arith.constant 0 : index
              %160 = hcl.get_slice(%159 : i64, %c3_4, %c0_5) -> i4
              %c63_6 = arith.constant 63 : index
              %c4_7 = arith.constant 4 : index
              %161 = hcl.get_slice(%159 : i64, %c63_6, %c4_7) -> i60
              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
              %162 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
              hcl.print(%162) {format = "ip=%d ", signedness = "u"} : i16
              hcl.print(%c0_i32_0) {format = "mhalt", signedness = "_"} : i32
              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
              %163 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %72, %3[0] {to = "flags_active", unsigned} : memref<1xi1>
              affine.store %163, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
              %164 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %165 = arith.extui %164 : i1 to i32
              %166 = arith.cmpi eq, %165, %c0_i32_0 : i32
              scf.if %166 {
              } else {
                %167 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                %168 = arith.extui %167 : i16 to i32
                %169 = arith.cmpi eq, %168, %c1_i32_2 : i32
                scf.if %169 {
                  %170 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                  %c3_8 = arith.constant 3 : index
                  %c0_9 = arith.constant 0 : index
                  %171 = hcl.get_slice(%170 : i64, %c3_8, %c0_9) -> i4
                  %c63_10 = arith.constant 63 : index
                  %c4_11 = arith.constant 4 : index
                  %172 = hcl.get_slice(%170 : i64, %c63_10, %c4_11) -> i60
                  %173 = affine.load %21[0] {from = "flags_active", unsigned} : memref<1xi1>
                  %174 = arith.extui %173 : i1 to i32
                  %175 = arith.cmpi ne, %174, %c0_i32_0 : i32
                  scf.if %175 {
                    %176 = affine.load %5[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                    %177 = arith.extui %176 : i1 to i32
                    %178 = arith.cmpi eq, %177, %c0_i32_0 : i32
                    scf.if %178 {
                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %184 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%184) {format = "ip=%d ", signedness = "u"} : i16
                      hcl.print(%c0_i32_0) {format = "mwait", signedness = "_"} : i32
                      hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                    } else {
                      %184 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %185 = arith.extui %184 : i16 to i32
                      %c2_i32 = arith.constant 2 : i32
                      %186 = arith.cmpi eq, %185, %c2_i32 : i32
                      scf.if %186 {
                        %187 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                        %c3_12 = arith.constant 3 : index
                        %c0_13 = arith.constant 0 : index
                        %188 = hcl.get_slice(%187 : i64, %c3_12, %c0_13) -> i4
                        %c63_14 = arith.constant 63 : index
                        %c4_15 = arith.constant 4 : index
                        %189 = hcl.get_slice(%187 : i64, %c63_14, %c4_15) -> i60
                        hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                        %190 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                        hcl.print(%190) {format = "ip=%d ", signedness = "u"} : i16
                        hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                        affine.store %163, %17[0] {to = "csyncm", unsigned} : memref<1xi1>
                      } else {
                        %187 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                        %188 = arith.extui %187 : i16 to i32
                        %c3_i32 = arith.constant 3 : i32
                        %189 = arith.cmpi eq, %188, %c3_i32 : i32
                        scf.if %189 {
                          %190 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                          %c3_12 = arith.constant 3 : index
                          %c0_13 = arith.constant 0 : index
                          %191 = hcl.get_slice(%190 : i64, %c3_12, %c0_13) -> i4
                          %c63_14 = arith.constant 63 : index
                          %c4_15 = arith.constant 4 : index
                          %192 = hcl.get_slice(%190 : i64, %c63_14, %c4_15) -> i60
                          %193 = affine.load %2[0] {from = "flags_msyncc", unsigned} : memref<1xi1>
                          %194 = arith.extui %193 : i1 to i32
                          %195 = arith.cmpi eq, %194, %c0_i32_0 : i32
                          scf.if %195 {
                            %196 = affine.load %5[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                            %197 = arith.extui %196 : i1 to i32
                            %198 = arith.cmpi eq, %197, %c0_i32_0 : i32
                            scf.if %198 {
                              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                              %204 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                              hcl.print(%204) {format = "ip=%d ", signedness = "u"} : i16
                              hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                              hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                            } else {
                              %204 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                              %205 = arith.extui %204 : i16 to i32
                              %c4_i32 = arith.constant 4 : i32
                              %206 = arith.cmpi eq, %205, %c4_i32 : i32
                              scf.if %206 {
                                %207 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                %208 = memref.alloc() : memref<1xi30>
                                %209 = memref.alloc() : memref<1xi30>
                                %c3_16 = arith.constant 3 : index
                                %c0_17 = arith.constant 0 : index
                                %c33 = arith.constant 33 : index
                                %c4_18 = arith.constant 4 : index
                                %210 = hcl.get_slice(%207 : i64, %c33, %c4_18) -> i30
                                %c63_19 = arith.constant 63 : index
                                %c34 = arith.constant 34 : index
                                %211 = hcl.get_slice(%207 : i64, %c63_19, %c34) -> i30
                                affine.store %210, %208[0] : memref<1xi30>
                                affine.store %211, %209[0] : memref<1xi30>
                                hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                %212 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                hcl.print(%212) {format = "ip=%d ", signedness = "u"} : i16
                                %213 = affine.load %208[0] : memref<1xi30>
                                %214 = affine.load %209[0] : memref<1xi30>
                                hcl.print(%213, %214) {format = "mload hbmaddr=0x%x spadaddr=0x%x", signedness = "__"} : i30, i30
                                hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                %c13_i32 = arith.constant 13 : i32
                                %215 = arith.trunci %c13_i32 : i32 to i30
                                %216 = arith.extsi %213 : i30 to i60
                                %217 = arith.extsi %215 : i30 to i60
                                %218 = arith.shli %216, %217 : i60
                                %219 = arith.extsi %214 : i30 to i60
                                %220 = arith.shli %219, %217 : i60
                                %221 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                %c8192_i32 = arith.constant {unsigned} 8192 : i32
                                affine.store %c8192_i32, %221[0] {to = "count", unsigned} : memref<1xi32>
                                %222 = affine.load %221[0] {from = "count", unsigned} : memref<1xi32>
                                %223 = memref.alloc() {name = "src_addr"} : memref<1xi60>
                                affine.store %218, %223[0] {to = "src_addr"} : memref<1xi60>
                                %224 = affine.load %223[0] {from = "src_addr"} : memref<1xi60>
                                %225 = memref.alloc() {name = "dst_addr"} : memref<1xi60>
                                affine.store %220, %225[0] {to = "dst_addr"} : memref<1xi60>
                                %226 = affine.load %225[0] {from = "dst_addr"} : memref<1xi60>
                                %227 = arith.extui %222 : i32 to i60
                                %c33554432_i32 = arith.constant 33554432 : i32
                                %228 = hcl.create_op_handle "copyN"
                                %229 = arith.index_cast %c0_i32_0 : i32 to index
                                %230 = arith.index_cast %222 : i32 to index
                                %231 = arith.index_cast %c1_i32_2 : i32 to index
                                scf.for %arg2 = %229 to %230 step %231 {
                                  %232 = arith.index_cast %224 : i60 to index
                                  %233 = arith.addi %232, %arg2 : index
                                  %234 = memref.load %arg0[%233] {from = "hbm", unsigned} : memref<33554432xi32>
                                  %235 = arith.index_cast %226 : i60 to index
                                  %236 = arith.addi %235, %arg2 : index
                                  memref.store %234, %0[%236] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                } {loop_name = "i", op_name = "copyN"}
                              } else {
                                %207 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                %208 = arith.extui %207 : i16 to i32
                                %c5_i32 = arith.constant 5 : i32
                                %209 = arith.cmpi eq, %208, %c5_i32 : i32
                                scf.if %209 {
                                  %210 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                  %211 = memref.alloc() : memref<1xi30>
                                  %212 = memref.alloc() : memref<1xi30>
                                  %c3_16 = arith.constant 3 : index
                                  %c0_17 = arith.constant 0 : index
                                  %c33 = arith.constant 33 : index
                                  %c4_18 = arith.constant 4 : index
                                  %213 = hcl.get_slice(%210 : i64, %c33, %c4_18) -> i30
                                  %c63_19 = arith.constant 63 : index
                                  %c34 = arith.constant 34 : index
                                  %214 = hcl.get_slice(%210 : i64, %c63_19, %c34) -> i30
                                  affine.store %213, %211[0] : memref<1xi30>
                                  affine.store %214, %212[0] : memref<1xi30>
                                  hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                  %215 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                  hcl.print(%215) {format = "ip=%d ", signedness = "u"} : i16
                                  %216 = affine.load %211[0] : memref<1xi30>
                                  %217 = affine.load %212[0] : memref<1xi30>
                                  hcl.print(%216, %217) {format = "mstore hbmaddr=0x%x spadaddr=0x%x", signedness = "__"} : i30, i30
                                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                  %c13_i32 = arith.constant 13 : i32
                                  %218 = arith.trunci %c13_i32 : i32 to i30
                                  %219 = arith.extsi %217 : i30 to i60
                                  %220 = arith.extsi %218 : i30 to i60
                                  %221 = arith.shli %219, %220 : i60
                                  %222 = arith.extsi %216 : i30 to i60
                                  %223 = arith.shli %222, %220 : i60
                                  %224 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                  %c8192_i32 = arith.constant {unsigned} 8192 : i32
                                  affine.store %c8192_i32, %224[0] {to = "count", unsigned} : memref<1xi32>
                                  %225 = affine.load %224[0] {from = "count", unsigned} : memref<1xi32>
                                  %226 = memref.alloc() {name = "src_addr"} : memref<1xi60>
                                  affine.store %221, %226[0] {to = "src_addr"} : memref<1xi60>
                                  %227 = affine.load %226[0] {from = "src_addr"} : memref<1xi60>
                                  %228 = memref.alloc() {name = "dst_addr"} : memref<1xi60>
                                  affine.store %223, %228[0] {to = "dst_addr"} : memref<1xi60>
                                  %229 = affine.load %228[0] {from = "dst_addr"} : memref<1xi60>
                                  %230 = arith.extui %225 : i32 to i60
                                  %c33554432_i32 = arith.constant 33554432 : i32
                                  %231 = hcl.create_op_handle "copyN"
                                  %232 = arith.index_cast %c0_i32_0 : i32 to index
                                  %233 = arith.index_cast %225 : i32 to index
                                  %234 = arith.index_cast %c1_i32_2 : i32 to index
                                  scf.for %arg2 = %232 to %233 step %234 {
                                    %235 = arith.index_cast %227 : i60 to index
                                    %236 = arith.addi %235, %arg2 : index
                                    %237 = memref.load %0[%236] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                    %238 = arith.index_cast %229 : i60 to index
                                    %239 = arith.addi %238, %arg2 : index
                                    memref.store %237, %arg0[%239] {to = "hbm", unsigned} : memref<33554432xi32>
                                  } {loop_name = "i", op_name = "copyN"}
                                } else {
                                  %210 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                  %211 = arith.extui %210 : i16 to i32
                                  %c6_i32 = arith.constant 6 : i32
                                  %212 = arith.cmpi eq, %211, %c6_i32 : i32
                                  scf.if %212 {
                                    %213 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                    %214 = memref.alloc() : memref<1xi30>
                                    %215 = memref.alloc() : memref<1xi24>
                                    %c3_16 = arith.constant 3 : index
                                    %c0_17 = arith.constant 0 : index
                                    %c33 = arith.constant 33 : index
                                    %c4_18 = arith.constant 4 : index
                                    %216 = hcl.get_slice(%213 : i64, %c33, %c4_18) -> i30
                                    %c57 = arith.constant 57 : index
                                    %c34 = arith.constant 34 : index
                                    %217 = hcl.get_slice(%213 : i64, %c57, %c34) -> i24
                                    %c63_19 = arith.constant 63 : index
                                    %c58 = arith.constant 58 : index
                                    affine.store %216, %214[0] : memref<1xi30>
                                    affine.store %217, %215[0] : memref<1xi24>
                                    hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                    %218 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%218) {format = "ip=%d ", signedness = "u"} : i16
                                    %219 = affine.load %214[0] : memref<1xi30>
                                    %220 = affine.load %215[0] : memref<1xi24>
                                    hcl.print(%219, %220) {format = "cinstload ccode_addr=0x%x ccode_count=0x%x", signedness = "__"} : i30, i24
                                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                    %221 = memref.alloc() {name = "count"} : memref<1xi24>
                                    affine.store %220, %221[0] {to = "count"} : memref<1xi24>
                                    %222 = affine.load %221[0] {from = "count"} : memref<1xi24>
                                    %223 = memref.alloc() {name = "src_addr"} : memref<1xi30>
                                    affine.store %219, %223[0] {to = "src_addr"} : memref<1xi30>
                                    %224 = affine.load %223[0] {from = "src_addr"} : memref<1xi30>
                                    %225 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                                    affine.store %c0_i32, %225[0] {to = "dst_addr", unsigned} : memref<1xi32>
                                    %226 = affine.load %225[0] {from = "dst_addr", unsigned} : memref<1xi32>
                                    %227 = arith.extsi %222 {unsigned} : i24 to i32
                                    %228 = memref.alloc() {name = "tmp", unsigned} : memref<1xi64>
                                    %c0_i64 = arith.constant {unsigned} 0 : i64
                                    affine.store %c0_i64, %228[0] {to = "tmp", unsigned} : memref<1xi64>
                                    %229 = arith.extsi %222 : i24 to i32
                                    %230 = arith.muli %229, %c2_i32 : i32
                                    %231 = arith.extsi %224 : i30 to i32
                                    %232 = hcl.create_op_handle "copyN"
                                    %233 = arith.index_cast %c0_i32_0 : i32 to index
                                    %234 = arith.index_cast %222 : i24 to index
                                    %235 = arith.index_cast %c1_i32_2 : i32 to index
                                    scf.for %arg2 = %233 to %234 step %235 {
                                      %237 = arith.extsi %c0_i32_0 {unsigned} : i32 to i64
                                      affine.store %237, %228[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %238 = affine.load %228[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %c32_i32 = arith.constant 32 : i32
                                      %239 = arith.extsi %c32_i32 {unsigned} : i32 to i64
                                      %240 = arith.extui %238 : i64 to i128
                                      %241 = arith.extui %239 : i64 to i128
                                      %242 = arith.shli %240, %241 : i128
                                      %243 = arith.index_cast %c2_i32 : i32 to index
                                      %244 = arith.muli %arg2, %243 : index
                                      %245 = arith.index_cast %224 : i30 to index
                                      %246 = arith.addi %245, %244 : index
                                      %247 = arith.addi %246, %233 : index
                                      %248 = memref.load %arg0[%247] {from = "hbm", unsigned} : memref<33554432xi32>
                                      %249 = arith.extui %248 : i32 to i128
                                      %250 = arith.ori %242, %249 : i128
                                      %251 = arith.trunci %250 {unsigned} : i128 to i64
                                      affine.store %251, %228[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %252 = affine.load %228[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %253 = arith.extui %252 : i64 to i128
                                      %254 = arith.shli %253, %241 : i128
                                      %255 = arith.addi %246, %235 : index
                                      %256 = memref.load %arg0[%255] {from = "hbm", unsigned} : memref<33554432xi32>
                                      %257 = arith.extui %256 : i32 to i128
                                      %258 = arith.ori %254, %257 : i128
                                      %259 = arith.trunci %258 {unsigned} : i128 to i64
                                      affine.store %259, %228[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %260 = affine.load %228[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %261 = arith.index_cast %226 : i32 to index
                                      %262 = arith.addi %261, %arg2 : index
                                      memref.store %260, %15[%262] {to = "cinstq.alloc_c", unsigned} : memref<8192xi64>
                                    } {loop_name = "i", op_name = "copyN"}
                                    %236 = affine.load %21[0] {from = "flags_active", unsigned} : memref<1xi1>
                                    affine.store %72, %21[0] {to = "flags_active", unsigned} : memref<1xi1>
                                    affine.store %72, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                    affine.store %72, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                    affine.store %72, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                                    affine.store %73, %25[0] {to = "inst_addr", unsigned} : memref<1xi16>
                                    affine.store %73, %26[0] {to = "inst_naddr", unsigned} : memref<1xi16>
                                    affine.store %c0_i32_0, %27[0] {to = "latency_count", unsigned} : memref<1xi32>
                                    affine.store %72, %28[0] {to = "latstalled", unsigned} : memref<1xi1>
                                    affine.store %73, %25[0] {to = "inst_addr", unsigned} : memref<1xi16>
                                    affine.store %163, %21[0] {to = "flags_active", unsigned} : memref<1xi1>
                                  } else {
                                    %213 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                    %214 = arith.extui %213 : i16 to i32
                                    %c7_i32 = arith.constant 7 : i32
                                    %215 = arith.cmpi eq, %214, %c7_i32 : i32
                                    scf.if %215 {
                                      %216 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      %217 = memref.alloc() : memref<1xi30>
                                      %218 = memref.alloc() : memref<1xi24>
                                      %c3_16 = arith.constant 3 : index
                                      %c0_17 = arith.constant 0 : index
                                      %c33 = arith.constant 33 : index
                                      %c4_18 = arith.constant 4 : index
                                      %219 = hcl.get_slice(%216 : i64, %c33, %c4_18) -> i30
                                      %c57 = arith.constant 57 : index
                                      %c34 = arith.constant 34 : index
                                      %220 = hcl.get_slice(%216 : i64, %c57, %c34) -> i24
                                      %c63_19 = arith.constant 63 : index
                                      %c58 = arith.constant 58 : index
                                      affine.store %219, %217[0] : memref<1xi30>
                                      affine.store %220, %218[0] : memref<1xi24>
                                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                      %221 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                      hcl.print(%221) {format = "ip=%d ", signedness = "u"} : i16
                                      %222 = affine.load %217[0] : memref<1xi30>
                                      %223 = affine.load %218[0] : memref<1xi24>
                                      hcl.print(%222, %223) {format = "xinstload xcode_addr=0x%x xcode_count=0x%x", signedness = "__"} : i30, i24
                                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                      %c16_i32 = arith.constant 16 : i32
                                      %224 = arith.extsi %223 : i24 to i32
                                      %225 = memref.alloc() {name = "count"} : memref<1xi24>
                                      affine.store %223, %225[0] {to = "count"} : memref<1xi24>
                                      %226 = affine.load %225[0] {from = "count"} : memref<1xi24>
                                      %227 = memref.alloc() {name = "src_addr"} : memref<1xi30>
                                      affine.store %222, %227[0] {to = "src_addr"} : memref<1xi30>
                                      %228 = affine.load %227[0] {from = "src_addr"} : memref<1xi30>
                                      %229 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                                      affine.store %c0_i32, %229[0] {to = "dst_addr", unsigned} : memref<1xi32>
                                      %230 = affine.load %229[0] {from = "dst_addr", unsigned} : memref<1xi32>
                                      %231 = arith.extsi %226 {unsigned} : i24 to i32
                                      %232 = memref.alloc() {name = "tmp", unsigned} : memref<1xi128>
                                      %c0_i128 = arith.constant {unsigned} 0 : i128
                                      affine.store %c0_i128, %232[0] {to = "tmp", unsigned} : memref<1xi128>
                                      %233 = arith.extsi %226 : i24 to i32
                                      %234 = arith.muli %233, %c4_i32 : i32
                                      %235 = arith.extsi %228 : i30 to i32
                                      %236 = hcl.create_op_handle "copyN"
                                      %237 = arith.index_cast %c0_i32_0 : i32 to index
                                      %238 = arith.index_cast %226 : i24 to index
                                      %239 = arith.index_cast %c1_i32_2 : i32 to index
                                      scf.for %arg2 = %237 to %238 step %239 {
                                        %240 = arith.extsi %c0_i32_0 {unsigned} : i32 to i128
                                        affine.store %240, %232[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %241 = affine.load %232[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %c32_i32 = arith.constant 32 : i32
                                        %242 = arith.extsi %c32_i32 {unsigned} : i32 to i128
                                        %243 = arith.extui %241 : i128 to i256
                                        %244 = arith.extui %242 : i128 to i256
                                        %245 = arith.shli %243, %244 : i256
                                        %246 = arith.index_cast %c4_i32 : i32 to index
                                        %247 = arith.muli %arg2, %246 : index
                                        %248 = arith.index_cast %228 : i30 to index
                                        %249 = arith.addi %248, %247 : index
                                        %250 = arith.addi %249, %237 : index
                                        %251 = memref.load %arg0[%250] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %252 = arith.extui %251 : i32 to i256
                                        %253 = arith.ori %245, %252 : i256
                                        %254 = arith.trunci %253 {unsigned} : i256 to i128
                                        affine.store %254, %232[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %255 = affine.load %232[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %256 = arith.extui %255 : i128 to i256
                                        %257 = arith.shli %256, %244 : i256
                                        %258 = arith.addi %249, %239 : index
                                        %259 = memref.load %arg0[%258] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %260 = arith.extui %259 : i32 to i256
                                        %261 = arith.ori %257, %260 : i256
                                        %262 = arith.trunci %261 {unsigned} : i256 to i128
                                        affine.store %262, %232[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %263 = affine.load %232[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %264 = arith.extui %263 : i128 to i256
                                        %265 = arith.shli %264, %244 : i256
                                        %266 = arith.index_cast %c2_i32 : i32 to index
                                        %267 = arith.addi %249, %266 : index
                                        %268 = memref.load %arg0[%267] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %269 = arith.extui %268 : i32 to i256
                                        %270 = arith.ori %265, %269 : i256
                                        %271 = arith.trunci %270 {unsigned} : i256 to i128
                                        affine.store %271, %232[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %272 = affine.load %232[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %273 = arith.extui %272 : i128 to i256
                                        %274 = arith.shli %273, %244 : i256
                                        %275 = arith.index_cast %c3_i32 : i32 to index
                                        %276 = arith.addi %249, %275 : index
                                        %277 = memref.load %arg0[%276] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %278 = arith.extui %277 : i32 to i256
                                        %279 = arith.ori %274, %278 : i256
                                        %280 = arith.trunci %279 {unsigned} : i256 to i128
                                        affine.store %280, %232[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %281 = affine.load %232[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %282 = arith.index_cast %230 : i32 to index
                                        %283 = arith.addi %282, %arg2 : index
                                        memref.store %281, %14[%283] {to = "xinstq.alloc_c", unsigned} : memref<8192xi128>
                                      } {loop_name = "i", op_name = "copyN"}
                                    } else {
                                      %216 = affine.load %150[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                      hcl.print(%216) {format = "%016lx", signedness = "u"} : i64
                                      hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                    }
                                  }
                                }
                              }
                            }
                            %199 = affine.load %12[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                            %200 = arith.addi %199, %c1_i32_2 : i32
                            affine.store %200, %12[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                            affine.store %163, %4[0] {to = "flags_stall", unsigned} : memref<1xi1>
                            affine.store %163, %5[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                            affine.store %163, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
                            %201 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
                            %202 = arith.extui %201 : i1 to i32
                            %203 = arith.cmpi eq, %202, %c0_i32_0 : i32
                            scf.if %203 {
                            } else {
                              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                              %204 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                              hcl.print(%204) {format = "ip=%d ", signedness = "u"} : i16
                              hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                              hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                              affine.store %72, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
                            }
                          }
                        }
                      }
                    }
                    %179 = affine.load %12[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                    %180 = arith.addi %179, %c1_i32_2 : i32
                    affine.store %180, %12[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                    affine.store %163, %4[0] {to = "flags_stall", unsigned} : memref<1xi1>
                    affine.store %163, %5[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                    affine.store %163, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
                    %181 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
                    %182 = arith.extui %181 : i1 to i32
                    %183 = arith.cmpi eq, %182, %c0_i32_0 : i32
                    scf.if %183 {
                    } else {
                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %184 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%184) {format = "ip=%d ", signedness = "u"} : i16
                      hcl.print(%c0_i32_0) {format = "mwait", signedness = "_"} : i32
                      hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                    }
                  }
                }
              }
            }
            affine.store %72, %10[0] {to = "latstalled", unsigned} : memref<1xi1>
            %154 = affine.load %132[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %155 = arith.cmpi ne, %154, %c0_i32_0 : i32
            scf.if %155 {
              %159 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %159, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
              %160 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %161 = arith.extui %160 : i1 to i32
            }
            %156 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
            %157 = arith.extui %156 : i1 to i32
            %158 = arith.cmpi eq, %157, %c0_i32_0 : i32
            scf.if %158 {
              %159 = affine.load %11[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
              %160 = arith.addi %159, %c1_i32_2 : i32
              affine.store %160, %11[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
              %161 = affine.load %8[0] {from = "inst_naddr", unsigned} : memref<1xi16>
              affine.store %161, %7[0] {to = "inst_addr", unsigned} : memref<1xi16>
              affine.store %72, %5[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            } else {
              %159 = affine.load %132[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %160 = arith.subi %159, %c2_i32 : i32
              affine.store %160, %9[0] {to = "latency_count", unsigned} : memref<1xi32>
              %161 = affine.load %13[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
              %162 = arith.addi %161, %c1_i32_2 : i32
              affine.store %162, %13[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
              %163 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %163, %10[0] {to = "latstalled", unsigned} : memref<1xi1>
              affine.store %163, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
              %164 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %165 = arith.extui %164 : i1 to i32
              %166 = arith.cmpi eq, %165, %c0_i32_0 : i32
              scf.if %166 {
              } else {
                %167 = affine.load %10[0] {from = "latstalled", unsigned} : memref<1xi1>
                %168 = affine.load %9[0] {from = "latency_count", unsigned} : memref<1xi32>
                %169 = arith.subi %168, %c1_i32_2 : i32
                affine.store %169, %9[0] {to = "latency_count", unsigned} : memref<1xi32>
                %170 = affine.load %13[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                %171 = arith.addi %170, %c1_i32_2 : i32
                affine.store %171, %13[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                affine.store %163, %10[0] {to = "latstalled", unsigned} : memref<1xi1>
                affine.store %163, %6[0] {to = "flags_break", unsigned} : memref<1xi1>
                %172 = affine.load %4[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %173 = arith.extui %172 : i1 to i32
              }
            }
          }
        }
        scf.yield
      }
      affine.store %72, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
      affine.store %72, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
      %102 = affine.load %21[0] {from = "flags_active", unsigned} : memref<1xi1>
      %103 = arith.extui %102 : i1 to i32
      %104 = arith.cmpi ne, %103, %c0_i32_0 : i32
      %105 = affine.load %24[0] {from = "flags_break", unsigned} : memref<1xi1>
      %106 = arith.extui %105 : i1 to i32
      %107 = arith.cmpi eq, %106, %c0_i32_0 : i32
      scf.while : () -> () {
        %116 = arith.andi %104, %107 : i1
        scf.condition(%116)
      } do {
        %116 = affine.load %27[0] {from = "latency_count", unsigned} : memref<1xi32>
        %117 = arith.cmpi eq, %116, %c0_i32_0 : i32
        scf.if %117 {
          %118 = affine.load %25[0] {from = "inst_addr", unsigned} : memref<1xi16>
          %119 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi16>
          affine.store %118, %119[0] {to = "_cur_address", unsigned} : memref<1xi16>
          %c1_i32_2 = arith.constant 1 : i32
          %120 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi16>
          affine.store %118, %120[0] {to = "read_addr", unsigned} : memref<1xi16>
          %121 = affine.load %120[0] {from = "read_addr", unsigned} : memref<1xi16>
          %122 = arith.extui %121 : i16 to i32
          %c8192_i32 = arith.constant 8192 : i32
          %123 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi64>
          %124 = hcl.create_op_handle "Mem.read_c"
          %125 = affine.load %120[0] {from = "read_addr", unsigned} : memref<1xi16>
          %126 = arith.index_cast %125 : i16 to index
          %127 = arith.addi %126, %c0 : index
          %128 = memref.load %15[%127] {from = "cinstq.alloc_c", unsigned} : memref<8192xi64>
          affine.store %128, %123[%c0] {to = "Mem.read_c"} : memref<1xi64>
          %129 = affine.load %123[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
          %130 = memref.alloc() {name = "inst", unsigned} : memref<1xi64>
          affine.store %129, %130[0] {to = "inst", unsigned} : memref<1xi64>
          %131 = affine.load %130[0] {from = "inst", unsigned} : memref<1xi64>
          %132 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
          affine.store %c0_i32, %132[0] {to = "inst_lat", unsigned} : memref<1xi32>
          %133 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi64>
          affine.store %131, %133[0] {to = "decode_inst", unsigned} : memref<1xi64>
          %134 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
          affine.store %c0_i16, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
          %135 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %136 = memref.alloc() : memref<1xi2>
          %137 = memref.alloc() : memref<1xi1>
          %c8 = arith.constant 8 : index
          %c0_3 = arith.constant 0 : index
          %c10 = arith.constant 10 : index
          %c9 = arith.constant 9 : index
          %c12 = arith.constant 12 : index
          %c11 = arith.constant 11 : index
          %138 = hcl.get_slice(%135 : i64, %c12, %c11) -> i2
          %c13 = arith.constant 13 : index
          %c13_4 = arith.constant 13 : index
          %139 = hcl.get_slice(%135 : i64, %c13, %c13_4) -> i1
          %c15 = arith.constant 15 : index
          %c14 = arith.constant 14 : index
          %c63 = arith.constant 63 : index
          %c16 = arith.constant 16 : index
          affine.store %138, %136[0] : memref<1xi2>
          affine.store %139, %137[0] : memref<1xi1>
          %140 = affine.load %137[0] : memref<1xi1>
          %141 = arith.extui %140 : i1 to i32
          %142 = arith.cmpi eq, %141, %c1_i32_2 : i32
          %143 = affine.load %136[0] : memref<1xi2>
          %144 = arith.extsi %143 : i2 to i32
          %145 = arith.cmpi eq, %144, %c1_i32_2 : i32
          %146 = arith.andi %142, %145 : i1
          scf.if %146 {
            affine.store %73, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
          } else {
            %156 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %157 = memref.alloc() : memref<1xi2>
            %158 = memref.alloc() : memref<1xi1>
            %c8_5 = arith.constant 8 : index
            %c0_6 = arith.constant 0 : index
            %c10_7 = arith.constant 10 : index
            %c9_8 = arith.constant 9 : index
            %c12_9 = arith.constant 12 : index
            %c11_10 = arith.constant 11 : index
            %159 = hcl.get_slice(%156 : i64, %c12_9, %c11_10) -> i2
            %c13_11 = arith.constant 13 : index
            %c13_12 = arith.constant 13 : index
            %160 = hcl.get_slice(%156 : i64, %c13_11, %c13_12) -> i1
            %c15_13 = arith.constant 15 : index
            %c14_14 = arith.constant 14 : index
            %c63_15 = arith.constant 63 : index
            %c16_16 = arith.constant 16 : index
            affine.store %159, %157[0] : memref<1xi2>
            affine.store %160, %158[0] : memref<1xi1>
            %161 = affine.load %158[0] : memref<1xi1>
            %162 = arith.extui %161 : i1 to i32
            %163 = arith.cmpi eq, %162, %c1_i32_2 : i32
            %164 = affine.load %157[0] : memref<1xi2>
            %c2_i32 = arith.constant 2 : i32
            %165 = arith.extsi %164 : i2 to i32
            %166 = arith.cmpi eq, %165, %c2_i32 : i32
            %167 = arith.andi %163, %166 : i1
            scf.if %167 {
              %168 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
              affine.store %168, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %168 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %169 = memref.alloc() : memref<1xi2>
              %170 = memref.alloc() : memref<1xi1>
              %c8_17 = arith.constant 8 : index
              %c0_18 = arith.constant 0 : index
              %c9_19 = arith.constant 9 : index
              %c9_20 = arith.constant 9 : index
              %c10_21 = arith.constant 10 : index
              %c10_22 = arith.constant 10 : index
              %c12_23 = arith.constant 12 : index
              %c11_24 = arith.constant 11 : index
              %171 = hcl.get_slice(%168 : i64, %c12_23, %c11_24) -> i2
              %c13_25 = arith.constant 13 : index
              %c13_26 = arith.constant 13 : index
              %172 = hcl.get_slice(%168 : i64, %c13_25, %c13_26) -> i1
              %c15_27 = arith.constant 15 : index
              %c14_28 = arith.constant 14 : index
              %c63_29 = arith.constant 63 : index
              %c16_30 = arith.constant 16 : index
              affine.store %171, %169[0] : memref<1xi2>
              affine.store %172, %170[0] : memref<1xi1>
              %173 = affine.load %170[0] : memref<1xi1>
              %174 = arith.extui %173 : i1 to i32
              %175 = arith.cmpi eq, %174, %c1_i32_2 : i32
              %176 = affine.load %169[0] : memref<1xi2>
              %177 = arith.extsi %176 : i2 to i32
              %178 = arith.cmpi eq, %177, %c0_i32_0 : i32
              %179 = arith.andi %175, %178 : i1
              scf.if %179 {
                %180 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %180, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %180 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %181 = memref.alloc() : memref<1xi1>
                %182 = memref.alloc() : memref<1xi2>
                %c8_31 = arith.constant 8 : index
                %c0_32 = arith.constant 0 : index
                %c10_33 = arith.constant 10 : index
                %c9_34 = arith.constant 9 : index
                %c12_35 = arith.constant 12 : index
                %c11_36 = arith.constant 11 : index
                %c13_37 = arith.constant 13 : index
                %c13_38 = arith.constant 13 : index
                %183 = hcl.get_slice(%180 : i64, %c13_37, %c13_38) -> i1
                %c15_39 = arith.constant 15 : index
                %c14_40 = arith.constant 14 : index
                %184 = hcl.get_slice(%180 : i64, %c15_39, %c14_40) -> i2
                %c63_41 = arith.constant 63 : index
                %c16_42 = arith.constant 16 : index
                affine.store %183, %181[0] : memref<1xi1>
                affine.store %184, %182[0] : memref<1xi2>
                %185 = affine.load %181[0] : memref<1xi1>
                %186 = arith.extui %185 : i1 to i32
                %187 = arith.cmpi eq, %186, %c0_i32_0 : i32
                %188 = affine.load %182[0] : memref<1xi2>
                %189 = arith.extsi %188 : i2 to i32
                %190 = arith.cmpi eq, %189, %c1_i32_2 : i32
                %191 = arith.andi %187, %190 : i1
                scf.if %191 {
                  %c3_i32 = arith.constant 3 : i32
                  %192 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %192, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %192 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                  %193 = memref.alloc() : memref<1xi1>
                  %194 = memref.alloc() : memref<1xi2>
                  %c8_43 = arith.constant 8 : index
                  %c0_44 = arith.constant 0 : index
                  %c10_45 = arith.constant 10 : index
                  %c9_46 = arith.constant 9 : index
                  %c12_47 = arith.constant 12 : index
                  %c11_48 = arith.constant 11 : index
                  %c13_49 = arith.constant 13 : index
                  %c13_50 = arith.constant 13 : index
                  %195 = hcl.get_slice(%192 : i64, %c13_49, %c13_50) -> i1
                  %c15_51 = arith.constant 15 : index
                  %c14_52 = arith.constant 14 : index
                  %196 = hcl.get_slice(%192 : i64, %c15_51, %c14_52) -> i2
                  %c63_53 = arith.constant 63 : index
                  %c16_54 = arith.constant 16 : index
                  affine.store %195, %193[0] : memref<1xi1>
                  affine.store %196, %194[0] : memref<1xi2>
                  %197 = affine.load %193[0] : memref<1xi1>
                  %198 = arith.extui %197 : i1 to i32
                  %199 = arith.cmpi eq, %198, %c0_i32_0 : i32
                  %200 = affine.load %194[0] : memref<1xi2>
                  %201 = arith.extsi %200 : i2 to i32
                  %202 = arith.cmpi eq, %201, %c0_i32_0 : i32
                  %203 = arith.andi %199, %202 : i1
                  scf.if %203 {
                    %c4_i32 = arith.constant 4 : i32
                    %204 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %204, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %204 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %205 = memref.alloc() : memref<1xi9>
                    %206 = memref.alloc() : memref<1xi1>
                    %207 = memref.alloc() : memref<1xi2>
                    %c8_55 = arith.constant 8 : index
                    %c0_56 = arith.constant 0 : index
                    %208 = hcl.get_slice(%204 : i64, %c8_55, %c0_56) -> i9
                    %c10_57 = arith.constant 10 : index
                    %c9_58 = arith.constant 9 : index
                    %c12_59 = arith.constant 12 : index
                    %c11_60 = arith.constant 11 : index
                    %c13_61 = arith.constant 13 : index
                    %c13_62 = arith.constant 13 : index
                    %209 = hcl.get_slice(%204 : i64, %c13_61, %c13_62) -> i1
                    %c15_63 = arith.constant 15 : index
                    %c14_64 = arith.constant 14 : index
                    %210 = hcl.get_slice(%204 : i64, %c15_63, %c14_64) -> i2
                    %c63_65 = arith.constant 63 : index
                    %c16_66 = arith.constant 16 : index
                    affine.store %208, %205[0] : memref<1xi9>
                    affine.store %209, %206[0] : memref<1xi1>
                    affine.store %210, %207[0] : memref<1xi2>
                    %211 = affine.load %206[0] : memref<1xi1>
                    %212 = arith.extui %211 : i1 to i32
                    %213 = arith.cmpi eq, %212, %c0_i32_0 : i32
                    %214 = affine.load %207[0] : memref<1xi2>
                    %215 = arith.extsi %214 : i2 to i32
                    %216 = arith.cmpi eq, %215, %c2_i32 : i32
                    %217 = affine.load %205[0] : memref<1xi9>
                    %218 = arith.extsi %217 : i9 to i32
                    %219 = arith.cmpi eq, %218, %c0_i32_0 : i32
                    %220 = arith.andi %213, %216 : i1
                    %221 = arith.andi %220, %219 : i1
                    scf.if %221 {
                      %c5_i32 = arith.constant 5 : i32
                      %222 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %222, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %222 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                      %223 = memref.alloc() : memref<1xi9>
                      %224 = memref.alloc() : memref<1xi1>
                      %225 = memref.alloc() : memref<1xi2>
                      %c8_67 = arith.constant 8 : index
                      %c0_68 = arith.constant 0 : index
                      %226 = hcl.get_slice(%222 : i64, %c8_67, %c0_68) -> i9
                      %c10_69 = arith.constant 10 : index
                      %c9_70 = arith.constant 9 : index
                      %c12_71 = arith.constant 12 : index
                      %c11_72 = arith.constant 11 : index
                      %c13_73 = arith.constant 13 : index
                      %c13_74 = arith.constant 13 : index
                      %227 = hcl.get_slice(%222 : i64, %c13_73, %c13_74) -> i1
                      %c15_75 = arith.constant 15 : index
                      %c14_76 = arith.constant 14 : index
                      %228 = hcl.get_slice(%222 : i64, %c15_75, %c14_76) -> i2
                      %c63_77 = arith.constant 63 : index
                      %c16_78 = arith.constant 16 : index
                      affine.store %226, %223[0] : memref<1xi9>
                      affine.store %227, %224[0] : memref<1xi1>
                      affine.store %228, %225[0] : memref<1xi2>
                      %229 = affine.load %224[0] : memref<1xi1>
                      %230 = arith.extui %229 : i1 to i32
                      %231 = arith.cmpi eq, %230, %c0_i32_0 : i32
                      %232 = affine.load %225[0] : memref<1xi2>
                      %233 = arith.extsi %232 : i2 to i32
                      %234 = arith.cmpi eq, %233, %c2_i32 : i32
                      %235 = affine.load %223[0] : memref<1xi9>
                      %236 = arith.extsi %235 : i9 to i32
                      %237 = arith.cmpi eq, %236, %c2_i32 : i32
                      %238 = arith.andi %231, %234 : i1
                      %239 = arith.andi %238, %237 : i1
                      scf.if %239 {
                        %c6_i32 = arith.constant 6 : i32
                        %240 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %240, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %240 = affine.load %133[0] {from = "decode_inst", unsigned} : memref<1xi64>
                        %241 = memref.alloc() : memref<1xi9>
                        %242 = memref.alloc() : memref<1xi1>
                        %243 = memref.alloc() : memref<1xi2>
                        %c8_79 = arith.constant 8 : index
                        %c0_80 = arith.constant 0 : index
                        %244 = hcl.get_slice(%240 : i64, %c8_79, %c0_80) -> i9
                        %c10_81 = arith.constant 10 : index
                        %c9_82 = arith.constant 9 : index
                        %c12_83 = arith.constant 12 : index
                        %c11_84 = arith.constant 11 : index
                        %c13_85 = arith.constant 13 : index
                        %c13_86 = arith.constant 13 : index
                        %245 = hcl.get_slice(%240 : i64, %c13_85, %c13_86) -> i1
                        %c15_87 = arith.constant 15 : index
                        %c14_88 = arith.constant 14 : index
                        %246 = hcl.get_slice(%240 : i64, %c15_87, %c14_88) -> i2
                        %c63_89 = arith.constant 63 : index
                        %c16_90 = arith.constant 16 : index
                        affine.store %244, %241[0] : memref<1xi9>
                        affine.store %245, %242[0] : memref<1xi1>
                        affine.store %246, %243[0] : memref<1xi2>
                        %247 = affine.load %242[0] : memref<1xi1>
                        %248 = arith.extui %247 : i1 to i32
                        %249 = arith.cmpi eq, %248, %c0_i32_0 : i32
                        %250 = affine.load %243[0] : memref<1xi2>
                        %251 = arith.extsi %250 : i2 to i32
                        %252 = arith.cmpi eq, %251, %c2_i32 : i32
                        %253 = affine.load %241[0] : memref<1xi9>
                        %c3_i32 = arith.constant 3 : i32
                        %254 = arith.extsi %253 : i9 to i32
                        %255 = arith.cmpi eq, %254, %c3_i32 : i32
                        %256 = arith.andi %249, %252 : i1
                        %257 = arith.andi %256, %255 : i1
                        scf.if %257 {
                          %c7_i32 = arith.constant 7 : i32
                          %258 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %258, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %c8_i32 = arith.constant 8 : i32
                          %258 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                          affine.store %258, %134[0] {to = "inst_id", unsigned} : memref<1xi16>
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          %147 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
          affine.store %false, %147[0] {to = "tmp", unsigned} : memref<1xi1>
          %148 = affine.load %132[0] {from = "inst_lat", unsigned} : memref<1xi32>
          %149 = arith.cmpi sle, %148, %c1_i32_2 : i32
          scf.if %149 {
            %156 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %156, %147[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %150 = affine.load %28[0] {from = "latstalled", unsigned} : memref<1xi1>
          %151 = arith.extui %150 : i1 to i32
          %152 = arith.cmpi eq, %151, %c1_i32_2 : i32
          scf.if %152 {
            %156 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %156, %147[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %153 = affine.load %147[0] {from = "tmp", unsigned} : memref<1xi1>
          %154 = arith.extui %153 : i1 to i32
          %155 = arith.cmpi ne, %154, %c0_i32_0 : i32
          scf.if %155 {
            %156 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi64>
            affine.store %131, %156[0] {to = "execute_inst", unsigned} : memref<1xi64>
            %157 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
            %158 = arith.extui %157 : i16 to i32
            %159 = arith.cmpi eq, %158, %c0_i32_0 : i32
            scf.if %159 {
              %165 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %166 = memref.alloc() : memref<1xi9>
              %c8_5 = arith.constant 8 : index
              %c0_6 = arith.constant 0 : index
              %167 = hcl.get_slice(%165 : i64, %c8_5, %c0_6) -> i9
              %c10_7 = arith.constant 10 : index
              %c9_8 = arith.constant 9 : index
              %c12_9 = arith.constant 12 : index
              %c11_10 = arith.constant 11 : index
              %c13_11 = arith.constant 13 : index
              %c13_12 = arith.constant 13 : index
              %c15_13 = arith.constant 15 : index
              %c14_14 = arith.constant 14 : index
              %c63_15 = arith.constant 63 : index
              %c16_16 = arith.constant 16 : index
              affine.store %167, %166[0] : memref<1xi9>
              %168 = memref.alloc() {name = "tiles_active", unsigned} : memref<1xi1>
              affine.store %false, %168[0] {to = "tiles_active", unsigned} : memref<1xi1>
              %169 = affine.load %56[0] {from = "flags_active", unsigned} : memref<1xi1>
              %170 = arith.extui %169 : i1 to i32
              %171 = arith.cmpi ne, %170, %c0_i32_0 : i32
              scf.if %171 {
                %175 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %175, %168[0] {to = "tiles_active", unsigned} : memref<1xi1>
              }
              %172 = affine.load %168[0] {from = "tiles_active", unsigned} : memref<1xi1>
              %173 = arith.extui %172 : i1 to i32
              %174 = arith.cmpi ne, %173, %c0_i32_0 : i32
              scf.if %174 {
                %175 = affine.load %23[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                %176 = arith.extui %175 : i1 to i32
                %177 = arith.cmpi eq, %176, %c0_i32_0 : i32
                scf.if %177 {
                  hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %184 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                  hcl.print(%184) {format = "ip=%d ", signedness = "u"} : i16
                  %185 = affine.load %166[0] : memref<1xi9>
                  hcl.print(%185) {format = "ifetch bundle=0x%x", signedness = "_"} : i9
                  hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                } else {
                  %184 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %185 = arith.extui %184 : i16 to i32
                  %186 = arith.cmpi eq, %185, %c1_i32_2 : i32
                  scf.if %186 {
                    %187 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                    %188 = memref.alloc() : memref<1xi48>
                    %c8_17 = arith.constant 8 : index
                    %c0_18 = arith.constant 0 : index
                    %c10_19 = arith.constant 10 : index
                    %c9_20 = arith.constant 9 : index
                    %c12_21 = arith.constant 12 : index
                    %c11_22 = arith.constant 11 : index
                    %c13_23 = arith.constant 13 : index
                    %c13_24 = arith.constant 13 : index
                    %c15_25 = arith.constant 15 : index
                    %c14_26 = arith.constant 14 : index
                    %c63_27 = arith.constant 63 : index
                    %c16_28 = arith.constant 16 : index
                    %189 = hcl.get_slice(%187 : i64, %c63_27, %c16_28) -> i48
                    affine.store %189, %188[0] : memref<1xi48>
                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                    %190 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                    hcl.print(%190) {format = "ip=%d ", signedness = "u"} : i16
                    %191 = affine.load %188[0] : memref<1xi48>
                    hcl.print(%191) {format = "bload spadaddr=0x%x", signedness = "_"} : i48
                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                    %192 = memref.alloc() {name = "addr", unsigned} : memref<1xi32>
                    %193 = arith.trunci %191 {unsigned} : i48 to i32
                    affine.store %193, %192[0] {to = "addr", unsigned} : memref<1xi32>
                    %194 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %195 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %194, %195[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %196 = affine.load %195[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %197 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %198 = hcl.create_op_handle "Mem.read_c"
                    %199 = affine.load %195[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %200 = arith.index_cast %199 : i32 to index
                    %201 = arith.addi %200, %c0 : index
                    %202 = memref.load %arg0[%201] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %202, %197[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %203 = affine.load %197[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %203, %33[0] {to = "residue_count", unsigned} : memref<1xi32>
                    %204 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %205 = arith.addi %204, %c1_i32_2 : i32
                    affine.store %205, %192[0] {to = "addr", unsigned} : memref<1xi32>
                    %206 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %207 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %206, %207[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %208 = affine.load %207[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %209 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %210 = hcl.create_op_handle "Mem.read_c"
                    %211 = affine.load %207[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %212 = arith.index_cast %211 : i32 to index
                    %213 = arith.addi %212, %c0 : index
                    %214 = memref.load %arg0[%213] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %214, %209[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %215 = affine.load %209[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %215, %34[0] {to = "stage_count", unsigned} : memref<1xi32>
                    %216 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %217 = arith.addi %216, %c1_i32_2 : i32
                    affine.store %217, %192[0] {to = "addr", unsigned} : memref<1xi32>
                    %218 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %219 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %218, %219[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %220 = affine.load %219[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %221 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %222 = hcl.create_op_handle "Mem.read_c"
                    %223 = affine.load %219[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %224 = arith.index_cast %223 : i32 to index
                    %225 = arith.addi %224, %c0 : index
                    %226 = memref.load %arg0[%225] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %226, %221[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %227 = affine.load %221[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %227, %35[0] {to = "tw_count", unsigned} : memref<1xi32>
                    %228 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %229 = arith.addi %228, %c1_i32_2 : i32
                    affine.store %229, %192[0] {to = "addr", unsigned} : memref<1xi32>
                    %230 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %231 = affine.load %33[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %232 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                    affine.store %231, %232[0] {to = "count", unsigned} : memref<1xi32>
                    %233 = affine.load %232[0] {from = "count", unsigned} : memref<1xi32>
                    %234 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %230, %234[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %235 = affine.load %234[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %236 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %236[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %237 = affine.load %236[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %238 = hcl.create_op_handle "copyN"
                    %239 = arith.index_cast %c0_i32_0 : i32 to index
                    %240 = arith.index_cast %233 : i32 to index
                    %241 = arith.index_cast %c1_i32_2 : i32 to index
                    scf.for %arg2 = %239 to %240 step %241 {
                      %273 = arith.index_cast %235 : i32 to index
                      %274 = arith.addi %273, %arg2 : index
                      %275 = arith.index_cast %237 : i32 to index
                    } {loop_name = "i", op_name = "copyN"}
                    %242 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %243 = affine.load %33[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %244 = arith.addi %242, %243 {unsigned} : i32
                    affine.store %244, %192[0] {to = "addr", unsigned} : memref<1xi32>
                    %245 = affine.load %33[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %246 = affine.load %34[0] {from = "stage_count", unsigned} : memref<1xi32>
                    %247 = arith.muli %245, %246 {unsigned} : i32
                    %248 = affine.load %35[0] {from = "tw_count", unsigned} : memref<1xi32>
                    %249 = arith.muli %247, %248 {unsigned} : i32
                    %250 = arith.muli %249, %c8192_i32 : i32
                    %251 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %252 = memref.alloc() {name = "count"} : memref<1xi32>
                    affine.store %250, %252[0] {to = "count"} : memref<1xi32>
                    %253 = affine.load %252[0] {from = "count"} : memref<1xi32>
                    %254 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %251, %254[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %255 = affine.load %254[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %256 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %256[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %257 = affine.load %256[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %258 = hcl.create_op_handle "copyN"
                    %259 = arith.index_cast %253 : i32 to index
                    scf.for %arg2 = %239 to %259 step %241 {
                      %273 = arith.index_cast %255 : i32 to index
                      %274 = arith.addi %273, %arg2 : index
                      %275 = memref.load %arg0[%274] {from = "hbm", unsigned} : memref<33554432xi32>
                      %276 = arith.index_cast %257 : i32 to index
                      %277 = arith.addi %276, %arg2 : index
                      memref.store %275, %36[%277] {to = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %260 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %261 = arith.addi %260, %250 : i32
                    affine.store %261, %192[0] {to = "addr", unsigned} : memref<1xi32>
                    %262 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %263 = memref.alloc() {name = "count"} : memref<1xi32>
                    affine.store %250, %263[0] {to = "count"} : memref<1xi32>
                    %264 = affine.load %263[0] {from = "count"} : memref<1xi32>
                    %265 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %262, %265[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %266 = affine.load %265[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %267 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %267[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %268 = affine.load %267[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %269 = hcl.create_op_handle "copyN"
                    %270 = arith.index_cast %264 : i32 to index
                    scf.for %arg2 = %239 to %270 step %241 {
                      %273 = arith.index_cast %266 : i32 to index
                      %274 = arith.addi %273, %arg2 : index
                      %275 = memref.load %arg0[%274] {from = "hbm", unsigned} : memref<33554432xi32>
                      %276 = arith.index_cast %268 : i32 to index
                      %277 = arith.addi %276, %arg2 : index
                      memref.store %275, %37[%277] {to = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %271 = affine.load %192[0] {from = "addr", unsigned} : memref<1xi32>
                    %272 = arith.addi %271, %250 : i32
                    affine.store %272, %192[0] {to = "addr", unsigned} : memref<1xi32>
                  } else {
                    %187 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                    %188 = arith.extui %187 : i16 to i32
                    %c2_i32 = arith.constant 2 : i32
                    %189 = arith.cmpi eq, %188, %c2_i32 : i32
                    scf.if %189 {
                      %190 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                      %191 = memref.alloc() : memref<1xi9>
                      %192 = memref.alloc() : memref<1xi1>
                      %193 = memref.alloc() : memref<1xi48>
                      %c8_17 = arith.constant 8 : index
                      %c0_18 = arith.constant 0 : index
                      %194 = hcl.get_slice(%190 : i64, %c8_17, %c0_18) -> i9
                      %c9_19 = arith.constant 9 : index
                      %c9_20 = arith.constant 9 : index
                      %195 = hcl.get_slice(%190 : i64, %c9_19, %c9_20) -> i1
                      %c10_21 = arith.constant 10 : index
                      %c10_22 = arith.constant 10 : index
                      %c12_23 = arith.constant 12 : index
                      %c11_24 = arith.constant 11 : index
                      %c13_25 = arith.constant 13 : index
                      %c13_26 = arith.constant 13 : index
                      %c15_27 = arith.constant 15 : index
                      %c14_28 = arith.constant 14 : index
                      %c63_29 = arith.constant 63 : index
                      %c16_30 = arith.constant 16 : index
                      %196 = hcl.get_slice(%190 : i64, %c63_29, %c16_30) -> i48
                      affine.store %194, %191[0] : memref<1xi9>
                      affine.store %195, %192[0] : memref<1xi1>
                      affine.store %196, %193[0] : memref<1xi48>
                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                      %197 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%197) {format = "ip=%d ", signedness = "u"} : i16
                      %198 = affine.load %191[0] : memref<1xi9>
                      %199 = affine.load %192[0] : memref<1xi1>
                      %200 = affine.load %193[0] : memref<1xi48>
                      hcl.print(%198, %199, %200) {format = "cload rfaddr=0x%x dbg=0x%x spadaddr=0x%x", signedness = "___"} : i9, i1, i48
                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                      %c13_i32 = arith.constant 13 : i32
                      %201 = arith.extsi %c13_i32 : i32 to i48
                      %202 = arith.extsi %200 : i48 to i96
                      %203 = arith.extsi %201 : i48 to i96
                      %204 = arith.shli %202, %203 : i96
                      %205 = memref.alloc() : memref<1xi7>
                      %206 = memref.alloc() : memref<1xi2>
                      %c6 = arith.constant 6 : index
                      %c0_31 = arith.constant 0 : index
                      %207 = hcl.get_slice(%198 : i9, %c6, %c0_31) -> i7
                      %c8_32 = arith.constant 8 : index
                      %c7 = arith.constant 7 : index
                      %208 = hcl.get_slice(%198 : i9, %c8_32, %c7) -> i2
                      affine.store %207, %205[0] : memref<1xi7>
                      affine.store %208, %206[0] : memref<1xi2>
                      %209 = affine.load %206[0] : memref<1xi2>
                      %210 = affine.load %205[0] : memref<1xi7>
                      %211 = arith.extsi %c0_i32_0 : i32 to i96
                      %212 = arith.addi %204, %211 : i96
                      %213 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                      %c8192_i32_33 = arith.constant {unsigned} 8192 : i32
                      affine.store %c8192_i32_33, %213[0] {to = "count", unsigned} : memref<1xi32>
                      %214 = affine.load %213[0] {from = "count", unsigned} : memref<1xi32>
                      %215 = memref.alloc() {name = "src_addr"} : memref<1xi96>
                      affine.store %212, %215[0] {to = "src_addr"} : memref<1xi96>
                      %216 = affine.load %215[0] {from = "src_addr"} : memref<1xi96>
                      %217 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                      affine.store %c0_i32, %217[0] {to = "dst_addr", unsigned} : memref<1xi32>
                      %218 = affine.load %217[0] {from = "dst_addr", unsigned} : memref<1xi32>
                      %219 = arith.extui %214 : i32 to i96
                      %c33554432_i32 = arith.constant 33554432 : i32
                      %220 = hcl.create_op_handle "copyN"
                      %221 = arith.index_cast %c0_i32_0 : i32 to index
                      %222 = arith.index_cast %214 : i32 to index
                      %223 = arith.index_cast %c1_i32_2 : i32 to index
                      scf.for %arg2 = %221 to %222 step %223 {
                        %224 = arith.index_cast %216 : i96 to index
                        %225 = arith.addi %224, %arg2 : index
                        %226 = memref.load %0[%225] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                        %227 = arith.index_cast %218 : i32 to index
                        %228 = arith.addi %227, %arg2 : index
                        %229 = arith.index_cast %209 : i2 to index
                        %230 = arith.index_cast %210 : i7 to index
                        memref.store %226, %32[%229, %230, %228] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "copyN"}
                    } else {
                      %190 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %191 = arith.extui %190 : i16 to i32
                      %c3_i32 = arith.constant 3 : i32
                      %192 = arith.cmpi eq, %191, %c3_i32 : i32
                      scf.if %192 {
                        %193 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                        %194 = memref.alloc() : memref<1xi48>
                        %c8_17 = arith.constant 8 : index
                        %c0_18 = arith.constant 0 : index
                        %c10_19 = arith.constant 10 : index
                        %c9_20 = arith.constant 9 : index
                        %c12_21 = arith.constant 12 : index
                        %c11_22 = arith.constant 11 : index
                        %c13_23 = arith.constant 13 : index
                        %c13_24 = arith.constant 13 : index
                        %c15_25 = arith.constant 15 : index
                        %c14_26 = arith.constant 14 : index
                        %c63_27 = arith.constant 63 : index
                        %c16_28 = arith.constant 16 : index
                        %195 = hcl.get_slice(%193 : i64, %c63_27, %c16_28) -> i48
                        affine.store %195, %194[0] : memref<1xi48>
                        %196 = affine.load %18[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                        %197 = arith.extui %196 : i3 to i32
                        %198 = arith.cmpi eq, %197, %c0_i32_0 : i32
                        scf.if %198 {
                          %199 = affine.load %23[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                          %200 = arith.extui %199 : i1 to i32
                          %201 = arith.cmpi eq, %200, %c0_i32_0 : i32
                          scf.if %201 {
                            hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                            %215 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                            hcl.print(%215) {format = "ip=%d ", signedness = "u"} : i16
                            %216 = affine.load %194[0] : memref<1xi48>
                            hcl.print(%216) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                            hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                          }
                          %202 = arith.trunci %c1_i32_2 {unsigned} : i32 to i3
                          affine.store %202, %18[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                          affine.store %72, %19[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                          %203 = affine.load %194[0] : memref<1xi48>
                          %c13_i32 = arith.constant 13 : i32
                          %204 = arith.extsi %c13_i32 : i32 to i48
                          %205 = arith.extsi %203 : i48 to i96
                          %206 = arith.extsi %204 : i48 to i96
                          %207 = arith.shli %205, %206 : i96
                          %208 = arith.trunci %207 {unsigned} : i96 to i48
                          affine.store %208, %20[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
                          %209 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                          %210 = arith.addi %209, %c1_i32_2 : i32
                          affine.store %210, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                          %211 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                          affine.store %211, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                          affine.store %211, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                          affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                          %212 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                          %213 = arith.extui %212 : i1 to i32
                          %214 = arith.cmpi eq, %213, %c0_i32_0 : i32
                          scf.if %214 {
                          } else {
                            %215 = affine.load %18[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                            %216 = arith.extui %215 : i3 to i32
                            %217 = arith.cmpi eq, %216, %c1_i32_2 : i32
                            scf.if %217 {
                              %218 = affine.load %23[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                              %219 = arith.extui %218 : i1 to i32
                              %220 = arith.cmpi eq, %219, %c0_i32_0 : i32
                              scf.if %220 {
                                hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                %229 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                hcl.print(%229) {format = "ip=%d ", signedness = "u"} : i16
                                hcl.print(%203) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                              }
                              %221 = affine.load %19[0] {from = "cstore_valid", unsigned} : memref<1xi1>
                              %222 = arith.extui %221 : i1 to i32
                              %223 = arith.cmpi eq, %222, %c1_i32_2 : i32
                              scf.if %223 {
                                %229 = arith.trunci %c2_i32 {unsigned} : i32 to i3
                                affine.store %229, %18[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                              }
                              %224 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                              %225 = arith.addi %224, %c1_i32_2 : i32
                              affine.store %225, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                              affine.store %211, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                              affine.store %211, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                              affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                              %226 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                              %227 = arith.extui %226 : i1 to i32
                              %228 = arith.cmpi eq, %227, %c0_i32_0 : i32
                              scf.if %228 {
                              } else {
                                %229 = affine.load %18[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                %230 = arith.extui %229 : i3 to i32
                                %231 = arith.cmpi ne, %230, %c3_i32 : i32
                                scf.if %231 {
                                  %232 = affine.load %23[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                  %233 = arith.extui %232 : i1 to i32
                                  %234 = arith.cmpi eq, %233, %c0_i32_0 : i32
                                  scf.if %234 {
                                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                    %244 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%244) {format = "ip=%d ", signedness = "u"} : i16
                                    hcl.print(%203) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                    hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                  } else {
                                    %244 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                    %245 = arith.extui %244 : i16 to i32
                                    %c4_i32 = arith.constant 4 : i32
                                    %246 = arith.cmpi eq, %245, %c4_i32 : i32
                                    scf.if %246 {
                                      %247 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      %248 = memref.alloc() : memref<1xi9>
                                      %c8_29 = arith.constant 8 : index
                                      %c0_30 = arith.constant 0 : index
                                      %249 = hcl.get_slice(%247 : i64, %c8_29, %c0_30) -> i9
                                      %c10_31 = arith.constant 10 : index
                                      %c9_32 = arith.constant 9 : index
                                      %c12_33 = arith.constant 12 : index
                                      %c11_34 = arith.constant 11 : index
                                      %c13_35 = arith.constant 13 : index
                                      %c13_36 = arith.constant 13 : index
                                      %c15_37 = arith.constant 15 : index
                                      %c14_38 = arith.constant 14 : index
                                      %c63_39 = arith.constant 63 : index
                                      %c16_40 = arith.constant 16 : index
                                      affine.store %249, %248[0] : memref<1xi9>
                                      %250 = affine.load %16[0] {from = "nop_count", unsigned} : memref<1xi32>
                                      %251 = affine.load %248[0] : memref<1xi9>
                                      %252 = arith.extsi %251 {unsigned} : i9 to i32
                                      %253 = arith.cmpi ult, %250, %252 : i32
                                      scf.if %253 {
                                        %254 = affine.load %16[0] {from = "nop_count", unsigned} : memref<1xi32>
                                        %255 = arith.addi %254, %c1_i32_2 : i32
                                        affine.store %255, %16[0] {to = "nop_count", unsigned} : memref<1xi32>
                                        %256 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                        %257 = arith.addi %256, %c1_i32_2 : i32
                                        affine.store %257, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                        affine.store %211, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                        affine.store %211, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                        affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                                        %258 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                        %259 = arith.extui %258 : i1 to i32
                                        %260 = affine.load %23[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                        %261 = arith.extui %260 : i1 to i32
                                        %262 = arith.cmpi eq, %261, %c0_i32_0 : i32
                                        scf.if %262 {
                                          hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                          %263 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                          hcl.print(%263) {format = "ip=%d ", signedness = "u"} : i16
                                          hcl.print(%251) {format = "nop count=0x%x", signedness = "_"} : i9
                                          hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                        } else {
                                          affine.store %c0_i32_0, %16[0] {to = "nop_count", unsigned} : memref<1xi32>
                                          affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                                          %263 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                          %264 = arith.extui %263 : i1 to i32
                                          %265 = arith.cmpi eq, %264, %c0_i32_0 : i32
                                          scf.if %265 {
                                          } else {
                                            %267 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                            %268 = arith.extui %267 : i16 to i32
                                            %c5_i32 = arith.constant 5 : i32
                                            %269 = arith.cmpi eq, %268, %c5_i32 : i32
                                            scf.if %269 {
                                              %270 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                              %c8_41 = arith.constant 8 : index
                                              %c0_42 = arith.constant 0 : index
                                              %271 = hcl.get_slice(%270 : i64, %c8_41, %c0_42) -> i9
                                              %c10_43 = arith.constant 10 : index
                                              %c9_44 = arith.constant 9 : index
                                              %272 = hcl.get_slice(%270 : i64, %c10_43, %c9_44) -> i2
                                              %c12_45 = arith.constant 12 : index
                                              %c11_46 = arith.constant 11 : index
                                              %273 = hcl.get_slice(%270 : i64, %c12_45, %c11_46) -> i2
                                              %c13_47 = arith.constant 13 : index
                                              %c13_48 = arith.constant 13 : index
                                              %274 = hcl.get_slice(%270 : i64, %c13_47, %c13_48) -> i1
                                              %c15_49 = arith.constant 15 : index
                                              %c14_50 = arith.constant 14 : index
                                              %275 = hcl.get_slice(%270 : i64, %c15_49, %c14_50) -> i2
                                              %c63_51 = arith.constant 63 : index
                                              %c16_52 = arith.constant 16 : index
                                              %276 = hcl.get_slice(%270 : i64, %c63_51, %c16_52) -> i48
                                              hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                              %277 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                              hcl.print(%277) {format = "ip=%d ", signedness = "u"} : i16
                                              hcl.print(%c0_i32_0) {format = "chalt", signedness = "_"} : i32
                                              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                              affine.store %72, %21[0] {to = "flags_active", unsigned} : memref<1xi1>
                                              affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                                              %278 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                              %279 = arith.extui %278 : i1 to i32
                                              %280 = arith.cmpi eq, %279, %c0_i32_0 : i32
                                              scf.if %280 {
                                              } else {
                                                %281 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                                %282 = arith.extui %281 : i16 to i32
                                                %c6_i32 = arith.constant 6 : i32
                                                %283 = arith.cmpi eq, %282, %c6_i32 : i32
                                                scf.if %283 {
                                                  %284 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                  %c8_53 = arith.constant 8 : index
                                                  %c0_54 = arith.constant 0 : index
                                                  %285 = hcl.get_slice(%284 : i64, %c8_53, %c0_54) -> i9
                                                  %c10_55 = arith.constant 10 : index
                                                  %c9_56 = arith.constant 9 : index
                                                  %286 = hcl.get_slice(%284 : i64, %c10_55, %c9_56) -> i2
                                                  %c12_57 = arith.constant 12 : index
                                                  %c11_58 = arith.constant 11 : index
                                                  %287 = hcl.get_slice(%284 : i64, %c12_57, %c11_58) -> i2
                                                  %c13_59 = arith.constant 13 : index
                                                  %c13_60 = arith.constant 13 : index
                                                  %288 = hcl.get_slice(%284 : i64, %c13_59, %c13_60) -> i1
                                                  %c15_61 = arith.constant 15 : index
                                                  %c14_62 = arith.constant 14 : index
                                                  %289 = hcl.get_slice(%284 : i64, %c15_61, %c14_62) -> i2
                                                  %c63_63 = arith.constant 63 : index
                                                  %c16_64 = arith.constant 16 : index
                                                  %290 = hcl.get_slice(%284 : i64, %c63_63, %c16_64) -> i48
                                                  %291 = affine.load %17[0] {from = "csyncm", unsigned} : memref<1xi1>
                                                  %292 = arith.extui %291 : i1 to i32
                                                  %293 = arith.cmpi eq, %292, %c0_i32_0 : i32
                                                  scf.if %293 {
                                                    %294 = affine.load %23[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                                    %295 = arith.extui %294 : i1 to i32
                                                    %296 = arith.cmpi eq, %295, %c0_i32_0 : i32
                                                    scf.if %296 {
                                                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                      %302 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                      hcl.print(%302) {format = "ip=%d ", signedness = "u"} : i16
                                                      hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                                                      hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                                    } else {
                                                      %302 = affine.load %134[0] {from = "inst_id", unsigned} : memref<1xi16>
                                                      %303 = arith.extui %302 : i16 to i32
                                                      %c7_i32 = arith.constant 7 : i32
                                                      %304 = arith.cmpi eq, %303, %c7_i32 : i32
                                                      scf.if %304 {
                                                        %305 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                        %c8_65 = arith.constant 8 : index
                                                        %c0_66 = arith.constant 0 : index
                                                        %306 = hcl.get_slice(%305 : i64, %c8_65, %c0_66) -> i9
                                                        %c10_67 = arith.constant 10 : index
                                                        %c9_68 = arith.constant 9 : index
                                                        %307 = hcl.get_slice(%305 : i64, %c10_67, %c9_68) -> i2
                                                        %c12_69 = arith.constant 12 : index
                                                        %c11_70 = arith.constant 11 : index
                                                        %308 = hcl.get_slice(%305 : i64, %c12_69, %c11_70) -> i2
                                                        %c13_71 = arith.constant 13 : index
                                                        %c13_72 = arith.constant 13 : index
                                                        %309 = hcl.get_slice(%305 : i64, %c13_71, %c13_72) -> i1
                                                        %c15_73 = arith.constant 15 : index
                                                        %c14_74 = arith.constant 14 : index
                                                        %310 = hcl.get_slice(%305 : i64, %c15_73, %c14_74) -> i2
                                                        %c63_75 = arith.constant 63 : index
                                                        %c16_76 = arith.constant 16 : index
                                                        %311 = hcl.get_slice(%305 : i64, %c63_75, %c16_76) -> i48
                                                        hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                        %312 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                        hcl.print(%312) {format = "ip=%d ", signedness = "u"} : i16
                                                        hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                                                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                                        affine.store %211, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
                                                      } else {
                                                        %305 = affine.load %156[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                        hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                                        hcl.print(%305) {format = "%016lx", signedness = "u"} : i64
                                                        hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                                      }
                                                    }
                                                    %297 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                                    %298 = arith.addi %297, %c1_i32_2 : i32
                                                    affine.store %298, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                                    affine.store %211, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                                    affine.store %211, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                                    affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                                                    %299 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                                    %300 = arith.extui %299 : i1 to i32
                                                    %301 = arith.cmpi eq, %300, %c0_i32_0 : i32
                                                    scf.if %301 {
                                                    } else {
                                                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                      %302 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                      hcl.print(%302) {format = "ip=%d ", signedness = "u"} : i16
                                                      hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                                                      hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                                                      affine.store %72, %17[0] {to = "csyncm", unsigned} : memref<1xi1>
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                          hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                          %266 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                          hcl.print(%266) {format = "ip=%d ", signedness = "u"} : i16
                                          hcl.print(%251) {format = "nop count=0x%x", signedness = "_"} : i9
                                          hcl.print(%c0_i32_0) {format = "    <break>\0A", signedness = "_"} : i32
                                        }
                                      }
                                    }
                                  }
                                  %235 = affine.load %18[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                  %236 = arith.extui %235 : i3 to i32
                                  %237 = arith.addi %236, %c1_i32_2 : i32
                                  %238 = arith.trunci %237 {unsigned} : i32 to i3
                                  affine.store %238, %18[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                                  %239 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                  %240 = arith.addi %239, %c1_i32_2 : i32
                                  affine.store %240, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                  affine.store %211, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                  affine.store %211, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                  affine.store %211, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                                  %241 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                  %242 = arith.extui %241 : i1 to i32
                                  %243 = arith.cmpi eq, %242, %c0_i32_0 : i32
                                  scf.if %243 {
                                  } else {
                                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                    %244 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%244) {format = "ip=%d ", signedness = "u"} : i16
                                    hcl.print(%203) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                    hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                                    affine.store %74, %18[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                                    affine.store %72, %19[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
                %178 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                %179 = arith.addi %178, %c1_i32_2 : i32
                affine.store %179, %30[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                %180 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %180, %22[0] {to = "flags_stall", unsigned} : memref<1xi1>
                affine.store %180, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                affine.store %180, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                %181 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %182 = arith.extui %181 : i1 to i32
                %183 = arith.cmpi eq, %182, %c0_i32_0 : i32
                scf.if %183 {
                } else {
                  hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %184 = affine.load %119[0] {from = "_cur_address", unsigned} : memref<1xi16>
                  hcl.print(%184) {format = "ip=%d ", signedness = "u"} : i16
                  %185 = affine.load %166[0] : memref<1xi9>
                  hcl.print(%185) {format = "ifetch bundle=0x%x", signedness = "_"} : i9
                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                  %c16_i32 = arith.constant 16 : i32
                  %186 = arith.extsi %185 : i9 to i32
                  %187 = arith.muli %186, %c16_i32 : i32
                  %188 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                  %c16_i32_17 = arith.constant {unsigned} 16 : i32
                  affine.store %c16_i32_17, %188[0] {to = "count", unsigned} : memref<1xi32>
                  %189 = affine.load %188[0] {from = "count", unsigned} : memref<1xi32>
                  %190 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                  affine.store %187, %190[0] {to = "src_addr"} : memref<1xi32>
                  %191 = affine.load %190[0] {from = "src_addr"} : memref<1xi32>
                  %192 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %192[0] {to = "dst_addr", unsigned} : memref<1xi32>
                  %193 = affine.load %192[0] {from = "dst_addr", unsigned} : memref<1xi32>
                  %194 = hcl.create_op_handle "copyN"
                  %195 = arith.index_cast %c0_i32_0 : i32 to index
                  %196 = arith.index_cast %189 : i32 to index
                  %197 = arith.index_cast %c1_i32_2 : i32 to index
                  scf.for %arg2 = %195 to %196 step %197 {
                    %199 = arith.index_cast %191 : i32 to index
                    %200 = arith.addi %199, %arg2 : index
                    %201 = memref.load %14[%200] {from = "xinstq.alloc_c", unsigned} : memref<8192xi128>
                    %202 = arith.index_cast %193 : i32 to index
                    %203 = arith.addi %202, %arg2 : index
                    memref.store %201, %43[%203] {to = "instq.alloc_c", unsigned} : memref<16xi128>
                  } {loop_name = "i", op_name = "copyN"}
                  %c5_i32 = arith.constant 5 : i32
                  %198 = arith.trunci %c5_i32 {unsigned} : i32 to i4
                  affine.store %198, %55[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
                }
              }
            }
            affine.store %72, %28[0] {to = "latstalled", unsigned} : memref<1xi1>
            %160 = affine.load %132[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %161 = arith.cmpi ne, %160, %c0_i32_0 : i32
            scf.if %161 {
              %165 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %165, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
              %166 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %167 = arith.extui %166 : i1 to i32
            }
            %162 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
            %163 = arith.extui %162 : i1 to i32
            %164 = arith.cmpi eq, %163, %c0_i32_0 : i32
            scf.if %164 {
              %165 = affine.load %29[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
              %166 = arith.addi %165, %c1_i32_2 : i32
              affine.store %166, %29[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
              %167 = affine.load %26[0] {from = "inst_naddr", unsigned} : memref<1xi16>
              affine.store %167, %25[0] {to = "inst_addr", unsigned} : memref<1xi16>
              affine.store %72, %23[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            } else {
              %165 = affine.load %132[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %166 = arith.subi %165, %c2_i32 : i32
              affine.store %166, %27[0] {to = "latency_count", unsigned} : memref<1xi32>
              %167 = affine.load %31[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
              %168 = arith.addi %167, %c1_i32_2 : i32
              affine.store %168, %31[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
              %169 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %169, %28[0] {to = "latstalled", unsigned} : memref<1xi1>
              affine.store %169, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
              %170 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %171 = arith.extui %170 : i1 to i32
              %172 = arith.cmpi eq, %171, %c0_i32_0 : i32
              scf.if %172 {
              } else {
                %173 = affine.load %28[0] {from = "latstalled", unsigned} : memref<1xi1>
                %174 = affine.load %27[0] {from = "latency_count", unsigned} : memref<1xi32>
                %175 = arith.subi %174, %c1_i32_2 : i32
                affine.store %175, %27[0] {to = "latency_count", unsigned} : memref<1xi32>
                %176 = affine.load %31[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                %177 = arith.addi %176, %c1_i32_2 : i32
                affine.store %177, %31[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                affine.store %169, %28[0] {to = "latstalled", unsigned} : memref<1xi1>
                affine.store %169, %24[0] {to = "flags_break", unsigned} : memref<1xi1>
                %178 = affine.load %22[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %179 = arith.extui %178 : i1 to i32
              }
            }
          }
        }
        scf.yield
      }
      %108 = affine.load %55[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
      %109 = arith.extui %108 : i4 to i32
      %110 = arith.cmpi eq, %109, %c0_i32_0 : i32
      scf.if %110 {
        %116 = memref.alloc() {name = "addr_top", unsigned} : memref<1xi5>
        %c-16_i5 = arith.constant {unsigned} -16 : i5
        affine.store %c-16_i5, %116[0] {to = "addr_top", unsigned} : memref<1xi5>
        affine.store %72, %57[0] {to = "flags_stall", unsigned} : memref<1xi1>
        affine.store %72, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
        affine.store %72, %60[0] {to = "addr_stop", unsigned} : memref<1xi1>
        %117 = affine.load %56[0] {from = "flags_active", unsigned} : memref<1xi1>
        %118 = arith.extui %117 : i1 to i32
        %119 = arith.cmpi ne, %118, %c0_i32_0 : i32
        %120 = affine.load %59[0] {from = "flags_break", unsigned} : memref<1xi1>
        %121 = arith.extui %120 : i1 to i32
        %122 = arith.cmpi eq, %121, %c0_i32_0 : i32
        scf.while : () -> () {
          %126 = arith.andi %119, %122 : i1
          scf.condition(%126)
        } do {
          %126 = affine.load %63[0] {from = "latency_count", unsigned} : memref<1xi32>
          %127 = arith.cmpi eq, %126, %c0_i32_0 : i32
          scf.if %127 {
            %128 = affine.load %61[0] {from = "inst_addr", unsigned} : memref<1xi5>
            %129 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi5>
            affine.store %128, %129[0] {to = "_cur_address", unsigned} : memref<1xi5>
            %c1_i32_2 = arith.constant 1 : i32
            %130 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi5>
            affine.store %128, %130[0] {to = "read_addr", unsigned} : memref<1xi5>
            %131 = affine.load %130[0] {from = "read_addr", unsigned} : memref<1xi5>
            %132 = arith.extui %131 : i5 to i32
            %c16_i32 = arith.constant 16 : i32
            %133 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi128>
            %134 = hcl.create_op_handle "Mem.read_c"
            %135 = affine.load %130[0] {from = "read_addr", unsigned} : memref<1xi5>
            %136 = arith.index_cast %135 : i5 to index
            %137 = arith.addi %136, %c0 : index
            %138 = memref.load %43[%137] {from = "instq.alloc_c", unsigned} : memref<16xi128>
            affine.store %138, %133[%c0] {to = "Mem.read_c"} : memref<1xi128>
            %139 = affine.load %133[0] {from = "Mem.read_c", unsigned} : memref<1xi128>
            %140 = memref.alloc() {name = "inst", unsigned} : memref<1xi128>
            affine.store %139, %140[0] {to = "inst", unsigned} : memref<1xi128>
            %141 = affine.load %140[0] {from = "inst", unsigned} : memref<1xi128>
            %142 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
            affine.store %c0_i32, %142[0] {to = "inst_lat", unsigned} : memref<1xi32>
            %143 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi128>
            affine.store %141, %143[0] {to = "decode_inst", unsigned} : memref<1xi128>
            %144 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
            affine.store %c0_i16, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
            %145 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
            %146 = memref.alloc() : memref<1xi6>
            %c5 = arith.constant 5 : index
            %c0_3 = arith.constant 0 : index
            %147 = hcl.get_slice(%145 : i128, %c5, %c0_3) -> i6
            %c6 = arith.constant 6 : index
            %c6_4 = arith.constant 6 : index
            %c15 = arith.constant 15 : index
            %c7 = arith.constant 7 : index
            %c24 = arith.constant 24 : index
            %c16 = arith.constant 16 : index
            %c33 = arith.constant 33 : index
            %c25 = arith.constant 25 : index
            %c95 = arith.constant 95 : index
            %c34 = arith.constant 34 : index
            %c127 = arith.constant 127 : index
            %c96 = arith.constant 96 : index
            affine.store %147, %146[0] : memref<1xi6>
            %148 = affine.load %146[0] : memref<1xi6>
            %c4_i32 = arith.constant 4 : i32
            %149 = arith.extsi %148 : i6 to i32
            %150 = arith.cmpi eq, %149, %c4_i32 : i32
            scf.if %150 {
              affine.store %73, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %160 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
              %161 = memref.alloc() : memref<1xi6>
              %c5_5 = arith.constant 5 : index
              %c0_6 = arith.constant 0 : index
              %162 = hcl.get_slice(%160 : i128, %c5_5, %c0_6) -> i6
              %c6_7 = arith.constant 6 : index
              %c6_8 = arith.constant 6 : index
              %c15_9 = arith.constant 15 : index
              %c7_10 = arith.constant 7 : index
              %c24_11 = arith.constant 24 : index
              %c16_12 = arith.constant 16 : index
              %c33_13 = arith.constant 33 : index
              %c25_14 = arith.constant 25 : index
              %c95_15 = arith.constant 95 : index
              %c34_16 = arith.constant 34 : index
              %c127_17 = arith.constant 127 : index
              %c96_18 = arith.constant 96 : index
              affine.store %162, %161[0] : memref<1xi6>
              %163 = affine.load %161[0] : memref<1xi6>
              %c5_i32 = arith.constant 5 : i32
              %164 = arith.extsi %163 : i6 to i32
              %165 = arith.cmpi eq, %164, %c5_i32 : i32
              scf.if %165 {
                %166 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
                affine.store %166, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %166 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                %167 = memref.alloc() : memref<1xi6>
                %c5_19 = arith.constant 5 : index
                %c0_20 = arith.constant 0 : index
                %168 = hcl.get_slice(%166 : i128, %c5_19, %c0_20) -> i6
                %c6_21 = arith.constant 6 : index
                %c6_22 = arith.constant 6 : index
                %c15_23 = arith.constant 15 : index
                %c7_24 = arith.constant 7 : index
                %c24_25 = arith.constant 24 : index
                %c16_26 = arith.constant 16 : index
                %c63 = arith.constant 63 : index
                %c25_27 = arith.constant 25 : index
                %c95_28 = arith.constant 95 : index
                %c64 = arith.constant 64 : index
                %c127_29 = arith.constant 127 : index
                %c96_30 = arith.constant 96 : index
                affine.store %168, %167[0] : memref<1xi6>
                %169 = affine.load %167[0] : memref<1xi6>
                %c21_i32 = arith.constant 21 : i32
                %170 = arith.extsi %169 : i6 to i32
                %171 = arith.cmpi eq, %170, %c21_i32 : i32
                scf.if %171 {
                  %c2_i32 = arith.constant 2 : i32
                  %172 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                  affine.store %172, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %172 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                  %173 = memref.alloc() : memref<1xi6>
                  %c5_31 = arith.constant 5 : index
                  %c0_32 = arith.constant 0 : index
                  %174 = hcl.get_slice(%172 : i128, %c5_31, %c0_32) -> i6
                  %c14 = arith.constant 14 : index
                  %c6_33 = arith.constant 6 : index
                  %c23 = arith.constant 23 : index
                  %c15_34 = arith.constant 15 : index
                  %c32 = arith.constant 32 : index
                  %c24_35 = arith.constant 24 : index
                  %c41 = arith.constant 41 : index
                  %c33_36 = arith.constant 33 : index
                  %c95_37 = arith.constant 95 : index
                  %c42 = arith.constant 42 : index
                  %c127_38 = arith.constant 127 : index
                  %c96_39 = arith.constant 96 : index
                  affine.store %174, %173[0] : memref<1xi6>
                  %175 = affine.load %173[0] : memref<1xi6>
                  %c6_i32 = arith.constant 6 : i32
                  %176 = arith.extsi %175 : i6 to i32
                  %177 = arith.cmpi eq, %176, %c6_i32 : i32
                  scf.if %177 {
                    %c3_i32 = arith.constant 3 : i32
                    %178 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                    affine.store %178, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %178 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                    %179 = memref.alloc() : memref<1xi6>
                    %c5_40 = arith.constant 5 : index
                    %c0_41 = arith.constant 0 : index
                    %180 = hcl.get_slice(%178 : i128, %c5_40, %c0_41) -> i6
                    %c14_42 = arith.constant 14 : index
                    %c6_43 = arith.constant 6 : index
                    %c23_44 = arith.constant 23 : index
                    %c15_45 = arith.constant 15 : index
                    %c32_46 = arith.constant 32 : index
                    %c24_47 = arith.constant 24 : index
                    %c63_48 = arith.constant 63 : index
                    %c33_49 = arith.constant 33 : index
                    %c95_50 = arith.constant 95 : index
                    %c64_51 = arith.constant 64 : index
                    %c127_52 = arith.constant 127 : index
                    %c96_53 = arith.constant 96 : index
                    affine.store %180, %179[0] : memref<1xi6>
                    %181 = affine.load %179[0] : memref<1xi6>
                    %c22_i32 = arith.constant 22 : i32
                    %182 = arith.extsi %181 : i6 to i32
                    %183 = arith.cmpi eq, %182, %c22_i32 : i32
                    scf.if %183 {
                      %184 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                      affine.store %184, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %184 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                      %185 = memref.alloc() : memref<1xi6>
                      %c5_54 = arith.constant 5 : index
                      %c0_55 = arith.constant 0 : index
                      %186 = hcl.get_slice(%184 : i128, %c5_54, %c0_55) -> i6
                      %c14_56 = arith.constant 14 : index
                      %c6_57 = arith.constant 6 : index
                      %c23_58 = arith.constant 23 : index
                      %c15_59 = arith.constant 15 : index
                      %c32_60 = arith.constant 32 : index
                      %c24_61 = arith.constant 24 : index
                      %c41_62 = arith.constant 41 : index
                      %c33_63 = arith.constant 33 : index
                      %c52 = arith.constant 52 : index
                      %c42_64 = arith.constant 42 : index
                      %c95_65 = arith.constant 95 : index
                      %c53 = arith.constant 53 : index
                      %c127_66 = arith.constant 127 : index
                      %c96_67 = arith.constant 96 : index
                      affine.store %186, %185[0] : memref<1xi6>
                      %187 = affine.load %185[0] : memref<1xi6>
                      %c7_i32 = arith.constant 7 : i32
                      %188 = arith.extsi %187 : i6 to i32
                      %189 = arith.cmpi eq, %188, %c7_i32 : i32
                      scf.if %189 {
                        %190 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                        affine.store %190, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %190 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                        %191 = memref.alloc() : memref<1xi6>
                        %c5_68 = arith.constant 5 : index
                        %c0_69 = arith.constant 0 : index
                        %192 = hcl.get_slice(%190 : i128, %c5_68, %c0_69) -> i6
                        %c14_70 = arith.constant 14 : index
                        %c6_71 = arith.constant 6 : index
                        %c23_72 = arith.constant 23 : index
                        %c15_73 = arith.constant 15 : index
                        %c32_74 = arith.constant 32 : index
                        %c24_75 = arith.constant 24 : index
                        %c41_76 = arith.constant 41 : index
                        %c33_77 = arith.constant 33 : index
                        %c52_78 = arith.constant 52 : index
                        %c42_79 = arith.constant 42 : index
                        %c95_80 = arith.constant 95 : index
                        %c53_81 = arith.constant 53 : index
                        %c127_82 = arith.constant 127 : index
                        %c96_83 = arith.constant 96 : index
                        affine.store %192, %191[0] : memref<1xi6>
                        %193 = affine.load %191[0] : memref<1xi6>
                        %c15_i32 = arith.constant 15 : i32
                        %194 = arith.extsi %193 : i6 to i32
                        %195 = arith.cmpi eq, %194, %c15_i32 : i32
                        scf.if %195 {
                          %196 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                          affine.store %196, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %196 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                          %197 = memref.alloc() : memref<1xi6>
                          %c5_84 = arith.constant 5 : index
                          %c0_85 = arith.constant 0 : index
                          %198 = hcl.get_slice(%196 : i128, %c5_84, %c0_85) -> i6
                          %c6_86 = arith.constant 6 : index
                          %c6_87 = arith.constant 6 : index
                          %c15_88 = arith.constant 15 : index
                          %c7_89 = arith.constant 7 : index
                          %c24_90 = arith.constant 24 : index
                          %c16_91 = arith.constant 16 : index
                          %c33_92 = arith.constant 33 : index
                          %c25_93 = arith.constant 25 : index
                          %c95_94 = arith.constant 95 : index
                          %c34_95 = arith.constant 34 : index
                          %c127_96 = arith.constant 127 : index
                          %c96_97 = arith.constant 96 : index
                          affine.store %198, %197[0] : memref<1xi6>
                          %199 = affine.load %197[0] : memref<1xi6>
                          %200 = arith.extsi %199 : i6 to i32
                          %201 = arith.cmpi eq, %200, %c4_i32 : i32
                          scf.if %201 {
                            %202 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                            affine.store %202, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                          } else {
                            %202 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                            %203 = memref.alloc() : memref<1xi6>
                            %c5_98 = arith.constant 5 : index
                            %c0_99 = arith.constant 0 : index
                            %204 = hcl.get_slice(%202 : i128, %c5_98, %c0_99) -> i6
                            %c12 = arith.constant 12 : index
                            %c6_100 = arith.constant 6 : index
                            %c127_101 = arith.constant 127 : index
                            %c13 = arith.constant 13 : index
                            affine.store %204, %203[0] : memref<1xi6>
                            %205 = affine.load %203[0] : memref<1xi6>
                            %206 = arith.extsi %205 : i6 to i32
                            %207 = arith.cmpi eq, %206, %c0_i32_0 : i32
                            scf.if %207 {
                              %c8_i32 = arith.constant 8 : i32
                              %208 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                              affine.store %208, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                            } else {
                              %208 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                              %209 = memref.alloc() : memref<1xi6>
                              %c5_102 = arith.constant 5 : index
                              %c0_103 = arith.constant 0 : index
                              %210 = hcl.get_slice(%208 : i128, %c5_102, %c0_103) -> i6
                              %c6_104 = arith.constant 6 : index
                              %c6_105 = arith.constant 6 : index
                              %c15_106 = arith.constant 15 : index
                              %c7_107 = arith.constant 7 : index
                              %c127_108 = arith.constant 127 : index
                              %c16_109 = arith.constant 16 : index
                              affine.store %210, %209[0] : memref<1xi6>
                              %211 = affine.load %209[0] : memref<1xi6>
                              %c9_i32 = arith.constant 9 : i32
                              %212 = arith.extsi %211 : i6 to i32
                              %213 = arith.cmpi eq, %212, %c9_i32 : i32
                              scf.if %213 {
                                %214 = arith.trunci %c9_i32 {unsigned} : i32 to i16
                                affine.store %214, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                              } else {
                                %214 = affine.load %143[0] {from = "decode_inst", unsigned} : memref<1xi128>
                                %215 = memref.alloc() : memref<1xi6>
                                %c5_110 = arith.constant 5 : index
                                %c0_111 = arith.constant 0 : index
                                %216 = hcl.get_slice(%214 : i128, %c5_110, %c0_111) -> i6
                                %c6_112 = arith.constant 6 : index
                                %c6_113 = arith.constant 6 : index
                                %c15_114 = arith.constant 15 : index
                                %c7_115 = arith.constant 7 : index
                                %c24_116 = arith.constant 24 : index
                                %c16_117 = arith.constant 16 : index
                                %c127_118 = arith.constant 127 : index
                                %c25_119 = arith.constant 25 : index
                                affine.store %216, %215[0] : memref<1xi6>
                                %217 = affine.load %215[0] : memref<1xi6>
                                %c10_i32 = arith.constant 10 : i32
                                %218 = arith.extsi %217 : i6 to i32
                                %219 = arith.cmpi eq, %218, %c10_i32 : i32
                                scf.if %219 {
                                  %220 = arith.trunci %c10_i32 {unsigned} : i32 to i16
                                  affine.store %220, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                                } else {
                                  %c11_i32 = arith.constant 11 : i32
                                  %220 = arith.trunci %c11_i32 {unsigned} : i32 to i16
                                  affine.store %220, %144[0] {to = "inst_id", unsigned} : memref<1xi16>
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
            %151 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
            affine.store %false, %151[0] {to = "tmp", unsigned} : memref<1xi1>
            %152 = affine.load %142[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %153 = arith.cmpi sle, %152, %c1_i32_2 : i32
            scf.if %153 {
              %160 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %160, %151[0] {to = "tmp", unsigned} : memref<1xi1>
            }
            %154 = affine.load %64[0] {from = "latstalled", unsigned} : memref<1xi1>
            %155 = arith.extui %154 : i1 to i32
            %156 = arith.cmpi eq, %155, %c1_i32_2 : i32
            scf.if %156 {
              %160 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %160, %151[0] {to = "tmp", unsigned} : memref<1xi1>
            }
            %157 = affine.load %151[0] {from = "tmp", unsigned} : memref<1xi1>
            %158 = arith.extui %157 : i1 to i32
            %159 = arith.cmpi ne, %158, %c0_i32_0 : i32
            scf.if %159 {
              %160 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi128>
              affine.store %141, %160[0] {to = "execute_inst", unsigned} : memref<1xi128>
              %161 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
              %162 = arith.extui %161 : i16 to i32
              %163 = arith.cmpi eq, %162, %c0_i32_0 : i32
              scf.if %163 {
                %172 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                %173 = memref.alloc() : memref<1xi1>
                %174 = memref.alloc() : memref<1xi9>
                %175 = memref.alloc() : memref<1xi9>
                %176 = memref.alloc() : memref<1xi9>
                %177 = memref.alloc() : memref<1xi32>
                %c5_5 = arith.constant 5 : index
                %c0_6 = arith.constant 0 : index
                %c6_7 = arith.constant 6 : index
                %c6_8 = arith.constant 6 : index
                %178 = hcl.get_slice(%172 : i128, %c6_7, %c6_8) -> i1
                %c15_9 = arith.constant 15 : index
                %c7_10 = arith.constant 7 : index
                %179 = hcl.get_slice(%172 : i128, %c15_9, %c7_10) -> i9
                %c24_11 = arith.constant 24 : index
                %c16_12 = arith.constant 16 : index
                %180 = hcl.get_slice(%172 : i128, %c24_11, %c16_12) -> i9
                %c33_13 = arith.constant 33 : index
                %c25_14 = arith.constant 25 : index
                %181 = hcl.get_slice(%172 : i128, %c33_13, %c25_14) -> i9
                %c95_15 = arith.constant 95 : index
                %c34_16 = arith.constant 34 : index
                %c127_17 = arith.constant 127 : index
                %c96_18 = arith.constant 96 : index
                %182 = hcl.get_slice(%172 : i128, %c127_17, %c96_18) -> i32
                affine.store %178, %173[0] : memref<1xi1>
                affine.store %179, %174[0] : memref<1xi9>
                affine.store %180, %175[0] : memref<1xi9>
                affine.store %181, %176[0] : memref<1xi9>
                affine.store %182, %177[0] : memref<1xi32>
                hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                %183 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                hcl.print(%183) {format = "ip=%d ", signedness = "u"} : i5
                %184 = affine.load %173[0] : memref<1xi1>
                %185 = affine.load %174[0] : memref<1xi9>
                %186 = affine.load %175[0] : memref<1xi9>
                %187 = affine.load %176[0] : memref<1xi9>
                %188 = affine.load %177[0] : memref<1xi32>
                hcl.print(%184, %185, %186, %187, %188) {format = "padd dbg=0x%x res=0x%x a=0x%x b=0x%x q=0x%x", signedness = "_____"} : i1, i9, i9, i9, i32
                hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                %c6_19 = arith.constant 6 : index
                %c0_20 = arith.constant 0 : index
                %c8 = arith.constant 8 : index
                %c7_21 = arith.constant 7 : index
                %c6_22 = arith.constant 6 : index
                %c0_23 = arith.constant 0 : index
                %c8_24 = arith.constant 8 : index
                %c7_25 = arith.constant 7 : index
                %189 = memref.alloc() : memref<1xi7>
                %190 = memref.alloc() : memref<1xi2>
                %c6_26 = arith.constant 6 : index
                %c0_27 = arith.constant 0 : index
                %191 = hcl.get_slice(%185 : i9, %c6_26, %c0_27) -> i7
                %c8_28 = arith.constant 8 : index
                %c7_29 = arith.constant 7 : index
                %192 = hcl.get_slice(%185 : i9, %c8_28, %c7_29) -> i2
                affine.store %191, %189[0] : memref<1xi7>
                affine.store %192, %190[0] : memref<1xi2>
                %193 = affine.load %190[0] : memref<1xi2>
                %194 = affine.load %189[0] : memref<1xi7>
                %195 = memref.alloc() : memref<1xi7>
                %196 = memref.alloc() : memref<1xi2>
                %c6_30 = arith.constant 6 : index
                %c0_31 = arith.constant 0 : index
                %197 = hcl.get_slice(%186 : i9, %c6_30, %c0_31) -> i7
                %c8_32 = arith.constant 8 : index
                %c7_33 = arith.constant 7 : index
                %198 = hcl.get_slice(%186 : i9, %c8_32, %c7_33) -> i2
                affine.store %197, %195[0] : memref<1xi7>
                affine.store %198, %196[0] : memref<1xi2>
                %199 = affine.load %196[0] : memref<1xi2>
                %200 = affine.load %195[0] : memref<1xi7>
                %201 = memref.alloc() : memref<1xi7>
                %202 = memref.alloc() : memref<1xi2>
                %c6_34 = arith.constant 6 : index
                %c0_35 = arith.constant 0 : index
                %203 = hcl.get_slice(%187 : i9, %c6_34, %c0_35) -> i7
                %c8_36 = arith.constant 8 : index
                %c7_37 = arith.constant 7 : index
                %204 = hcl.get_slice(%187 : i9, %c8_36, %c7_37) -> i2
                affine.store %203, %201[0] : memref<1xi7>
                affine.store %204, %202[0] : memref<1xi2>
                %205 = affine.load %202[0] : memref<1xi2>
                %206 = affine.load %201[0] : memref<1xi7>
                %207 = hcl.create_op_handle "bflyfn"
                affine.for %arg2 = 0 to 8192 {
                  %208 = arith.index_cast %199 : i2 to index
                  %209 = arith.index_cast %200 : i7 to index
                  %210 = memref.load %32[%208, %209, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %211 = arith.index_cast %205 : i2 to index
                  %212 = arith.index_cast %206 : i7 to index
                  %213 = memref.load %32[%211, %212, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %214 = arith.addi %210, %213 {unsigned} : i32
                  %215 = arith.remsi %214, %188 : i32
                  %216 = arith.addi %188, %210 {unsigned} : i32
                  %217 = arith.index_cast %193 : i2 to index
                  %218 = arith.index_cast %194 : i7 to index
                  memref.store %215, %32[%217, %218, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                } {loop_name = "i", op_name = "bflyfn"}
              } else {
                %172 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                %173 = arith.extui %172 : i16 to i32
                %174 = arith.cmpi eq, %173, %c1_i32_2 : i32
                scf.if %174 {
                  %175 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                  %176 = memref.alloc() : memref<1xi1>
                  %177 = memref.alloc() : memref<1xi9>
                  %178 = memref.alloc() : memref<1xi9>
                  %179 = memref.alloc() : memref<1xi9>
                  %180 = memref.alloc() : memref<1xi32>
                  %c5_5 = arith.constant 5 : index
                  %c0_6 = arith.constant 0 : index
                  %c6_7 = arith.constant 6 : index
                  %c6_8 = arith.constant 6 : index
                  %181 = hcl.get_slice(%175 : i128, %c6_7, %c6_8) -> i1
                  %c15_9 = arith.constant 15 : index
                  %c7_10 = arith.constant 7 : index
                  %182 = hcl.get_slice(%175 : i128, %c15_9, %c7_10) -> i9
                  %c24_11 = arith.constant 24 : index
                  %c16_12 = arith.constant 16 : index
                  %183 = hcl.get_slice(%175 : i128, %c24_11, %c16_12) -> i9
                  %c33_13 = arith.constant 33 : index
                  %c25_14 = arith.constant 25 : index
                  %184 = hcl.get_slice(%175 : i128, %c33_13, %c25_14) -> i9
                  %c95_15 = arith.constant 95 : index
                  %c34_16 = arith.constant 34 : index
                  %c127_17 = arith.constant 127 : index
                  %c96_18 = arith.constant 96 : index
                  %185 = hcl.get_slice(%175 : i128, %c127_17, %c96_18) -> i32
                  affine.store %181, %176[0] : memref<1xi1>
                  affine.store %182, %177[0] : memref<1xi9>
                  affine.store %183, %178[0] : memref<1xi9>
                  affine.store %184, %179[0] : memref<1xi9>
                  affine.store %185, %180[0] : memref<1xi32>
                  hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                  %186 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                  hcl.print(%186) {format = "ip=%d ", signedness = "u"} : i5
                  %187 = affine.load %176[0] : memref<1xi1>
                  %188 = affine.load %177[0] : memref<1xi9>
                  %189 = affine.load %178[0] : memref<1xi9>
                  %190 = affine.load %179[0] : memref<1xi9>
                  %191 = affine.load %180[0] : memref<1xi32>
                  hcl.print(%187, %188, %189, %190, %191) {format = "pmul dbg=0x%x res=0x%x w=0x%x b=0x%x q=0x%x", signedness = "_____"} : i1, i9, i9, i9, i32
                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                  %c6_19 = arith.constant 6 : index
                  %c0_20 = arith.constant 0 : index
                  %c8 = arith.constant 8 : index
                  %c7_21 = arith.constant 7 : index
                  %c6_22 = arith.constant 6 : index
                  %c0_23 = arith.constant 0 : index
                  %c8_24 = arith.constant 8 : index
                  %c7_25 = arith.constant 7 : index
                  %192 = memref.alloc() : memref<1xi7>
                  %193 = memref.alloc() : memref<1xi2>
                  %c6_26 = arith.constant 6 : index
                  %c0_27 = arith.constant 0 : index
                  %194 = hcl.get_slice(%188 : i9, %c6_26, %c0_27) -> i7
                  %c8_28 = arith.constant 8 : index
                  %c7_29 = arith.constant 7 : index
                  %195 = hcl.get_slice(%188 : i9, %c8_28, %c7_29) -> i2
                  affine.store %194, %192[0] : memref<1xi7>
                  affine.store %195, %193[0] : memref<1xi2>
                  %196 = affine.load %193[0] : memref<1xi2>
                  %197 = affine.load %192[0] : memref<1xi7>
                  %198 = memref.alloc() : memref<1xi7>
                  %199 = memref.alloc() : memref<1xi2>
                  %c6_30 = arith.constant 6 : index
                  %c0_31 = arith.constant 0 : index
                  %200 = hcl.get_slice(%189 : i9, %c6_30, %c0_31) -> i7
                  %c8_32 = arith.constant 8 : index
                  %c7_33 = arith.constant 7 : index
                  %201 = hcl.get_slice(%189 : i9, %c8_32, %c7_33) -> i2
                  affine.store %200, %198[0] : memref<1xi7>
                  affine.store %201, %199[0] : memref<1xi2>
                  %202 = affine.load %199[0] : memref<1xi2>
                  %203 = affine.load %198[0] : memref<1xi7>
                  %204 = memref.alloc() : memref<1xi7>
                  %205 = memref.alloc() : memref<1xi2>
                  %c6_34 = arith.constant 6 : index
                  %c0_35 = arith.constant 0 : index
                  %206 = hcl.get_slice(%190 : i9, %c6_34, %c0_35) -> i7
                  %c8_36 = arith.constant 8 : index
                  %c7_37 = arith.constant 7 : index
                  %207 = hcl.get_slice(%190 : i9, %c8_36, %c7_37) -> i2
                  affine.store %206, %204[0] : memref<1xi7>
                  affine.store %207, %205[0] : memref<1xi2>
                  %208 = affine.load %205[0] : memref<1xi2>
                  %209 = affine.load %204[0] : memref<1xi7>
                  %210 = hcl.create_op_handle "bflyfn"
                  affine.for %arg2 = 0 to 8192 {
                    %211 = arith.index_cast %208 : i2 to index
                    %212 = arith.index_cast %209 : i7 to index
                    %213 = memref.load %32[%211, %212, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %214 = arith.index_cast %202 : i2 to index
                    %215 = arith.index_cast %203 : i7 to index
                    %216 = memref.load %32[%214, %215, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %217 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                    affine.store %213, %217[0] {to = "b", unsigned} : memref<1xi32>
                    %218 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                    affine.store %216, %218[0] {to = "w", unsigned} : memref<1xi32>
                    %219 = memref.alloc() {name = "q"} : memref<1xi32>
                    affine.store %191, %219[0] {to = "q"} : memref<1xi32>
                    %220 = affine.load %219[0] {from = "q"} : memref<1xi32>
                    %c65535_i32 = arith.constant 65535 : i32
                    %221 = affine.load %218[0] {from = "w", unsigned} : memref<1xi32>
                    %222 = affine.load %217[0] {from = "b", unsigned} : memref<1xi32>
                    %223 = arith.muli %221, %222 {unsigned} : i32
                    %224 = arith.subi %c0_i32_0, %223 {unsigned} : i32
                    %225 = arith.andi %224, %c65535_i32 {unsigned} : i32
                    %226 = arith.muli %225, %220 : i32
                    %227 = arith.addi %223, %226 : i32
                    %228 = arith.shrui %227, %c16_i32 : i32
                    %229 = arith.subi %c0_i32_0, %228 : i32
                    %230 = arith.andi %229, %c65535_i32 : i32
                    %231 = arith.muli %230, %220 : i32
                    %232 = arith.addi %228, %231 : i32
                    %233 = arith.shrui %232, %c16_i32 : i32
                    %234 = arith.cmpi slt, %233, %220 : i32
                    %235 = arith.subi %233, %220 : i32
                    %236 = arith.select %234, %233, %235 : i32
                    %237 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                    affine.store %236, %237[0] {to = "mont_redc", unsigned} : memref<1xi32>
                    %238 = affine.load %237[0] {from = "mont_redc", unsigned} : memref<1xi32>
                    %239 = arith.index_cast %196 : i2 to index
                    %240 = arith.index_cast %197 : i7 to index
                    memref.store %238, %32[%239, %240, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  } {loop_name = "i", op_name = "bflyfn"}
                } else {
                  %175 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %176 = arith.extui %175 : i16 to i32
                  %c2_i32 = arith.constant 2 : i32
                  %177 = arith.cmpi eq, %176, %c2_i32 : i32
                  scf.if %177 {
                    %178 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                    %179 = memref.alloc() : memref<1xi9>
                    %180 = memref.alloc() : memref<1xi9>
                    %181 = memref.alloc() : memref<1xi32>
                    %182 = memref.alloc() : memref<1xi32>
                    %c5_5 = arith.constant 5 : index
                    %c0_6 = arith.constant 0 : index
                    %c6_7 = arith.constant 6 : index
                    %c6_8 = arith.constant 6 : index
                    %c15_9 = arith.constant 15 : index
                    %c7_10 = arith.constant 7 : index
                    %183 = hcl.get_slice(%178 : i128, %c15_9, %c7_10) -> i9
                    %c24_11 = arith.constant 24 : index
                    %c16_12 = arith.constant 16 : index
                    %184 = hcl.get_slice(%178 : i128, %c24_11, %c16_12) -> i9
                    %c63 = arith.constant 63 : index
                    %c25_13 = arith.constant 25 : index
                    %c95_14 = arith.constant 95 : index
                    %c64 = arith.constant 64 : index
                    %185 = hcl.get_slice(%178 : i128, %c95_14, %c64) -> i32
                    %c127_15 = arith.constant 127 : index
                    %c96_16 = arith.constant 96 : index
                    %186 = hcl.get_slice(%178 : i128, %c127_15, %c96_16) -> i32
                    affine.store %183, %179[0] : memref<1xi9>
                    affine.store %184, %180[0] : memref<1xi9>
                    affine.store %185, %181[0] : memref<1xi32>
                    affine.store %186, %182[0] : memref<1xi32>
                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                    %187 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                    hcl.print(%187) {format = "ip=%d ", signedness = "u"} : i5
                    %188 = affine.load %179[0] : memref<1xi9>
                    %189 = affine.load %180[0] : memref<1xi9>
                    %190 = affine.load %181[0] : memref<1xi32>
                    %191 = affine.load %182[0] : memref<1xi32>
                    hcl.print(%188, %189, %190, %191) {format = "pmuli res=0x%x w=0x%x imm=0x%x q=0x%x", signedness = "____"} : i9, i9, i32, i32
                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                    %192 = memref.alloc() : memref<1xi7>
                    %193 = memref.alloc() : memref<1xi2>
                    %c6_17 = arith.constant 6 : index
                    %c0_18 = arith.constant 0 : index
                    %194 = hcl.get_slice(%188 : i9, %c6_17, %c0_18) -> i7
                    %c8 = arith.constant 8 : index
                    %c7_19 = arith.constant 7 : index
                    %195 = hcl.get_slice(%188 : i9, %c8, %c7_19) -> i2
                    affine.store %194, %192[0] : memref<1xi7>
                    affine.store %195, %193[0] : memref<1xi2>
                    %196 = affine.load %193[0] : memref<1xi2>
                    %197 = affine.load %192[0] : memref<1xi7>
                    %198 = memref.alloc() : memref<1xi7>
                    %199 = memref.alloc() : memref<1xi2>
                    %c6_20 = arith.constant 6 : index
                    %c0_21 = arith.constant 0 : index
                    %200 = hcl.get_slice(%189 : i9, %c6_20, %c0_21) -> i7
                    %c8_22 = arith.constant 8 : index
                    %c7_23 = arith.constant 7 : index
                    %201 = hcl.get_slice(%189 : i9, %c8_22, %c7_23) -> i2
                    affine.store %200, %198[0] : memref<1xi7>
                    affine.store %201, %199[0] : memref<1xi2>
                    %202 = affine.load %199[0] : memref<1xi2>
                    %203 = affine.load %198[0] : memref<1xi7>
                    %204 = hcl.create_op_handle "bflyfn"
                    affine.for %arg2 = 0 to 8192 {
                      %205 = hcl.get_bit(%190 : i32, %arg2) -> i1
                      %206 = arith.index_cast %202 : i2 to index
                      %207 = arith.index_cast %203 : i7 to index
                      %208 = memref.load %32[%206, %207, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      %209 = memref.alloc() {name = "b"} : memref<1xi1>
                      affine.store %205, %209[0] {to = "b"} : memref<1xi1>
                      %210 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                      affine.store %208, %210[0] {to = "w", unsigned} : memref<1xi32>
                      %211 = memref.alloc() {name = "q"} : memref<1xi32>
                      affine.store %191, %211[0] {to = "q"} : memref<1xi32>
                      %212 = affine.load %211[0] {from = "q"} : memref<1xi32>
                      %c65535_i32 = arith.constant 65535 : i32
                      %213 = affine.load %210[0] {from = "w", unsigned} : memref<1xi32>
                      %214 = affine.load %209[0] {from = "b"} : memref<1xi1>
                      %215 = arith.extui %214 {unsigned} : i1 to i32
                      %216 = arith.muli %213, %215 {unsigned} : i32
                      %217 = arith.subi %c0_i32_0, %216 {unsigned} : i32
                      %218 = arith.andi %217, %c65535_i32 {unsigned} : i32
                      %219 = arith.muli %218, %212 : i32
                      %220 = arith.addi %216, %219 : i32
                      %221 = arith.shrui %220, %c16_i32 : i32
                      %222 = arith.subi %c0_i32_0, %221 : i32
                      %223 = arith.andi %222, %c65535_i32 : i32
                      %224 = arith.muli %223, %212 : i32
                      %225 = arith.addi %221, %224 : i32
                      %226 = arith.shrui %225, %c16_i32 : i32
                      %227 = arith.cmpi slt, %226, %212 : i32
                      %228 = arith.subi %226, %212 : i32
                      %229 = arith.select %227, %226, %228 : i32
                      %230 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                      affine.store %229, %230[0] {to = "mont_redc", unsigned} : memref<1xi32>
                      %231 = affine.load %230[0] {from = "mont_redc", unsigned} : memref<1xi32>
                      %232 = arith.index_cast %196 : i2 to index
                      %233 = arith.index_cast %197 : i7 to index
                      memref.store %231, %32[%232, %233, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    } {loop_name = "i", op_name = "bflyfn"}
                  } else {
                    %178 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                    %179 = arith.extui %178 : i16 to i32
                    %c3_i32 = arith.constant 3 : i32
                    %180 = arith.cmpi eq, %179, %c3_i32 : i32
                    scf.if %180 {
                      %181 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                      %182 = memref.alloc() : memref<1xi9>
                      %183 = memref.alloc() : memref<1xi9>
                      %184 = memref.alloc() : memref<1xi9>
                      %185 = memref.alloc() : memref<1xi9>
                      %186 = memref.alloc() : memref<1xi32>
                      %c5_5 = arith.constant 5 : index
                      %c0_6 = arith.constant 0 : index
                      %c14 = arith.constant 14 : index
                      %c6_7 = arith.constant 6 : index
                      %187 = hcl.get_slice(%181 : i128, %c14, %c6_7) -> i9
                      %c23 = arith.constant 23 : index
                      %c15_8 = arith.constant 15 : index
                      %188 = hcl.get_slice(%181 : i128, %c23, %c15_8) -> i9
                      %c32 = arith.constant 32 : index
                      %c24_9 = arith.constant 24 : index
                      %189 = hcl.get_slice(%181 : i128, %c32, %c24_9) -> i9
                      %c41 = arith.constant 41 : index
                      %c33_10 = arith.constant 33 : index
                      %190 = hcl.get_slice(%181 : i128, %c41, %c33_10) -> i9
                      %c95_11 = arith.constant 95 : index
                      %c42 = arith.constant 42 : index
                      %c127_12 = arith.constant 127 : index
                      %c96_13 = arith.constant 96 : index
                      %191 = hcl.get_slice(%181 : i128, %c127_12, %c96_13) -> i32
                      affine.store %187, %182[0] : memref<1xi9>
                      affine.store %188, %183[0] : memref<1xi9>
                      affine.store %189, %184[0] : memref<1xi9>
                      affine.store %190, %185[0] : memref<1xi9>
                      affine.store %191, %186[0] : memref<1xi32>
                      hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                      %192 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                      hcl.print(%192) {format = "ip=%d ", signedness = "u"} : i5
                      %193 = affine.load %182[0] : memref<1xi9>
                      %194 = affine.load %183[0] : memref<1xi9>
                      %195 = affine.load %184[0] : memref<1xi9>
                      %196 = affine.load %185[0] : memref<1xi9>
                      %197 = affine.load %186[0] : memref<1xi32>
                      hcl.print(%193, %194, %195, %196, %197) {format = "pmac res=0x%x a=0x%x w=0x%x b=0x%x q=0x%x", signedness = "_____"} : i9, i9, i9, i9, i32
                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                      %c6_14 = arith.constant 6 : index
                      %c0_15 = arith.constant 0 : index
                      %c8 = arith.constant 8 : index
                      %c7_16 = arith.constant 7 : index
                      %c6_17 = arith.constant 6 : index
                      %c0_18 = arith.constant 0 : index
                      %c8_19 = arith.constant 8 : index
                      %c7_20 = arith.constant 7 : index
                      %c6_21 = arith.constant 6 : index
                      %c0_22 = arith.constant 0 : index
                      %c8_23 = arith.constant 8 : index
                      %c7_24 = arith.constant 7 : index
                      %198 = memref.alloc() : memref<1xi7>
                      %199 = memref.alloc() : memref<1xi2>
                      %c6_25 = arith.constant 6 : index
                      %c0_26 = arith.constant 0 : index
                      %200 = hcl.get_slice(%194 : i9, %c6_25, %c0_26) -> i7
                      %c8_27 = arith.constant 8 : index
                      %c7_28 = arith.constant 7 : index
                      %201 = hcl.get_slice(%194 : i9, %c8_27, %c7_28) -> i2
                      affine.store %200, %198[0] : memref<1xi7>
                      affine.store %201, %199[0] : memref<1xi2>
                      %202 = affine.load %199[0] : memref<1xi2>
                      %203 = affine.load %198[0] : memref<1xi7>
                      %204 = memref.alloc() : memref<1xi7>
                      %205 = memref.alloc() : memref<1xi2>
                      %c6_29 = arith.constant 6 : index
                      %c0_30 = arith.constant 0 : index
                      %206 = hcl.get_slice(%194 : i9, %c6_29, %c0_30) -> i7
                      %c8_31 = arith.constant 8 : index
                      %c7_32 = arith.constant 7 : index
                      %207 = hcl.get_slice(%194 : i9, %c8_31, %c7_32) -> i2
                      affine.store %206, %204[0] : memref<1xi7>
                      affine.store %207, %205[0] : memref<1xi2>
                      %208 = affine.load %205[0] : memref<1xi2>
                      %209 = affine.load %204[0] : memref<1xi7>
                      %210 = memref.alloc() : memref<1xi7>
                      %211 = memref.alloc() : memref<1xi2>
                      %c6_33 = arith.constant 6 : index
                      %c0_34 = arith.constant 0 : index
                      %212 = hcl.get_slice(%195 : i9, %c6_33, %c0_34) -> i7
                      %c8_35 = arith.constant 8 : index
                      %c7_36 = arith.constant 7 : index
                      %213 = hcl.get_slice(%195 : i9, %c8_35, %c7_36) -> i2
                      affine.store %212, %210[0] : memref<1xi7>
                      affine.store %213, %211[0] : memref<1xi2>
                      %214 = affine.load %211[0] : memref<1xi2>
                      %215 = affine.load %210[0] : memref<1xi7>
                      %216 = memref.alloc() : memref<1xi7>
                      %217 = memref.alloc() : memref<1xi2>
                      %c6_37 = arith.constant 6 : index
                      %c0_38 = arith.constant 0 : index
                      %218 = hcl.get_slice(%196 : i9, %c6_37, %c0_38) -> i7
                      %c8_39 = arith.constant 8 : index
                      %c7_40 = arith.constant 7 : index
                      %219 = hcl.get_slice(%196 : i9, %c8_39, %c7_40) -> i2
                      affine.store %218, %216[0] : memref<1xi7>
                      affine.store %219, %217[0] : memref<1xi2>
                      %220 = affine.load %217[0] : memref<1xi2>
                      %221 = affine.load %216[0] : memref<1xi7>
                      %222 = hcl.create_op_handle "bflyfn"
                      affine.for %arg2 = 0 to 8192 {
                        %223 = arith.index_cast %208 : i2 to index
                        %224 = arith.index_cast %209 : i7 to index
                        %225 = memref.load %32[%223, %224, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %226 = arith.index_cast %220 : i2 to index
                        %227 = arith.index_cast %221 : i7 to index
                        %228 = memref.load %32[%226, %227, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %229 = arith.index_cast %214 : i2 to index
                        %230 = arith.index_cast %215 : i7 to index
                        %231 = memref.load %32[%229, %230, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %232 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                        affine.store %228, %232[0] {to = "b", unsigned} : memref<1xi32>
                        %233 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                        affine.store %231, %233[0] {to = "w", unsigned} : memref<1xi32>
                        %234 = memref.alloc() {name = "q"} : memref<1xi32>
                        affine.store %197, %234[0] {to = "q"} : memref<1xi32>
                        %235 = affine.load %234[0] {from = "q"} : memref<1xi32>
                        %c65535_i32 = arith.constant 65535 : i32
                        %236 = affine.load %233[0] {from = "w", unsigned} : memref<1xi32>
                        %237 = affine.load %232[0] {from = "b", unsigned} : memref<1xi32>
                        %238 = arith.muli %236, %237 {unsigned} : i32
                        %239 = arith.subi %c0_i32_0, %238 {unsigned} : i32
                        %240 = arith.andi %239, %c65535_i32 {unsigned} : i32
                        %241 = arith.muli %240, %235 : i32
                        %242 = arith.addi %238, %241 : i32
                        %243 = arith.shrui %242, %c16_i32 : i32
                        %244 = arith.subi %c0_i32_0, %243 : i32
                        %245 = arith.andi %244, %c65535_i32 : i32
                        %246 = arith.muli %245, %235 : i32
                        %247 = arith.addi %243, %246 : i32
                        %248 = arith.shrui %247, %c16_i32 : i32
                        %249 = arith.cmpi slt, %248, %235 : i32
                        %250 = arith.subi %248, %235 : i32
                        %251 = arith.select %249, %248, %250 : i32
                        %252 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                        affine.store %251, %252[0] {to = "mont_redc", unsigned} : memref<1xi32>
                        %253 = affine.load %252[0] {from = "mont_redc", unsigned} : memref<1xi32>
                        %254 = arith.addi %225, %253 {unsigned} : i32
                        %255 = arith.remsi %254, %197 : i32
                        %256 = arith.index_cast %202 : i2 to index
                        %257 = arith.index_cast %203 : i7 to index
                        memref.store %255, %32[%256, %257, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "bflyfn"}
                    } else {
                      %181 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %182 = arith.extui %181 : i16 to i32
                      %183 = arith.cmpi eq, %182, %c4_i32 : i32
                      scf.if %183 {
                        %184 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                        %185 = memref.alloc() : memref<1xi9>
                        %186 = memref.alloc() : memref<1xi9>
                        %187 = memref.alloc() : memref<1xi32>
                        %188 = memref.alloc() : memref<1xi32>
                        %c5_5 = arith.constant 5 : index
                        %c0_6 = arith.constant 0 : index
                        %c14 = arith.constant 14 : index
                        %c6_7 = arith.constant 6 : index
                        %c23 = arith.constant 23 : index
                        %c15_8 = arith.constant 15 : index
                        %189 = hcl.get_slice(%184 : i128, %c23, %c15_8) -> i9
                        %c32 = arith.constant 32 : index
                        %c24_9 = arith.constant 24 : index
                        %190 = hcl.get_slice(%184 : i128, %c32, %c24_9) -> i9
                        %c63 = arith.constant 63 : index
                        %c33_10 = arith.constant 33 : index
                        %c95_11 = arith.constant 95 : index
                        %c64 = arith.constant 64 : index
                        %191 = hcl.get_slice(%184 : i128, %c95_11, %c64) -> i32
                        %c127_12 = arith.constant 127 : index
                        %c96_13 = arith.constant 96 : index
                        %192 = hcl.get_slice(%184 : i128, %c127_12, %c96_13) -> i32
                        affine.store %189, %185[0] : memref<1xi9>
                        affine.store %190, %186[0] : memref<1xi9>
                        affine.store %191, %187[0] : memref<1xi32>
                        affine.store %192, %188[0] : memref<1xi32>
                        hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                        %193 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                        hcl.print(%193) {format = "ip=%d ", signedness = "u"} : i5
                        %194 = affine.load %185[0] : memref<1xi9>
                        %195 = affine.load %186[0] : memref<1xi9>
                        %196 = affine.load %187[0] : memref<1xi32>
                        %197 = affine.load %188[0] : memref<1xi32>
                        hcl.print(%194, %195, %196, %197) {format = "pmaci a=0x%x w=0x%x imm=0x%x q=0x%x", signedness = "____"} : i9, i9, i32, i32
                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                        %c6_14 = arith.constant 6 : index
                        %c0_15 = arith.constant 0 : index
                        %c8 = arith.constant 8 : index
                        %c7_16 = arith.constant 7 : index
                        %c6_17 = arith.constant 6 : index
                        %c0_18 = arith.constant 0 : index
                        %c8_19 = arith.constant 8 : index
                        %c7_20 = arith.constant 7 : index
                        %198 = memref.alloc() : memref<1xi7>
                        %199 = memref.alloc() : memref<1xi2>
                        %c6_21 = arith.constant 6 : index
                        %c0_22 = arith.constant 0 : index
                        %200 = hcl.get_slice(%194 : i9, %c6_21, %c0_22) -> i7
                        %c8_23 = arith.constant 8 : index
                        %c7_24 = arith.constant 7 : index
                        %201 = hcl.get_slice(%194 : i9, %c8_23, %c7_24) -> i2
                        affine.store %200, %198[0] : memref<1xi7>
                        affine.store %201, %199[0] : memref<1xi2>
                        %202 = affine.load %199[0] : memref<1xi2>
                        %203 = affine.load %198[0] : memref<1xi7>
                        %204 = memref.alloc() : memref<1xi7>
                        %205 = memref.alloc() : memref<1xi2>
                        %c6_25 = arith.constant 6 : index
                        %c0_26 = arith.constant 0 : index
                        %206 = hcl.get_slice(%194 : i9, %c6_25, %c0_26) -> i7
                        %c8_27 = arith.constant 8 : index
                        %c7_28 = arith.constant 7 : index
                        %207 = hcl.get_slice(%194 : i9, %c8_27, %c7_28) -> i2
                        affine.store %206, %204[0] : memref<1xi7>
                        affine.store %207, %205[0] : memref<1xi2>
                        %208 = affine.load %205[0] : memref<1xi2>
                        %209 = affine.load %204[0] : memref<1xi7>
                        %210 = memref.alloc() : memref<1xi7>
                        %211 = memref.alloc() : memref<1xi2>
                        %c6_29 = arith.constant 6 : index
                        %c0_30 = arith.constant 0 : index
                        %212 = hcl.get_slice(%195 : i9, %c6_29, %c0_30) -> i7
                        %c8_31 = arith.constant 8 : index
                        %c7_32 = arith.constant 7 : index
                        %213 = hcl.get_slice(%195 : i9, %c8_31, %c7_32) -> i2
                        affine.store %212, %210[0] : memref<1xi7>
                        affine.store %213, %211[0] : memref<1xi2>
                        %214 = affine.load %211[0] : memref<1xi2>
                        %215 = affine.load %210[0] : memref<1xi7>
                        %216 = hcl.create_op_handle "bflyfn"
                        affine.for %arg2 = 0 to 8192 {
                          %217 = arith.index_cast %208 : i2 to index
                          %218 = arith.index_cast %209 : i7 to index
                          %219 = memref.load %32[%217, %218, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %220 = hcl.get_bit(%196 : i32, %arg2) -> i1
                          %221 = arith.index_cast %214 : i2 to index
                          %222 = arith.index_cast %215 : i7 to index
                          %223 = memref.load %32[%221, %222, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %224 = memref.alloc() {name = "b"} : memref<1xi1>
                          affine.store %220, %224[0] {to = "b"} : memref<1xi1>
                          %225 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                          affine.store %223, %225[0] {to = "w", unsigned} : memref<1xi32>
                          %226 = memref.alloc() {name = "q"} : memref<1xi32>
                          affine.store %197, %226[0] {to = "q"} : memref<1xi32>
                          %227 = affine.load %226[0] {from = "q"} : memref<1xi32>
                          %c65535_i32 = arith.constant 65535 : i32
                          %228 = affine.load %225[0] {from = "w", unsigned} : memref<1xi32>
                          %229 = affine.load %224[0] {from = "b"} : memref<1xi1>
                          %230 = arith.extui %229 {unsigned} : i1 to i32
                          %231 = arith.muli %228, %230 {unsigned} : i32
                          %232 = arith.subi %c0_i32_0, %231 {unsigned} : i32
                          %233 = arith.andi %232, %c65535_i32 {unsigned} : i32
                          %234 = arith.muli %233, %227 : i32
                          %235 = arith.addi %231, %234 : i32
                          %236 = arith.shrui %235, %c16_i32 : i32
                          %237 = arith.subi %c0_i32_0, %236 : i32
                          %238 = arith.andi %237, %c65535_i32 : i32
                          %239 = arith.muli %238, %227 : i32
                          %240 = arith.addi %236, %239 : i32
                          %241 = arith.shrui %240, %c16_i32 : i32
                          %242 = arith.cmpi slt, %241, %227 : i32
                          %243 = arith.subi %241, %227 : i32
                          %244 = arith.select %242, %241, %243 : i32
                          %245 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                          affine.store %244, %245[0] {to = "mont_redc", unsigned} : memref<1xi32>
                          %246 = affine.load %245[0] {from = "mont_redc", unsigned} : memref<1xi32>
                          %247 = arith.addi %219, %246 {unsigned} : i32
                          %248 = arith.remsi %247, %197 : i32
                          %249 = arith.index_cast %202 : i2 to index
                          %250 = arith.index_cast %203 : i7 to index
                          memref.store %248, %32[%249, %250, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        } {loop_name = "i", op_name = "bflyfn"}
                      } else {
                        %184 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                        %185 = arith.extui %184 : i16 to i32
                        %c5_i32 = arith.constant 5 : i32
                        %186 = arith.cmpi eq, %185, %c5_i32 : i32
                        scf.if %186 {
                          %187 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                          %188 = memref.alloc() : memref<1xi9>
                          %189 = memref.alloc() : memref<1xi9>
                          %190 = memref.alloc() : memref<1xi9>
                          %191 = memref.alloc() : memref<1xi9>
                          %192 = memref.alloc() : memref<1xi11>
                          %193 = memref.alloc() : memref<1xi32>
                          %c5_5 = arith.constant 5 : index
                          %c0_6 = arith.constant 0 : index
                          %c14 = arith.constant 14 : index
                          %c6_7 = arith.constant 6 : index
                          %194 = hcl.get_slice(%187 : i128, %c14, %c6_7) -> i9
                          %c23 = arith.constant 23 : index
                          %c15_8 = arith.constant 15 : index
                          %195 = hcl.get_slice(%187 : i128, %c23, %c15_8) -> i9
                          %c32 = arith.constant 32 : index
                          %c24_9 = arith.constant 24 : index
                          %196 = hcl.get_slice(%187 : i128, %c32, %c24_9) -> i9
                          %c41 = arith.constant 41 : index
                          %c33_10 = arith.constant 33 : index
                          %197 = hcl.get_slice(%187 : i128, %c41, %c33_10) -> i9
                          %c52 = arith.constant 52 : index
                          %c42 = arith.constant 42 : index
                          %198 = hcl.get_slice(%187 : i128, %c52, %c42) -> i11
                          %c95_11 = arith.constant 95 : index
                          %c53 = arith.constant 53 : index
                          %c127_12 = arith.constant 127 : index
                          %c96_13 = arith.constant 96 : index
                          %199 = hcl.get_slice(%187 : i128, %c127_12, %c96_13) -> i32
                          affine.store %194, %188[0] : memref<1xi9>
                          affine.store %195, %189[0] : memref<1xi9>
                          affine.store %196, %190[0] : memref<1xi9>
                          affine.store %197, %191[0] : memref<1xi9>
                          affine.store %198, %192[0] : memref<1xi11>
                          affine.store %199, %193[0] : memref<1xi32>
                          hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                          %200 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                          hcl.print(%200) {format = "ip=%d ", signedness = "u"} : i5
                          %201 = affine.load %188[0] : memref<1xi9>
                          %202 = affine.load %189[0] : memref<1xi9>
                          %203 = affine.load %190[0] : memref<1xi9>
                          %204 = affine.load %191[0] : memref<1xi9>
                          %205 = affine.load %192[0] : memref<1xi11>
                          %206 = affine.load %193[0] : memref<1xi32>
                          hcl.print(%201, %202, %203, %204, %205, %206) {format = "ntt top=0x%x bot=0x%x a=0x%x b=0x%x twidx=0x%x q=0x%x", signedness = "______"} : i9, i9, i9, i9, i11, i32
                          hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                          %207 = affine.load %39[0] {from = "flag_ntt", unsigned} : memref<1xi1>
                          %c6_14 = arith.constant 6 : index
                          %c0_15 = arith.constant 0 : index
                          %c8 = arith.constant 8 : index
                          %c7_16 = arith.constant 7 : index
                          %c6_17 = arith.constant 6 : index
                          %c0_18 = arith.constant 0 : index
                          %c8_19 = arith.constant 8 : index
                          %c7_20 = arith.constant 7 : index
                          %c6_21 = arith.constant 6 : index
                          %c0_22 = arith.constant 0 : index
                          %c8_23 = arith.constant 8 : index
                          %c7_24 = arith.constant 7 : index
                          %c6_25 = arith.constant 6 : index
                          %c0_26 = arith.constant 0 : index
                          %c8_27 = arith.constant 8 : index
                          %c7_28 = arith.constant 7 : index
                          %208 = memref.alloc() : memref<1xi7>
                          %209 = memref.alloc() : memref<1xi2>
                          %c6_29 = arith.constant 6 : index
                          %c0_30 = arith.constant 0 : index
                          %210 = hcl.get_slice(%203 : i9, %c6_29, %c0_30) -> i7
                          %c8_31 = arith.constant 8 : index
                          %c7_32 = arith.constant 7 : index
                          %211 = hcl.get_slice(%203 : i9, %c8_31, %c7_32) -> i2
                          affine.store %210, %208[0] : memref<1xi7>
                          affine.store %211, %209[0] : memref<1xi2>
                          %212 = affine.load %209[0] : memref<1xi2>
                          %213 = affine.load %208[0] : memref<1xi7>
                          %214 = memref.alloc() : memref<1xi7>
                          %215 = memref.alloc() : memref<1xi2>
                          %c6_33 = arith.constant 6 : index
                          %c0_34 = arith.constant 0 : index
                          %216 = hcl.get_slice(%204 : i9, %c6_33, %c0_34) -> i7
                          %c8_35 = arith.constant 8 : index
                          %c7_36 = arith.constant 7 : index
                          %217 = hcl.get_slice(%204 : i9, %c8_35, %c7_36) -> i2
                          affine.store %216, %214[0] : memref<1xi7>
                          affine.store %217, %215[0] : memref<1xi2>
                          %218 = affine.load %215[0] : memref<1xi2>
                          %219 = affine.load %214[0] : memref<1xi7>
                          %c8192_i32 = arith.constant 8192 : i32
                          %220 = arith.extsi %205 : i11 to i32
                          %221 = arith.muli %220, %c8192_i32 : i32
                          %222 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                          %c8192_i32_37 = arith.constant {unsigned} 8192 : i32
                          affine.store %c8192_i32_37, %222[0] {to = "count", unsigned} : memref<1xi32>
                          %223 = affine.load %222[0] {from = "count", unsigned} : memref<1xi32>
                          %224 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                          affine.store %221, %224[0] {to = "src_addr"} : memref<1xi32>
                          %225 = affine.load %224[0] {from = "src_addr"} : memref<1xi32>
                          %226 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                          affine.store %c0_i32, %226[0] {to = "dst_addr", unsigned} : memref<1xi32>
                          %227 = affine.load %226[0] {from = "dst_addr", unsigned} : memref<1xi32>
                          %228 = hcl.create_op_handle "copyN"
                          %229 = arith.index_cast %c0_i32_0 : i32 to index
                          %230 = arith.index_cast %223 : i32 to index
                          %231 = arith.index_cast %c1_i32_2 : i32 to index
                          scf.for %arg2 = %229 to %230 step %231 {
                            %235 = arith.index_cast %225 : i32 to index
                            %236 = arith.addi %235, %arg2 : index
                            %237 = memref.load %36[%236] {from = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
                            %238 = arith.index_cast %227 : i32 to index
                            %239 = arith.addi %238, %arg2 : index
                            memref.store %237, %54[%239] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "copyN"}
                          %232 = hcl.create_op_handle "ntt_in_swizzle"
                          affine.for %arg2 = 0 to 128 {
                            %c64_i32 = arith.constant 64 : i32
                            %235 = arith.index_cast %c64_i32 : i32 to index
                            %236 = arith.muli %arg2, %235 : index
                            %237 = hcl.create_op_handle "nttin_even_odd_arf"
                            affine.for %arg3 = 0 to 32 {
                              %239 = arith.index_cast %c2_i32 : i32 to index
                              %240 = arith.muli %239, %arg3 : index
                              %241 = arith.addi %236, %240 : index
                              %242 = arith.index_cast %212 : i2 to index
                              %243 = arith.index_cast %213 : i7 to index
                              %244 = memref.load %32[%242, %243, %241] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %245 = arith.addi %236, %229 : index
                              %246 = arith.addi %245, %arg3 : index
                              %247 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              %248 = arith.index_cast %246 {unsigned} : index to i32
                              affine.store %248, %247[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %249 = affine.load %247[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %250 = arith.index_cast %249 : i32 to index
                              memref.store %244, %52[%250] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %251 = arith.addi %241, %231 : index
                              %252 = memref.load %32[%242, %243, %251] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %253 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %248, %253[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %254 = affine.load %253[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %255 = arith.index_cast %254 : i32 to index
                              memref.store %252, %53[%255] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
                            %238 = hcl.create_op_handle "nttin_even_odd_brf"
                            affine.for %arg3 = 0 to 32 {
                              %239 = arith.index_cast %c2_i32 : i32 to index
                              %240 = arith.muli %239, %arg3 : index
                              %241 = arith.addi %236, %240 : index
                              %242 = arith.index_cast %218 : i2 to index
                              %243 = arith.index_cast %219 : i7 to index
                              %244 = memref.load %32[%242, %243, %241] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %c32_i32 = arith.constant 32 : i32
                              %245 = arith.index_cast %c32_i32 : i32 to index
                              %246 = arith.addi %236, %245 : index
                              %247 = arith.addi %246, %arg3 : index
                              %248 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              %249 = arith.index_cast %247 {unsigned} : index to i32
                              affine.store %249, %248[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %250 = affine.load %248[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %251 = arith.index_cast %250 : i32 to index
                              memref.store %244, %52[%251] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %252 = arith.addi %241, %231 : index
                              %253 = memref.load %32[%242, %243, %252] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %254 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %249, %254[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %255 = affine.load %254[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %256 = arith.index_cast %255 : i32 to index
                              memref.store %253, %53[%256] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
                          } {loop_name = "i", op_name = "ntt_in_swizzle"}
                          %233 = hcl.create_op_handle "bflyfn"
                          affine.for %arg2 = 0 to 8192 {
                            %235 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            %236 = arith.index_cast %arg2 {unsigned} : index to i32
                            affine.store %236, %235[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %237 = affine.load %235[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %238 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %239 = hcl.create_op_handle "Mem.read_c"
                            %240 = affine.load %235[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %241 = arith.index_cast %240 : i32 to index
                            %242 = arith.addi %241, %c0 : index
                            %243 = memref.load %52[%242] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %243, %238[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %244 = affine.load %238[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %245 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            affine.store %236, %245[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %246 = affine.load %245[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %247 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %248 = hcl.create_op_handle "Mem.read_c"
                            %249 = affine.load %245[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %250 = arith.index_cast %249 : i32 to index
                            %251 = arith.addi %250, %c0 : index
                            %252 = memref.load %53[%251] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %252, %247[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %253 = affine.load %247[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %254 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            affine.store %236, %254[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %255 = affine.load %254[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %256 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %257 = hcl.create_op_handle "Mem.read_c"
                            %258 = affine.load %254[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %259 = arith.index_cast %258 : i32 to index
                            %260 = arith.addi %259, %c0 : index
                            %261 = memref.load %54[%260] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %261, %256[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %262 = affine.load %256[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %263 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                            affine.store %253, %263[0] {to = "b", unsigned} : memref<1xi32>
                            %264 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                            affine.store %262, %264[0] {to = "w", unsigned} : memref<1xi32>
                            %265 = memref.alloc() {name = "q"} : memref<1xi32>
                            affine.store %206, %265[0] {to = "q"} : memref<1xi32>
                            %266 = affine.load %265[0] {from = "q"} : memref<1xi32>
                            %c65535_i32 = arith.constant 65535 : i32
                            %267 = affine.load %264[0] {from = "w", unsigned} : memref<1xi32>
                            %268 = affine.load %263[0] {from = "b", unsigned} : memref<1xi32>
                            %269 = arith.muli %267, %268 {unsigned} : i32
                            %270 = arith.subi %c0_i32_0, %269 {unsigned} : i32
                            %271 = arith.andi %270, %c65535_i32 {unsigned} : i32
                            %272 = arith.muli %271, %266 : i32
                            %273 = arith.addi %269, %272 : i32
                            %274 = arith.shrui %273, %c16_i32 : i32
                            %275 = arith.subi %c0_i32_0, %274 : i32
                            %276 = arith.andi %275, %c65535_i32 : i32
                            %277 = arith.muli %276, %266 : i32
                            %278 = arith.addi %274, %277 : i32
                            %279 = arith.shrui %278, %c16_i32 : i32
                            %280 = arith.cmpi slt, %279, %266 : i32
                            %281 = arith.subi %279, %266 : i32
                            %282 = arith.select %280, %279, %281 : i32
                            %283 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                            affine.store %282, %283[0] {to = "mont_redc", unsigned} : memref<1xi32>
                            %284 = affine.load %283[0] {from = "mont_redc", unsigned} : memref<1xi32>
                            %285 = arith.addi %244, %284 {unsigned} : i32
                            %286 = arith.remsi %285, %206 : i32
                            %287 = arith.addi %206, %244 {unsigned} : i32
                            %288 = arith.subi %287, %284 {unsigned} : i32
                            %289 = arith.remsi %288, %206 : i32
                            %290 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                            affine.store %236, %290[0] {to = "write_addr", unsigned} : memref<1xi32>
                            %291 = affine.load %290[0] {from = "write_addr", unsigned} : memref<1xi32>
                            %292 = arith.index_cast %291 : i32 to index
                            memref.store %286, %46[%292] {to = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                            %293 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                            affine.store %236, %293[0] {to = "write_addr", unsigned} : memref<1xi32>
                            %294 = affine.load %293[0] {from = "write_addr", unsigned} : memref<1xi32>
                            %295 = arith.index_cast %294 : i32 to index
                            memref.store %289, %47[%295] {to = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "bflyfn"}
                          affine.store %201, %41[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                          affine.store %202, %42[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                          %234 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                          affine.store %234, %39[0] {to = "flag_ntt", unsigned} : memref<1xi1>
                        } else {
                          %187 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                          %188 = arith.extui %187 : i16 to i32
                          %c6_i32 = arith.constant 6 : i32
                          %189 = arith.cmpi eq, %188, %c6_i32 : i32
                          scf.if %189 {
                            %190 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                            %191 = memref.alloc() : memref<1xi9>
                            %192 = memref.alloc() : memref<1xi9>
                            %193 = memref.alloc() : memref<1xi9>
                            %194 = memref.alloc() : memref<1xi9>
                            %195 = memref.alloc() : memref<1xi11>
                            %196 = memref.alloc() : memref<1xi32>
                            %c5_5 = arith.constant 5 : index
                            %c0_6 = arith.constant 0 : index
                            %c14 = arith.constant 14 : index
                            %c6_7 = arith.constant 6 : index
                            %197 = hcl.get_slice(%190 : i128, %c14, %c6_7) -> i9
                            %c23 = arith.constant 23 : index
                            %c15_8 = arith.constant 15 : index
                            %198 = hcl.get_slice(%190 : i128, %c23, %c15_8) -> i9
                            %c32 = arith.constant 32 : index
                            %c24_9 = arith.constant 24 : index
                            %199 = hcl.get_slice(%190 : i128, %c32, %c24_9) -> i9
                            %c41 = arith.constant 41 : index
                            %c33_10 = arith.constant 33 : index
                            %200 = hcl.get_slice(%190 : i128, %c41, %c33_10) -> i9
                            %c52 = arith.constant 52 : index
                            %c42 = arith.constant 42 : index
                            %201 = hcl.get_slice(%190 : i128, %c52, %c42) -> i11
                            %c95_11 = arith.constant 95 : index
                            %c53 = arith.constant 53 : index
                            %c127_12 = arith.constant 127 : index
                            %c96_13 = arith.constant 96 : index
                            %202 = hcl.get_slice(%190 : i128, %c127_12, %c96_13) -> i32
                            affine.store %197, %191[0] : memref<1xi9>
                            affine.store %198, %192[0] : memref<1xi9>
                            affine.store %199, %193[0] : memref<1xi9>
                            affine.store %200, %194[0] : memref<1xi9>
                            affine.store %201, %195[0] : memref<1xi11>
                            affine.store %202, %196[0] : memref<1xi32>
                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                            %203 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                            hcl.print(%203) {format = "ip=%d ", signedness = "u"} : i5
                            %204 = affine.load %191[0] : memref<1xi9>
                            %205 = affine.load %192[0] : memref<1xi9>
                            %206 = affine.load %193[0] : memref<1xi9>
                            %207 = affine.load %194[0] : memref<1xi9>
                            %208 = affine.load %195[0] : memref<1xi11>
                            %209 = affine.load %196[0] : memref<1xi32>
                            hcl.print(%204, %205, %206, %207, %208, %209) {format = "intt top=0x%x bot=0x%x a=0x%x b=0x%x twidx=0x%x q=0x%x", signedness = "______"} : i9, i9, i9, i9, i11, i32
                            hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                            %210 = affine.load %40[0] {from = "flag_intt", unsigned} : memref<1xi1>
                            %c6_14 = arith.constant 6 : index
                            %c0_15 = arith.constant 0 : index
                            %c8 = arith.constant 8 : index
                            %c7_16 = arith.constant 7 : index
                            %c6_17 = arith.constant 6 : index
                            %c0_18 = arith.constant 0 : index
                            %c8_19 = arith.constant 8 : index
                            %c7_20 = arith.constant 7 : index
                            %c6_21 = arith.constant 6 : index
                            %c0_22 = arith.constant 0 : index
                            %c8_23 = arith.constant 8 : index
                            %c7_24 = arith.constant 7 : index
                            %c6_25 = arith.constant 6 : index
                            %c0_26 = arith.constant 0 : index
                            %c8_27 = arith.constant 8 : index
                            %c7_28 = arith.constant 7 : index
                            %211 = memref.alloc() : memref<1xi7>
                            %212 = memref.alloc() : memref<1xi2>
                            %c6_29 = arith.constant 6 : index
                            %c0_30 = arith.constant 0 : index
                            %213 = hcl.get_slice(%206 : i9, %c6_29, %c0_30) -> i7
                            %c8_31 = arith.constant 8 : index
                            %c7_32 = arith.constant 7 : index
                            %214 = hcl.get_slice(%206 : i9, %c8_31, %c7_32) -> i2
                            affine.store %213, %211[0] : memref<1xi7>
                            affine.store %214, %212[0] : memref<1xi2>
                            %215 = affine.load %212[0] : memref<1xi2>
                            %216 = affine.load %211[0] : memref<1xi7>
                            %217 = memref.alloc() : memref<1xi7>
                            %218 = memref.alloc() : memref<1xi2>
                            %c6_33 = arith.constant 6 : index
                            %c0_34 = arith.constant 0 : index
                            %219 = hcl.get_slice(%207 : i9, %c6_33, %c0_34) -> i7
                            %c8_35 = arith.constant 8 : index
                            %c7_36 = arith.constant 7 : index
                            %220 = hcl.get_slice(%207 : i9, %c8_35, %c7_36) -> i2
                            affine.store %219, %217[0] : memref<1xi7>
                            affine.store %220, %218[0] : memref<1xi2>
                            %221 = affine.load %218[0] : memref<1xi2>
                            %222 = affine.load %217[0] : memref<1xi7>
                            %c8192_i32 = arith.constant 8192 : i32
                            %223 = arith.extsi %208 : i11 to i32
                            %224 = arith.muli %223, %c8192_i32 : i32
                            %225 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                            %c8192_i32_37 = arith.constant {unsigned} 8192 : i32
                            affine.store %c8192_i32_37, %225[0] {to = "count", unsigned} : memref<1xi32>
                            %226 = affine.load %225[0] {from = "count", unsigned} : memref<1xi32>
                            %227 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                            affine.store %224, %227[0] {to = "src_addr"} : memref<1xi32>
                            %228 = affine.load %227[0] {from = "src_addr"} : memref<1xi32>
                            %229 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                            affine.store %c0_i32, %229[0] {to = "dst_addr", unsigned} : memref<1xi32>
                            %230 = affine.load %229[0] {from = "dst_addr", unsigned} : memref<1xi32>
                            %231 = hcl.create_op_handle "copyN"
                            %232 = arith.index_cast %c0_i32_0 : i32 to index
                            %233 = arith.index_cast %226 : i32 to index
                            %234 = arith.index_cast %c1_i32_2 : i32 to index
                            scf.for %arg2 = %232 to %233 step %234 {
                              %239 = arith.index_cast %228 : i32 to index
                              %240 = arith.addi %239, %arg2 : index
                              %241 = memref.load %37[%240] {from = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
                              %242 = arith.index_cast %230 : i32 to index
                              %243 = arith.addi %242, %arg2 : index
                              memref.store %241, %54[%243] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "copyN"}
                            %235 = hcl.create_op_handle "intt_in_swizzle_a"
                            affine.for %arg2 = 0 to 64 {
                              %c64_i32 = arith.constant 64 : i32
                              %239 = arith.index_cast %c64_i32 : i32 to index
                              %240 = arith.muli %arg2, %239 : index
                              %c128_i32 = arith.constant 128 : i32
                              %241 = arith.index_cast %c128_i32 : i32 to index
                              %242 = arith.muli %arg2, %241 : index
                              %243 = hcl.create_op_handle "ain64"
                              affine.for %arg3 = 0 to 64 {
                                %245 = arith.addi %232, %240 : index
                                %246 = arith.addi %245, %arg3 : index
                                %247 = arith.index_cast %215 : i2 to index
                                %248 = arith.index_cast %216 : i7 to index
                                %249 = memref.load %32[%247, %248, %246] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %250 = arith.addi %242, %arg3 : index
                                %251 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %252 = arith.index_cast %250 {unsigned} : index to i32
                                affine.store %252, %251[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %253 = affine.load %251[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %254 = arith.index_cast %253 : i32 to index
                                memref.store %249, %52[%254] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              %244 = hcl.create_op_handle "bin64"
                              affine.for %arg3 = 0 to 64 {
                                %245 = arith.addi %242, %239 : index
                                %246 = arith.addi %232, %240 : index
                                %247 = arith.addi %246, %arg3 : index
                                %248 = arith.index_cast %221 : i2 to index
                                %249 = arith.index_cast %222 : i7 to index
                                %250 = memref.load %32[%248, %249, %247] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %251 = arith.addi %245, %arg3 : index
                                %252 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %253 = arith.index_cast %251 {unsigned} : index to i32
                                affine.store %253, %252[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %254 = affine.load %252[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %255 = arith.index_cast %254 : i32 to index
                                memref.store %250, %52[%255] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_a"}
                            %236 = hcl.create_op_handle "intt_in_swizzle_b"
                            affine.for %arg2 = 0 to 64 {
                              %c64_i32 = arith.constant 64 : i32
                              %239 = arith.index_cast %c64_i32 : i32 to index
                              %240 = arith.muli %arg2, %239 : index
                              %c128_i32 = arith.constant 128 : i32
                              %241 = arith.index_cast %c128_i32 : i32 to index
                              %242 = arith.muli %arg2, %241 : index
                              %243 = hcl.create_op_handle "ain64"
                              affine.for %arg3 = 0 to 64 {
                                %c4096_i32 = arith.constant 4096 : i32
                                %245 = arith.index_cast %c4096_i32 : i32 to index
                                %246 = arith.addi %245, %240 : index
                                %247 = arith.addi %246, %arg3 : index
                                %248 = arith.index_cast %215 : i2 to index
                                %249 = arith.index_cast %216 : i7 to index
                                %250 = memref.load %32[%248, %249, %247] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %251 = arith.addi %242, %arg3 : index
                                %252 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %253 = arith.index_cast %251 {unsigned} : index to i32
                                affine.store %253, %252[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %254 = affine.load %252[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %255 = arith.index_cast %254 : i32 to index
                                memref.store %250, %53[%255] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              %244 = hcl.create_op_handle "bin64"
                              affine.for %arg3 = 0 to 64 {
                                %245 = arith.addi %242, %239 : index
                                %c4096_i32 = arith.constant 4096 : i32
                                %246 = arith.index_cast %c4096_i32 : i32 to index
                                %247 = arith.addi %246, %240 : index
                                %248 = arith.addi %247, %arg3 : index
                                %249 = arith.index_cast %221 : i2 to index
                                %250 = arith.index_cast %222 : i7 to index
                                %251 = memref.load %32[%249, %250, %248] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %252 = arith.addi %245, %arg3 : index
                                %253 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %254 = arith.index_cast %252 {unsigned} : index to i32
                                affine.store %254, %253[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %255 = affine.load %253[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %256 = arith.index_cast %255 : i32 to index
                                memref.store %251, %53[%256] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_b"}
                            %237 = hcl.create_op_handle "bflyfn"
                            affine.for %arg2 = 0 to 8192 {
                              %239 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              %240 = arith.index_cast %arg2 {unsigned} : index to i32
                              affine.store %240, %239[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %241 = affine.load %239[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %242 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %243 = hcl.create_op_handle "Mem.read_c"
                              %244 = affine.load %239[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %245 = arith.index_cast %244 : i32 to index
                              %246 = arith.addi %245, %c0 : index
                              %247 = memref.load %52[%246] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %247, %242[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %248 = affine.load %242[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %249 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              affine.store %240, %249[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %250 = affine.load %249[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %251 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %252 = hcl.create_op_handle "Mem.read_c"
                              %253 = affine.load %249[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %254 = arith.index_cast %253 : i32 to index
                              %255 = arith.addi %254, %c0 : index
                              %256 = memref.load %53[%255] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %256, %251[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %257 = affine.load %251[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %258 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              affine.store %240, %258[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %259 = affine.load %258[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %260 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %261 = hcl.create_op_handle "Mem.read_c"
                              %262 = affine.load %258[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %263 = arith.index_cast %262 : i32 to index
                              %264 = arith.addi %263, %c0 : index
                              %265 = memref.load %54[%264] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %265, %260[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %266 = affine.load %260[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %267 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                              affine.store %257, %267[0] {to = "b", unsigned} : memref<1xi32>
                              %268 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                              affine.store %266, %268[0] {to = "w", unsigned} : memref<1xi32>
                              %269 = memref.alloc() {name = "q"} : memref<1xi32>
                              affine.store %209, %269[0] {to = "q"} : memref<1xi32>
                              %270 = affine.load %269[0] {from = "q"} : memref<1xi32>
                              %c65535_i32 = arith.constant 65535 : i32
                              %271 = affine.load %268[0] {from = "w", unsigned} : memref<1xi32>
                              %272 = affine.load %267[0] {from = "b", unsigned} : memref<1xi32>
                              %273 = arith.muli %271, %272 {unsigned} : i32
                              %274 = arith.subi %c0_i32_0, %273 {unsigned} : i32
                              %275 = arith.andi %274, %c65535_i32 {unsigned} : i32
                              %276 = arith.muli %275, %270 : i32
                              %277 = arith.addi %273, %276 : i32
                              %278 = arith.shrui %277, %c16_i32 : i32
                              %279 = arith.subi %c0_i32_0, %278 : i32
                              %280 = arith.andi %279, %c65535_i32 : i32
                              %281 = arith.muli %280, %270 : i32
                              %282 = arith.addi %278, %281 : i32
                              %283 = arith.shrui %282, %c16_i32 : i32
                              %284 = arith.cmpi slt, %283, %270 : i32
                              %285 = arith.subi %283, %270 : i32
                              %286 = arith.select %284, %283, %285 : i32
                              %287 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                              affine.store %286, %287[0] {to = "mont_redc", unsigned} : memref<1xi32>
                              %288 = affine.load %287[0] {from = "mont_redc", unsigned} : memref<1xi32>
                              %289 = arith.addi %248, %288 {unsigned} : i32
                              %290 = arith.remsi %289, %209 : i32
                              %291 = arith.addi %209, %248 {unsigned} : i32
                              %292 = arith.subi %291, %288 {unsigned} : i32
                              %293 = arith.remsi %292, %209 : i32
                              %294 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %240, %294[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %295 = affine.load %294[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %296 = arith.index_cast %295 : i32 to index
                              memref.store %290, %50[%296] {to = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                              %297 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %240, %297[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %298 = affine.load %297[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %299 = arith.index_cast %298 : i32 to index
                              memref.store %293, %51[%299] {to = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "bflyfn"}
                            affine.store %204, %41[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                            affine.store %205, %42[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                            %238 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                            affine.store %238, %40[0] {to = "flag_intt", unsigned} : memref<1xi1>
                          } else {
                            %190 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                            %191 = arith.extui %190 : i16 to i32
                            %c7_i32 = arith.constant 7 : i32
                            %192 = arith.cmpi eq, %191, %c7_i32 : i32
                            scf.if %192 {
                              %193 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                              %194 = memref.alloc() : memref<1xi9>
                              %195 = memref.alloc() : memref<1xi9>
                              %196 = memref.alloc() : memref<1xi9>
                              %197 = memref.alloc() : memref<1xi32>
                              %c5_5 = arith.constant 5 : index
                              %c0_6 = arith.constant 0 : index
                              %c6_7 = arith.constant 6 : index
                              %c6_8 = arith.constant 6 : index
                              %c15_9 = arith.constant 15 : index
                              %c7_10 = arith.constant 7 : index
                              %198 = hcl.get_slice(%193 : i128, %c15_9, %c7_10) -> i9
                              %c24_11 = arith.constant 24 : index
                              %c16_12 = arith.constant 16 : index
                              %199 = hcl.get_slice(%193 : i128, %c24_11, %c16_12) -> i9
                              %c33_13 = arith.constant 33 : index
                              %c25_14 = arith.constant 25 : index
                              %200 = hcl.get_slice(%193 : i128, %c33_13, %c25_14) -> i9
                              %c95_15 = arith.constant 95 : index
                              %c34_16 = arith.constant 34 : index
                              %c127_17 = arith.constant 127 : index
                              %c96_18 = arith.constant 96 : index
                              %201 = hcl.get_slice(%193 : i128, %c127_17, %c96_18) -> i32
                              affine.store %198, %194[0] : memref<1xi9>
                              affine.store %199, %195[0] : memref<1xi9>
                              affine.store %200, %196[0] : memref<1xi9>
                              affine.store %201, %197[0] : memref<1xi32>
                              hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                              %202 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                              hcl.print(%202) {format = "ip=%d ", signedness = "u"} : i5
                              %203 = affine.load %194[0] : memref<1xi9>
                              %204 = affine.load %195[0] : memref<1xi9>
                              %205 = affine.load %196[0] : memref<1xi9>
                              %206 = affine.load %197[0] : memref<1xi32>
                              hcl.print(%203, %204, %205, %206) {format = "psub res=0x%x a=0x%x b=0x%x q=0x%x", signedness = "____"} : i9, i9, i9, i32
                              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                              %c6_19 = arith.constant 6 : index
                              %c0_20 = arith.constant 0 : index
                              %c8 = arith.constant 8 : index
                              %c7_21 = arith.constant 7 : index
                              %c6_22 = arith.constant 6 : index
                              %c0_23 = arith.constant 0 : index
                              %c8_24 = arith.constant 8 : index
                              %c7_25 = arith.constant 7 : index
                              %207 = memref.alloc() : memref<1xi7>
                              %208 = memref.alloc() : memref<1xi2>
                              %c6_26 = arith.constant 6 : index
                              %c0_27 = arith.constant 0 : index
                              %209 = hcl.get_slice(%203 : i9, %c6_26, %c0_27) -> i7
                              %c8_28 = arith.constant 8 : index
                              %c7_29 = arith.constant 7 : index
                              %210 = hcl.get_slice(%203 : i9, %c8_28, %c7_29) -> i2
                              affine.store %209, %207[0] : memref<1xi7>
                              affine.store %210, %208[0] : memref<1xi2>
                              %211 = affine.load %208[0] : memref<1xi2>
                              %212 = affine.load %207[0] : memref<1xi7>
                              %213 = memref.alloc() : memref<1xi7>
                              %214 = memref.alloc() : memref<1xi2>
                              %c6_30 = arith.constant 6 : index
                              %c0_31 = arith.constant 0 : index
                              %215 = hcl.get_slice(%204 : i9, %c6_30, %c0_31) -> i7
                              %c8_32 = arith.constant 8 : index
                              %c7_33 = arith.constant 7 : index
                              %216 = hcl.get_slice(%204 : i9, %c8_32, %c7_33) -> i2
                              affine.store %215, %213[0] : memref<1xi7>
                              affine.store %216, %214[0] : memref<1xi2>
                              %217 = affine.load %214[0] : memref<1xi2>
                              %218 = affine.load %213[0] : memref<1xi7>
                              %219 = memref.alloc() : memref<1xi7>
                              %220 = memref.alloc() : memref<1xi2>
                              %c6_34 = arith.constant 6 : index
                              %c0_35 = arith.constant 0 : index
                              %221 = hcl.get_slice(%205 : i9, %c6_34, %c0_35) -> i7
                              %c8_36 = arith.constant 8 : index
                              %c7_37 = arith.constant 7 : index
                              %222 = hcl.get_slice(%205 : i9, %c8_36, %c7_37) -> i2
                              affine.store %221, %219[0] : memref<1xi7>
                              affine.store %222, %220[0] : memref<1xi2>
                              %223 = affine.load %220[0] : memref<1xi2>
                              %224 = affine.load %219[0] : memref<1xi7>
                              %225 = hcl.create_op_handle "bflyfn"
                              affine.for %arg2 = 0 to 8192 {
                                %226 = arith.index_cast %217 : i2 to index
                                %227 = arith.index_cast %218 : i7 to index
                                %228 = memref.load %32[%226, %227, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %229 = arith.index_cast %223 : i2 to index
                                %230 = arith.index_cast %224 : i7 to index
                                %231 = memref.load %32[%229, %230, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %232 = arith.addi %206, %228 {unsigned} : i32
                                %233 = arith.subi %232, %231 {unsigned} : i32
                                %234 = arith.remsi %233, %206 : i32
                                %235 = arith.index_cast %211 : i2 to index
                                %236 = arith.index_cast %212 : i7 to index
                                memref.store %234, %32[%235, %236, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              } {loop_name = "i", op_name = "bflyfn"}
                            } else {
                              %193 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                              %194 = arith.extui %193 : i16 to i32
                              %c8_i32 = arith.constant 8 : i32
                              %195 = arith.cmpi eq, %194, %c8_i32 : i32
                              scf.if %195 {
                                %196 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                %197 = memref.alloc() : memref<1xi7>
                                %c5_5 = arith.constant 5 : index
                                %c0_6 = arith.constant 0 : index
                                %c12 = arith.constant 12 : index
                                %c6_7 = arith.constant 6 : index
                                %198 = hcl.get_slice(%196 : i128, %c12, %c6_7) -> i7
                                %c127_8 = arith.constant 127 : index
                                %c13 = arith.constant 13 : index
                                affine.store %198, %197[0] : memref<1xi7>
                                %199 = affine.load %38[0] {from = "nop_count", unsigned} : memref<1xi32>
                                %200 = affine.load %197[0] : memref<1xi7>
                                %201 = arith.extsi %200 {unsigned} : i7 to i32
                                %202 = arith.cmpi ult, %199, %201 : i32
                                scf.if %202 {
                                  %203 = affine.load %38[0] {from = "nop_count", unsigned} : memref<1xi32>
                                  %204 = arith.addi %203, %c1_i32_2 : i32
                                  affine.store %204, %38[0] {to = "nop_count", unsigned} : memref<1xi32>
                                  %205 = affine.load %66[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                  %206 = arith.addi %205, %c1_i32_2 : i32
                                  affine.store %206, %66[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                  %207 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                                  affine.store %207, %57[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                  affine.store %207, %58[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                  affine.store %207, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                                  %208 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                  %209 = arith.extui %208 : i1 to i32
                                  %210 = affine.load %58[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                  %211 = arith.extui %210 : i1 to i32
                                  %212 = arith.cmpi eq, %211, %c0_i32_0 : i32
                                  scf.if %212 {
                                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %213 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                    hcl.print(%213) {format = "ip=%d ", signedness = "u"} : i5
                                    hcl.print(%200) {format = "nop count=0x%x", signedness = "_"} : i7
                                    hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                  } else {
                                    affine.store %c0_i32_0, %38[0] {to = "nop_count", unsigned} : memref<1xi32>
                                    affine.store %207, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                                    %213 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                    %214 = arith.extui %213 : i1 to i32
                                    %215 = arith.cmpi eq, %214, %c0_i32_0 : i32
                                    scf.if %215 {
                                    } else {
                                      %217 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                                      %218 = arith.extui %217 : i16 to i32
                                      %c9_i32 = arith.constant 9 : i32
                                      %219 = arith.cmpi eq, %218, %c9_i32 : i32
                                      scf.if %219 {
                                        %220 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                        %221 = memref.alloc() : memref<1xi1>
                                        %222 = memref.alloc() : memref<1xi9>
                                        %c5_9 = arith.constant 5 : index
                                        %c0_10 = arith.constant 0 : index
                                        %c6_11 = arith.constant 6 : index
                                        %c6_12 = arith.constant 6 : index
                                        %223 = hcl.get_slice(%220 : i128, %c6_11, %c6_12) -> i1
                                        %c15_13 = arith.constant 15 : index
                                        %c7_14 = arith.constant 7 : index
                                        %224 = hcl.get_slice(%220 : i128, %c15_13, %c7_14) -> i9
                                        %c127_15 = arith.constant 127 : index
                                        %c16_16 = arith.constant 16 : index
                                        affine.store %223, %221[0] : memref<1xi1>
                                        affine.store %224, %222[0] : memref<1xi9>
                                        %225 = affine.load %18[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                        %226 = arith.extui %225 : i3 to i32
                                        %227 = arith.cmpi eq, %226, %c1_i32_2 : i32
                                        scf.if %227 {
                                          hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                          %228 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                          hcl.print(%228) {format = "ip=%d ", signedness = "u"} : i5
                                          %229 = affine.load %221[0] : memref<1xi1>
                                          %230 = affine.load %222[0] : memref<1xi9>
                                          hcl.print(%229, %230) {format = "cstore dbg=0x%x addr=0x%x", signedness = "__"} : i1, i9
                                          hcl.print(%c0_i32_0) {format = "    <got matching cfetch cstore!>\0A", signedness = "_"} : i32
                                          %231 = memref.alloc() : memref<1xi7>
                                          %232 = memref.alloc() : memref<1xi2>
                                          %c6_17 = arith.constant 6 : index
                                          %c0_18 = arith.constant 0 : index
                                          %233 = hcl.get_slice(%230 : i9, %c6_17, %c0_18) -> i7
                                          %c8 = arith.constant 8 : index
                                          %c7_19 = arith.constant 7 : index
                                          %234 = hcl.get_slice(%230 : i9, %c8, %c7_19) -> i2
                                          affine.store %233, %231[0] : memref<1xi7>
                                          affine.store %234, %232[0] : memref<1xi2>
                                          %235 = affine.load %232[0] : memref<1xi2>
                                          %236 = affine.load %231[0] : memref<1xi7>
                                          %237 = affine.load %20[0] {from = "cstore_spadaddr", unsigned} : memref<1xi48>
                                          %238 = arith.addi %237, %75 {unsigned} : i48
                                          %239 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                          %c8192_i32 = arith.constant {unsigned} 8192 : i32
                                          affine.store %c8192_i32, %239[0] {to = "count", unsigned} : memref<1xi32>
                                          %240 = affine.load %239[0] {from = "count", unsigned} : memref<1xi32>
                                          %241 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                                          affine.store %c0_i32, %241[0] {to = "src_addr", unsigned} : memref<1xi32>
                                          %242 = affine.load %241[0] {from = "src_addr", unsigned} : memref<1xi32>
                                          %243 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi48>
                                          affine.store %238, %243[0] {to = "dst_addr", unsigned} : memref<1xi48>
                                          %244 = affine.load %243[0] {from = "dst_addr", unsigned} : memref<1xi48>
                                          %245 = hcl.create_op_handle "copyN"
                                          %246 = arith.index_cast %c0_i32_0 : i32 to index
                                          %247 = arith.index_cast %240 : i32 to index
                                          %248 = arith.index_cast %c1_i32_2 : i32 to index
                                          scf.for %arg2 = %246 to %247 step %248 {
                                            %252 = arith.index_cast %242 : i32 to index
                                            %253 = arith.addi %252, %arg2 : index
                                            %254 = arith.index_cast %235 : i2 to index
                                            %255 = arith.index_cast %236 : i7 to index
                                            %256 = memref.load %32[%254, %255, %253] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                            %257 = arith.index_cast %244 : i48 to index
                                            %258 = arith.addi %257, %arg2 : index
                                            memref.store %256, %0[%258] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                          } {loop_name = "i", op_name = "copyN"}
                                          affine.store %207, %19[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                                          affine.store %207, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                                          %249 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                          %250 = arith.extui %249 : i1 to i32
                                          %251 = arith.cmpi eq, %250, %c0_i32_0 : i32
                                          scf.if %251 {
                                          } else {
                                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                            %252 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                            hcl.print(%252) {format = "ip=%d ", signedness = "u"} : i5
                                            hcl.print(%229, %230) {format = "cstore dbg=0x%x addr=0x%x", signedness = "__"} : i1, i9
                                            hcl.print(%c0_i32_0) {format = "    <no matching cfetch cstore?>\0A", signedness = "_"} : i32
                                          }
                                        } else {
                                          %228 = affine.load %144[0] {from = "inst_id", unsigned} : memref<1xi16>
                                          %229 = arith.extui %228 : i16 to i32
                                          %c10_i32 = arith.constant 10 : i32
                                          %230 = arith.cmpi eq, %229, %c10_i32 : i32
                                          scf.if %230 {
                                            %231 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                            %232 = memref.alloc() : memref<1xi1>
                                            %233 = memref.alloc() : memref<1xi9>
                                            %234 = memref.alloc() : memref<1xi9>
                                            %c5_17 = arith.constant 5 : index
                                            %c0_18 = arith.constant 0 : index
                                            %c6_19 = arith.constant 6 : index
                                            %c6_20 = arith.constant 6 : index
                                            %235 = hcl.get_slice(%231 : i128, %c6_19, %c6_20) -> i1
                                            %c15_21 = arith.constant 15 : index
                                            %c7_22 = arith.constant 7 : index
                                            %236 = hcl.get_slice(%231 : i128, %c15_21, %c7_22) -> i9
                                            %c24_23 = arith.constant 24 : index
                                            %c16_24 = arith.constant 16 : index
                                            %237 = hcl.get_slice(%231 : i128, %c24_23, %c16_24) -> i9
                                            %c127_25 = arith.constant 127 : index
                                            %c25_26 = arith.constant 25 : index
                                            affine.store %235, %232[0] : memref<1xi1>
                                            affine.store %236, %233[0] : memref<1xi9>
                                            affine.store %237, %234[0] : memref<1xi9>
                                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                            %238 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                            hcl.print(%238) {format = "ip=%d ", signedness = "u"} : i5
                                            %239 = affine.load %232[0] : memref<1xi1>
                                            %240 = affine.load %233[0] : memref<1xi9>
                                            %241 = affine.load %234[0] : memref<1xi9>
                                            hcl.print(%239, %240, %241) {format = "move dbg=0x%x res=0x%x a=0x%x", signedness = "___"} : i1, i9, i9
                                            hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                            %242 = memref.alloc() : memref<1xi7>
                                            %243 = memref.alloc() : memref<1xi2>
                                            %c6_27 = arith.constant 6 : index
                                            %c0_28 = arith.constant 0 : index
                                            %244 = hcl.get_slice(%240 : i9, %c6_27, %c0_28) -> i7
                                            %c8 = arith.constant 8 : index
                                            %c7_29 = arith.constant 7 : index
                                            %245 = hcl.get_slice(%240 : i9, %c8, %c7_29) -> i2
                                            affine.store %244, %242[0] : memref<1xi7>
                                            affine.store %245, %243[0] : memref<1xi2>
                                            %246 = affine.load %243[0] : memref<1xi2>
                                            %247 = affine.load %242[0] : memref<1xi7>
                                            %248 = memref.alloc() : memref<1xi7>
                                            %249 = memref.alloc() : memref<1xi2>
                                            %c6_30 = arith.constant 6 : index
                                            %c0_31 = arith.constant 0 : index
                                            %250 = hcl.get_slice(%241 : i9, %c6_30, %c0_31) -> i7
                                            %c8_32 = arith.constant 8 : index
                                            %c7_33 = arith.constant 7 : index
                                            %251 = hcl.get_slice(%241 : i9, %c8_32, %c7_33) -> i2
                                            affine.store %250, %248[0] : memref<1xi7>
                                            affine.store %251, %249[0] : memref<1xi2>
                                            %252 = affine.load %249[0] : memref<1xi2>
                                            %253 = affine.load %248[0] : memref<1xi7>
                                            %254 = hcl.create_op_handle "bflyfn"
                                            affine.for %arg2 = 0 to 8192 {
                                              %255 = arith.index_cast %252 : i2 to index
                                              %256 = arith.index_cast %253 : i7 to index
                                              %257 = memref.load %32[%255, %256, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                              %258 = arith.addi %257, %c0_i32_0 : i32
                                              %c4294967295_i64 = arith.constant 4294967295 : i64
                                              %259 = arith.extsi %258 : i32 to i64
                                              %260 = arith.remsi %259, %c4294967295_i64 : i64
                                              %261 = arith.extui %257 : i32 to i64
                                              %262 = arith.addi %c4294967295_i64, %261 : i64
                                              %263 = arith.extsi %c0_i32_0 : i32 to i64
                                              %264 = arith.trunci %260 {unsigned} : i64 to i32
                                              %265 = arith.index_cast %246 : i2 to index
                                              %266 = arith.index_cast %247 : i7 to index
                                              memref.store %264, %32[%265, %266, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                            } {loop_name = "i", op_name = "bflyfn"}
                                          } else {
                                            %231 = affine.load %160[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                            hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                            %c127_17 = arith.constant 127 : index
                                            %c64 = arith.constant 64 : index
                                            %232 = hcl.get_slice(%231 : i128, %c127_17, %c64) {unsigned} -> i128
                                            hcl.print(%232) {format = "%016lx", signedness = "u"} : i128
                                            %c63 = arith.constant 63 : index
                                            %233 = hcl.get_slice(%231 : i128, %c63, %c0) {unsigned} -> i128
                                            hcl.print(%233) {format = "%016lx", signedness = "u"} : i128
                                            hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                          }
                                        }
                                      }
                                    }
                                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %216 = affine.load %129[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                    hcl.print(%216) {format = "ip=%d ", signedness = "u"} : i5
                                    hcl.print(%200) {format = "nop count=0x%x", signedness = "_"} : i7
                                    hcl.print(%c0_i32_0) {format = "    <break>\0A", signedness = "_"} : i32
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              affine.store %72, %64[0] {to = "latstalled", unsigned} : memref<1xi1>
              %164 = affine.load %142[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %165 = arith.cmpi ne, %164, %c0_i32_0 : i32
              scf.if %165 {
                %172 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %172, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                %173 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %174 = arith.extui %173 : i1 to i32
              }
              %166 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %167 = arith.extui %166 : i1 to i32
              %168 = arith.cmpi eq, %167, %c0_i32_0 : i32
              scf.if %168 {
                %172 = affine.load %65[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
                %173 = arith.addi %172, %c1_i32_2 : i32
                affine.store %173, %65[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
                %174 = affine.load %62[0] {from = "inst_naddr", unsigned} : memref<1xi5>
                affine.store %174, %61[0] {to = "inst_addr", unsigned} : memref<1xi5>
                affine.store %72, %58[0] {to = "flags_stalled", unsigned} : memref<1xi1>
              }
              %169 = affine.load %116[0] {from = "addr_top", unsigned} : memref<1xi5>
              %170 = affine.load %62[0] {from = "inst_naddr", unsigned} : memref<1xi5>
              %171 = arith.cmpi eq, %169, %170 : i5
              scf.if %171 {
                %172 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %172, %60[0] {to = "addr_stop", unsigned} : memref<1xi1>
                affine.store %172, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                %173 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %174 = arith.extui %173 : i1 to i32
                %175 = arith.cmpi eq, %174, %c0_i32_0 : i32
                scf.if %175 {
                } else {
                  %176 = affine.load %142[0] {from = "inst_lat", unsigned} : memref<1xi32>
                  %c2_i32 = arith.constant 2 : i32
                  %177 = arith.subi %176, %c2_i32 : i32
                  affine.store %177, %63[0] {to = "latency_count", unsigned} : memref<1xi32>
                  %178 = affine.load %67[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                  %179 = arith.addi %178, %c1_i32_2 : i32
                  affine.store %179, %67[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                  affine.store %172, %64[0] {to = "latstalled", unsigned} : memref<1xi1>
                  affine.store %172, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                  %180 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                  %181 = arith.extui %180 : i1 to i32
                  %182 = arith.cmpi eq, %181, %c0_i32_0 : i32
                  scf.if %182 {
                  } else {
                    %183 = affine.load %64[0] {from = "latstalled", unsigned} : memref<1xi1>
                    %184 = affine.load %63[0] {from = "latency_count", unsigned} : memref<1xi32>
                    %185 = arith.subi %184, %c1_i32_2 : i32
                    affine.store %185, %63[0] {to = "latency_count", unsigned} : memref<1xi32>
                    %186 = affine.load %67[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                    %187 = arith.addi %186, %c1_i32_2 : i32
                    affine.store %187, %67[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                    affine.store %172, %64[0] {to = "latstalled", unsigned} : memref<1xi1>
                    affine.store %172, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
                    %188 = affine.load %57[0] {from = "flags_stall", unsigned} : memref<1xi1>
                    %189 = arith.extui %188 : i1 to i32
                  }
                }
              }
            }
          }
          scf.yield
        }
        %123 = affine.load %60[0] {from = "addr_stop", unsigned} : memref<1xi1>
        %124 = arith.extui %123 : i1 to i32
        %125 = arith.cmpi ne, %124, %c0_i32_0 : i32
        scf.if %125 {
          affine.store %72, %56[0] {to = "flags_active", unsigned} : memref<1xi1>
        } else {
          %126 = affine.load %55[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
          %127 = arith.extui %126 : i4 to i32
          %c1_i32_2 = arith.constant 1 : i32
          %128 = arith.cmpi eq, %127, %c1_i32_2 : i32
          scf.if %128 {
            %133 = affine.load %56[0] {from = "flags_active", unsigned} : memref<1xi1>
            affine.store %72, %56[0] {to = "flags_active", unsigned} : memref<1xi1>
            affine.store %72, %57[0] {to = "flags_stall", unsigned} : memref<1xi1>
            affine.store %72, %58[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            affine.store %72, %59[0] {to = "flags_break", unsigned} : memref<1xi1>
            affine.store %72, %60[0] {to = "addr_stop", unsigned} : memref<1xi1>
            affine.store %78, %61[0] {to = "inst_addr", unsigned} : memref<1xi5>
            affine.store %78, %62[0] {to = "inst_naddr", unsigned} : memref<1xi5>
            affine.store %c0_i32_0, %63[0] {to = "latency_count", unsigned} : memref<1xi32>
            affine.store %72, %64[0] {to = "latstalled", unsigned} : memref<1xi1>
            affine.store %78, %61[0] {to = "inst_addr", unsigned} : memref<1xi5>
            %134 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %134, %56[0] {to = "flags_active", unsigned} : memref<1xi1>
          }
          %129 = affine.load %55[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
          %130 = arith.extui %129 : i4 to i32
          %131 = arith.subi %130, %c1_i32_2 : i32
          %132 = arith.trunci %131 {unsigned} : i32 to i4
          affine.store %132, %55[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
        }
      }
      %111 = affine.load %39[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %112 = arith.extui %111 : i1 to i32
      %113 = arith.cmpi ne, %112, %c0_i32_0 : i32
      scf.if %113 {
        %116 = hcl.create_op_handle "ntt_out_swizzle_ot"
        affine.for %arg2 = 0 to 64 {
          %c64_i32 = arith.constant 64 : i32
          %118 = arith.index_cast %c64_i32 : i32 to index
          %119 = arith.muli %arg2, %118 : index
          %c128_i32 = arith.constant 128 : i32
          %120 = arith.index_cast %c128_i32 : i32 to index
          %121 = arith.muli %arg2, %120 : index
          %122 = hcl.create_op_handle "ot64"
          affine.for %arg3 = 0 to 64 {
            %124 = arith.index_cast %c0_i32_0 : i32 to index
            %125 = arith.addi %124, %119 : index
            %126 = arith.addi %121, %arg3 : index
            %127 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %128 = arith.index_cast %126 {unsigned} : index to i32
            affine.store %128, %127[0] {to = "read_addr", unsigned} : memref<1xi32>
            %129 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %130 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %131 = hcl.create_op_handle "Mem.read_c"
            %132 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
            %133 = arith.index_cast %132 : i32 to index
            %134 = arith.addi %133, %c0 : index
            %135 = memref.load %46[%134] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %135, %130[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %136 = affine.load %130[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %137 = arith.addi %125, %arg3 : index
            %138 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %139 = arith.index_cast %137 {unsigned} : index to i32
            affine.store %139, %138[0] {to = "write_addr", unsigned} : memref<1xi32>
            %140 = affine.load %138[0] {from = "write_addr", unsigned} : memref<1xi32>
            %141 = arith.index_cast %140 : i32 to index
            memref.store %136, %44[%141] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          %123 = hcl.create_op_handle "ot64"
          affine.for %arg3 = 0 to 64 {
            %124 = arith.addi %121, %118 : index
            %125 = arith.index_cast %c0_i32_0 : i32 to index
            %126 = arith.addi %125, %119 : index
            %127 = arith.addi %124, %arg3 : index
            %128 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %129 = arith.index_cast %127 {unsigned} : index to i32
            affine.store %129, %128[0] {to = "read_addr", unsigned} : memref<1xi32>
            %130 = affine.load %128[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %131 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %132 = hcl.create_op_handle "Mem.read_c"
            %133 = affine.load %128[0] {from = "read_addr", unsigned} : memref<1xi32>
            %134 = arith.index_cast %133 : i32 to index
            %135 = arith.addi %134, %c0 : index
            %136 = memref.load %46[%135] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %136, %131[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %137 = affine.load %131[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %138 = arith.addi %126, %arg3 : index
            %139 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %140 = arith.index_cast %138 {unsigned} : index to i32
            affine.store %140, %139[0] {to = "write_addr", unsigned} : memref<1xi32>
            %141 = affine.load %139[0] {from = "write_addr", unsigned} : memref<1xi32>
            %142 = arith.index_cast %141 : i32 to index
            memref.store %137, %45[%142] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ot"}
        %117 = hcl.create_op_handle "ntt_out_swizzle_ob"
        affine.for %arg2 = 0 to 64 {
          %c64_i32 = arith.constant 64 : i32
          %118 = arith.index_cast %c64_i32 : i32 to index
          %119 = arith.muli %arg2, %118 : index
          %c128_i32 = arith.constant 128 : i32
          %120 = arith.index_cast %c128_i32 : i32 to index
          %121 = arith.muli %arg2, %120 : index
          %122 = hcl.create_op_handle "ot64"
          affine.for %arg3 = 0 to 64 {
            %c4096_i32 = arith.constant 4096 : i32
            %124 = arith.index_cast %c4096_i32 : i32 to index
            %125 = arith.addi %124, %119 : index
            %126 = arith.addi %121, %arg3 : index
            %127 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %128 = arith.index_cast %126 {unsigned} : index to i32
            affine.store %128, %127[0] {to = "read_addr", unsigned} : memref<1xi32>
            %129 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %130 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %131 = hcl.create_op_handle "Mem.read_c"
            %132 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
            %133 = arith.index_cast %132 : i32 to index
            %134 = arith.addi %133, %c0 : index
            %135 = memref.load %47[%134] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %135, %130[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %136 = affine.load %130[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %137 = arith.addi %125, %arg3 : index
            %138 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %139 = arith.index_cast %137 {unsigned} : index to i32
            affine.store %139, %138[0] {to = "write_addr", unsigned} : memref<1xi32>
            %140 = affine.load %138[0] {from = "write_addr", unsigned} : memref<1xi32>
            %141 = arith.index_cast %140 : i32 to index
            memref.store %136, %44[%141] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          %123 = hcl.create_op_handle "ot64"
          affine.for %arg3 = 0 to 64 {
            %124 = arith.addi %121, %118 : index
            %c4096_i32 = arith.constant 4096 : i32
            %125 = arith.index_cast %c4096_i32 : i32 to index
            %126 = arith.addi %125, %119 : index
            %127 = arith.addi %124, %arg3 : index
            %128 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %129 = arith.index_cast %127 {unsigned} : index to i32
            affine.store %129, %128[0] {to = "read_addr", unsigned} : memref<1xi32>
            %130 = affine.load %128[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %131 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %132 = hcl.create_op_handle "Mem.read_c"
            %133 = affine.load %128[0] {from = "read_addr", unsigned} : memref<1xi32>
            %134 = arith.index_cast %133 : i32 to index
            %135 = arith.addi %134, %c0 : index
            %136 = memref.load %47[%135] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %136, %131[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %137 = affine.load %131[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %138 = arith.addi %126, %arg3 : index
            %139 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %140 = arith.index_cast %138 {unsigned} : index to i32
            affine.store %140, %139[0] {to = "write_addr", unsigned} : memref<1xi32>
            %141 = affine.load %139[0] {from = "write_addr", unsigned} : memref<1xi32>
            %142 = arith.index_cast %141 : i32 to index
            memref.store %137, %45[%142] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ob"}
      } else {
        %116 = affine.load %40[0] {from = "flag_intt", unsigned} : memref<1xi1>
        %117 = arith.extui %116 : i1 to i32
        %118 = arith.cmpi ne, %117, %c0_i32_0 : i32
        scf.if %118 {
          %119 = hcl.create_op_handle "intt_out_swizzle"
          affine.for %arg2 = 0 to 128 {
            %c64_i32 = arith.constant 64 : i32
            %120 = arith.index_cast %c64_i32 : i32 to index
            %121 = arith.muli %arg2, %120 : index
            %122 = hcl.create_op_handle "nttin_even_odd_arf"
            affine.for %arg3 = 0 to 32 {
              %124 = arith.index_cast %c0_i32_0 : i32 to index
              %125 = arith.addi %121, %124 : index
              %126 = arith.addi %125, %arg3 : index
              %127 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              %128 = arith.index_cast %126 {unsigned} : index to i32
              affine.store %128, %127[0] {to = "read_addr", unsigned} : memref<1xi32>
              %129 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
              %c1_i32_2 = arith.constant 1 : i32
              %130 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %131 = hcl.create_op_handle "Mem.read_c"
              %132 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
              %133 = arith.index_cast %132 : i32 to index
              %134 = arith.addi %133, %c0 : index
              %135 = memref.load %50[%134] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %135, %130[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %136 = affine.load %130[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %137 = arith.index_cast %c2_i32 : i32 to index
              %138 = arith.muli %137, %arg3 : index
              %139 = arith.addi %121, %138 : index
              %140 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %141 = arith.index_cast %139 {unsigned} : index to i32
              affine.store %141, %140[0] {to = "write_addr", unsigned} : memref<1xi32>
              %142 = affine.load %140[0] {from = "write_addr", unsigned} : memref<1xi32>
              %143 = arith.index_cast %142 : i32 to index
              memref.store %136, %48[%143] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
              %144 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              affine.store %128, %144[0] {to = "read_addr", unsigned} : memref<1xi32>
              %145 = affine.load %144[0] {from = "read_addr", unsigned} : memref<1xi32>
              %146 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %147 = hcl.create_op_handle "Mem.read_c"
              %148 = affine.load %144[0] {from = "read_addr", unsigned} : memref<1xi32>
              %149 = arith.index_cast %148 : i32 to index
              %150 = arith.addi %149, %c0 : index
              %151 = memref.load %51[%150] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %151, %146[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %152 = affine.load %146[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %153 = arith.index_cast %c1_i32_2 : i32 to index
              %154 = arith.addi %139, %153 : index
              %155 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %156 = arith.index_cast %154 {unsigned} : index to i32
              affine.store %156, %155[0] {to = "write_addr", unsigned} : memref<1xi32>
              %157 = affine.load %155[0] {from = "write_addr", unsigned} : memref<1xi32>
              %158 = arith.index_cast %157 : i32 to index
              memref.store %152, %48[%158] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
            %123 = hcl.create_op_handle "nttin_even_odd_brf"
            affine.for %arg3 = 0 to 32 {
              %c32_i32 = arith.constant 32 : i32
              %124 = arith.index_cast %c32_i32 : i32 to index
              %125 = arith.addi %121, %124 : index
              %126 = arith.addi %125, %arg3 : index
              %127 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              %128 = arith.index_cast %126 {unsigned} : index to i32
              affine.store %128, %127[0] {to = "read_addr", unsigned} : memref<1xi32>
              %129 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
              %c1_i32_2 = arith.constant 1 : i32
              %130 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %131 = hcl.create_op_handle "Mem.read_c"
              %132 = affine.load %127[0] {from = "read_addr", unsigned} : memref<1xi32>
              %133 = arith.index_cast %132 : i32 to index
              %134 = arith.addi %133, %c0 : index
              %135 = memref.load %50[%134] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %135, %130[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %136 = affine.load %130[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %137 = arith.index_cast %c2_i32 : i32 to index
              %138 = arith.muli %137, %arg3 : index
              %139 = arith.addi %121, %138 : index
              %140 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %141 = arith.index_cast %139 {unsigned} : index to i32
              affine.store %141, %140[0] {to = "write_addr", unsigned} : memref<1xi32>
              %142 = affine.load %140[0] {from = "write_addr", unsigned} : memref<1xi32>
              %143 = arith.index_cast %142 : i32 to index
              memref.store %136, %49[%143] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
              %144 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              affine.store %128, %144[0] {to = "read_addr", unsigned} : memref<1xi32>
              %145 = affine.load %144[0] {from = "read_addr", unsigned} : memref<1xi32>
              %146 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %147 = hcl.create_op_handle "Mem.read_c"
              %148 = affine.load %144[0] {from = "read_addr", unsigned} : memref<1xi32>
              %149 = arith.index_cast %148 : i32 to index
              %150 = arith.addi %149, %c0 : index
              %151 = memref.load %51[%150] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %151, %146[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %152 = affine.load %146[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %153 = arith.index_cast %c1_i32_2 : i32 to index
              %154 = arith.addi %139, %153 : index
              %155 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %156 = arith.index_cast %154 {unsigned} : index to i32
              affine.store %156, %155[0] {to = "write_addr", unsigned} : memref<1xi32>
              %157 = affine.load %155[0] {from = "write_addr", unsigned} : memref<1xi32>
              %158 = arith.index_cast %157 : i32 to index
              memref.store %152, %49[%158] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
          } {loop_name = "i", op_name = "intt_out_swizzle"}
        }
      }
      %114 = affine.load %70[0] {from = "sys_steps", unsigned} : memref<1xi32>
      %c1_i32_1 = arith.constant 1 : i32
      %115 = arith.addi %114, %c1_i32_1 : i32
      affine.store %115, %70[0] {to = "sys_steps", unsigned} : memref<1xi32>
      scf.yield
    }
    %79 = affine.load %11[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %80 = affine.load %12[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%79, %80) {format = "ce0.mf uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %81 = affine.load %29[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %82 = affine.load %30[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%81, %82) {format = "ce0.cf uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %83 = affine.load %65[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %84 = affine.load %66[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%83, %84) {format = "ce0.cetiles.Mtile uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %85 = affine.load %70[0] {from = "sys_steps", unsigned} : memref<1xi32>
    hcl.print(%85) {format = "Total steps: %d\0A", signedness = "u"} : i32
    return
  }
}

