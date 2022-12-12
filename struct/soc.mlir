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
    %4 = memref.alloc() {name = "flags_halt", unsigned} : memref<1xi1>
    affine.store %false, %4[0] {to = "flags_halt", unsigned} : memref<1xi1>
    %5 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %6 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %7 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
    %8 = memref.alloc() {name = "count_stop", unsigned} : memref<1xi1>
    affine.store %false, %8[0] {to = "count_stop", unsigned} : memref<1xi1>
    %9 = memref.alloc() {name = "addr_stop", unsigned} : memref<1xi1>
    affine.store %false, %9[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %10 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi16>
    %c0_i16 = arith.constant {unsigned} 0 : i16
    affine.store %c0_i16, %10[0] {to = "inst_addr", unsigned} : memref<1xi16>
    %11 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i16, %11[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    %12 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    %c0_i32 = arith.constant {unsigned} 0 : i32
    affine.store %c0_i32, %12[0] {to = "latency_count", unsigned} : memref<1xi32>
    %13 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %13[0] {to = "latstalled", unsigned} : memref<1xi1>
    %14 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %14[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %15 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %15[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %16 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %16[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %17 = memref.alloc() {name = "xinstq.alloc_c", unsigned} : memref<8192xi128>
    affine.for %arg2 = 0 to 8192 {
      %c0_i128 = arith.constant {unsigned} 0 : i128
      affine.store %c0_i128, %17[%arg2] {to = "xinstq.alloc_c"} : memref<8192xi128>
    } {loop_name = "i0", op_name = "xinstq.alloc_c"}
    %18 = memref.alloc() {name = "xinstq_bundles", unsigned} : memref<1xi32>
    affine.store %c0_i32, %18[0] {to = "xinstq_bundles", unsigned} : memref<1xi32>
    %19 = memref.alloc() {name = "cinstq.alloc_c", unsigned} : memref<8192xi64>
    affine.for %arg2 = 0 to 8192 {
      %c0_i64 = arith.constant {unsigned} 0 : i64
      affine.store %c0_i64, %19[%arg2] {to = "cinstq.alloc_c"} : memref<8192xi64>
    } {loop_name = "i0", op_name = "cinstq.alloc_c"}
    %20 = memref.alloc() {name = "nop_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %20[0] {to = "nop_count", unsigned} : memref<1xi32>
    %21 = memref.alloc() {name = "csyncm", unsigned} : memref<1xi1>
    affine.store %false, %21[0] {to = "csyncm", unsigned} : memref<1xi1>
    %22 = memref.alloc() {name = "cstore_cycle", unsigned} : memref<1xi3>
    %c0_i3 = arith.constant {unsigned} 0 : i3
    affine.store %c0_i3, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
    %23 = memref.alloc() {name = "cstore_valid", unsigned} : memref<1xi1>
    affine.store %false, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
    %24 = memref.alloc() {name = "cstore_spadaddr", unsigned} : memref<1xi48>
    %c0_i48 = arith.constant {unsigned} 0 : i48
    affine.store %c0_i48, %24[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
    %25 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
    %26 = memref.alloc() {name = "flags_halt", unsigned} : memref<1xi1>
    affine.store %false, %26[0] {to = "flags_halt", unsigned} : memref<1xi1>
    %27 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %28 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %29 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
    %30 = memref.alloc() {name = "count_stop", unsigned} : memref<1xi1>
    affine.store %false, %30[0] {to = "count_stop", unsigned} : memref<1xi1>
    %31 = memref.alloc() {name = "addr_stop", unsigned} : memref<1xi1>
    affine.store %false, %31[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %32 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi16>
    affine.store %c0_i16, %32[0] {to = "inst_addr", unsigned} : memref<1xi16>
    %33 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i16, %33[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    %34 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
    %35 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
    %36 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %36[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %37 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %38 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %38[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %39 = memref.alloc() {name = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
    affine.for %arg2 = 0 to 4 {
      affine.for %arg3 = 0 to 72 {
        affine.for %arg4 = 0 to 8192 {
          affine.store %c0_i32, %39[%arg2, %arg3, %arg4] {to = "RF.alloc_c"} : memref<4x72x8192xi32>
        } {loop_name = "i2"}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "RF.alloc_c"}
    %40 = memref.alloc() {name = "residue_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %40[0] {to = "residue_count", unsigned} : memref<1xi32>
    %41 = memref.alloc() {name = "stage_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %41[0] {to = "stage_count", unsigned} : memref<1xi32>
    %42 = memref.alloc() {name = "tw_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %42[0] {to = "tw_count", unsigned} : memref<1xi32>
    %43 = memref.alloc() {name = "residues.alloc_c", unsigned} : memref<64xi32>
    affine.for %arg2 = 0 to 64 {
      affine.store %c0_i32, %43[%arg2] {to = "residues.alloc_c"} : memref<64xi32>
    } {loop_name = "i0", op_name = "residues.alloc_c"}
    %44 = memref.alloc() {name = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
    affine.for %arg2 = 0 to 71303168 {
      affine.store %c0_i32, %44[%arg2] {to = "nttroots.alloc_c"} : memref<71303168xi32>
    } {loop_name = "i0", op_name = "nttroots.alloc_c"}
    %45 = memref.alloc() {name = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
    affine.for %arg2 = 0 to 71303168 {
      affine.store %c0_i32, %45[%arg2] {to = "inttroots.alloc_c"} : memref<71303168xi32>
    } {loop_name = "i0", op_name = "inttroots.alloc_c"}
    %46 = memref.alloc() {name = "nop_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %46[0] {to = "nop_count", unsigned} : memref<1xi32>
    %47 = memref.alloc() {name = "flag_ntt", unsigned} : memref<1xi1>
    affine.store %false, %47[0] {to = "flag_ntt", unsigned} : memref<1xi1>
    %48 = memref.alloc() {name = "flag_intt", unsigned} : memref<1xi1>
    affine.store %false, %48[0] {to = "flag_intt", unsigned} : memref<1xi1>
    %49 = memref.alloc() {name = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    %c0_i9 = arith.constant {unsigned} 0 : i9
    affine.store %c0_i9, %49[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    %50 = memref.alloc() {name = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    affine.store %c0_i9, %50[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    %51 = memref.alloc() {name = "instq.alloc_c", unsigned} : memref<16xi128>
    affine.for %arg2 = 0 to 16 {
      %c0_i128 = arith.constant {unsigned} 0 : i128
      affine.store %c0_i128, %51[%arg2] {to = "instq.alloc_c"} : memref<16xi128>
    } {loop_name = "i0", op_name = "instq.alloc_c"}
    %52 = memref.alloc() {name = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %52[%arg2] {to = "nttdataintop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataintop.alloc_c"}
    %53 = memref.alloc() {name = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %53[%arg2] {to = "nttdatainbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdatainbot.alloc_c"}
    %54 = memref.alloc() {name = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %54[%arg2] {to = "nttdataouttop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataouttop.alloc_c"}
    %55 = memref.alloc() {name = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %55[%arg2] {to = "nttdataoutbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataoutbot.alloc_c"}
    %56 = memref.alloc() {name = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %56[%arg2] {to = "inttdataintop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataintop.alloc_c"}
    %57 = memref.alloc() {name = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %57[%arg2] {to = "inttdatainbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdatainbot.alloc_c"}
    %58 = memref.alloc() {name = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %58[%arg2] {to = "inttdataouttop.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataouttop.alloc_c"}
    %59 = memref.alloc() {name = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %59[%arg2] {to = "inttdataoutbot.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataoutbot.alloc_c"}
    %60 = memref.alloc() {name = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %60[%arg2] {to = "ntt_ain.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_ain.alloc_c"}
    %61 = memref.alloc() {name = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %61[%arg2] {to = "ntt_bin.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_bin.alloc_c"}
    %62 = memref.alloc() {name = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %62[%arg2] {to = "ntt_win.alloc_c"} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_win.alloc_c"}
    %63 = memref.alloc() {name = "uc_start_delay", unsigned} : memref<1xi4>
    %c0_i4 = arith.constant {unsigned} 0 : i4
    affine.store %c0_i4, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
    %64 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
    %65 = memref.alloc() {name = "flags_halt", unsigned} : memref<1xi1>
    affine.store %false, %65[0] {to = "flags_halt", unsigned} : memref<1xi1>
    %66 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %67 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %68 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
    %69 = memref.alloc() {name = "count_stop", unsigned} : memref<1xi1>
    affine.store %false, %69[0] {to = "count_stop", unsigned} : memref<1xi1>
    %70 = memref.alloc() {name = "addr_stop", unsigned} : memref<1xi1>
    affine.store %false, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %71 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi5>
    %c0_i5 = arith.constant {unsigned} 0 : i5
    affine.store %c0_i5, %71[0] {to = "inst_addr", unsigned} : memref<1xi5>
    %72 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi5>
    affine.store %c0_i5, %72[0] {to = "inst_naddr", unsigned} : memref<1xi5>
    %73 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
    %74 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
    %75 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %75[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %76 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %76[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %77 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %77[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %78 = memref.alloc() {name = "flags_active", unsigned} : memref<1xi1>
    affine.store %false, %78[0] {to = "flags_active", unsigned} : memref<1xi1>
    %79 = memref.alloc() {name = "flags_halt", unsigned} : memref<1xi1>
    affine.store %false, %79[0] {to = "flags_halt", unsigned} : memref<1xi1>
    %80 = memref.alloc() {name = "flags_stall", unsigned} : memref<1xi1>
    affine.store %false, %80[0] {to = "flags_stall", unsigned} : memref<1xi1>
    %81 = memref.alloc() {name = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %false, %81[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %82 = memref.alloc() {name = "flags_break", unsigned} : memref<1xi1>
    affine.store %false, %82[0] {to = "flags_break", unsigned} : memref<1xi1>
    %83 = memref.alloc() {name = "count_stop", unsigned} : memref<1xi1>
    affine.store %false, %83[0] {to = "count_stop", unsigned} : memref<1xi1>
    %84 = memref.alloc() {name = "addr_stop", unsigned} : memref<1xi1>
    affine.store %false, %84[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %85 = memref.alloc() {name = "inst_addr", unsigned} : memref<1xi32>
    affine.store %c0_i32, %85[0] {to = "inst_addr", unsigned} : memref<1xi32>
    %86 = memref.alloc() {name = "inst_naddr", unsigned} : memref<1xi32>
    affine.store %c0_i32, %86[0] {to = "inst_naddr", unsigned} : memref<1xi32>
    %87 = memref.alloc() {name = "latency_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %87[0] {to = "latency_count", unsigned} : memref<1xi32>
    %88 = memref.alloc() {name = "latstalled", unsigned} : memref<1xi1>
    affine.store %false, %88[0] {to = "latstalled", unsigned} : memref<1xi1>
    %89 = memref.alloc() {name = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %89[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %90 = memref.alloc() {name = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %90[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %91 = memref.alloc() {name = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %91[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %92 = memref.alloc() {name = "proc_started", unsigned} : memref<1xi1>
    affine.store %false, %92[0] {to = "proc_started", unsigned} : memref<1xi1>
    %93 = affine.load %arg1[0] {from = "addr", unsigned} : memref<1xi32>
    %94 = memref.alloc() {name = "sys_steps", unsigned} : memref<1xi32>
    %c1_i32 = arith.constant {unsigned} 1 : i32
    affine.store %c1_i32, %94[0] {to = "sys_steps", unsigned} : memref<1xi32>
    %95 = memref.alloc() {name = "sys_done", unsigned} : memref<1xi1>
    affine.store %false, %95[0] {to = "sys_done", unsigned} : memref<1xi1>
    %c0_i32_0 = arith.constant 0 : i32
    %96 = arith.trunci %c0_i32_0 {unsigned} : i32 to i1
    affine.store %96, %92[0] {to = "proc_started", unsigned} : memref<1xi1>
    affine.store %96, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
    affine.store %96, %3[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %96, %4[0] {to = "flags_halt", unsigned} : memref<1xi1>
    affine.store %96, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %96, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %96, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
    affine.store %96, %8[0] {to = "count_stop", unsigned} : memref<1xi1>
    affine.store %96, %9[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %97 = arith.trunci %c0_i32_0 {unsigned} : i32 to i16
    affine.store %97, %10[0] {to = "inst_addr", unsigned} : memref<1xi16>
    affine.store %97, %11[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i32_0, %12[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %96, %13[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32_0, %14[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %15[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %16[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %20[0] {to = "nop_count", unsigned} : memref<1xi32>
    affine.store %96, %21[0] {to = "csyncm", unsigned} : memref<1xi1>
    %98 = arith.trunci %c0_i32_0 {unsigned} : i32 to i3
    affine.store %98, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
    affine.store %96, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
    %99 = arith.extsi %c0_i32_0 {unsigned} : i32 to i48
    affine.store %99, %24[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
    affine.store %c0_i32_0, %18[0] {to = "xinstq_bundles", unsigned} : memref<1xi32>
    affine.store %96, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %96, %26[0] {to = "flags_halt", unsigned} : memref<1xi1>
    affine.store %96, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %96, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %96, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
    affine.store %96, %30[0] {to = "count_stop", unsigned} : memref<1xi1>
    affine.store %96, %31[0] {to = "addr_stop", unsigned} : memref<1xi1>
    affine.store %97, %32[0] {to = "inst_addr", unsigned} : memref<1xi16>
    affine.store %97, %33[0] {to = "inst_naddr", unsigned} : memref<1xi16>
    affine.store %c0_i32_0, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %96, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32_0, %36[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %38[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %46[0] {to = "nop_count", unsigned} : memref<1xi32>
    affine.store %96, %47[0] {to = "flag_ntt", unsigned} : memref<1xi1>
    affine.store %96, %48[0] {to = "flag_intt", unsigned} : memref<1xi1>
    %100 = arith.trunci %c0_i32_0 {unsigned} : i32 to i9
    affine.store %100, %49[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    affine.store %100, %50[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    %101 = arith.trunci %c0_i32_0 {unsigned} : i32 to i4
    affine.store %101, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
    affine.store %96, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %96, %65[0] {to = "flags_halt", unsigned} : memref<1xi1>
    affine.store %96, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %96, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %96, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
    affine.store %96, %69[0] {to = "count_stop", unsigned} : memref<1xi1>
    affine.store %96, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
    %102 = arith.trunci %c0_i32_0 {unsigned} : i32 to i5
    affine.store %102, %71[0] {to = "inst_addr", unsigned} : memref<1xi5>
    affine.store %102, %72[0] {to = "inst_naddr", unsigned} : memref<1xi5>
    affine.store %c0_i32_0, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %96, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32_0, %75[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %76[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32_0, %77[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    scf.while : () -> () {
      %110 = affine.load %95[0] {from = "sys_done", unsigned} : memref<1xi1>
      %111 = arith.extui %110 : i1 to i32
      %112 = arith.cmpi eq, %111, %c0_i32_0 : i32
      scf.condition(%112)
    } do {
      %110 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      hcl.print(%110) {format = "step=%d ------------------------------------------------------------\0A", signedness = "u"} : i32
      %111 = affine.load %47[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %112 = arith.extui %111 : i1 to i32
      %113 = arith.cmpi ne, %112, %c0_i32_0 : i32
      scf.if %113 {
        %141 = affine.load %49[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %142 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %143 = hcl.int_to_struct(%141) {unsigned} : i9 -> <i7, i2>
        affine.store %143, %142[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %144 = affine.load %142[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %145 = hcl.struct_get %144[1] : <i7, i2> -> i2
        %146 = hcl.struct_get %144[0] : <i7, i2> -> i7
        %147 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        %c8192_i32 = arith.constant {unsigned} 8192 : i32
        affine.store %c8192_i32, %147[0] {to = "count", unsigned} : memref<1xi32>
        %148 = affine.load %147[0] {from = "count", unsigned} : memref<1xi32>
        %149 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %149[0] {to = "src_addr", unsigned} : memref<1xi32>
        %150 = affine.load %149[0] {from = "src_addr", unsigned} : memref<1xi32>
        %151 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %151[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %152 = affine.load %151[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %153 = arith.addi %150, %148 {unsigned} : i32
        %c8192_i32_2 = arith.constant 8192 : i32
        %154 = hcl.create_op_handle "copyN"
        %155 = hcl.create_loop_handle %154, "i"
        %156 = arith.index_cast %c0_i32_0 : i32 to index
        %157 = arith.index_cast %148 : i32 to index
        %c1_i32_3 = arith.constant 1 : i32
        %158 = arith.index_cast %c1_i32_3 : i32 to index
        scf.for %arg2 = %156 to %157 step %158 {
          %175 = arith.index_cast %150 : i32 to index
          %176 = arith.addi %175, %arg2 : index
          %177 = memref.load %52[%176] {from = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %178 = arith.index_cast %152 : i32 to index
          %179 = arith.addi %178, %arg2 : index
          %180 = arith.index_cast %145 : i2 to index
          %181 = arith.index_cast %146 : i7 to index
          memref.store %177, %39[%180, %181, %179] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %159 = affine.load %50[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %160 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %161 = hcl.int_to_struct(%159) {unsigned} : i9 -> <i7, i2>
        affine.store %161, %160[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %162 = affine.load %160[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %163 = hcl.struct_get %162[1] : <i7, i2> -> i2
        %164 = hcl.struct_get %162[0] : <i7, i2> -> i7
        %165 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        affine.store %c8192_i32, %165[0] {to = "count", unsigned} : memref<1xi32>
        %166 = affine.load %165[0] {from = "count", unsigned} : memref<1xi32>
        %167 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %167[0] {to = "src_addr", unsigned} : memref<1xi32>
        %168 = affine.load %167[0] {from = "src_addr", unsigned} : memref<1xi32>
        %169 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %169[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %170 = affine.load %169[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %171 = arith.addi %168, %166 {unsigned} : i32
        %172 = hcl.create_op_handle "copyN"
        %173 = hcl.create_loop_handle %172, "i"
        %174 = arith.index_cast %166 : i32 to index
        scf.for %arg2 = %156 to %174 step %158 {
          %175 = arith.index_cast %168 : i32 to index
          %176 = arith.addi %175, %arg2 : index
          %177 = memref.load %53[%176] {from = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %178 = arith.index_cast %170 : i32 to index
          %179 = arith.addi %178, %arg2 : index
          %180 = arith.index_cast %163 : i2 to index
          %181 = arith.index_cast %164 : i7 to index
          memref.store %177, %39[%180, %181, %179] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        affine.store %96, %47[0] {to = "flag_ntt", unsigned} : memref<1xi1>
      }
      %114 = affine.load %48[0] {from = "flag_intt", unsigned} : memref<1xi1>
      %115 = arith.extui %114 : i1 to i32
      %116 = arith.cmpi ne, %115, %c0_i32_0 : i32
      scf.if %116 {
        %141 = affine.load %49[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %142 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %143 = hcl.int_to_struct(%141) {unsigned} : i9 -> <i7, i2>
        affine.store %143, %142[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %144 = affine.load %142[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %145 = hcl.struct_get %144[1] : <i7, i2> -> i2
        %146 = hcl.struct_get %144[0] : <i7, i2> -> i7
        %147 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        %c8192_i32 = arith.constant {unsigned} 8192 : i32
        affine.store %c8192_i32, %147[0] {to = "count", unsigned} : memref<1xi32>
        %148 = affine.load %147[0] {from = "count", unsigned} : memref<1xi32>
        %149 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %149[0] {to = "src_addr", unsigned} : memref<1xi32>
        %150 = affine.load %149[0] {from = "src_addr", unsigned} : memref<1xi32>
        %151 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %151[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %152 = affine.load %151[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %153 = arith.addi %150, %148 {unsigned} : i32
        %c8192_i32_2 = arith.constant 8192 : i32
        %154 = hcl.create_op_handle "copyN"
        %155 = hcl.create_loop_handle %154, "i"
        %156 = arith.index_cast %c0_i32_0 : i32 to index
        %157 = arith.index_cast %148 : i32 to index
        %c1_i32_3 = arith.constant 1 : i32
        %158 = arith.index_cast %c1_i32_3 : i32 to index
        scf.for %arg2 = %156 to %157 step %158 {
          %175 = arith.index_cast %150 : i32 to index
          %176 = arith.addi %175, %arg2 : index
          %177 = memref.load %56[%176] {from = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %178 = arith.index_cast %152 : i32 to index
          %179 = arith.addi %178, %arg2 : index
          %180 = arith.index_cast %145 : i2 to index
          %181 = arith.index_cast %146 : i7 to index
          memref.store %177, %39[%180, %181, %179] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %159 = affine.load %50[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %160 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %161 = hcl.int_to_struct(%159) {unsigned} : i9 -> <i7, i2>
        affine.store %161, %160[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %162 = affine.load %160[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %163 = hcl.struct_get %162[1] : <i7, i2> -> i2
        %164 = hcl.struct_get %162[0] : <i7, i2> -> i7
        %165 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        affine.store %c8192_i32, %165[0] {to = "count", unsigned} : memref<1xi32>
        %166 = affine.load %165[0] {from = "count", unsigned} : memref<1xi32>
        %167 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %167[0] {to = "src_addr", unsigned} : memref<1xi32>
        %168 = affine.load %167[0] {from = "src_addr", unsigned} : memref<1xi32>
        %169 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %169[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %170 = affine.load %169[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %171 = arith.addi %168, %166 {unsigned} : i32
        %172 = hcl.create_op_handle "copyN"
        %173 = hcl.create_loop_handle %172, "i"
        %174 = arith.index_cast %166 : i32 to index
        scf.for %arg2 = %156 to %174 step %158 {
          %175 = arith.index_cast %168 : i32 to index
          %176 = arith.addi %175, %arg2 : index
          %177 = memref.load %57[%176] {from = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %178 = arith.index_cast %170 : i32 to index
          %179 = arith.addi %178, %arg2 : index
          %180 = arith.index_cast %163 : i2 to index
          %181 = arith.index_cast %164 : i7 to index
          memref.store %177, %39[%180, %181, %179] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        affine.store %96, %48[0] {to = "flag_intt", unsigned} : memref<1xi1>
      }
      %117 = affine.load %92[0] {from = "proc_started", unsigned} : memref<1xi1>
      %118 = arith.extui %117 : i1 to i32
      %119 = arith.cmpi eq, %118, %c0_i32_0 : i32
      scf.if %119 {
        %c1_i32_2 = arith.constant 1 : i32
        %141 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
        affine.store %141, %92[0] {to = "proc_started", unsigned} : memref<1xi1>
        %142 = affine.load %78[0] {from = "flags_active", unsigned} : memref<1xi1>
        %143 = arith.extui %142 : i1 to i32
        affine.store %96, %78[0] {to = "flags_active", unsigned} : memref<1xi1>
        affine.store %96, %79[0] {to = "flags_halt", unsigned} : memref<1xi1>
        affine.store %96, %80[0] {to = "flags_stall", unsigned} : memref<1xi1>
        affine.store %96, %81[0] {to = "flags_stalled", unsigned} : memref<1xi1>
        affine.store %96, %82[0] {to = "flags_break", unsigned} : memref<1xi1>
        affine.store %96, %83[0] {to = "count_stop", unsigned} : memref<1xi1>
        affine.store %96, %84[0] {to = "addr_stop", unsigned} : memref<1xi1>
        affine.store %c0_i32_0, %85[0] {to = "inst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32_0, %86[0] {to = "inst_naddr", unsigned} : memref<1xi32>
        affine.store %c0_i32_0, %87[0] {to = "latency_count", unsigned} : memref<1xi32>
        affine.store %96, %88[0] {to = "latstalled", unsigned} : memref<1xi1>
        affine.store %93, %85[0] {to = "inst_addr", unsigned} : memref<1xi32>
        affine.store %141, %78[0] {to = "flags_active", unsigned} : memref<1xi1>
      } else {
        %141 = affine.load %78[0] {from = "flags_active", unsigned} : memref<1xi1>
        %142 = arith.extui %141 : i1 to i32
        %143 = arith.cmpi eq, %142, %c0_i32_0 : i32
        scf.if %143 {
          %c1_i32_2 = arith.constant 1 : i32
          %144 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
          affine.store %144, %95[0] {to = "sys_done", unsigned} : memref<1xi1>
        }
      }
      affine.store %96, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
      affine.store %96, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
      affine.store %96, %8[0] {to = "count_stop", unsigned} : memref<1xi1>
      affine.store %96, %9[0] {to = "addr_stop", unsigned} : memref<1xi1>
      %120 = affine.load %3[0] {from = "flags_active", unsigned} : memref<1xi1>
      %121 = arith.extui %120 : i1 to i32
      %122 = arith.cmpi ne, %121, %c0_i32_0 : i32
      %123 = affine.load %7[0] {from = "flags_break", unsigned} : memref<1xi1>
      %124 = arith.extui %123 : i1 to i32
      %125 = arith.cmpi eq, %124, %c0_i32_0 : i32
      scf.while : () -> () {
        %141 = arith.andi %122, %125 : i1
        scf.condition(%141)
      } do {
        %141 = affine.load %12[0] {from = "latency_count", unsigned} : memref<1xi32>
        %142 = arith.cmpi eq, %141, %c0_i32_0 : i32
        scf.if %142 {
          %143 = affine.load %10[0] {from = "inst_addr", unsigned} : memref<1xi16>
          %144 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi16>
          affine.store %143, %144[0] {to = "_cur_address", unsigned} : memref<1xi16>
          %c1_i32_2 = arith.constant 1 : i32
          %145 = arith.extui %143 : i16 to i32
          %146 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi16>
          affine.store %143, %146[0] {to = "read_addr", unsigned} : memref<1xi16>
          %147 = affine.load %146[0] {from = "read_addr", unsigned} : memref<1xi16>
          %148 = arith.extui %147 : i16 to i32
          %149 = arith.addi %148, %c1_i32_2 : i32
          %c8192_i32 = arith.constant 8192 : i32
          %150 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi64>
          %151 = hcl.create_op_handle "Mem.read_c"
          %152 = hcl.create_loop_handle %151, "i"
          %153 = affine.load %146[0] {from = "read_addr", unsigned} : memref<1xi16>
          %154 = arith.index_cast %153 : i16 to index
          %155 = arith.addi %154, %c0 : index
          %156 = memref.load %1[%155] {from = "minstq.alloc_c", unsigned} : memref<8192xi64>
          affine.store %156, %150[%c0] {to = "Mem.read_c"} : memref<1xi64>
          %157 = affine.load %150[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
          %158 = memref.alloc() {name = "inst", unsigned} : memref<1xi64>
          affine.store %157, %158[0] {to = "inst", unsigned} : memref<1xi64>
          %159 = affine.load %158[0] {from = "inst", unsigned} : memref<1xi64>
          %160 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
          affine.store %c0_i32, %160[0] {to = "inst_lat", unsigned} : memref<1xi32>
          %161 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi64>
          affine.store %159, %161[0] {to = "decode_inst", unsigned} : memref<1xi64>
          %162 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
          affine.store %c0_i16, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
          %163 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %164 = memref.alloc() {name = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
          %165 = hcl.int_to_struct(%163) {unsigned} : i64 -> <i4, i60>
          affine.store %165, %164[0] {to = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
          %166 = affine.load %164[0] {from = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
          %167 = hcl.struct_get %166[0] : <i4, i60> -> i4
          %c15_i32 = arith.constant 15 : i32
          %168 = arith.extsi %167 : i4 to i32
          %169 = arith.cmpi eq, %168, %c15_i32 : i32
          scf.if %169 {
            affine.store %97, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
          } else {
            %179 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %180 = memref.alloc() {name = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
            %181 = hcl.int_to_struct(%179) {unsigned} : i64 -> <i4, i60>
            affine.store %181, %180[0] {to = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
            %182 = affine.load %180[0] {from = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
            %183 = hcl.struct_get %182[0] : <i4, i60> -> i4
            %c14_i32 = arith.constant 14 : i32
            %184 = arith.extsi %183 : i4 to i32
            %185 = arith.cmpi eq, %184, %c14_i32 : i32
            scf.if %185 {
              %186 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
              affine.store %186, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %186 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %187 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
              %188 = hcl.int_to_struct(%186) {unsigned} : i64 -> <i4, i60>
              affine.store %188, %187[0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
              %189 = affine.load %187[0] {from = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
              %190 = hcl.struct_get %189[0] : <i4, i60> -> i4
              %c12_i32 = arith.constant 12 : i32
              %191 = arith.extsi %190 : i4 to i32
              %192 = arith.cmpi eq, %191, %c12_i32 : i32
              scf.if %192 {
                %c2_i32 = arith.constant 2 : i32
                %193 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %193, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %193 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %194 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                %195 = hcl.int_to_struct(%193) {unsigned} : i64 -> <i4, i60>
                affine.store %195, %194[0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                %196 = affine.load %194[0] {from = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                %197 = hcl.struct_get %196[0] : <i4, i60> -> i4
                %c11_i32 = arith.constant 11 : i32
                %198 = arith.extsi %197 : i4 to i32
                %199 = arith.cmpi eq, %198, %c11_i32 : i32
                scf.if %199 {
                  %c3_i32 = arith.constant 3 : i32
                  %200 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %200, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %200 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                  %201 = memref.alloc() {name = "dec_inst_mload"} : memref<1x!hcl.struct<i4, i30, i30>>
                  %202 = hcl.int_to_struct(%200) {unsigned} : i64 -> <i4, i30, i30>
                  affine.store %202, %201[0] {to = "dec_inst_mload"} : memref<1x!hcl.struct<i4, i30, i30>>
                  %203 = affine.load %201[0] {from = "dec_inst_mload"} : memref<1x!hcl.struct<i4, i30, i30>>
                  %204 = hcl.struct_get %203[0] : <i4, i30, i30> -> i4
                  %205 = arith.extsi %204 : i4 to i32
                  %206 = arith.cmpi eq, %205, %c1_i32_2 : i32
                  scf.if %206 {
                    %c4_i32 = arith.constant 4 : i32
                    %207 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %207, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %207 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %208 = memref.alloc() {name = "dec_inst_mstore"} : memref<1x!hcl.struct<i4, i30, i30>>
                    %209 = hcl.int_to_struct(%207) {unsigned} : i64 -> <i4, i30, i30>
                    affine.store %209, %208[0] {to = "dec_inst_mstore"} : memref<1x!hcl.struct<i4, i30, i30>>
                    %210 = affine.load %208[0] {from = "dec_inst_mstore"} : memref<1x!hcl.struct<i4, i30, i30>>
                    %211 = hcl.struct_get %210[0] : <i4, i30, i30> -> i4
                    %c2_i32 = arith.constant 2 : i32
                    %212 = arith.extsi %211 : i4 to i32
                    %213 = arith.cmpi eq, %212, %c2_i32 : i32
                    scf.if %213 {
                      %c5_i32 = arith.constant 5 : i32
                      %214 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %214, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %214 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                      %215 = memref.alloc() {name = "dec_inst_cinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                      %216 = hcl.int_to_struct(%214) {unsigned} : i64 -> <i4, i30, i24, i6>
                      affine.store %216, %215[0] {to = "dec_inst_cinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                      %217 = affine.load %215[0] {from = "dec_inst_cinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                      %218 = hcl.struct_get %217[0] : <i4, i30, i24, i6> -> i4
                      %c3_i32 = arith.constant 3 : i32
                      %219 = arith.extsi %218 : i4 to i32
                      %220 = arith.cmpi eq, %219, %c3_i32 : i32
                      scf.if %220 {
                        %c6_i32 = arith.constant 6 : i32
                        %221 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %221, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %221 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                        %222 = memref.alloc() {name = "dec_inst_xinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                        %223 = hcl.int_to_struct(%221) {unsigned} : i64 -> <i4, i30, i24, i6>
                        affine.store %223, %222[0] {to = "dec_inst_xinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                        %224 = affine.load %222[0] {from = "dec_inst_xinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                        %225 = hcl.struct_get %224[0] : <i4, i30, i24, i6> -> i4
                        %c4_i32 = arith.constant 4 : i32
                        %226 = arith.extsi %225 : i4 to i32
                        %227 = arith.cmpi eq, %226, %c4_i32 : i32
                        scf.if %227 {
                          %c7_i32 = arith.constant 7 : i32
                          %228 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %228, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %c8_i32 = arith.constant 8 : i32
                          %228 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                          affine.store %228, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          %170 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
          affine.store %false, %170[0] {to = "tmp", unsigned} : memref<1xi1>
          %171 = affine.load %160[0] {from = "inst_lat", unsigned} : memref<1xi32>
          %172 = arith.cmpi sle, %171, %c1_i32_2 : i32
          scf.if %172 {
            %179 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %179, %170[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %173 = affine.load %13[0] {from = "latstalled", unsigned} : memref<1xi1>
          %174 = arith.extui %173 : i1 to i32
          %175 = arith.cmpi eq, %174, %c1_i32_2 : i32
          scf.if %175 {
            %179 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %179, %170[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %176 = affine.load %170[0] {from = "tmp", unsigned} : memref<1xi1>
          %177 = arith.extui %176 : i1 to i32
          %178 = arith.cmpi ne, %177, %c0_i32_0 : i32
          scf.if %178 {
            %179 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi64>
            affine.store %159, %179[0] {to = "execute_inst", unsigned} : memref<1xi64>
            %180 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
            %181 = arith.extui %180 : i16 to i32
            %182 = arith.cmpi eq, %181, %c0_i32_0 : i32
            scf.if %182 {
              %188 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %189 = memref.alloc() {name = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
              %190 = hcl.int_to_struct(%188) {unsigned} : i64 -> <i4, i60>
              affine.store %190, %189[0] {to = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
              %191 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
              hcl.print(%191) {format = "ip=%d ", signedness = "u"} : i16
              hcl.print(%c0_i32_0) {format = "mhalt", signedness = "_"} : i32
              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
              %192 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %192, %4[0] {to = "flags_halt", unsigned} : memref<1xi1>
              affine.store %96, %3[0] {to = "flags_active", unsigned} : memref<1xi1>
              affine.store %192, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
              %193 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %194 = arith.extui %193 : i1 to i32
              %195 = arith.cmpi eq, %194, %c0_i32_0 : i32
              scf.if %195 {
              } else {
                %196 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                %197 = arith.extui %196 : i16 to i32
                %198 = arith.cmpi eq, %197, %c1_i32_2 : i32
                scf.if %198 {
                  %199 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                  %200 = memref.alloc() {name = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
                  %201 = hcl.int_to_struct(%199) {unsigned} : i64 -> <i4, i60>
                  affine.store %201, %200[0] {to = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
                  %202 = affine.load %25[0] {from = "flags_active", unsigned} : memref<1xi1>
                  %203 = arith.extui %202 : i1 to i32
                  %204 = arith.cmpi ne, %203, %c0_i32_0 : i32
                  scf.if %204 {
                    %205 = affine.load %6[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                    %206 = arith.extui %205 : i1 to i32
                    %207 = arith.cmpi eq, %206, %c0_i32_0 : i32
                    scf.if %207 {
                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %213 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%213) {format = "ip=%d ", signedness = "u"} : i16
                      hcl.print(%c0_i32_0) {format = "mwait", signedness = "_"} : i32
                      hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                    } else {
                      %213 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %214 = arith.extui %213 : i16 to i32
                      %c2_i32 = arith.constant 2 : i32
                      %215 = arith.cmpi eq, %214, %c2_i32 : i32
                      scf.if %215 {
                        %216 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                        %217 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
                        %218 = hcl.int_to_struct(%216) {unsigned} : i64 -> <i4, i60>
                        affine.store %218, %217[0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
                        hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                        %219 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                        hcl.print(%219) {format = "ip=%d ", signedness = "u"} : i16
                        hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                        affine.store %192, %21[0] {to = "csyncm", unsigned} : memref<1xi1>
                      } else {
                        %216 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                        %217 = arith.extui %216 : i16 to i32
                        %c3_i32 = arith.constant 3 : i32
                        %218 = arith.cmpi eq, %217, %c3_i32 : i32
                        scf.if %218 {
                          %219 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                          %220 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                          %221 = hcl.int_to_struct(%219) {unsigned} : i64 -> <i4, i60>
                          affine.store %221, %220[0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                          %222 = affine.load %2[0] {from = "flags_msyncc", unsigned} : memref<1xi1>
                          %223 = arith.extui %222 : i1 to i32
                          %224 = arith.cmpi eq, %223, %c0_i32_0 : i32
                          scf.if %224 {
                            %225 = affine.load %6[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                            %226 = arith.extui %225 : i1 to i32
                            %227 = arith.cmpi eq, %226, %c0_i32_0 : i32
                            scf.if %227 {
                              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                              %233 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                              hcl.print(%233) {format = "ip=%d ", signedness = "u"} : i16
                              hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                              hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                            } else {
                              %233 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                              %234 = arith.extui %233 : i16 to i32
                              %c4_i32 = arith.constant 4 : i32
                              %235 = arith.cmpi eq, %234, %c4_i32 : i32
                              scf.if %235 {
                                %236 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                %237 = memref.alloc() {name = "dec_inst_mload"} : memref<1x!hcl.struct<i4, i30, i30>>
                                %238 = hcl.int_to_struct(%236) {unsigned} : i64 -> <i4, i30, i30>
                                affine.store %238, %237[0] {to = "dec_inst_mload"} : memref<1x!hcl.struct<i4, i30, i30>>
                                %239 = affine.load %237[0] {from = "dec_inst_mload"} : memref<1x!hcl.struct<i4, i30, i30>>
                                hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                %240 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                hcl.print(%240) {format = "ip=%d ", signedness = "u"} : i16
                                %241 = hcl.struct_get %239[1] : <i4, i30, i30> -> i30
                                %242 = hcl.struct_get %239[2] : <i4, i30, i30> -> i30
                                hcl.print(%241, %242) {format = "mload hbmaddr=0x%x spadaddr=0x%x", signedness = "__"} : i30, i30
                                hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                %c13_i32 = arith.constant 13 : i32
                                %243 = arith.trunci %c13_i32 : i32 to i30
                                %244 = arith.extsi %241 : i30 to i60
                                %245 = arith.extsi %243 : i30 to i60
                                %246 = arith.shli %244, %245 : i60
                                %247 = arith.extsi %242 : i30 to i60
                                %248 = arith.shli %247, %245 : i60
                                %249 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                %c8192_i32_3 = arith.constant {unsigned} 8192 : i32
                                affine.store %c8192_i32_3, %249[0] {to = "count", unsigned} : memref<1xi32>
                                %250 = affine.load %249[0] {from = "count", unsigned} : memref<1xi32>
                                %251 = memref.alloc() {name = "src_addr"} : memref<1xi60>
                                affine.store %246, %251[0] {to = "src_addr"} : memref<1xi60>
                                %252 = affine.load %251[0] {from = "src_addr"} : memref<1xi60>
                                %253 = memref.alloc() {name = "dst_addr"} : memref<1xi60>
                                affine.store %248, %253[0] {to = "dst_addr"} : memref<1xi60>
                                %254 = affine.load %253[0] {from = "dst_addr"} : memref<1xi60>
                                %255 = arith.extui %250 : i32 to i60
                                %256 = arith.addi %252, %255 : i60
                                %c33554432_i32 = arith.constant 33554432 : i32
                                %257 = arith.extsi %c33554432_i32 : i32 to i60
                                %258 = hcl.create_op_handle "copyN"
                                %259 = hcl.create_loop_handle %258, "i"
                                %260 = arith.index_cast %c0_i32_0 : i32 to index
                                %261 = arith.index_cast %250 : i32 to index
                                %262 = arith.index_cast %c1_i32_2 : i32 to index
                                scf.for %arg2 = %260 to %261 step %262 {
                                  %263 = arith.index_cast %252 : i60 to index
                                  %264 = arith.addi %263, %arg2 : index
                                  %265 = memref.load %arg0[%264] {from = "hbm", unsigned} : memref<33554432xi32>
                                  %266 = arith.index_cast %254 : i60 to index
                                  %267 = arith.addi %266, %arg2 : index
                                  memref.store %265, %0[%267] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                } {loop_name = "i", op_name = "copyN"}
                              } else {
                                %236 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                %237 = arith.extui %236 : i16 to i32
                                %c5_i32 = arith.constant 5 : i32
                                %238 = arith.cmpi eq, %237, %c5_i32 : i32
                                scf.if %238 {
                                  %239 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                  %240 = memref.alloc() {name = "dec_inst_mstore"} : memref<1x!hcl.struct<i4, i30, i30>>
                                  %241 = hcl.int_to_struct(%239) {unsigned} : i64 -> <i4, i30, i30>
                                  affine.store %241, %240[0] {to = "dec_inst_mstore"} : memref<1x!hcl.struct<i4, i30, i30>>
                                  %242 = affine.load %240[0] {from = "dec_inst_mstore"} : memref<1x!hcl.struct<i4, i30, i30>>
                                  hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                  %243 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                  hcl.print(%243) {format = "ip=%d ", signedness = "u"} : i16
                                  %244 = hcl.struct_get %242[1] : <i4, i30, i30> -> i30
                                  %245 = hcl.struct_get %242[2] : <i4, i30, i30> -> i30
                                  hcl.print(%244, %245) {format = "mstore hbmaddr=0x%x spadaddr=0x%x", signedness = "__"} : i30, i30
                                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                  %c13_i32 = arith.constant 13 : i32
                                  %246 = arith.trunci %c13_i32 : i32 to i30
                                  %247 = arith.extsi %245 : i30 to i60
                                  %248 = arith.extsi %246 : i30 to i60
                                  %249 = arith.shli %247, %248 : i60
                                  %250 = arith.extsi %244 : i30 to i60
                                  %251 = arith.shli %250, %248 : i60
                                  %252 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                  %c8192_i32_3 = arith.constant {unsigned} 8192 : i32
                                  affine.store %c8192_i32_3, %252[0] {to = "count", unsigned} : memref<1xi32>
                                  %253 = affine.load %252[0] {from = "count", unsigned} : memref<1xi32>
                                  %254 = memref.alloc() {name = "src_addr"} : memref<1xi60>
                                  affine.store %249, %254[0] {to = "src_addr"} : memref<1xi60>
                                  %255 = affine.load %254[0] {from = "src_addr"} : memref<1xi60>
                                  %256 = memref.alloc() {name = "dst_addr"} : memref<1xi60>
                                  affine.store %251, %256[0] {to = "dst_addr"} : memref<1xi60>
                                  %257 = affine.load %256[0] {from = "dst_addr"} : memref<1xi60>
                                  %258 = arith.extui %253 : i32 to i60
                                  %259 = arith.addi %255, %258 : i60
                                  %c33554432_i32 = arith.constant 33554432 : i32
                                  %260 = arith.extsi %c33554432_i32 : i32 to i60
                                  %261 = hcl.create_op_handle "copyN"
                                  %262 = hcl.create_loop_handle %261, "i"
                                  %263 = arith.index_cast %c0_i32_0 : i32 to index
                                  %264 = arith.index_cast %253 : i32 to index
                                  %265 = arith.index_cast %c1_i32_2 : i32 to index
                                  scf.for %arg2 = %263 to %264 step %265 {
                                    %266 = arith.index_cast %255 : i60 to index
                                    %267 = arith.addi %266, %arg2 : index
                                    %268 = memref.load %0[%267] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                    %269 = arith.index_cast %257 : i60 to index
                                    %270 = arith.addi %269, %arg2 : index
                                    memref.store %268, %arg0[%270] {to = "hbm", unsigned} : memref<33554432xi32>
                                  } {loop_name = "i", op_name = "copyN"}
                                } else {
                                  %239 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                  %240 = arith.extui %239 : i16 to i32
                                  %c6_i32 = arith.constant 6 : i32
                                  %241 = arith.cmpi eq, %240, %c6_i32 : i32
                                  scf.if %241 {
                                    %242 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                    %243 = memref.alloc() {name = "dec_inst_cinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                                    %244 = hcl.int_to_struct(%242) {unsigned} : i64 -> <i4, i30, i24, i6>
                                    affine.store %244, %243[0] {to = "dec_inst_cinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                                    %245 = affine.load %243[0] {from = "dec_inst_cinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                                    hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                    %246 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%246) {format = "ip=%d ", signedness = "u"} : i16
                                    %247 = hcl.struct_get %245[1] : <i4, i30, i24, i6> -> i30
                                    %248 = hcl.struct_get %245[2] : <i4, i30, i24, i6> -> i24
                                    hcl.print(%247, %248) {format = "cinstload ccode_addr=0x%x ccode_count=0x%x", signedness = "__"} : i30, i24
                                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                    %249 = memref.alloc() {name = "count"} : memref<1xi24>
                                    affine.store %248, %249[0] {to = "count"} : memref<1xi24>
                                    %250 = affine.load %249[0] {from = "count"} : memref<1xi24>
                                    %251 = memref.alloc() {name = "src_addr"} : memref<1xi30>
                                    affine.store %247, %251[0] {to = "src_addr"} : memref<1xi30>
                                    %252 = affine.load %251[0] {from = "src_addr"} : memref<1xi30>
                                    %253 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                                    affine.store %c0_i32, %253[0] {to = "dst_addr", unsigned} : memref<1xi32>
                                    %254 = affine.load %253[0] {from = "dst_addr", unsigned} : memref<1xi32>
                                    %255 = arith.extsi %250 {unsigned} : i24 to i32
                                    %256 = arith.addi %254, %255 {unsigned} : i32
                                    %257 = memref.alloc() {name = "tmp", unsigned} : memref<1xi64>
                                    %c0_i64 = arith.constant {unsigned} 0 : i64
                                    affine.store %c0_i64, %257[0] {to = "tmp", unsigned} : memref<1xi64>
                                    %258 = arith.extsi %250 : i24 to i32
                                    %259 = arith.muli %258, %c2_i32 : i32
                                    %260 = arith.extsi %252 : i30 to i32
                                    %261 = arith.addi %260, %259 : i32
                                    %c33554432_i32 = arith.constant 33554432 : i32
                                    %262 = hcl.create_op_handle "copyN"
                                    %263 = hcl.create_loop_handle %262, "i"
                                    %264 = arith.index_cast %c0_i32_0 : i32 to index
                                    %265 = arith.index_cast %250 : i24 to index
                                    %266 = arith.index_cast %c1_i32_2 : i32 to index
                                    scf.for %arg2 = %264 to %265 step %266 {
                                      %269 = arith.extsi %c0_i32_0 {unsigned} : i32 to i64
                                      affine.store %269, %257[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %270 = affine.load %257[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %c32_i32 = arith.constant 32 : i32
                                      %271 = arith.extsi %c32_i32 {unsigned} : i32 to i64
                                      %272 = arith.extui %270 : i64 to i128
                                      %273 = arith.extui %271 : i64 to i128
                                      %274 = arith.shli %272, %273 : i128
                                      %275 = arith.index_cast %c2_i32 : i32 to index
                                      %276 = arith.muli %arg2, %275 : index
                                      %277 = arith.index_cast %252 : i30 to index
                                      %278 = arith.addi %277, %276 : index
                                      %279 = arith.addi %278, %264 : index
                                      %280 = memref.load %arg0[%279] {from = "hbm", unsigned} : memref<33554432xi32>
                                      %281 = arith.extui %280 : i32 to i128
                                      %282 = arith.ori %274, %281 : i128
                                      %283 = arith.trunci %282 {unsigned} : i128 to i64
                                      affine.store %283, %257[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %284 = affine.load %257[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %285 = arith.extui %284 : i64 to i128
                                      %286 = arith.shli %285, %273 : i128
                                      %287 = arith.addi %278, %266 : index
                                      %288 = memref.load %arg0[%287] {from = "hbm", unsigned} : memref<33554432xi32>
                                      %289 = arith.extui %288 : i32 to i128
                                      %290 = arith.ori %286, %289 : i128
                                      %291 = arith.trunci %290 {unsigned} : i128 to i64
                                      affine.store %291, %257[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %292 = affine.load %257[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %293 = arith.index_cast %254 : i32 to index
                                      %294 = arith.addi %293, %arg2 : index
                                      memref.store %292, %19[%294] {to = "cinstq.alloc_c", unsigned} : memref<8192xi64>
                                    } {loop_name = "i", op_name = "copyN"}
                                    %267 = affine.load %25[0] {from = "flags_active", unsigned} : memref<1xi1>
                                    %268 = arith.extui %267 : i1 to i32
                                    affine.store %96, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
                                    affine.store %96, %26[0] {to = "flags_halt", unsigned} : memref<1xi1>
                                    affine.store %96, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                    affine.store %96, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                    affine.store %96, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                    affine.store %96, %30[0] {to = "count_stop", unsigned} : memref<1xi1>
                                    affine.store %96, %31[0] {to = "addr_stop", unsigned} : memref<1xi1>
                                    affine.store %97, %32[0] {to = "inst_addr", unsigned} : memref<1xi16>
                                    affine.store %97, %33[0] {to = "inst_naddr", unsigned} : memref<1xi16>
                                    affine.store %c0_i32_0, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
                                    affine.store %96, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
                                    affine.store %97, %32[0] {to = "inst_addr", unsigned} : memref<1xi16>
                                    affine.store %192, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
                                  } else {
                                    %242 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                    %243 = arith.extui %242 : i16 to i32
                                    %c7_i32 = arith.constant 7 : i32
                                    %244 = arith.cmpi eq, %243, %c7_i32 : i32
                                    scf.if %244 {
                                      %245 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      %246 = memref.alloc() {name = "dec_inst_xinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                                      %247 = hcl.int_to_struct(%245) {unsigned} : i64 -> <i4, i30, i24, i6>
                                      affine.store %247, %246[0] {to = "dec_inst_xinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                                      %248 = affine.load %246[0] {from = "dec_inst_xinstload"} : memref<1x!hcl.struct<i4, i30, i24, i6>>
                                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                      %249 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                      hcl.print(%249) {format = "ip=%d ", signedness = "u"} : i16
                                      %250 = hcl.struct_get %248[1] : <i4, i30, i24, i6> -> i30
                                      %251 = hcl.struct_get %248[2] : <i4, i30, i24, i6> -> i24
                                      hcl.print(%250, %251) {format = "xinstload xcode_addr=0x%x xcode_count=0x%x", signedness = "__"} : i30, i24
                                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                      %c16_i32 = arith.constant 16 : i32
                                      %252 = arith.extsi %251 : i24 to i32
                                      %253 = arith.remsi %252, %c16_i32 : i32
                                      %254 = memref.alloc() {name = "count"} : memref<1xi24>
                                      affine.store %251, %254[0] {to = "count"} : memref<1xi24>
                                      %255 = affine.load %254[0] {from = "count"} : memref<1xi24>
                                      %256 = memref.alloc() {name = "src_addr"} : memref<1xi30>
                                      affine.store %250, %256[0] {to = "src_addr"} : memref<1xi30>
                                      %257 = affine.load %256[0] {from = "src_addr"} : memref<1xi30>
                                      %258 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                                      affine.store %c0_i32, %258[0] {to = "dst_addr", unsigned} : memref<1xi32>
                                      %259 = affine.load %258[0] {from = "dst_addr", unsigned} : memref<1xi32>
                                      %260 = arith.extsi %255 {unsigned} : i24 to i32
                                      %261 = arith.addi %259, %260 {unsigned} : i32
                                      %262 = memref.alloc() {name = "tmp", unsigned} : memref<1xi128>
                                      %c0_i128 = arith.constant {unsigned} 0 : i128
                                      affine.store %c0_i128, %262[0] {to = "tmp", unsigned} : memref<1xi128>
                                      %263 = arith.extsi %255 : i24 to i32
                                      %264 = arith.muli %263, %c4_i32 : i32
                                      %265 = arith.extsi %257 : i30 to i32
                                      %266 = arith.addi %265, %264 : i32
                                      %c33554432_i32 = arith.constant 33554432 : i32
                                      %267 = hcl.create_op_handle "copyN"
                                      %268 = hcl.create_loop_handle %267, "i"
                                      %269 = arith.index_cast %c0_i32_0 : i32 to index
                                      %270 = arith.index_cast %255 : i24 to index
                                      %271 = arith.index_cast %c1_i32_2 : i32 to index
                                      scf.for %arg2 = %269 to %270 step %271 {
                                        %273 = arith.extsi %c0_i32_0 {unsigned} : i32 to i128
                                        affine.store %273, %262[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %274 = affine.load %262[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %c32_i32 = arith.constant 32 : i32
                                        %275 = arith.extsi %c32_i32 {unsigned} : i32 to i128
                                        %276 = arith.extui %274 : i128 to i256
                                        %277 = arith.extui %275 : i128 to i256
                                        %278 = arith.shli %276, %277 : i256
                                        %279 = arith.index_cast %c4_i32 : i32 to index
                                        %280 = arith.muli %arg2, %279 : index
                                        %281 = arith.index_cast %257 : i30 to index
                                        %282 = arith.addi %281, %280 : index
                                        %283 = arith.addi %282, %269 : index
                                        %284 = memref.load %arg0[%283] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %285 = arith.extui %284 : i32 to i256
                                        %286 = arith.ori %278, %285 : i256
                                        %287 = arith.trunci %286 {unsigned} : i256 to i128
                                        affine.store %287, %262[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %288 = affine.load %262[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %289 = arith.extui %288 : i128 to i256
                                        %290 = arith.shli %289, %277 : i256
                                        %291 = arith.addi %282, %271 : index
                                        %292 = memref.load %arg0[%291] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %293 = arith.extui %292 : i32 to i256
                                        %294 = arith.ori %290, %293 : i256
                                        %295 = arith.trunci %294 {unsigned} : i256 to i128
                                        affine.store %295, %262[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %296 = affine.load %262[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %297 = arith.extui %296 : i128 to i256
                                        %298 = arith.shli %297, %277 : i256
                                        %299 = arith.index_cast %c2_i32 : i32 to index
                                        %300 = arith.addi %282, %299 : index
                                        %301 = memref.load %arg0[%300] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %302 = arith.extui %301 : i32 to i256
                                        %303 = arith.ori %298, %302 : i256
                                        %304 = arith.trunci %303 {unsigned} : i256 to i128
                                        affine.store %304, %262[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %305 = affine.load %262[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %306 = arith.extui %305 : i128 to i256
                                        %307 = arith.shli %306, %277 : i256
                                        %308 = arith.index_cast %c3_i32 : i32 to index
                                        %309 = arith.addi %282, %308 : index
                                        %310 = memref.load %arg0[%309] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %311 = arith.extui %310 : i32 to i256
                                        %312 = arith.ori %307, %311 : i256
                                        %313 = arith.trunci %312 {unsigned} : i256 to i128
                                        affine.store %313, %262[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %314 = affine.load %262[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %315 = arith.index_cast %259 : i32 to index
                                        %316 = arith.addi %315, %arg2 : index
                                        memref.store %314, %17[%316] {to = "xinstq.alloc_c", unsigned} : memref<8192xi128>
                                      } {loop_name = "i", op_name = "copyN"}
                                      %272 = arith.divsi %252, %c16_i32 : i32
                                      affine.store %272, %18[0] {to = "xinstq_bundles", unsigned} : memref<1xi32>
                                    } else {
                                      %245 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                      hcl.print(%245) {format = "%016lx", signedness = "u"} : i64
                                      hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                    }
                                  }
                                }
                              }
                            }
                            %228 = affine.load %15[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                            %229 = arith.addi %228, %c1_i32_2 : i32
                            affine.store %229, %15[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                            affine.store %192, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
                            affine.store %192, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                            affine.store %192, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
                            %230 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
                            %231 = arith.extui %230 : i1 to i32
                            %232 = arith.cmpi eq, %231, %c0_i32_0 : i32
                            scf.if %232 {
                            } else {
                              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                              %233 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                              hcl.print(%233) {format = "ip=%d ", signedness = "u"} : i16
                              hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                              hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                              affine.store %96, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
                            }
                          }
                        }
                      }
                    }
                    %208 = affine.load %15[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                    %209 = arith.addi %208, %c1_i32_2 : i32
                    affine.store %209, %15[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                    affine.store %192, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
                    affine.store %192, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                    affine.store %192, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
                    %210 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
                    %211 = arith.extui %210 : i1 to i32
                    %212 = arith.cmpi eq, %211, %c0_i32_0 : i32
                    scf.if %212 {
                    } else {
                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %213 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%213) {format = "ip=%d ", signedness = "u"} : i16
                      hcl.print(%c0_i32_0) {format = "mwait", signedness = "_"} : i32
                      hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                    }
                  }
                }
              }
            }
            affine.store %96, %13[0] {to = "latstalled", unsigned} : memref<1xi1>
            %183 = affine.load %160[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %184 = arith.cmpi ne, %183, %c0_i32_0 : i32
            scf.if %184 {
              %188 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %188, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
              %189 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %190 = arith.extui %189 : i1 to i32
              %191 = arith.cmpi eq, %190, %c0_i32_0 : i32
            }
            %185 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
            %186 = arith.extui %185 : i1 to i32
            %187 = arith.cmpi eq, %186, %c0_i32_0 : i32
            scf.if %187 {
              %188 = affine.load %14[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
              %189 = arith.addi %188, %c1_i32_2 : i32
              affine.store %189, %14[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
              %190 = affine.load %11[0] {from = "inst_naddr", unsigned} : memref<1xi16>
              affine.store %190, %10[0] {to = "inst_addr", unsigned} : memref<1xi16>
              affine.store %96, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            } else {
              %188 = affine.load %160[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %189 = arith.subi %188, %c2_i32 : i32
              affine.store %189, %12[0] {to = "latency_count", unsigned} : memref<1xi32>
              %190 = affine.load %16[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
              %191 = arith.addi %190, %c1_i32_2 : i32
              affine.store %191, %16[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
              %192 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %192, %13[0] {to = "latstalled", unsigned} : memref<1xi1>
              affine.store %192, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
              %193 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %194 = arith.extui %193 : i1 to i32
              %195 = arith.cmpi eq, %194, %c0_i32_0 : i32
              scf.if %195 {
              } else {
                %196 = affine.load %13[0] {from = "latstalled", unsigned} : memref<1xi1>
                %197 = arith.extui %196 : i1 to i32
                %198 = affine.load %12[0] {from = "latency_count", unsigned} : memref<1xi32>
                %199 = arith.subi %198, %c1_i32_2 : i32
                affine.store %199, %12[0] {to = "latency_count", unsigned} : memref<1xi32>
                %200 = affine.load %16[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                %201 = arith.addi %200, %c1_i32_2 : i32
                affine.store %201, %16[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                affine.store %192, %13[0] {to = "latstalled", unsigned} : memref<1xi1>
                affine.store %192, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
                %202 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %203 = arith.extui %202 : i1 to i32
                %204 = arith.cmpi eq, %203, %c0_i32_0 : i32
              }
            }
          }
        }
        scf.yield
      }
      affine.store %96, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
      affine.store %96, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
      affine.store %96, %30[0] {to = "count_stop", unsigned} : memref<1xi1>
      affine.store %96, %31[0] {to = "addr_stop", unsigned} : memref<1xi1>
      %126 = affine.load %25[0] {from = "flags_active", unsigned} : memref<1xi1>
      %127 = arith.extui %126 : i1 to i32
      %128 = arith.cmpi ne, %127, %c0_i32_0 : i32
      %129 = affine.load %29[0] {from = "flags_break", unsigned} : memref<1xi1>
      %130 = arith.extui %129 : i1 to i32
      %131 = arith.cmpi eq, %130, %c0_i32_0 : i32
      scf.while : () -> () {
        %141 = arith.andi %128, %131 : i1
        scf.condition(%141)
      } do {
        %141 = affine.load %34[0] {from = "latency_count", unsigned} : memref<1xi32>
        %142 = arith.cmpi eq, %141, %c0_i32_0 : i32
        scf.if %142 {
          %143 = affine.load %32[0] {from = "inst_addr", unsigned} : memref<1xi16>
          %144 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi16>
          affine.store %143, %144[0] {to = "_cur_address", unsigned} : memref<1xi16>
          %c1_i32_2 = arith.constant 1 : i32
          %145 = arith.extui %143 : i16 to i32
          %146 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi16>
          affine.store %143, %146[0] {to = "read_addr", unsigned} : memref<1xi16>
          %147 = affine.load %146[0] {from = "read_addr", unsigned} : memref<1xi16>
          %148 = arith.extui %147 : i16 to i32
          %149 = arith.addi %148, %c1_i32_2 : i32
          %c8192_i32 = arith.constant 8192 : i32
          %150 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi64>
          %151 = hcl.create_op_handle "Mem.read_c"
          %152 = hcl.create_loop_handle %151, "i"
          %153 = affine.load %146[0] {from = "read_addr", unsigned} : memref<1xi16>
          %154 = arith.index_cast %153 : i16 to index
          %155 = arith.addi %154, %c0 : index
          %156 = memref.load %19[%155] {from = "cinstq.alloc_c", unsigned} : memref<8192xi64>
          affine.store %156, %150[%c0] {to = "Mem.read_c"} : memref<1xi64>
          %157 = affine.load %150[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
          %158 = memref.alloc() {name = "inst", unsigned} : memref<1xi64>
          affine.store %157, %158[0] {to = "inst", unsigned} : memref<1xi64>
          %159 = affine.load %158[0] {from = "inst", unsigned} : memref<1xi64>
          %160 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
          affine.store %c0_i32, %160[0] {to = "inst_lat", unsigned} : memref<1xi32>
          %161 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi64>
          affine.store %159, %161[0] {to = "decode_inst", unsigned} : memref<1xi64>
          %162 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
          affine.store %c0_i16, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
          %163 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %164 = memref.alloc() {name = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
          %165 = hcl.int_to_struct(%163) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
          affine.store %165, %164[0] {to = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
          %166 = affine.load %164[0] {from = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
          %167 = hcl.struct_get %166[3] : <i9, i2, i2, i1, i2, i48> -> i1
          %168 = arith.extui %167 : i1 to i32
          %169 = arith.cmpi eq, %168, %c1_i32_2 : i32
          %170 = hcl.struct_get %166[2] : <i9, i2, i2, i1, i2, i48> -> i2
          %171 = arith.extsi %170 : i2 to i32
          %172 = arith.cmpi eq, %171, %c1_i32_2 : i32
          %173 = arith.andi %169, %172 : i1
          scf.if %173 {
            affine.store %97, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
          } else {
            %183 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %184 = memref.alloc() {name = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
            %185 = hcl.int_to_struct(%183) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
            affine.store %185, %184[0] {to = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
            %186 = affine.load %184[0] {from = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
            %187 = hcl.struct_get %186[3] : <i9, i2, i2, i1, i2, i48> -> i1
            %188 = arith.extui %187 : i1 to i32
            %189 = arith.cmpi eq, %188, %c1_i32_2 : i32
            %190 = hcl.struct_get %186[2] : <i9, i2, i2, i1, i2, i48> -> i2
            %c2_i32 = arith.constant 2 : i32
            %191 = arith.extsi %190 : i2 to i32
            %192 = arith.cmpi eq, %191, %c2_i32 : i32
            %193 = arith.andi %189, %192 : i1
            scf.if %193 {
              %194 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
              affine.store %194, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %194 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %195 = memref.alloc() {name = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i1, i1, i2, i1, i2, i48>>
              %196 = hcl.int_to_struct(%194) {unsigned} : i64 -> <i9, i1, i1, i2, i1, i2, i48>
              affine.store %196, %195[0] {to = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i1, i1, i2, i1, i2, i48>>
              %197 = affine.load %195[0] {from = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i1, i1, i2, i1, i2, i48>>
              %198 = hcl.struct_get %197[4] : <i9, i1, i1, i2, i1, i2, i48> -> i1
              %199 = arith.extui %198 : i1 to i32
              %200 = arith.cmpi eq, %199, %c1_i32_2 : i32
              %201 = hcl.struct_get %197[3] : <i9, i1, i1, i2, i1, i2, i48> -> i2
              %202 = arith.extsi %201 : i2 to i32
              %203 = arith.cmpi eq, %202, %c0_i32_0 : i32
              %204 = arith.andi %200, %203 : i1
              scf.if %204 {
                %205 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %205, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %205 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %206 = memref.alloc() {name = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                %207 = hcl.int_to_struct(%205) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                affine.store %207, %206[0] {to = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                %208 = affine.load %206[0] {from = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                %209 = hcl.struct_get %208[3] : <i9, i2, i2, i1, i2, i48> -> i1
                %210 = arith.extui %209 : i1 to i32
                %211 = arith.cmpi eq, %210, %c0_i32_0 : i32
                %212 = hcl.struct_get %208[4] : <i9, i2, i2, i1, i2, i48> -> i2
                %213 = arith.extsi %212 : i2 to i32
                %214 = arith.cmpi eq, %213, %c1_i32_2 : i32
                %215 = arith.andi %211, %214 : i1
                scf.if %215 {
                  %c3_i32 = arith.constant 3 : i32
                  %216 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %216, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %216 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                  %217 = memref.alloc() {name = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                  %218 = hcl.int_to_struct(%216) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                  affine.store %218, %217[0] {to = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                  %219 = affine.load %217[0] {from = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                  %220 = hcl.struct_get %219[3] : <i9, i2, i2, i1, i2, i48> -> i1
                  %221 = arith.extui %220 : i1 to i32
                  %222 = arith.cmpi eq, %221, %c0_i32_0 : i32
                  %223 = hcl.struct_get %219[4] : <i9, i2, i2, i1, i2, i48> -> i2
                  %224 = arith.extsi %223 : i2 to i32
                  %225 = arith.cmpi eq, %224, %c0_i32_0 : i32
                  %226 = arith.andi %222, %225 : i1
                  scf.if %226 {
                    %c4_i32 = arith.constant 4 : i32
                    %227 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %227, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %227 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %228 = memref.alloc() {name = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                    %229 = hcl.int_to_struct(%227) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                    affine.store %229, %228[0] {to = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                    %230 = affine.load %228[0] {from = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                    %231 = hcl.struct_get %230[3] : <i9, i2, i2, i1, i2, i48> -> i1
                    %232 = arith.extui %231 : i1 to i32
                    %233 = arith.cmpi eq, %232, %c0_i32_0 : i32
                    %234 = hcl.struct_get %230[4] : <i9, i2, i2, i1, i2, i48> -> i2
                    %235 = arith.extsi %234 : i2 to i32
                    %236 = arith.cmpi eq, %235, %c2_i32 : i32
                    %237 = hcl.struct_get %230[0] : <i9, i2, i2, i1, i2, i48> -> i9
                    %238 = arith.extsi %237 : i9 to i32
                    %239 = arith.cmpi eq, %238, %c0_i32_0 : i32
                    %240 = arith.andi %233, %236 : i1
                    %241 = arith.andi %240, %239 : i1
                    scf.if %241 {
                      %c5_i32 = arith.constant 5 : i32
                      %242 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %242, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %242 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                      %243 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                      %244 = hcl.int_to_struct(%242) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                      affine.store %244, %243[0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                      %245 = affine.load %243[0] {from = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                      %246 = hcl.struct_get %245[3] : <i9, i2, i2, i1, i2, i48> -> i1
                      %247 = arith.extui %246 : i1 to i32
                      %248 = arith.cmpi eq, %247, %c0_i32_0 : i32
                      %249 = hcl.struct_get %245[4] : <i9, i2, i2, i1, i2, i48> -> i2
                      %250 = arith.extsi %249 : i2 to i32
                      %251 = arith.cmpi eq, %250, %c2_i32 : i32
                      %252 = hcl.struct_get %245[0] : <i9, i2, i2, i1, i2, i48> -> i9
                      %253 = arith.extsi %252 : i9 to i32
                      %254 = arith.cmpi eq, %253, %c2_i32 : i32
                      %255 = arith.andi %248, %251 : i1
                      %256 = arith.andi %255, %254 : i1
                      scf.if %256 {
                        %c6_i32 = arith.constant 6 : i32
                        %257 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %257, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %257 = affine.load %161[0] {from = "decode_inst", unsigned} : memref<1xi64>
                        %258 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                        %259 = hcl.int_to_struct(%257) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                        affine.store %259, %258[0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                        %260 = affine.load %258[0] {from = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                        %261 = hcl.struct_get %260[3] : <i9, i2, i2, i1, i2, i48> -> i1
                        %262 = arith.extui %261 : i1 to i32
                        %263 = arith.cmpi eq, %262, %c0_i32_0 : i32
                        %264 = hcl.struct_get %260[4] : <i9, i2, i2, i1, i2, i48> -> i2
                        %265 = arith.extsi %264 : i2 to i32
                        %266 = arith.cmpi eq, %265, %c2_i32 : i32
                        %267 = hcl.struct_get %260[0] : <i9, i2, i2, i1, i2, i48> -> i9
                        %c3_i32 = arith.constant 3 : i32
                        %268 = arith.extsi %267 : i9 to i32
                        %269 = arith.cmpi eq, %268, %c3_i32 : i32
                        %270 = arith.andi %263, %266 : i1
                        %271 = arith.andi %270, %269 : i1
                        scf.if %271 {
                          %c7_i32 = arith.constant 7 : i32
                          %272 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %272, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %c8_i32 = arith.constant 8 : i32
                          %272 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                          affine.store %272, %162[0] {to = "inst_id", unsigned} : memref<1xi16>
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          %174 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
          affine.store %false, %174[0] {to = "tmp", unsigned} : memref<1xi1>
          %175 = affine.load %160[0] {from = "inst_lat", unsigned} : memref<1xi32>
          %176 = arith.cmpi sle, %175, %c1_i32_2 : i32
          scf.if %176 {
            %183 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %183, %174[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %177 = affine.load %35[0] {from = "latstalled", unsigned} : memref<1xi1>
          %178 = arith.extui %177 : i1 to i32
          %179 = arith.cmpi eq, %178, %c1_i32_2 : i32
          scf.if %179 {
            %183 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %183, %174[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %180 = affine.load %174[0] {from = "tmp", unsigned} : memref<1xi1>
          %181 = arith.extui %180 : i1 to i32
          %182 = arith.cmpi ne, %181, %c0_i32_0 : i32
          scf.if %182 {
            %183 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi64>
            affine.store %159, %183[0] {to = "execute_inst", unsigned} : memref<1xi64>
            %184 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
            %185 = arith.extui %184 : i16 to i32
            %186 = arith.cmpi eq, %185, %c0_i32_0 : i32
            scf.if %186 {
              %192 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %193 = memref.alloc() {name = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
              %194 = hcl.int_to_struct(%192) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
              affine.store %194, %193[0] {to = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
              %195 = affine.load %193[0] {from = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
              %196 = memref.alloc() {name = "tiles_active", unsigned} : memref<1xi1>
              affine.store %false, %196[0] {to = "tiles_active", unsigned} : memref<1xi1>
              %197 = affine.load %64[0] {from = "flags_active", unsigned} : memref<1xi1>
              %198 = arith.extui %197 : i1 to i32
              %199 = arith.cmpi ne, %198, %c0_i32_0 : i32
              scf.if %199 {
                %203 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %203, %196[0] {to = "tiles_active", unsigned} : memref<1xi1>
              }
              %200 = affine.load %196[0] {from = "tiles_active", unsigned} : memref<1xi1>
              %201 = arith.extui %200 : i1 to i32
              %202 = arith.cmpi ne, %201, %c0_i32_0 : i32
              scf.if %202 {
                %203 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                %204 = arith.extui %203 : i1 to i32
                %205 = arith.cmpi eq, %204, %c0_i32_0 : i32
                scf.if %205 {
                  hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %212 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                  hcl.print(%212) {format = "ip=%d ", signedness = "u"} : i16
                  %213 = hcl.struct_get %195[0] : <i9, i2, i2, i1, i2, i48> -> i9
                  hcl.print(%213) {format = "ifetch bundle=0x%x", signedness = "_"} : i9
                  hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                } else {
                  %212 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %213 = arith.extui %212 : i16 to i32
                  %214 = arith.cmpi eq, %213, %c1_i32_2 : i32
                  scf.if %214 {
                    %215 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                    %216 = memref.alloc() {name = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                    %217 = hcl.int_to_struct(%215) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                    affine.store %217, %216[0] {to = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                    %218 = affine.load %216[0] {from = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                    %219 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                    hcl.print(%219) {format = "ip=%d ", signedness = "u"} : i16
                    %220 = hcl.struct_get %218[5] : <i9, i2, i2, i1, i2, i48> -> i48
                    hcl.print(%220) {format = "bload spadaddr=0x%x", signedness = "_"} : i48
                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                    %221 = memref.alloc() {name = "addr", unsigned} : memref<1xi32>
                    %222 = arith.trunci %220 {unsigned} : i48 to i32
                    affine.store %222, %221[0] {to = "addr", unsigned} : memref<1xi32>
                    %223 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %224 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %223, %224[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %225 = affine.load %224[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %226 = arith.addi %225, %c1_i32_2 : i32
                    %c33554432_i32 = arith.constant 33554432 : i32
                    %227 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %228 = hcl.create_op_handle "Mem.read_c"
                    %229 = hcl.create_loop_handle %228, "i"
                    %230 = affine.load %224[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %231 = arith.index_cast %230 : i32 to index
                    %232 = arith.addi %231, %c0 : index
                    %233 = memref.load %arg0[%232] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %233, %227[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %234 = affine.load %227[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %234, %40[0] {to = "residue_count", unsigned} : memref<1xi32>
                    %235 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %236 = arith.addi %235, %c1_i32_2 : i32
                    affine.store %236, %221[0] {to = "addr", unsigned} : memref<1xi32>
                    %237 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %238 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %237, %238[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %239 = affine.load %238[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %240 = arith.addi %239, %c1_i32_2 : i32
                    %241 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %242 = hcl.create_op_handle "Mem.read_c"
                    %243 = hcl.create_loop_handle %242, "i"
                    %244 = affine.load %238[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %245 = arith.index_cast %244 : i32 to index
                    %246 = arith.addi %245, %c0 : index
                    %247 = memref.load %arg0[%246] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %247, %241[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %248 = affine.load %241[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %248, %41[0] {to = "stage_count", unsigned} : memref<1xi32>
                    %249 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %250 = arith.addi %249, %c1_i32_2 : i32
                    affine.store %250, %221[0] {to = "addr", unsigned} : memref<1xi32>
                    %251 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %252 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %251, %252[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %253 = affine.load %252[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %254 = arith.addi %253, %c1_i32_2 : i32
                    %255 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %256 = hcl.create_op_handle "Mem.read_c"
                    %257 = hcl.create_loop_handle %256, "i"
                    %258 = affine.load %252[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %259 = arith.index_cast %258 : i32 to index
                    %260 = arith.addi %259, %c0 : index
                    %261 = memref.load %arg0[%260] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %261, %255[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %262 = affine.load %255[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %262, %42[0] {to = "tw_count", unsigned} : memref<1xi32>
                    %263 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %264 = arith.addi %263, %c1_i32_2 : i32
                    affine.store %264, %221[0] {to = "addr", unsigned} : memref<1xi32>
                    %265 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %266 = affine.load %40[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %267 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                    affine.store %266, %267[0] {to = "count", unsigned} : memref<1xi32>
                    %268 = affine.load %267[0] {from = "count", unsigned} : memref<1xi32>
                    %269 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %265, %269[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %270 = affine.load %269[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %271 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %271[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %272 = affine.load %271[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %273 = arith.addi %270, %268 {unsigned} : i32
                    %274 = hcl.create_op_handle "copyN"
                    %275 = hcl.create_loop_handle %274, "i"
                    %276 = arith.index_cast %c0_i32_0 : i32 to index
                    %277 = arith.index_cast %268 : i32 to index
                    %278 = arith.index_cast %c1_i32_2 : i32 to index
                    scf.for %arg2 = %276 to %277 step %278 {
                      %314 = arith.index_cast %270 : i32 to index
                      %315 = arith.addi %314, %arg2 : index
                      %316 = memref.load %arg0[%315] {from = "hbm", unsigned} : memref<33554432xi32>
                      %317 = arith.index_cast %272 : i32 to index
                      %318 = arith.addi %317, %arg2 : index
                      memref.store %316, %43[%318] {to = "residues.alloc_c", unsigned} : memref<64xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %279 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %280 = affine.load %40[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %281 = arith.addi %279, %280 {unsigned} : i32
                    affine.store %281, %221[0] {to = "addr", unsigned} : memref<1xi32>
                    %282 = affine.load %40[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %283 = affine.load %41[0] {from = "stage_count", unsigned} : memref<1xi32>
                    %284 = arith.muli %282, %283 {unsigned} : i32
                    %285 = affine.load %42[0] {from = "tw_count", unsigned} : memref<1xi32>
                    %286 = arith.muli %284, %285 {unsigned} : i32
                    %287 = arith.muli %286, %c8192_i32 : i32
                    %288 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %289 = memref.alloc() {name = "count"} : memref<1xi32>
                    affine.store %287, %289[0] {to = "count"} : memref<1xi32>
                    %290 = affine.load %289[0] {from = "count"} : memref<1xi32>
                    %291 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %288, %291[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %292 = affine.load %291[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %293 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %293[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %294 = affine.load %293[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %295 = arith.addi %292, %290 : i32
                    %296 = hcl.create_op_handle "copyN"
                    %297 = hcl.create_loop_handle %296, "i"
                    %298 = arith.index_cast %290 : i32 to index
                    scf.for %arg2 = %276 to %298 step %278 {
                      %314 = arith.index_cast %292 : i32 to index
                      %315 = arith.addi %314, %arg2 : index
                      %316 = memref.load %arg0[%315] {from = "hbm", unsigned} : memref<33554432xi32>
                      %317 = arith.index_cast %294 : i32 to index
                      %318 = arith.addi %317, %arg2 : index
                      memref.store %316, %44[%318] {to = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %299 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %300 = arith.addi %299, %287 : i32
                    affine.store %300, %221[0] {to = "addr", unsigned} : memref<1xi32>
                    %301 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %302 = memref.alloc() {name = "count"} : memref<1xi32>
                    affine.store %287, %302[0] {to = "count"} : memref<1xi32>
                    %303 = affine.load %302[0] {from = "count"} : memref<1xi32>
                    %304 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %301, %304[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %305 = affine.load %304[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %306 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %306[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %307 = affine.load %306[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %308 = arith.addi %305, %303 : i32
                    %309 = hcl.create_op_handle "copyN"
                    %310 = hcl.create_loop_handle %309, "i"
                    %311 = arith.index_cast %303 : i32 to index
                    scf.for %arg2 = %276 to %311 step %278 {
                      %314 = arith.index_cast %305 : i32 to index
                      %315 = arith.addi %314, %arg2 : index
                      %316 = memref.load %arg0[%315] {from = "hbm", unsigned} : memref<33554432xi32>
                      %317 = arith.index_cast %307 : i32 to index
                      %318 = arith.addi %317, %arg2 : index
                      memref.store %316, %45[%318] {to = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %312 = affine.load %221[0] {from = "addr", unsigned} : memref<1xi32>
                    %313 = arith.addi %312, %287 : i32
                    affine.store %313, %221[0] {to = "addr", unsigned} : memref<1xi32>
                  } else {
                    %215 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                    %216 = arith.extui %215 : i16 to i32
                    %c2_i32 = arith.constant 2 : i32
                    %217 = arith.cmpi eq, %216, %c2_i32 : i32
                    scf.if %217 {
                      %218 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                      %219 = memref.alloc() {name = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i1, i1, i2, i1, i2, i48>>
                      %220 = hcl.int_to_struct(%218) {unsigned} : i64 -> <i9, i1, i1, i2, i1, i2, i48>
                      affine.store %220, %219[0] {to = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i1, i1, i2, i1, i2, i48>>
                      %221 = affine.load %219[0] {from = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i1, i1, i2, i1, i2, i48>>
                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                      %222 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%222) {format = "ip=%d ", signedness = "u"} : i16
                      %223 = hcl.struct_get %221[0] : <i9, i1, i1, i2, i1, i2, i48> -> i9
                      %224 = hcl.struct_get %221[1] : <i9, i1, i1, i2, i1, i2, i48> -> i1
                      %225 = hcl.struct_get %221[6] : <i9, i1, i1, i2, i1, i2, i48> -> i48
                      hcl.print(%223, %224, %225) {format = "cload rfaddr=0x%x dbg=0x%x spadaddr=0x%x", signedness = "___"} : i9, i1, i48
                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                      %c13_i32 = arith.constant 13 : i32
                      %226 = arith.extsi %c13_i32 : i32 to i48
                      %227 = arith.extsi %225 : i48 to i96
                      %228 = arith.extsi %226 : i48 to i96
                      %229 = arith.shli %227, %228 : i96
                      %230 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %231 = hcl.int_to_struct(%223) {unsigned} : i9 -> <i7, i2>
                      affine.store %231, %230[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %232 = affine.load %230[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %233 = hcl.struct_get %232[1] : <i7, i2> -> i2
                      %234 = hcl.struct_get %232[0] : <i7, i2> -> i7
                      %235 = arith.extsi %c0_i32_0 : i32 to i96
                      %236 = arith.addi %229, %235 : i96
                      %237 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                      %c8192_i32_3 = arith.constant {unsigned} 8192 : i32
                      affine.store %c8192_i32_3, %237[0] {to = "count", unsigned} : memref<1xi32>
                      %238 = affine.load %237[0] {from = "count", unsigned} : memref<1xi32>
                      %239 = memref.alloc() {name = "src_addr"} : memref<1xi96>
                      affine.store %236, %239[0] {to = "src_addr"} : memref<1xi96>
                      %240 = affine.load %239[0] {from = "src_addr"} : memref<1xi96>
                      %241 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                      affine.store %c0_i32, %241[0] {to = "dst_addr", unsigned} : memref<1xi32>
                      %242 = affine.load %241[0] {from = "dst_addr", unsigned} : memref<1xi32>
                      %243 = arith.extui %238 : i32 to i96
                      %244 = arith.addi %240, %243 : i96
                      %c33554432_i32 = arith.constant 33554432 : i32
                      %245 = arith.extsi %c33554432_i32 : i32 to i96
                      %246 = hcl.create_op_handle "copyN"
                      %247 = hcl.create_loop_handle %246, "i"
                      %248 = arith.index_cast %c0_i32_0 : i32 to index
                      %249 = arith.index_cast %238 : i32 to index
                      %250 = arith.index_cast %c1_i32_2 : i32 to index
                      scf.for %arg2 = %248 to %249 step %250 {
                        %251 = arith.index_cast %240 : i96 to index
                        %252 = arith.addi %251, %arg2 : index
                        %253 = memref.load %0[%252] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                        %254 = arith.index_cast %242 : i32 to index
                        %255 = arith.addi %254, %arg2 : index
                        %256 = arith.index_cast %233 : i2 to index
                        %257 = arith.index_cast %234 : i7 to index
                        memref.store %253, %39[%256, %257, %255] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "copyN"}
                    } else {
                      %218 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %219 = arith.extui %218 : i16 to i32
                      %c3_i32 = arith.constant 3 : i32
                      %220 = arith.cmpi eq, %219, %c3_i32 : i32
                      scf.if %220 {
                        %221 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                        %222 = memref.alloc() {name = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                        %223 = hcl.int_to_struct(%221) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                        affine.store %223, %222[0] {to = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                        %224 = affine.load %222[0] {from = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                        %225 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                        %226 = arith.extui %225 : i3 to i32
                        %227 = arith.cmpi eq, %226, %c0_i32_0 : i32
                        scf.if %227 {
                          %228 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                          %229 = arith.extui %228 : i1 to i32
                          %230 = arith.cmpi eq, %229, %c0_i32_0 : i32
                          scf.if %230 {
                            hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                            %244 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                            hcl.print(%244) {format = "ip=%d ", signedness = "u"} : i16
                            %245 = hcl.struct_get %224[5] : <i9, i2, i2, i1, i2, i48> -> i48
                            hcl.print(%245) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                            hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                          }
                          %231 = arith.trunci %c1_i32_2 {unsigned} : i32 to i3
                          affine.store %231, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                          affine.store %96, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                          %232 = hcl.struct_get %224[5] : <i9, i2, i2, i1, i2, i48> -> i48
                          %c13_i32 = arith.constant 13 : i32
                          %233 = arith.extsi %c13_i32 : i32 to i48
                          %234 = arith.extsi %232 : i48 to i96
                          %235 = arith.extsi %233 : i48 to i96
                          %236 = arith.shli %234, %235 : i96
                          %237 = arith.trunci %236 {unsigned} : i96 to i48
                          affine.store %237, %24[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
                          %238 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                          %239 = arith.addi %238, %c1_i32_2 : i32
                          affine.store %239, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                          %240 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                          affine.store %240, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                          affine.store %240, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                          affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                          %241 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                          %242 = arith.extui %241 : i1 to i32
                          %243 = arith.cmpi eq, %242, %c0_i32_0 : i32
                          scf.if %243 {
                          } else {
                            %244 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                            %245 = arith.extui %244 : i3 to i32
                            %246 = arith.cmpi eq, %245, %c1_i32_2 : i32
                            scf.if %246 {
                              %247 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                              %248 = arith.extui %247 : i1 to i32
                              %249 = arith.cmpi eq, %248, %c0_i32_0 : i32
                              scf.if %249 {
                                hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                %258 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                hcl.print(%258) {format = "ip=%d ", signedness = "u"} : i16
                                hcl.print(%232) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                              }
                              %250 = affine.load %23[0] {from = "cstore_valid", unsigned} : memref<1xi1>
                              %251 = arith.extui %250 : i1 to i32
                              %252 = arith.cmpi eq, %251, %c1_i32_2 : i32
                              scf.if %252 {
                                %258 = arith.trunci %c2_i32 {unsigned} : i32 to i3
                                affine.store %258, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                              }
                              %253 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                              %254 = arith.addi %253, %c1_i32_2 : i32
                              affine.store %254, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                              affine.store %240, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                              affine.store %240, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                              affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                              %255 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                              %256 = arith.extui %255 : i1 to i32
                              %257 = arith.cmpi eq, %256, %c0_i32_0 : i32
                              scf.if %257 {
                              } else {
                                %258 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                %259 = arith.extui %258 : i3 to i32
                                %260 = arith.cmpi ne, %259, %c3_i32 : i32
                                scf.if %260 {
                                  %261 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                  %262 = arith.extui %261 : i1 to i32
                                  %263 = arith.cmpi eq, %262, %c0_i32_0 : i32
                                  scf.if %263 {
                                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                    %273 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%273) {format = "ip=%d ", signedness = "u"} : i16
                                    hcl.print(%232) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                    hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                  } else {
                                    %273 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                    %274 = arith.extui %273 : i16 to i32
                                    %c4_i32 = arith.constant 4 : i32
                                    %275 = arith.cmpi eq, %274, %c4_i32 : i32
                                    scf.if %275 {
                                      %276 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      %277 = memref.alloc() {name = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                      %278 = hcl.int_to_struct(%276) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                                      affine.store %278, %277[0] {to = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                      %279 = affine.load %277[0] {from = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                      %280 = affine.load %20[0] {from = "nop_count", unsigned} : memref<1xi32>
                                      %281 = hcl.struct_get %279[0] : <i9, i2, i2, i1, i2, i48> -> i9
                                      %282 = arith.extsi %281 {unsigned} : i9 to i32
                                      %283 = arith.cmpi ult, %280, %282 : i32
                                      scf.if %283 {
                                        %284 = affine.load %20[0] {from = "nop_count", unsigned} : memref<1xi32>
                                        %285 = arith.addi %284, %c1_i32_2 : i32
                                        affine.store %285, %20[0] {to = "nop_count", unsigned} : memref<1xi32>
                                        %286 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                        %287 = arith.addi %286, %c1_i32_2 : i32
                                        affine.store %287, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                        affine.store %240, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                        affine.store %240, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                        affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                        %288 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                        %289 = arith.extui %288 : i1 to i32
                                        %290 = arith.cmpi eq, %289, %c0_i32_0 : i32
                                        %291 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                        %292 = arith.extui %291 : i1 to i32
                                        %293 = arith.cmpi eq, %292, %c0_i32_0 : i32
                                        scf.if %293 {
                                          hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                          %294 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                          hcl.print(%294) {format = "ip=%d ", signedness = "u"} : i16
                                          hcl.print(%281) {format = "nop count=0x%x", signedness = "_"} : i9
                                          hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                        } else {
                                          affine.store %c0_i32_0, %20[0] {to = "nop_count", unsigned} : memref<1xi32>
                                          affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                          %294 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                          %295 = arith.extui %294 : i1 to i32
                                          %296 = arith.cmpi eq, %295, %c0_i32_0 : i32
                                          scf.if %296 {
                                          } else {
                                            %298 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                            %299 = arith.extui %298 : i16 to i32
                                            %c5_i32 = arith.constant 5 : i32
                                            %300 = arith.cmpi eq, %299, %c5_i32 : i32
                                            scf.if %300 {
                                              %301 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                              %302 = memref.alloc() {name = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                              %303 = hcl.int_to_struct(%301) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                                              affine.store %303, %302[0] {to = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                              hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                              %304 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                              hcl.print(%304) {format = "ip=%d ", signedness = "u"} : i16
                                              hcl.print(%c0_i32_0) {format = "chalt", signedness = "_"} : i32
                                              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                              affine.store %240, %26[0] {to = "flags_halt", unsigned} : memref<1xi1>
                                              affine.store %96, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
                                              affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                              %305 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                              %306 = arith.extui %305 : i1 to i32
                                              %307 = arith.cmpi eq, %306, %c0_i32_0 : i32
                                              scf.if %307 {
                                              } else {
                                                %308 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                                %309 = arith.extui %308 : i16 to i32
                                                %c6_i32 = arith.constant 6 : i32
                                                %310 = arith.cmpi eq, %309, %c6_i32 : i32
                                                scf.if %310 {
                                                  %311 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                  %312 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                  %313 = hcl.int_to_struct(%311) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                                                  affine.store %313, %312[0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                  %314 = affine.load %21[0] {from = "csyncm", unsigned} : memref<1xi1>
                                                  %315 = arith.extui %314 : i1 to i32
                                                  %316 = arith.cmpi eq, %315, %c0_i32_0 : i32
                                                  scf.if %316 {
                                                    %317 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                                    %318 = arith.extui %317 : i1 to i32
                                                    %319 = arith.cmpi eq, %318, %c0_i32_0 : i32
                                                    scf.if %319 {
                                                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                      %325 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                      hcl.print(%325) {format = "ip=%d ", signedness = "u"} : i16
                                                      hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                                                      hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                                    } else {
                                                      %325 = affine.load %162[0] {from = "inst_id", unsigned} : memref<1xi16>
                                                      %326 = arith.extui %325 : i16 to i32
                                                      %c7_i32 = arith.constant 7 : i32
                                                      %327 = arith.cmpi eq, %326, %c7_i32 : i32
                                                      scf.if %327 {
                                                        %328 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                        %329 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                        %330 = hcl.int_to_struct(%328) {unsigned} : i64 -> <i9, i2, i2, i1, i2, i48>
                                                        affine.store %330, %329[0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                        hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                        %331 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                        hcl.print(%331) {format = "ip=%d ", signedness = "u"} : i16
                                                        hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                                                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                                        affine.store %240, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
                                                      } else {
                                                        %328 = affine.load %183[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                        hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                                        hcl.print(%328) {format = "%016lx", signedness = "u"} : i64
                                                        hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                                      }
                                                    }
                                                    %320 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                                    %321 = arith.addi %320, %c1_i32_2 : i32
                                                    affine.store %321, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                                    affine.store %240, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                                    affine.store %240, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                                    affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                                    %322 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                                    %323 = arith.extui %322 : i1 to i32
                                                    %324 = arith.cmpi eq, %323, %c0_i32_0 : i32
                                                    scf.if %324 {
                                                    } else {
                                                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                      %325 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                      hcl.print(%325) {format = "ip=%d ", signedness = "u"} : i16
                                                      hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                                                      hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                                                      affine.store %96, %21[0] {to = "csyncm", unsigned} : memref<1xi1>
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                          hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                          %297 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                          hcl.print(%297) {format = "ip=%d ", signedness = "u"} : i16
                                          hcl.print(%281) {format = "nop count=0x%x", signedness = "_"} : i9
                                          hcl.print(%c0_i32_0) {format = "    <break>\0A", signedness = "_"} : i32
                                        }
                                      }
                                    }
                                  }
                                  %264 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                  %265 = arith.extui %264 : i3 to i32
                                  %266 = arith.addi %265, %c1_i32_2 : i32
                                  %267 = arith.trunci %266 {unsigned} : i32 to i3
                                  affine.store %267, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                                  %268 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                  %269 = arith.addi %268, %c1_i32_2 : i32
                                  affine.store %269, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                  affine.store %240, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                  affine.store %240, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                  affine.store %240, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                  %270 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                  %271 = arith.extui %270 : i1 to i32
                                  %272 = arith.cmpi eq, %271, %c0_i32_0 : i32
                                  scf.if %272 {
                                  } else {
                                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                    %273 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%273) {format = "ip=%d ", signedness = "u"} : i16
                                    hcl.print(%232) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                    hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                                    affine.store %98, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                                    affine.store %96, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
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
                %206 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                %207 = arith.addi %206, %c1_i32_2 : i32
                affine.store %207, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                %208 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %208, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                affine.store %208, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                affine.store %208, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                %209 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %210 = arith.extui %209 : i1 to i32
                %211 = arith.cmpi eq, %210, %c0_i32_0 : i32
                scf.if %211 {
                } else {
                  hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %212 = affine.load %144[0] {from = "_cur_address", unsigned} : memref<1xi16>
                  hcl.print(%212) {format = "ip=%d ", signedness = "u"} : i16
                  %213 = hcl.struct_get %195[0] : <i9, i2, i2, i1, i2, i48> -> i9
                  hcl.print(%213) {format = "ifetch bundle=0x%x", signedness = "_"} : i9
                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                  %c16_i32 = arith.constant 16 : i32
                  %214 = arith.extsi %213 : i9 to i32
                  %215 = arith.muli %214, %c16_i32 : i32
                  %216 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                  %c16_i32_3 = arith.constant {unsigned} 16 : i32
                  affine.store %c16_i32_3, %216[0] {to = "count", unsigned} : memref<1xi32>
                  %217 = affine.load %216[0] {from = "count", unsigned} : memref<1xi32>
                  %218 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                  affine.store %215, %218[0] {to = "src_addr"} : memref<1xi32>
                  %219 = affine.load %218[0] {from = "src_addr"} : memref<1xi32>
                  %220 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %220[0] {to = "dst_addr", unsigned} : memref<1xi32>
                  %221 = affine.load %220[0] {from = "dst_addr", unsigned} : memref<1xi32>
                  %222 = arith.addi %219, %217 {unsigned} : i32
                  %223 = hcl.create_op_handle "copyN"
                  %224 = hcl.create_loop_handle %223, "i"
                  %225 = arith.index_cast %c0_i32_0 : i32 to index
                  %226 = arith.index_cast %217 : i32 to index
                  %227 = arith.index_cast %c1_i32_2 : i32 to index
                  scf.for %arg2 = %225 to %226 step %227 {
                    %229 = arith.index_cast %219 : i32 to index
                    %230 = arith.addi %229, %arg2 : index
                    %231 = memref.load %17[%230] {from = "xinstq.alloc_c", unsigned} : memref<8192xi128>
                    %232 = arith.index_cast %221 : i32 to index
                    %233 = arith.addi %232, %arg2 : index
                    memref.store %231, %51[%233] {to = "instq.alloc_c", unsigned} : memref<16xi128>
                  } {loop_name = "i", op_name = "copyN"}
                  %c5_i32 = arith.constant 5 : i32
                  %228 = arith.trunci %c5_i32 {unsigned} : i32 to i4
                  affine.store %228, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
                }
              }
            }
            affine.store %96, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
            %187 = affine.load %160[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %188 = arith.cmpi ne, %187, %c0_i32_0 : i32
            scf.if %188 {
              %192 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %192, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
              %193 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %194 = arith.extui %193 : i1 to i32
              %195 = arith.cmpi eq, %194, %c0_i32_0 : i32
            }
            %189 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
            %190 = arith.extui %189 : i1 to i32
            %191 = arith.cmpi eq, %190, %c0_i32_0 : i32
            scf.if %191 {
              %192 = affine.load %36[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
              %193 = arith.addi %192, %c1_i32_2 : i32
              affine.store %193, %36[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
              %194 = affine.load %33[0] {from = "inst_naddr", unsigned} : memref<1xi16>
              affine.store %194, %32[0] {to = "inst_addr", unsigned} : memref<1xi16>
              affine.store %96, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            } else {
              %192 = affine.load %160[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %193 = arith.subi %192, %c2_i32 : i32
              affine.store %193, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
              %194 = affine.load %38[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
              %195 = arith.addi %194, %c1_i32_2 : i32
              affine.store %195, %38[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
              %196 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %196, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
              affine.store %196, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
              %197 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %198 = arith.extui %197 : i1 to i32
              %199 = arith.cmpi eq, %198, %c0_i32_0 : i32
              scf.if %199 {
              } else {
                %200 = affine.load %35[0] {from = "latstalled", unsigned} : memref<1xi1>
                %201 = arith.extui %200 : i1 to i32
                %202 = affine.load %34[0] {from = "latency_count", unsigned} : memref<1xi32>
                %203 = arith.subi %202, %c1_i32_2 : i32
                affine.store %203, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
                %204 = affine.load %38[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                %205 = arith.addi %204, %c1_i32_2 : i32
                affine.store %205, %38[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                affine.store %196, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
                affine.store %196, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                %206 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %207 = arith.extui %206 : i1 to i32
                %208 = arith.cmpi eq, %207, %c0_i32_0 : i32
              }
            }
          }
        }
        scf.yield
      }
      %132 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
      %133 = arith.extui %132 : i4 to i32
      %134 = arith.cmpi eq, %133, %c0_i32_0 : i32
      scf.if %134 {
        %141 = memref.alloc() {name = "addr_top", unsigned} : memref<1xi5>
        %c-16_i5 = arith.constant {unsigned} -16 : i5
        affine.store %c-16_i5, %141[0] {to = "addr_top", unsigned} : memref<1xi5>
        affine.store %96, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
        affine.store %96, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
        affine.store %96, %69[0] {to = "count_stop", unsigned} : memref<1xi1>
        affine.store %96, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
        %142 = affine.load %64[0] {from = "flags_active", unsigned} : memref<1xi1>
        %143 = arith.extui %142 : i1 to i32
        %144 = arith.cmpi ne, %143, %c0_i32_0 : i32
        %145 = affine.load %68[0] {from = "flags_break", unsigned} : memref<1xi1>
        %146 = arith.extui %145 : i1 to i32
        %147 = arith.cmpi eq, %146, %c0_i32_0 : i32
        scf.while : () -> () {
          %151 = arith.andi %144, %147 : i1
          scf.condition(%151)
        } do {
          %151 = affine.load %73[0] {from = "latency_count", unsigned} : memref<1xi32>
          %152 = arith.cmpi eq, %151, %c0_i32_0 : i32
          scf.if %152 {
            %153 = affine.load %71[0] {from = "inst_addr", unsigned} : memref<1xi5>
            %154 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi5>
            affine.store %153, %154[0] {to = "_cur_address", unsigned} : memref<1xi5>
            %c1_i32_2 = arith.constant 1 : i32
            %155 = arith.extui %153 : i5 to i32
            %156 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi5>
            affine.store %153, %156[0] {to = "read_addr", unsigned} : memref<1xi5>
            %157 = affine.load %156[0] {from = "read_addr", unsigned} : memref<1xi5>
            %158 = arith.extui %157 : i5 to i32
            %159 = arith.addi %158, %c1_i32_2 : i32
            %c16_i32 = arith.constant 16 : i32
            %160 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi128>
            %161 = hcl.create_op_handle "Mem.read_c"
            %162 = hcl.create_loop_handle %161, "i"
            %163 = affine.load %156[0] {from = "read_addr", unsigned} : memref<1xi5>
            %164 = arith.index_cast %163 : i5 to index
            %165 = arith.addi %164, %c0 : index
            %166 = memref.load %51[%165] {from = "instq.alloc_c", unsigned} : memref<16xi128>
            affine.store %166, %160[%c0] {to = "Mem.read_c"} : memref<1xi128>
            %167 = affine.load %160[0] {from = "Mem.read_c", unsigned} : memref<1xi128>
            %168 = memref.alloc() {name = "inst", unsigned} : memref<1xi128>
            affine.store %167, %168[0] {to = "inst", unsigned} : memref<1xi128>
            %169 = affine.load %168[0] {from = "inst", unsigned} : memref<1xi128>
            %170 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
            affine.store %c0_i32, %170[0] {to = "inst_lat", unsigned} : memref<1xi32>
            %171 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi128>
            affine.store %169, %171[0] {to = "decode_inst", unsigned} : memref<1xi128>
            %172 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
            affine.store %c0_i16, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
            %173 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
            %174 = memref.alloc() {name = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
            %175 = hcl.int_to_struct(%173) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i62, i32>
            affine.store %175, %174[0] {to = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
            %176 = affine.load %174[0] {from = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
            %177 = hcl.struct_get %176[0] : <i6, i1, i9, i9, i9, i62, i32> -> i6
            %c4_i32 = arith.constant 4 : i32
            %178 = arith.extsi %177 : i6 to i32
            %179 = arith.cmpi eq, %178, %c4_i32 : i32
            scf.if %179 {
              affine.store %97, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %189 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
              %190 = memref.alloc() {name = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
              %191 = hcl.int_to_struct(%189) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i62, i32>
              affine.store %191, %190[0] {to = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
              %192 = affine.load %190[0] {from = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
              %193 = hcl.struct_get %192[0] : <i6, i1, i9, i9, i9, i62, i32> -> i6
              %c5_i32 = arith.constant 5 : i32
              %194 = arith.extsi %193 : i6 to i32
              %195 = arith.cmpi eq, %194, %c5_i32 : i32
              scf.if %195 {
                %196 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
                affine.store %196, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %196 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                %197 = memref.alloc() {name = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i39, i32, i32>>
                %198 = hcl.int_to_struct(%196) {unsigned} : i128 -> <i6, i1, i9, i9, i39, i32, i32>
                affine.store %198, %197[0] {to = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i39, i32, i32>>
                %199 = affine.load %197[0] {from = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i39, i32, i32>>
                %200 = hcl.struct_get %199[0] : <i6, i1, i9, i9, i39, i32, i32> -> i6
                %c21_i32 = arith.constant 21 : i32
                %201 = arith.extsi %200 : i6 to i32
                %202 = arith.cmpi eq, %201, %c21_i32 : i32
                scf.if %202 {
                  %c2_i32 = arith.constant 2 : i32
                  %203 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                  affine.store %203, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %203 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                  %204 = memref.alloc() {name = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i54, i32>>
                  %205 = hcl.int_to_struct(%203) {unsigned} : i128 -> <i6, i9, i9, i9, i9, i54, i32>
                  affine.store %205, %204[0] {to = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i54, i32>>
                  %206 = affine.load %204[0] {from = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i54, i32>>
                  %207 = hcl.struct_get %206[0] : <i6, i9, i9, i9, i9, i54, i32> -> i6
                  %c6_i32 = arith.constant 6 : i32
                  %208 = arith.extsi %207 : i6 to i32
                  %209 = arith.cmpi eq, %208, %c6_i32 : i32
                  scf.if %209 {
                    %c3_i32 = arith.constant 3 : i32
                    %210 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                    affine.store %210, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %210 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                    %211 = memref.alloc() {name = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i9, i9, i9, i31, i32, i32>>
                    %212 = hcl.int_to_struct(%210) {unsigned} : i128 -> <i6, i9, i9, i9, i31, i32, i32>
                    affine.store %212, %211[0] {to = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i9, i9, i9, i31, i32, i32>>
                    %213 = affine.load %211[0] {from = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i9, i9, i9, i31, i32, i32>>
                    %214 = hcl.struct_get %213[0] : <i6, i9, i9, i9, i31, i32, i32> -> i6
                    %c22_i32 = arith.constant 22 : i32
                    %215 = arith.extsi %214 : i6 to i32
                    %216 = arith.cmpi eq, %215, %c22_i32 : i32
                    scf.if %216 {
                      %217 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                      affine.store %217, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %217 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                      %218 = memref.alloc() {name = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                      %219 = hcl.int_to_struct(%217) {unsigned} : i128 -> <i6, i9, i9, i9, i9, i11, i43, i32>
                      affine.store %219, %218[0] {to = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                      %220 = affine.load %218[0] {from = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                      %221 = hcl.struct_get %220[0] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i6
                      %c7_i32 = arith.constant 7 : i32
                      %222 = arith.extsi %221 : i6 to i32
                      %223 = arith.cmpi eq, %222, %c7_i32 : i32
                      scf.if %223 {
                        %224 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                        affine.store %224, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %224 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                        %225 = memref.alloc() {name = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                        %226 = hcl.int_to_struct(%224) {unsigned} : i128 -> <i6, i9, i9, i9, i9, i11, i43, i32>
                        affine.store %226, %225[0] {to = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                        %227 = affine.load %225[0] {from = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                        %228 = hcl.struct_get %227[0] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i6
                        %c15_i32 = arith.constant 15 : i32
                        %229 = arith.extsi %228 : i6 to i32
                        %230 = arith.cmpi eq, %229, %c15_i32 : i32
                        scf.if %230 {
                          %231 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                          affine.store %231, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %231 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                          %232 = memref.alloc() {name = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                          %233 = hcl.int_to_struct(%231) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i62, i32>
                          affine.store %233, %232[0] {to = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                          %234 = affine.load %232[0] {from = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                          %235 = hcl.struct_get %234[0] : <i6, i1, i9, i9, i9, i62, i32> -> i6
                          %236 = arith.extsi %235 : i6 to i32
                          %237 = arith.cmpi eq, %236, %c4_i32 : i32
                          scf.if %237 {
                            %238 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                            affine.store %238, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                          } else {
                            %238 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                            %239 = memref.alloc() {name = "dec_inst_nop"} : memref<1x!hcl.struct<i6, i7, i115>>
                            %240 = hcl.int_to_struct(%238) {unsigned} : i128 -> <i6, i7, i115>
                            affine.store %240, %239[0] {to = "dec_inst_nop"} : memref<1x!hcl.struct<i6, i7, i115>>
                            %241 = affine.load %239[0] {from = "dec_inst_nop"} : memref<1x!hcl.struct<i6, i7, i115>>
                            %242 = hcl.struct_get %241[0] : <i6, i7, i115> -> i6
                            %243 = arith.extsi %242 : i6 to i32
                            %244 = arith.cmpi eq, %243, %c0_i32_0 : i32
                            scf.if %244 {
                              %c8_i32 = arith.constant 8 : i32
                              %245 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                              affine.store %245, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                            } else {
                              %245 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                              %246 = memref.alloc() {name = "dec_inst_cstore"} : memref<1x!hcl.struct<i6, i1, i9, i112>>
                              %247 = hcl.int_to_struct(%245) {unsigned} : i128 -> <i6, i1, i9, i112>
                              affine.store %247, %246[0] {to = "dec_inst_cstore"} : memref<1x!hcl.struct<i6, i1, i9, i112>>
                              %248 = affine.load %246[0] {from = "dec_inst_cstore"} : memref<1x!hcl.struct<i6, i1, i9, i112>>
                              %249 = hcl.struct_get %248[0] : <i6, i1, i9, i112> -> i6
                              %c9_i32 = arith.constant 9 : i32
                              %250 = arith.extsi %249 : i6 to i32
                              %251 = arith.cmpi eq, %250, %c9_i32 : i32
                              scf.if %251 {
                                %252 = arith.trunci %c9_i32 {unsigned} : i32 to i16
                                affine.store %252, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                              } else {
                                %252 = affine.load %171[0] {from = "decode_inst", unsigned} : memref<1xi128>
                                %253 = memref.alloc() {name = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                %254 = hcl.int_to_struct(%252) {unsigned} : i128 -> <i6, i1, i9, i9, i103>
                                affine.store %254, %253[0] {to = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                %255 = affine.load %253[0] {from = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                %256 = hcl.struct_get %255[0] : <i6, i1, i9, i9, i103> -> i6
                                %c10_i32 = arith.constant 10 : i32
                                %257 = arith.extsi %256 : i6 to i32
                                %258 = arith.cmpi eq, %257, %c10_i32 : i32
                                scf.if %258 {
                                  %259 = arith.trunci %c10_i32 {unsigned} : i32 to i16
                                  affine.store %259, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
                                } else {
                                  %c11_i32 = arith.constant 11 : i32
                                  %259 = arith.trunci %c11_i32 {unsigned} : i32 to i16
                                  affine.store %259, %172[0] {to = "inst_id", unsigned} : memref<1xi16>
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
            %180 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
            affine.store %false, %180[0] {to = "tmp", unsigned} : memref<1xi1>
            %181 = affine.load %170[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %182 = arith.cmpi sle, %181, %c1_i32_2 : i32
            scf.if %182 {
              %189 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %189, %180[0] {to = "tmp", unsigned} : memref<1xi1>
            }
            %183 = affine.load %74[0] {from = "latstalled", unsigned} : memref<1xi1>
            %184 = arith.extui %183 : i1 to i32
            %185 = arith.cmpi eq, %184, %c1_i32_2 : i32
            scf.if %185 {
              %189 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %189, %180[0] {to = "tmp", unsigned} : memref<1xi1>
            }
            %186 = affine.load %180[0] {from = "tmp", unsigned} : memref<1xi1>
            %187 = arith.extui %186 : i1 to i32
            %188 = arith.cmpi ne, %187, %c0_i32_0 : i32
            scf.if %188 {
              %189 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi128>
              affine.store %169, %189[0] {to = "execute_inst", unsigned} : memref<1xi128>
              %190 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
              %191 = arith.extui %190 : i16 to i32
              %192 = arith.cmpi eq, %191, %c0_i32_0 : i32
              scf.if %192 {
                %201 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                %202 = memref.alloc() {name = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                %203 = hcl.int_to_struct(%201) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i62, i32>
                affine.store %203, %202[0] {to = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                %204 = affine.load %202[0] {from = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                %205 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                hcl.print(%205) {format = "ip=%d ", signedness = "u"} : i5
                %206 = hcl.struct_get %204[1] : <i6, i1, i9, i9, i9, i62, i32> -> i1
                %207 = hcl.struct_get %204[2] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                %208 = hcl.struct_get %204[3] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                %209 = hcl.struct_get %204[4] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                %210 = hcl.struct_get %204[6] : <i6, i1, i9, i9, i9, i62, i32> -> i32
                hcl.print(%206, %207, %208, %209, %210) {format = "padd dbg=0x%x res=0x%x a=0x%x b=0x%x q=0x%x", signedness = "_____"} : i1, i9, i9, i9, i32
                hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                %211 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %212 = hcl.int_to_struct(%208) {unsigned} : i9 -> <i7, i2>
                affine.store %212, %211[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %213 = affine.load %211[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %214 = hcl.struct_get %213[1] : <i7, i2> -> i2
                %215 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %216 = hcl.int_to_struct(%209) {unsigned} : i9 -> <i7, i2>
                affine.store %216, %215[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %217 = affine.load %215[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %218 = hcl.struct_get %217[1] : <i7, i2> -> i2
                %219 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %220 = hcl.int_to_struct(%207) {unsigned} : i9 -> <i7, i2>
                affine.store %220, %219[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %221 = affine.load %219[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %222 = hcl.struct_get %221[1] : <i7, i2> -> i2
                %223 = hcl.struct_get %221[0] : <i7, i2> -> i7
                %224 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %225 = hcl.int_to_struct(%208) {unsigned} : i9 -> <i7, i2>
                affine.store %225, %224[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %226 = affine.load %224[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %227 = hcl.struct_get %226[1] : <i7, i2> -> i2
                %228 = hcl.struct_get %226[0] : <i7, i2> -> i7
                %229 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %230 = hcl.int_to_struct(%209) {unsigned} : i9 -> <i7, i2>
                affine.store %230, %229[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %231 = affine.load %229[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                %232 = hcl.struct_get %231[1] : <i7, i2> -> i2
                %233 = hcl.struct_get %231[0] : <i7, i2> -> i7
                %234 = hcl.create_op_handle "bflyfn"
                %235 = hcl.create_loop_handle %234, "i"
                affine.for %arg2 = 0 to 8192 {
                  %236 = arith.index_cast %227 : i2 to index
                  %237 = arith.index_cast %228 : i7 to index
                  %238 = memref.load %39[%236, %237, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %239 = arith.index_cast %232 : i2 to index
                  %240 = arith.index_cast %233 : i7 to index
                  %241 = memref.load %39[%239, %240, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %242 = arith.addi %238, %241 {unsigned} : i32
                  %243 = arith.remsi %242, %210 : i32
                  %244 = arith.addi %210, %238 {unsigned} : i32
                  %245 = arith.subi %244, %241 {unsigned} : i32
                  %246 = arith.index_cast %222 : i2 to index
                  %247 = arith.index_cast %223 : i7 to index
                  memref.store %243, %39[%246, %247, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                } {loop_name = "i", op_name = "bflyfn"}
              } else {
                %201 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                %202 = arith.extui %201 : i16 to i32
                %203 = arith.cmpi eq, %202, %c1_i32_2 : i32
                scf.if %203 {
                  %204 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                  %205 = memref.alloc() {name = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                  %206 = hcl.int_to_struct(%204) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i62, i32>
                  affine.store %206, %205[0] {to = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                  %207 = affine.load %205[0] {from = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                  hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                  %208 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                  hcl.print(%208) {format = "ip=%d ", signedness = "u"} : i5
                  %209 = hcl.struct_get %207[1] : <i6, i1, i9, i9, i9, i62, i32> -> i1
                  %210 = hcl.struct_get %207[2] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                  %211 = hcl.struct_get %207[3] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                  %212 = hcl.struct_get %207[4] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                  %213 = hcl.struct_get %207[6] : <i6, i1, i9, i9, i9, i62, i32> -> i32
                  hcl.print(%209, %210, %211, %212, %213) {format = "pmul dbg=0x%x res=0x%x w=0x%x b=0x%x q=0x%x", signedness = "_____"} : i1, i9, i9, i9, i32
                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                  %214 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %215 = hcl.int_to_struct(%212) {unsigned} : i9 -> <i7, i2>
                  affine.store %215, %214[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %216 = affine.load %214[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %217 = hcl.struct_get %216[1] : <i7, i2> -> i2
                  %218 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %219 = hcl.int_to_struct(%211) {unsigned} : i9 -> <i7, i2>
                  affine.store %219, %218[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %220 = affine.load %218[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %221 = hcl.struct_get %220[1] : <i7, i2> -> i2
                  %222 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %223 = hcl.int_to_struct(%210) {unsigned} : i9 -> <i7, i2>
                  affine.store %223, %222[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %224 = affine.load %222[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %225 = hcl.struct_get %224[1] : <i7, i2> -> i2
                  %226 = hcl.struct_get %224[0] : <i7, i2> -> i7
                  %227 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %228 = hcl.int_to_struct(%211) {unsigned} : i9 -> <i7, i2>
                  affine.store %228, %227[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %229 = affine.load %227[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %230 = hcl.struct_get %229[1] : <i7, i2> -> i2
                  %231 = hcl.struct_get %229[0] : <i7, i2> -> i7
                  %232 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %233 = hcl.int_to_struct(%212) {unsigned} : i9 -> <i7, i2>
                  affine.store %233, %232[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %234 = affine.load %232[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                  %235 = hcl.struct_get %234[1] : <i7, i2> -> i2
                  %236 = hcl.struct_get %234[0] : <i7, i2> -> i7
                  %237 = hcl.create_op_handle "bflyfn"
                  %238 = hcl.create_loop_handle %237, "i"
                  affine.for %arg2 = 0 to 8192 {
                    %239 = arith.index_cast %235 : i2 to index
                    %240 = arith.index_cast %236 : i7 to index
                    %241 = memref.load %39[%239, %240, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %242 = arith.index_cast %230 : i2 to index
                    %243 = arith.index_cast %231 : i7 to index
                    %244 = memref.load %39[%242, %243, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %245 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                    affine.store %241, %245[0] {to = "b", unsigned} : memref<1xi32>
                    %246 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                    affine.store %244, %246[0] {to = "w", unsigned} : memref<1xi32>
                    %247 = memref.alloc() {name = "q"} : memref<1xi32>
                    affine.store %213, %247[0] {to = "q"} : memref<1xi32>
                    %248 = affine.load %247[0] {from = "q"} : memref<1xi32>
                    %c65535_i32 = arith.constant 65535 : i32
                    %249 = arith.andi %248, %c65535_i32 : i32
                    %250 = affine.load %246[0] {from = "w", unsigned} : memref<1xi32>
                    %251 = affine.load %245[0] {from = "b", unsigned} : memref<1xi32>
                    %252 = arith.muli %250, %251 {unsigned} : i32
                    %253 = arith.subi %c0_i32_0, %252 {unsigned} : i32
                    %254 = arith.andi %253, %c65535_i32 {unsigned} : i32
                    %255 = arith.muli %254, %248 : i32
                    %256 = arith.addi %252, %255 : i32
                    %257 = arith.shrui %256, %c16_i32 : i32
                    %258 = arith.subi %c0_i32_0, %257 : i32
                    %259 = arith.andi %258, %c65535_i32 : i32
                    %260 = arith.muli %259, %248 : i32
                    %261 = arith.addi %257, %260 : i32
                    %262 = arith.shrui %261, %c16_i32 : i32
                    %263 = arith.cmpi slt, %262, %248 : i32
                    %264 = arith.subi %262, %248 : i32
                    %265 = arith.select %263, %262, %264 : i32
                    %266 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                    affine.store %265, %266[0] {to = "mont_redc", unsigned} : memref<1xi32>
                    %267 = affine.load %266[0] {from = "mont_redc", unsigned} : memref<1xi32>
                    %268 = arith.index_cast %225 : i2 to index
                    %269 = arith.index_cast %226 : i7 to index
                    memref.store %267, %39[%268, %269, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  } {loop_name = "i", op_name = "bflyfn"}
                } else {
                  %204 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %205 = arith.extui %204 : i16 to i32
                  %c2_i32 = arith.constant 2 : i32
                  %206 = arith.cmpi eq, %205, %c2_i32 : i32
                  scf.if %206 {
                    %207 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                    %208 = memref.alloc() {name = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i39, i32, i32>>
                    %209 = hcl.int_to_struct(%207) {unsigned} : i128 -> <i6, i1, i9, i9, i39, i32, i32>
                    affine.store %209, %208[0] {to = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i39, i32, i32>>
                    %210 = affine.load %208[0] {from = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i39, i32, i32>>
                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                    %211 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                    hcl.print(%211) {format = "ip=%d ", signedness = "u"} : i5
                    %212 = hcl.struct_get %210[2] : <i6, i1, i9, i9, i39, i32, i32> -> i9
                    %213 = hcl.struct_get %210[3] : <i6, i1, i9, i9, i39, i32, i32> -> i9
                    %214 = hcl.struct_get %210[5] : <i6, i1, i9, i9, i39, i32, i32> -> i32
                    %215 = hcl.struct_get %210[6] : <i6, i1, i9, i9, i39, i32, i32> -> i32
                    hcl.print(%212, %213, %214, %215) {format = "pmuli res=0x%x w=0x%x imm=0x%x q=0x%x", signedness = "____"} : i9, i9, i32, i32
                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                    %216 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                    %217 = hcl.int_to_struct(%212) {unsigned} : i9 -> <i7, i2>
                    affine.store %217, %216[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                    %218 = affine.load %216[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                    %219 = hcl.struct_get %218[1] : <i7, i2> -> i2
                    %220 = hcl.struct_get %218[0] : <i7, i2> -> i7
                    %221 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                    %222 = hcl.int_to_struct(%213) {unsigned} : i9 -> <i7, i2>
                    affine.store %222, %221[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                    %223 = affine.load %221[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                    %224 = hcl.struct_get %223[1] : <i7, i2> -> i2
                    %225 = hcl.struct_get %223[0] : <i7, i2> -> i7
                    %226 = hcl.create_op_handle "bflyfn"
                    %227 = hcl.create_loop_handle %226, "i"
                    affine.for %arg2 = 0 to 8192 {
                      %228 = hcl.get_bit(%214 : i32, %arg2) -> i1
                      %229 = arith.index_cast %224 : i2 to index
                      %230 = arith.index_cast %225 : i7 to index
                      %231 = memref.load %39[%229, %230, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      %232 = memref.alloc() {name = "b"} : memref<1xi1>
                      affine.store %228, %232[0] {to = "b"} : memref<1xi1>
                      %233 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                      affine.store %231, %233[0] {to = "w", unsigned} : memref<1xi32>
                      %234 = memref.alloc() {name = "q"} : memref<1xi32>
                      affine.store %215, %234[0] {to = "q"} : memref<1xi32>
                      %235 = affine.load %234[0] {from = "q"} : memref<1xi32>
                      %c65535_i32 = arith.constant 65535 : i32
                      %236 = arith.andi %235, %c65535_i32 : i32
                      %237 = affine.load %233[0] {from = "w", unsigned} : memref<1xi32>
                      %238 = affine.load %232[0] {from = "b"} : memref<1xi1>
                      %239 = arith.extui %238 {unsigned} : i1 to i32
                      %240 = arith.muli %237, %239 {unsigned} : i32
                      %241 = arith.subi %c0_i32_0, %240 {unsigned} : i32
                      %242 = arith.andi %241, %c65535_i32 {unsigned} : i32
                      %243 = arith.muli %242, %235 : i32
                      %244 = arith.addi %240, %243 : i32
                      %245 = arith.shrui %244, %c16_i32 : i32
                      %246 = arith.subi %c0_i32_0, %245 : i32
                      %247 = arith.andi %246, %c65535_i32 : i32
                      %248 = arith.muli %247, %235 : i32
                      %249 = arith.addi %245, %248 : i32
                      %250 = arith.shrui %249, %c16_i32 : i32
                      %251 = arith.cmpi slt, %250, %235 : i32
                      %252 = arith.subi %250, %235 : i32
                      %253 = arith.select %251, %250, %252 : i32
                      %254 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                      affine.store %253, %254[0] {to = "mont_redc", unsigned} : memref<1xi32>
                      %255 = affine.load %254[0] {from = "mont_redc", unsigned} : memref<1xi32>
                      %256 = arith.index_cast %219 : i2 to index
                      %257 = arith.index_cast %220 : i7 to index
                      memref.store %255, %39[%256, %257, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    } {loop_name = "i", op_name = "bflyfn"}
                  } else {
                    %207 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                    %208 = arith.extui %207 : i16 to i32
                    %c3_i32 = arith.constant 3 : i32
                    %209 = arith.cmpi eq, %208, %c3_i32 : i32
                    scf.if %209 {
                      %210 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                      %211 = memref.alloc() {name = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i54, i32>>
                      %212 = hcl.int_to_struct(%210) {unsigned} : i128 -> <i6, i9, i9, i9, i9, i54, i32>
                      affine.store %212, %211[0] {to = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i54, i32>>
                      %213 = affine.load %211[0] {from = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i54, i32>>
                      hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                      %214 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                      hcl.print(%214) {format = "ip=%d ", signedness = "u"} : i5
                      %215 = hcl.struct_get %213[1] : <i6, i9, i9, i9, i9, i54, i32> -> i9
                      %216 = hcl.struct_get %213[2] : <i6, i9, i9, i9, i9, i54, i32> -> i9
                      %217 = hcl.struct_get %213[3] : <i6, i9, i9, i9, i9, i54, i32> -> i9
                      %218 = hcl.struct_get %213[4] : <i6, i9, i9, i9, i9, i54, i32> -> i9
                      %219 = hcl.struct_get %213[6] : <i6, i9, i9, i9, i9, i54, i32> -> i32
                      hcl.print(%215, %216, %217, %218, %219) {format = "pmac res=0x%x a=0x%x w=0x%x b=0x%x q=0x%x", signedness = "_____"} : i9, i9, i9, i9, i32
                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                      %220 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %221 = hcl.int_to_struct(%216) {unsigned} : i9 -> <i7, i2>
                      affine.store %221, %220[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %222 = affine.load %220[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %223 = hcl.struct_get %222[1] : <i7, i2> -> i2
                      %224 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %225 = hcl.int_to_struct(%218) {unsigned} : i9 -> <i7, i2>
                      affine.store %225, %224[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %226 = affine.load %224[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %227 = hcl.struct_get %226[1] : <i7, i2> -> i2
                      %228 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %229 = hcl.int_to_struct(%217) {unsigned} : i9 -> <i7, i2>
                      affine.store %229, %228[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %230 = affine.load %228[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %231 = hcl.struct_get %230[1] : <i7, i2> -> i2
                      %232 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %233 = hcl.int_to_struct(%216) {unsigned} : i9 -> <i7, i2>
                      affine.store %233, %232[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %234 = affine.load %232[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %235 = hcl.struct_get %234[1] : <i7, i2> -> i2
                      %236 = hcl.struct_get %234[0] : <i7, i2> -> i7
                      %237 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %238 = hcl.int_to_struct(%216) {unsigned} : i9 -> <i7, i2>
                      affine.store %238, %237[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %239 = affine.load %237[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %240 = hcl.struct_get %239[1] : <i7, i2> -> i2
                      %241 = hcl.struct_get %239[0] : <i7, i2> -> i7
                      %242 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %243 = hcl.int_to_struct(%217) {unsigned} : i9 -> <i7, i2>
                      affine.store %243, %242[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %244 = affine.load %242[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %245 = hcl.struct_get %244[1] : <i7, i2> -> i2
                      %246 = hcl.struct_get %244[0] : <i7, i2> -> i7
                      %247 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %248 = hcl.int_to_struct(%218) {unsigned} : i9 -> <i7, i2>
                      affine.store %248, %247[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %249 = affine.load %247[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                      %250 = hcl.struct_get %249[1] : <i7, i2> -> i2
                      %251 = hcl.struct_get %249[0] : <i7, i2> -> i7
                      %252 = hcl.create_op_handle "bflyfn"
                      %253 = hcl.create_loop_handle %252, "i"
                      affine.for %arg2 = 0 to 8192 {
                        %254 = arith.index_cast %240 : i2 to index
                        %255 = arith.index_cast %241 : i7 to index
                        %256 = memref.load %39[%254, %255, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %257 = arith.index_cast %250 : i2 to index
                        %258 = arith.index_cast %251 : i7 to index
                        %259 = memref.load %39[%257, %258, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %260 = arith.index_cast %245 : i2 to index
                        %261 = arith.index_cast %246 : i7 to index
                        %262 = memref.load %39[%260, %261, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %263 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                        affine.store %259, %263[0] {to = "b", unsigned} : memref<1xi32>
                        %264 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                        affine.store %262, %264[0] {to = "w", unsigned} : memref<1xi32>
                        %265 = memref.alloc() {name = "q"} : memref<1xi32>
                        affine.store %219, %265[0] {to = "q"} : memref<1xi32>
                        %266 = affine.load %265[0] {from = "q"} : memref<1xi32>
                        %c65535_i32 = arith.constant 65535 : i32
                        %267 = arith.andi %266, %c65535_i32 : i32
                        %268 = affine.load %264[0] {from = "w", unsigned} : memref<1xi32>
                        %269 = affine.load %263[0] {from = "b", unsigned} : memref<1xi32>
                        %270 = arith.muli %268, %269 {unsigned} : i32
                        %271 = arith.subi %c0_i32_0, %270 {unsigned} : i32
                        %272 = arith.andi %271, %c65535_i32 {unsigned} : i32
                        %273 = arith.muli %272, %266 : i32
                        %274 = arith.addi %270, %273 : i32
                        %275 = arith.shrui %274, %c16_i32 : i32
                        %276 = arith.subi %c0_i32_0, %275 : i32
                        %277 = arith.andi %276, %c65535_i32 : i32
                        %278 = arith.muli %277, %266 : i32
                        %279 = arith.addi %275, %278 : i32
                        %280 = arith.shrui %279, %c16_i32 : i32
                        %281 = arith.cmpi slt, %280, %266 : i32
                        %282 = arith.subi %280, %266 : i32
                        %283 = arith.select %281, %280, %282 : i32
                        %284 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                        affine.store %283, %284[0] {to = "mont_redc", unsigned} : memref<1xi32>
                        %285 = affine.load %284[0] {from = "mont_redc", unsigned} : memref<1xi32>
                        %286 = arith.addi %256, %285 {unsigned} : i32
                        %287 = arith.remsi %286, %219 : i32
                        %288 = arith.index_cast %235 : i2 to index
                        %289 = arith.index_cast %236 : i7 to index
                        memref.store %287, %39[%288, %289, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "bflyfn"}
                    } else {
                      %210 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %211 = arith.extui %210 : i16 to i32
                      %212 = arith.cmpi eq, %211, %c4_i32 : i32
                      scf.if %212 {
                        %213 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                        %214 = memref.alloc() {name = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i9, i9, i9, i31, i32, i32>>
                        %215 = hcl.int_to_struct(%213) {unsigned} : i128 -> <i6, i9, i9, i9, i31, i32, i32>
                        affine.store %215, %214[0] {to = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i9, i9, i9, i31, i32, i32>>
                        %216 = affine.load %214[0] {from = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i9, i9, i9, i31, i32, i32>>
                        hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                        %217 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                        hcl.print(%217) {format = "ip=%d ", signedness = "u"} : i5
                        %218 = hcl.struct_get %216[2] : <i6, i9, i9, i9, i31, i32, i32> -> i9
                        %219 = hcl.struct_get %216[3] : <i6, i9, i9, i9, i31, i32, i32> -> i9
                        %220 = hcl.struct_get %216[5] : <i6, i9, i9, i9, i31, i32, i32> -> i32
                        %221 = hcl.struct_get %216[6] : <i6, i9, i9, i9, i31, i32, i32> -> i32
                        hcl.print(%218, %219, %220, %221) {format = "pmaci a=0x%x w=0x%x imm=0x%x q=0x%x", signedness = "____"} : i9, i9, i32, i32
                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                        %222 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %223 = hcl.int_to_struct(%218) {unsigned} : i9 -> <i7, i2>
                        affine.store %223, %222[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %224 = affine.load %222[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %225 = hcl.struct_get %224[1] : <i7, i2> -> i2
                        %226 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %227 = hcl.int_to_struct(%219) {unsigned} : i9 -> <i7, i2>
                        affine.store %227, %226[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %228 = affine.load %226[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %229 = hcl.struct_get %228[1] : <i7, i2> -> i2
                        %230 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %231 = hcl.int_to_struct(%218) {unsigned} : i9 -> <i7, i2>
                        affine.store %231, %230[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %232 = affine.load %230[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %233 = hcl.struct_get %232[1] : <i7, i2> -> i2
                        %234 = hcl.struct_get %232[0] : <i7, i2> -> i7
                        %235 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %236 = hcl.int_to_struct(%218) {unsigned} : i9 -> <i7, i2>
                        affine.store %236, %235[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %237 = affine.load %235[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %238 = hcl.struct_get %237[1] : <i7, i2> -> i2
                        %239 = hcl.struct_get %237[0] : <i7, i2> -> i7
                        %240 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %241 = hcl.int_to_struct(%219) {unsigned} : i9 -> <i7, i2>
                        affine.store %241, %240[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %242 = affine.load %240[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                        %243 = hcl.struct_get %242[1] : <i7, i2> -> i2
                        %244 = hcl.struct_get %242[0] : <i7, i2> -> i7
                        %245 = hcl.create_op_handle "bflyfn"
                        %246 = hcl.create_loop_handle %245, "i"
                        affine.for %arg2 = 0 to 8192 {
                          %247 = arith.index_cast %238 : i2 to index
                          %248 = arith.index_cast %239 : i7 to index
                          %249 = memref.load %39[%247, %248, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %250 = hcl.get_bit(%220 : i32, %arg2) -> i1
                          %251 = arith.index_cast %243 : i2 to index
                          %252 = arith.index_cast %244 : i7 to index
                          %253 = memref.load %39[%251, %252, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %254 = memref.alloc() {name = "b"} : memref<1xi1>
                          affine.store %250, %254[0] {to = "b"} : memref<1xi1>
                          %255 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                          affine.store %253, %255[0] {to = "w", unsigned} : memref<1xi32>
                          %256 = memref.alloc() {name = "q"} : memref<1xi32>
                          affine.store %221, %256[0] {to = "q"} : memref<1xi32>
                          %257 = affine.load %256[0] {from = "q"} : memref<1xi32>
                          %c65535_i32 = arith.constant 65535 : i32
                          %258 = arith.andi %257, %c65535_i32 : i32
                          %259 = affine.load %255[0] {from = "w", unsigned} : memref<1xi32>
                          %260 = affine.load %254[0] {from = "b"} : memref<1xi1>
                          %261 = arith.extui %260 {unsigned} : i1 to i32
                          %262 = arith.muli %259, %261 {unsigned} : i32
                          %263 = arith.subi %c0_i32_0, %262 {unsigned} : i32
                          %264 = arith.andi %263, %c65535_i32 {unsigned} : i32
                          %265 = arith.muli %264, %257 : i32
                          %266 = arith.addi %262, %265 : i32
                          %267 = arith.shrui %266, %c16_i32 : i32
                          %268 = arith.subi %c0_i32_0, %267 : i32
                          %269 = arith.andi %268, %c65535_i32 : i32
                          %270 = arith.muli %269, %257 : i32
                          %271 = arith.addi %267, %270 : i32
                          %272 = arith.shrui %271, %c16_i32 : i32
                          %273 = arith.cmpi slt, %272, %257 : i32
                          %274 = arith.subi %272, %257 : i32
                          %275 = arith.select %273, %272, %274 : i32
                          %276 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                          affine.store %275, %276[0] {to = "mont_redc", unsigned} : memref<1xi32>
                          %277 = affine.load %276[0] {from = "mont_redc", unsigned} : memref<1xi32>
                          %278 = arith.addi %249, %277 {unsigned} : i32
                          %279 = arith.remsi %278, %221 : i32
                          %280 = arith.index_cast %233 : i2 to index
                          %281 = arith.index_cast %234 : i7 to index
                          memref.store %279, %39[%280, %281, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        } {loop_name = "i", op_name = "bflyfn"}
                      } else {
                        %213 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                        %214 = arith.extui %213 : i16 to i32
                        %c5_i32 = arith.constant 5 : i32
                        %215 = arith.cmpi eq, %214, %c5_i32 : i32
                        scf.if %215 {
                          %216 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                          %217 = memref.alloc() {name = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                          %218 = hcl.int_to_struct(%216) {unsigned} : i128 -> <i6, i9, i9, i9, i9, i11, i43, i32>
                          affine.store %218, %217[0] {to = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                          %219 = affine.load %217[0] {from = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                          hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                          %220 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                          hcl.print(%220) {format = "ip=%d ", signedness = "u"} : i5
                          %221 = hcl.struct_get %219[1] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                          %222 = hcl.struct_get %219[2] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                          %223 = hcl.struct_get %219[3] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                          %224 = hcl.struct_get %219[4] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                          %225 = hcl.struct_get %219[5] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i11
                          %226 = hcl.struct_get %219[7] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i32
                          hcl.print(%221, %222, %223, %224, %225, %226) {format = "ntt top=0x%x bot=0x%x a=0x%x b=0x%x twidx=0x%x q=0x%x", signedness = "______"} : i9, i9, i9, i9, i11, i32
                          hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                          %227 = affine.load %47[0] {from = "flag_ntt", unsigned} : memref<1xi1>
                          %228 = arith.extui %227 : i1 to i32
                          %229 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %230 = hcl.int_to_struct(%223) {unsigned} : i9 -> <i7, i2>
                          affine.store %230, %229[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %231 = affine.load %229[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %232 = hcl.struct_get %231[1] : <i7, i2> -> i2
                          %233 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %234 = hcl.int_to_struct(%224) {unsigned} : i9 -> <i7, i2>
                          affine.store %234, %233[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %235 = affine.load %233[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %236 = hcl.struct_get %235[1] : <i7, i2> -> i2
                          %237 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %238 = hcl.int_to_struct(%221) {unsigned} : i9 -> <i7, i2>
                          affine.store %238, %237[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %239 = affine.load %237[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %240 = hcl.struct_get %239[1] : <i7, i2> -> i2
                          %241 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %242 = hcl.int_to_struct(%222) {unsigned} : i9 -> <i7, i2>
                          affine.store %242, %241[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %243 = affine.load %241[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %244 = hcl.struct_get %243[1] : <i7, i2> -> i2
                          %245 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %246 = hcl.int_to_struct(%223) {unsigned} : i9 -> <i7, i2>
                          affine.store %246, %245[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %247 = affine.load %245[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %248 = hcl.struct_get %247[1] : <i7, i2> -> i2
                          %249 = hcl.struct_get %247[0] : <i7, i2> -> i7
                          %250 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %251 = hcl.int_to_struct(%224) {unsigned} : i9 -> <i7, i2>
                          affine.store %251, %250[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %252 = affine.load %250[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                          %253 = hcl.struct_get %252[1] : <i7, i2> -> i2
                          %254 = hcl.struct_get %252[0] : <i7, i2> -> i7
                          %c8192_i32 = arith.constant 8192 : i32
                          %255 = arith.extsi %225 : i11 to i32
                          %256 = arith.muli %255, %c8192_i32 : i32
                          %257 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                          %c8192_i32_3 = arith.constant {unsigned} 8192 : i32
                          affine.store %c8192_i32_3, %257[0] {to = "count", unsigned} : memref<1xi32>
                          %258 = affine.load %257[0] {from = "count", unsigned} : memref<1xi32>
                          %259 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                          affine.store %256, %259[0] {to = "src_addr"} : memref<1xi32>
                          %260 = affine.load %259[0] {from = "src_addr"} : memref<1xi32>
                          %261 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                          affine.store %c0_i32, %261[0] {to = "dst_addr", unsigned} : memref<1xi32>
                          %262 = affine.load %261[0] {from = "dst_addr", unsigned} : memref<1xi32>
                          %263 = arith.addi %260, %258 {unsigned} : i32
                          %c71303168_i32 = arith.constant 71303168 : i32
                          %264 = hcl.create_op_handle "copyN"
                          %265 = hcl.create_loop_handle %264, "i"
                          %266 = arith.index_cast %c0_i32_0 : i32 to index
                          %267 = arith.index_cast %258 : i32 to index
                          %268 = arith.index_cast %c1_i32_2 : i32 to index
                          scf.for %arg2 = %266 to %267 step %268 {
                            %274 = arith.index_cast %260 : i32 to index
                            %275 = arith.addi %274, %arg2 : index
                            %276 = memref.load %44[%275] {from = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
                            %277 = arith.index_cast %262 : i32 to index
                            %278 = arith.addi %277, %arg2 : index
                            memref.store %276, %62[%278] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "copyN"}
                          %269 = hcl.create_op_handle "ntt_in_swizzle"
                          %270 = hcl.create_loop_handle %269, "i"
                          affine.for %arg2 = 0 to 128 {
                            %c64_i32 = arith.constant 64 : i32
                            %274 = arith.index_cast %c64_i32 : i32 to index
                            %275 = arith.muli %arg2, %274 : index
                            %276 = hcl.create_op_handle "nttin_even_odd_arf"
                            %277 = hcl.create_loop_handle %276, "j"
                            affine.for %arg3 = 0 to 32 {
                              %280 = arith.index_cast %c2_i32 : i32 to index
                              %281 = arith.muli %280, %arg3 : index
                              %282 = arith.addi %275, %281 : index
                              %283 = arith.index_cast %248 : i2 to index
                              %284 = arith.index_cast %249 : i7 to index
                              %285 = memref.load %39[%283, %284, %282] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %286 = arith.addi %275, %266 : index
                              %287 = arith.addi %286, %arg3 : index
                              %288 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              %289 = arith.index_cast %287 {unsigned} : index to i32
                              affine.store %289, %288[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %290 = affine.load %288[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %291 = arith.addi %290, %c1_i32_2 : i32
                              %292 = arith.index_cast %290 : i32 to index
                              memref.store %285, %60[%292] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %293 = arith.addi %282, %268 : index
                              %294 = memref.load %39[%283, %284, %293] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %295 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %289, %295[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %296 = affine.load %295[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %297 = arith.addi %296, %c1_i32_2 : i32
                              %298 = arith.index_cast %296 : i32 to index
                              memref.store %294, %61[%298] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
                            %278 = hcl.create_op_handle "nttin_even_odd_brf"
                            %279 = hcl.create_loop_handle %278, "j"
                            affine.for %arg3 = 0 to 32 {
                              %280 = arith.index_cast %c2_i32 : i32 to index
                              %281 = arith.muli %280, %arg3 : index
                              %282 = arith.addi %275, %281 : index
                              %283 = arith.index_cast %253 : i2 to index
                              %284 = arith.index_cast %254 : i7 to index
                              %285 = memref.load %39[%283, %284, %282] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %c32_i32 = arith.constant 32 : i32
                              %286 = arith.index_cast %c32_i32 : i32 to index
                              %287 = arith.addi %275, %286 : index
                              %288 = arith.addi %287, %arg3 : index
                              %289 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              %290 = arith.index_cast %288 {unsigned} : index to i32
                              affine.store %290, %289[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %291 = affine.load %289[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %292 = arith.addi %291, %c1_i32_2 : i32
                              %293 = arith.index_cast %291 : i32 to index
                              memref.store %285, %60[%293] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %294 = arith.addi %282, %268 : index
                              %295 = memref.load %39[%283, %284, %294] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %296 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %290, %296[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %297 = affine.load %296[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %298 = arith.addi %297, %c1_i32_2 : i32
                              %299 = arith.index_cast %297 : i32 to index
                              memref.store %295, %61[%299] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
                          } {loop_name = "i", op_name = "ntt_in_swizzle"}
                          %271 = hcl.create_op_handle "bflyfn"
                          %272 = hcl.create_loop_handle %271, "i"
                          affine.for %arg2 = 0 to 8192 {
                            %274 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            %275 = arith.index_cast %arg2 {unsigned} : index to i32
                            affine.store %275, %274[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %276 = affine.load %274[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %277 = arith.addi %276, %c1_i32_2 : i32
                            %278 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %279 = hcl.create_op_handle "Mem.read_c"
                            %280 = hcl.create_loop_handle %279, "i"
                            %281 = affine.load %274[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %282 = arith.index_cast %281 : i32 to index
                            %283 = arith.addi %282, %c0 : index
                            %284 = memref.load %60[%283] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %284, %278[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %285 = affine.load %278[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %286 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            affine.store %275, %286[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %287 = affine.load %286[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %288 = arith.addi %287, %c1_i32_2 : i32
                            %289 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %290 = hcl.create_op_handle "Mem.read_c"
                            %291 = hcl.create_loop_handle %290, "i"
                            %292 = affine.load %286[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %293 = arith.index_cast %292 : i32 to index
                            %294 = arith.addi %293, %c0 : index
                            %295 = memref.load %61[%294] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %295, %289[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %296 = affine.load %289[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %297 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            affine.store %275, %297[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %298 = affine.load %297[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %299 = arith.addi %298, %c1_i32_2 : i32
                            %300 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %301 = hcl.create_op_handle "Mem.read_c"
                            %302 = hcl.create_loop_handle %301, "i"
                            %303 = affine.load %297[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %304 = arith.index_cast %303 : i32 to index
                            %305 = arith.addi %304, %c0 : index
                            %306 = memref.load %62[%305] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %306, %300[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %307 = affine.load %300[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %308 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                            affine.store %296, %308[0] {to = "b", unsigned} : memref<1xi32>
                            %309 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                            affine.store %307, %309[0] {to = "w", unsigned} : memref<1xi32>
                            %310 = memref.alloc() {name = "q"} : memref<1xi32>
                            affine.store %226, %310[0] {to = "q"} : memref<1xi32>
                            %311 = affine.load %310[0] {from = "q"} : memref<1xi32>
                            %c65535_i32 = arith.constant 65535 : i32
                            %312 = arith.andi %311, %c65535_i32 : i32
                            %313 = affine.load %309[0] {from = "w", unsigned} : memref<1xi32>
                            %314 = affine.load %308[0] {from = "b", unsigned} : memref<1xi32>
                            %315 = arith.muli %313, %314 {unsigned} : i32
                            %316 = arith.subi %c0_i32_0, %315 {unsigned} : i32
                            %317 = arith.andi %316, %c65535_i32 {unsigned} : i32
                            %318 = arith.muli %317, %311 : i32
                            %319 = arith.addi %315, %318 : i32
                            %320 = arith.shrui %319, %c16_i32 : i32
                            %321 = arith.subi %c0_i32_0, %320 : i32
                            %322 = arith.andi %321, %c65535_i32 : i32
                            %323 = arith.muli %322, %311 : i32
                            %324 = arith.addi %320, %323 : i32
                            %325 = arith.shrui %324, %c16_i32 : i32
                            %326 = arith.cmpi slt, %325, %311 : i32
                            %327 = arith.subi %325, %311 : i32
                            %328 = arith.select %326, %325, %327 : i32
                            %329 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                            affine.store %328, %329[0] {to = "mont_redc", unsigned} : memref<1xi32>
                            %330 = affine.load %329[0] {from = "mont_redc", unsigned} : memref<1xi32>
                            %331 = arith.addi %285, %330 {unsigned} : i32
                            %332 = arith.remsi %331, %226 : i32
                            %333 = arith.addi %226, %285 {unsigned} : i32
                            %334 = arith.subi %333, %330 {unsigned} : i32
                            %335 = arith.remsi %334, %226 : i32
                            %336 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                            affine.store %275, %336[0] {to = "write_addr", unsigned} : memref<1xi32>
                            %337 = affine.load %336[0] {from = "write_addr", unsigned} : memref<1xi32>
                            %338 = arith.addi %337, %c1_i32_2 : i32
                            %339 = arith.index_cast %337 : i32 to index
                            memref.store %332, %54[%339] {to = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                            %340 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                            affine.store %275, %340[0] {to = "write_addr", unsigned} : memref<1xi32>
                            %341 = affine.load %340[0] {from = "write_addr", unsigned} : memref<1xi32>
                            %342 = arith.addi %341, %c1_i32_2 : i32
                            %343 = arith.index_cast %341 : i32 to index
                            memref.store %335, %55[%343] {to = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "bflyfn"}
                          affine.store %221, %49[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                          affine.store %222, %50[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                          %273 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                          affine.store %273, %47[0] {to = "flag_ntt", unsigned} : memref<1xi1>
                        } else {
                          %216 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                          %217 = arith.extui %216 : i16 to i32
                          %c6_i32 = arith.constant 6 : i32
                          %218 = arith.cmpi eq, %217, %c6_i32 : i32
                          scf.if %218 {
                            %219 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                            %220 = memref.alloc() {name = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                            %221 = hcl.int_to_struct(%219) {unsigned} : i128 -> <i6, i9, i9, i9, i9, i11, i43, i32>
                            affine.store %221, %220[0] {to = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                            %222 = affine.load %220[0] {from = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i9, i9, i9, i9, i11, i43, i32>>
                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                            %223 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                            hcl.print(%223) {format = "ip=%d ", signedness = "u"} : i5
                            %224 = hcl.struct_get %222[1] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                            %225 = hcl.struct_get %222[2] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                            %226 = hcl.struct_get %222[3] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                            %227 = hcl.struct_get %222[4] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i9
                            %228 = hcl.struct_get %222[5] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i11
                            %229 = hcl.struct_get %222[7] : <i6, i9, i9, i9, i9, i11, i43, i32> -> i32
                            hcl.print(%224, %225, %226, %227, %228, %229) {format = "intt top=0x%x bot=0x%x a=0x%x b=0x%x twidx=0x%x q=0x%x", signedness = "______"} : i9, i9, i9, i9, i11, i32
                            hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                            %230 = affine.load %48[0] {from = "flag_intt", unsigned} : memref<1xi1>
                            %231 = arith.extui %230 : i1 to i32
                            %232 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %233 = hcl.int_to_struct(%226) {unsigned} : i9 -> <i7, i2>
                            affine.store %233, %232[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %234 = affine.load %232[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %235 = hcl.struct_get %234[1] : <i7, i2> -> i2
                            %236 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %237 = hcl.int_to_struct(%227) {unsigned} : i9 -> <i7, i2>
                            affine.store %237, %236[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %238 = affine.load %236[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %239 = hcl.struct_get %238[1] : <i7, i2> -> i2
                            %240 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %241 = hcl.int_to_struct(%224) {unsigned} : i9 -> <i7, i2>
                            affine.store %241, %240[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %242 = affine.load %240[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %243 = hcl.struct_get %242[1] : <i7, i2> -> i2
                            %244 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %245 = hcl.int_to_struct(%225) {unsigned} : i9 -> <i7, i2>
                            affine.store %245, %244[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %246 = affine.load %244[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %247 = hcl.struct_get %246[1] : <i7, i2> -> i2
                            %248 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %249 = hcl.int_to_struct(%226) {unsigned} : i9 -> <i7, i2>
                            affine.store %249, %248[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %250 = affine.load %248[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %251 = hcl.struct_get %250[1] : <i7, i2> -> i2
                            %252 = hcl.struct_get %250[0] : <i7, i2> -> i7
                            %253 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %254 = hcl.int_to_struct(%227) {unsigned} : i9 -> <i7, i2>
                            affine.store %254, %253[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %255 = affine.load %253[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                            %256 = hcl.struct_get %255[1] : <i7, i2> -> i2
                            %257 = hcl.struct_get %255[0] : <i7, i2> -> i7
                            %c8192_i32 = arith.constant 8192 : i32
                            %258 = arith.extsi %228 : i11 to i32
                            %259 = arith.muli %258, %c8192_i32 : i32
                            %260 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                            %c8192_i32_3 = arith.constant {unsigned} 8192 : i32
                            affine.store %c8192_i32_3, %260[0] {to = "count", unsigned} : memref<1xi32>
                            %261 = affine.load %260[0] {from = "count", unsigned} : memref<1xi32>
                            %262 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                            affine.store %259, %262[0] {to = "src_addr"} : memref<1xi32>
                            %263 = affine.load %262[0] {from = "src_addr"} : memref<1xi32>
                            %264 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                            affine.store %c0_i32, %264[0] {to = "dst_addr", unsigned} : memref<1xi32>
                            %265 = affine.load %264[0] {from = "dst_addr", unsigned} : memref<1xi32>
                            %266 = arith.addi %263, %261 {unsigned} : i32
                            %c71303168_i32 = arith.constant 71303168 : i32
                            %267 = hcl.create_op_handle "copyN"
                            %268 = hcl.create_loop_handle %267, "i"
                            %269 = arith.index_cast %c0_i32_0 : i32 to index
                            %270 = arith.index_cast %261 : i32 to index
                            %271 = arith.index_cast %c1_i32_2 : i32 to index
                            scf.for %arg2 = %269 to %270 step %271 {
                              %279 = arith.index_cast %263 : i32 to index
                              %280 = arith.addi %279, %arg2 : index
                              %281 = memref.load %45[%280] {from = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
                              %282 = arith.index_cast %265 : i32 to index
                              %283 = arith.addi %282, %arg2 : index
                              memref.store %281, %62[%283] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "copyN"}
                            %272 = hcl.create_op_handle "intt_in_swizzle_a"
                            %273 = hcl.create_loop_handle %272, "i"
                            affine.for %arg2 = 0 to 64 {
                              %c64_i32 = arith.constant 64 : i32
                              %279 = arith.index_cast %c64_i32 : i32 to index
                              %280 = arith.muli %arg2, %279 : index
                              %c128_i32 = arith.constant 128 : i32
                              %281 = arith.index_cast %c128_i32 : i32 to index
                              %282 = arith.muli %arg2, %281 : index
                              %283 = hcl.create_op_handle "ain64"
                              %284 = hcl.create_loop_handle %283, "j"
                              affine.for %arg3 = 0 to 64 {
                                %287 = arith.addi %269, %280 : index
                                %288 = arith.addi %287, %arg3 : index
                                %289 = arith.index_cast %251 : i2 to index
                                %290 = arith.index_cast %252 : i7 to index
                                %291 = memref.load %39[%289, %290, %288] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %292 = arith.addi %282, %arg3 : index
                                %293 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %294 = arith.index_cast %292 {unsigned} : index to i32
                                affine.store %294, %293[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %295 = affine.load %293[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %296 = arith.addi %295, %c1_i32_2 : i32
                                %297 = arith.index_cast %295 : i32 to index
                                memref.store %291, %60[%297] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              %285 = hcl.create_op_handle "bin64"
                              %286 = hcl.create_loop_handle %285, "j"
                              affine.for %arg3 = 0 to 64 {
                                %287 = arith.addi %282, %279 : index
                                %288 = arith.addi %269, %280 : index
                                %289 = arith.addi %288, %arg3 : index
                                %290 = arith.index_cast %256 : i2 to index
                                %291 = arith.index_cast %257 : i7 to index
                                %292 = memref.load %39[%290, %291, %289] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %293 = arith.addi %287, %arg3 : index
                                %294 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %295 = arith.index_cast %293 {unsigned} : index to i32
                                affine.store %295, %294[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %296 = affine.load %294[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %297 = arith.addi %296, %c1_i32_2 : i32
                                %298 = arith.index_cast %296 : i32 to index
                                memref.store %292, %60[%298] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_a"}
                            %274 = hcl.create_op_handle "intt_in_swizzle_b"
                            %275 = hcl.create_loop_handle %274, "i"
                            affine.for %arg2 = 0 to 64 {
                              %c64_i32 = arith.constant 64 : i32
                              %279 = arith.index_cast %c64_i32 : i32 to index
                              %280 = arith.muli %arg2, %279 : index
                              %c128_i32 = arith.constant 128 : i32
                              %281 = arith.index_cast %c128_i32 : i32 to index
                              %282 = arith.muli %arg2, %281 : index
                              %283 = hcl.create_op_handle "ain64"
                              %284 = hcl.create_loop_handle %283, "j"
                              affine.for %arg3 = 0 to 64 {
                                %c4096_i32 = arith.constant 4096 : i32
                                %287 = arith.index_cast %c4096_i32 : i32 to index
                                %288 = arith.addi %287, %280 : index
                                %289 = arith.addi %288, %arg3 : index
                                %290 = arith.index_cast %251 : i2 to index
                                %291 = arith.index_cast %252 : i7 to index
                                %292 = memref.load %39[%290, %291, %289] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %293 = arith.addi %282, %arg3 : index
                                %294 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %295 = arith.index_cast %293 {unsigned} : index to i32
                                affine.store %295, %294[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %296 = affine.load %294[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %297 = arith.addi %296, %c1_i32_2 : i32
                                %298 = arith.index_cast %296 : i32 to index
                                memref.store %292, %61[%298] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              %285 = hcl.create_op_handle "bin64"
                              %286 = hcl.create_loop_handle %285, "j"
                              affine.for %arg3 = 0 to 64 {
                                %287 = arith.addi %282, %279 : index
                                %c4096_i32 = arith.constant 4096 : i32
                                %288 = arith.index_cast %c4096_i32 : i32 to index
                                %289 = arith.addi %288, %280 : index
                                %290 = arith.addi %289, %arg3 : index
                                %291 = arith.index_cast %256 : i2 to index
                                %292 = arith.index_cast %257 : i7 to index
                                %293 = memref.load %39[%291, %292, %290] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %294 = arith.addi %287, %arg3 : index
                                %295 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %296 = arith.index_cast %294 {unsigned} : index to i32
                                affine.store %296, %295[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %297 = affine.load %295[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %298 = arith.addi %297, %c1_i32_2 : i32
                                %299 = arith.index_cast %297 : i32 to index
                                memref.store %293, %61[%299] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_b"}
                            %276 = hcl.create_op_handle "bflyfn"
                            %277 = hcl.create_loop_handle %276, "i"
                            affine.for %arg2 = 0 to 8192 {
                              %279 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              %280 = arith.index_cast %arg2 {unsigned} : index to i32
                              affine.store %280, %279[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %281 = affine.load %279[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %282 = arith.addi %281, %c1_i32_2 : i32
                              %283 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %284 = hcl.create_op_handle "Mem.read_c"
                              %285 = hcl.create_loop_handle %284, "i"
                              %286 = affine.load %279[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %287 = arith.index_cast %286 : i32 to index
                              %288 = arith.addi %287, %c0 : index
                              %289 = memref.load %60[%288] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %289, %283[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %290 = affine.load %283[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %291 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              affine.store %280, %291[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %292 = affine.load %291[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %293 = arith.addi %292, %c1_i32_2 : i32
                              %294 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %295 = hcl.create_op_handle "Mem.read_c"
                              %296 = hcl.create_loop_handle %295, "i"
                              %297 = affine.load %291[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %298 = arith.index_cast %297 : i32 to index
                              %299 = arith.addi %298, %c0 : index
                              %300 = memref.load %61[%299] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %300, %294[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %301 = affine.load %294[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %302 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              affine.store %280, %302[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %303 = affine.load %302[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %304 = arith.addi %303, %c1_i32_2 : i32
                              %305 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %306 = hcl.create_op_handle "Mem.read_c"
                              %307 = hcl.create_loop_handle %306, "i"
                              %308 = affine.load %302[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %309 = arith.index_cast %308 : i32 to index
                              %310 = arith.addi %309, %c0 : index
                              %311 = memref.load %62[%310] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %311, %305[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %312 = affine.load %305[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %313 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                              affine.store %301, %313[0] {to = "b", unsigned} : memref<1xi32>
                              %314 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                              affine.store %312, %314[0] {to = "w", unsigned} : memref<1xi32>
                              %315 = memref.alloc() {name = "q"} : memref<1xi32>
                              affine.store %229, %315[0] {to = "q"} : memref<1xi32>
                              %316 = affine.load %315[0] {from = "q"} : memref<1xi32>
                              %c65535_i32 = arith.constant 65535 : i32
                              %317 = arith.andi %316, %c65535_i32 : i32
                              %318 = affine.load %314[0] {from = "w", unsigned} : memref<1xi32>
                              %319 = affine.load %313[0] {from = "b", unsigned} : memref<1xi32>
                              %320 = arith.muli %318, %319 {unsigned} : i32
                              %321 = arith.subi %c0_i32_0, %320 {unsigned} : i32
                              %322 = arith.andi %321, %c65535_i32 {unsigned} : i32
                              %323 = arith.muli %322, %316 : i32
                              %324 = arith.addi %320, %323 : i32
                              %325 = arith.shrui %324, %c16_i32 : i32
                              %326 = arith.subi %c0_i32_0, %325 : i32
                              %327 = arith.andi %326, %c65535_i32 : i32
                              %328 = arith.muli %327, %316 : i32
                              %329 = arith.addi %325, %328 : i32
                              %330 = arith.shrui %329, %c16_i32 : i32
                              %331 = arith.cmpi slt, %330, %316 : i32
                              %332 = arith.subi %330, %316 : i32
                              %333 = arith.select %331, %330, %332 : i32
                              %334 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                              affine.store %333, %334[0] {to = "mont_redc", unsigned} : memref<1xi32>
                              %335 = affine.load %334[0] {from = "mont_redc", unsigned} : memref<1xi32>
                              %336 = arith.addi %290, %335 {unsigned} : i32
                              %337 = arith.remsi %336, %229 : i32
                              %338 = arith.addi %229, %290 {unsigned} : i32
                              %339 = arith.subi %338, %335 {unsigned} : i32
                              %340 = arith.remsi %339, %229 : i32
                              %341 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %280, %341[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %342 = affine.load %341[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %343 = arith.addi %342, %c1_i32_2 : i32
                              %344 = arith.index_cast %342 : i32 to index
                              memref.store %337, %58[%344] {to = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                              %345 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %280, %345[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %346 = affine.load %345[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %347 = arith.addi %346, %c1_i32_2 : i32
                              %348 = arith.index_cast %346 : i32 to index
                              memref.store %340, %59[%348] {to = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "bflyfn"}
                            affine.store %224, %49[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                            affine.store %225, %50[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                            %278 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                            affine.store %278, %48[0] {to = "flag_intt", unsigned} : memref<1xi1>
                          } else {
                            %219 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                            %220 = arith.extui %219 : i16 to i32
                            %c7_i32 = arith.constant 7 : i32
                            %221 = arith.cmpi eq, %220, %c7_i32 : i32
                            scf.if %221 {
                              %222 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                              %223 = memref.alloc() {name = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                              %224 = hcl.int_to_struct(%222) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i62, i32>
                              affine.store %224, %223[0] {to = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                              %225 = affine.load %223[0] {from = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i62, i32>>
                              hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                              %226 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                              hcl.print(%226) {format = "ip=%d ", signedness = "u"} : i5
                              %227 = hcl.struct_get %225[2] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                              %228 = hcl.struct_get %225[3] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                              %229 = hcl.struct_get %225[4] : <i6, i1, i9, i9, i9, i62, i32> -> i9
                              %230 = hcl.struct_get %225[6] : <i6, i1, i9, i9, i9, i62, i32> -> i32
                              hcl.print(%227, %228, %229, %230) {format = "psub res=0x%x a=0x%x b=0x%x q=0x%x", signedness = "____"} : i9, i9, i9, i32
                              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                              %231 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %232 = hcl.int_to_struct(%228) {unsigned} : i9 -> <i7, i2>
                              affine.store %232, %231[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %233 = affine.load %231[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %234 = hcl.struct_get %233[1] : <i7, i2> -> i2
                              %235 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %236 = hcl.int_to_struct(%229) {unsigned} : i9 -> <i7, i2>
                              affine.store %236, %235[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %237 = affine.load %235[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %238 = hcl.struct_get %237[1] : <i7, i2> -> i2
                              %239 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %240 = hcl.int_to_struct(%227) {unsigned} : i9 -> <i7, i2>
                              affine.store %240, %239[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %241 = affine.load %239[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %242 = hcl.struct_get %241[1] : <i7, i2> -> i2
                              %243 = hcl.struct_get %241[0] : <i7, i2> -> i7
                              %244 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %245 = hcl.int_to_struct(%228) {unsigned} : i9 -> <i7, i2>
                              affine.store %245, %244[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %246 = affine.load %244[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %247 = hcl.struct_get %246[1] : <i7, i2> -> i2
                              %248 = hcl.struct_get %246[0] : <i7, i2> -> i7
                              %249 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %250 = hcl.int_to_struct(%229) {unsigned} : i9 -> <i7, i2>
                              affine.store %250, %249[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %251 = affine.load %249[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                              %252 = hcl.struct_get %251[1] : <i7, i2> -> i2
                              %253 = hcl.struct_get %251[0] : <i7, i2> -> i7
                              %254 = hcl.create_op_handle "bflyfn"
                              %255 = hcl.create_loop_handle %254, "i"
                              affine.for %arg2 = 0 to 8192 {
                                %256 = arith.index_cast %247 : i2 to index
                                %257 = arith.index_cast %248 : i7 to index
                                %258 = memref.load %39[%256, %257, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %259 = arith.index_cast %252 : i2 to index
                                %260 = arith.index_cast %253 : i7 to index
                                %261 = memref.load %39[%259, %260, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %262 = arith.addi %258, %261 {unsigned} : i32
                                %263 = arith.addi %230, %258 {unsigned} : i32
                                %264 = arith.subi %263, %261 {unsigned} : i32
                                %265 = arith.remsi %264, %230 : i32
                                %266 = arith.index_cast %242 : i2 to index
                                %267 = arith.index_cast %243 : i7 to index
                                memref.store %265, %39[%266, %267, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              } {loop_name = "i", op_name = "bflyfn"}
                            } else {
                              %222 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                              %223 = arith.extui %222 : i16 to i32
                              %c8_i32 = arith.constant 8 : i32
                              %224 = arith.cmpi eq, %223, %c8_i32 : i32
                              scf.if %224 {
                                %225 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                %226 = memref.alloc() {name = "dec_inst_nop"} : memref<1x!hcl.struct<i6, i7, i115>>
                                %227 = hcl.int_to_struct(%225) {unsigned} : i128 -> <i6, i7, i115>
                                affine.store %227, %226[0] {to = "dec_inst_nop"} : memref<1x!hcl.struct<i6, i7, i115>>
                                %228 = affine.load %226[0] {from = "dec_inst_nop"} : memref<1x!hcl.struct<i6, i7, i115>>
                                %229 = affine.load %46[0] {from = "nop_count", unsigned} : memref<1xi32>
                                %230 = hcl.struct_get %228[1] : <i6, i7, i115> -> i7
                                %231 = arith.extsi %230 {unsigned} : i7 to i32
                                %232 = arith.cmpi ult, %229, %231 : i32
                                scf.if %232 {
                                  %233 = affine.load %46[0] {from = "nop_count", unsigned} : memref<1xi32>
                                  %234 = arith.addi %233, %c1_i32_2 : i32
                                  affine.store %234, %46[0] {to = "nop_count", unsigned} : memref<1xi32>
                                  %235 = affine.load %76[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                  %236 = arith.addi %235, %c1_i32_2 : i32
                                  affine.store %236, %76[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                  %237 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                                  affine.store %237, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                  affine.store %237, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                  affine.store %237, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                                  %238 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                  %239 = arith.extui %238 : i1 to i32
                                  %240 = arith.cmpi eq, %239, %c0_i32_0 : i32
                                  %241 = affine.load %67[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                  %242 = arith.extui %241 : i1 to i32
                                  %243 = arith.cmpi eq, %242, %c0_i32_0 : i32
                                  scf.if %243 {
                                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %244 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                    hcl.print(%244) {format = "ip=%d ", signedness = "u"} : i5
                                    hcl.print(%230) {format = "nop count=0x%x", signedness = "_"} : i7
                                    hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                  } else {
                                    affine.store %c0_i32_0, %46[0] {to = "nop_count", unsigned} : memref<1xi32>
                                    affine.store %237, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                                    %244 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                    %245 = arith.extui %244 : i1 to i32
                                    %246 = arith.cmpi eq, %245, %c0_i32_0 : i32
                                    scf.if %246 {
                                    } else {
                                      %248 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                                      %249 = arith.extui %248 : i16 to i32
                                      %c9_i32 = arith.constant 9 : i32
                                      %250 = arith.cmpi eq, %249, %c9_i32 : i32
                                      scf.if %250 {
                                        %251 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                        %252 = memref.alloc() {name = "dec_inst_cstore"} : memref<1x!hcl.struct<i6, i1, i9, i112>>
                                        %253 = hcl.int_to_struct(%251) {unsigned} : i128 -> <i6, i1, i9, i112>
                                        affine.store %253, %252[0] {to = "dec_inst_cstore"} : memref<1x!hcl.struct<i6, i1, i9, i112>>
                                        %254 = affine.load %252[0] {from = "dec_inst_cstore"} : memref<1x!hcl.struct<i6, i1, i9, i112>>
                                        %255 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                        %256 = arith.extui %255 : i3 to i32
                                        %257 = arith.cmpi eq, %256, %c1_i32_2 : i32
                                        scf.if %257 {
                                          hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                          %258 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                          hcl.print(%258) {format = "ip=%d ", signedness = "u"} : i5
                                          %259 = hcl.struct_get %254[1] : <i6, i1, i9, i112> -> i1
                                          %260 = hcl.struct_get %254[2] : <i6, i1, i9, i112> -> i9
                                          hcl.print(%259, %260) {format = "cstore dbg=0x%x addr=0x%x", signedness = "__"} : i1, i9
                                          hcl.print(%c0_i32_0) {format = "    <got matching cfetch cstore!>\0A", signedness = "_"} : i32
                                          %261 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                          %262 = hcl.int_to_struct(%260) {unsigned} : i9 -> <i7, i2>
                                          affine.store %262, %261[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                          %263 = affine.load %261[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                          %264 = hcl.struct_get %263[1] : <i7, i2> -> i2
                                          %265 = hcl.struct_get %263[0] : <i7, i2> -> i7
                                          %266 = affine.load %24[0] {from = "cstore_spadaddr", unsigned} : memref<1xi48>
                                          %267 = arith.addi %266, %99 {unsigned} : i48
                                          %268 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                          %c8192_i32 = arith.constant {unsigned} 8192 : i32
                                          affine.store %c8192_i32, %268[0] {to = "count", unsigned} : memref<1xi32>
                                          %269 = affine.load %268[0] {from = "count", unsigned} : memref<1xi32>
                                          %270 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                                          affine.store %c0_i32, %270[0] {to = "src_addr", unsigned} : memref<1xi32>
                                          %271 = affine.load %270[0] {from = "src_addr", unsigned} : memref<1xi32>
                                          %272 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi48>
                                          affine.store %267, %272[0] {to = "dst_addr", unsigned} : memref<1xi48>
                                          %273 = affine.load %272[0] {from = "dst_addr", unsigned} : memref<1xi48>
                                          %274 = arith.addi %271, %269 {unsigned} : i32
                                          %c8192_i32_3 = arith.constant 8192 : i32
                                          %275 = hcl.create_op_handle "copyN"
                                          %276 = hcl.create_loop_handle %275, "i"
                                          %277 = arith.index_cast %c0_i32_0 : i32 to index
                                          %278 = arith.index_cast %269 : i32 to index
                                          %279 = arith.index_cast %c1_i32_2 : i32 to index
                                          scf.for %arg2 = %277 to %278 step %279 {
                                            %283 = arith.index_cast %271 : i32 to index
                                            %284 = arith.addi %283, %arg2 : index
                                            %285 = arith.index_cast %264 : i2 to index
                                            %286 = arith.index_cast %265 : i7 to index
                                            %287 = memref.load %39[%285, %286, %284] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                            %288 = arith.index_cast %273 : i48 to index
                                            %289 = arith.addi %288, %arg2 : index
                                            memref.store %287, %0[%289] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                          } {loop_name = "i", op_name = "copyN"}
                                          affine.store %237, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                                          affine.store %237, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                                          %280 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                          %281 = arith.extui %280 : i1 to i32
                                          %282 = arith.cmpi eq, %281, %c0_i32_0 : i32
                                          scf.if %282 {
                                          } else {
                                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                            %283 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                            hcl.print(%283) {format = "ip=%d ", signedness = "u"} : i5
                                            hcl.print(%259, %260) {format = "cstore dbg=0x%x addr=0x%x", signedness = "__"} : i1, i9
                                            hcl.print(%c0_i32_0) {format = "    <no matching cfetch cstore?>\0A", signedness = "_"} : i32
                                          }
                                        } else {
                                          %258 = affine.load %172[0] {from = "inst_id", unsigned} : memref<1xi16>
                                          %259 = arith.extui %258 : i16 to i32
                                          %c10_i32 = arith.constant 10 : i32
                                          %260 = arith.cmpi eq, %259, %c10_i32 : i32
                                          scf.if %260 {
                                            %261 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                            %262 = memref.alloc() {name = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                            %263 = hcl.int_to_struct(%261) {unsigned} : i128 -> <i6, i1, i9, i9, i103>
                                            affine.store %263, %262[0] {to = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                            %264 = affine.load %262[0] {from = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                            %265 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                            hcl.print(%265) {format = "ip=%d ", signedness = "u"} : i5
                                            %266 = hcl.struct_get %264[1] : <i6, i1, i9, i9, i103> -> i1
                                            %267 = hcl.struct_get %264[2] : <i6, i1, i9, i9, i103> -> i9
                                            %268 = hcl.struct_get %264[3] : <i6, i1, i9, i9, i103> -> i9
                                            hcl.print(%266, %267, %268) {format = "move dbg=0x%x res=0x%x a=0x%x", signedness = "___"} : i1, i9, i9
                                            hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                            %269 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                            %270 = hcl.int_to_struct(%267) {unsigned} : i9 -> <i7, i2>
                                            affine.store %270, %269[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                            %271 = affine.load %269[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                            %272 = hcl.struct_get %271[1] : <i7, i2> -> i2
                                            %273 = hcl.struct_get %271[0] : <i7, i2> -> i7
                                            %274 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                            %275 = hcl.int_to_struct(%268) {unsigned} : i9 -> <i7, i2>
                                            affine.store %275, %274[0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                            %276 = affine.load %274[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
                                            %277 = hcl.struct_get %276[1] : <i7, i2> -> i2
                                            %278 = hcl.struct_get %276[0] : <i7, i2> -> i7
                                            %279 = hcl.create_op_handle "bflyfn"
                                            %280 = hcl.create_loop_handle %279, "i"
                                            affine.for %arg2 = 0 to 8192 {
                                              %281 = arith.index_cast %277 : i2 to index
                                              %282 = arith.index_cast %278 : i7 to index
                                              %283 = memref.load %39[%281, %282, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                              %284 = arith.addi %283, %c0_i32_0 : i32
                                              %c4294967295_i64 = arith.constant 4294967295 : i64
                                              %285 = arith.extsi %284 : i32 to i64
                                              %286 = arith.remsi %285, %c4294967295_i64 : i64
                                              %287 = arith.extui %283 : i32 to i64
                                              %288 = arith.addi %c4294967295_i64, %287 : i64
                                              %289 = arith.extsi %c0_i32_0 : i32 to i64
                                              %290 = arith.subi %288, %289 : i64
                                              %291 = arith.trunci %286 {unsigned} : i64 to i32
                                              %292 = arith.index_cast %272 : i2 to index
                                              %293 = arith.index_cast %273 : i7 to index
                                              memref.store %291, %39[%292, %293, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                            } {loop_name = "i", op_name = "bflyfn"}
                                          } else {
                                            %261 = affine.load %189[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                            hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                            %c127 = arith.constant 127 : index
                                            %c64 = arith.constant 64 : index
                                            %262 = hcl.get_slice(%261 : i128, %c127, %c64) {unsigned} -> i128
                                            hcl.print(%262) {format = "%016lx", signedness = "u"} : i128
                                            %c63 = arith.constant 63 : index
                                            %263 = hcl.get_slice(%261 : i128, %c63, %c0) {unsigned} -> i128
                                            hcl.print(%263) {format = "%016lx", signedness = "u"} : i128
                                            hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                          }
                                        }
                                      }
                                    }
                                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %247 = affine.load %154[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                    hcl.print(%247) {format = "ip=%d ", signedness = "u"} : i5
                                    hcl.print(%230) {format = "nop count=0x%x", signedness = "_"} : i7
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
              affine.store %96, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
              %193 = affine.load %170[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %194 = arith.cmpi ne, %193, %c0_i32_0 : i32
              scf.if %194 {
                %201 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %201, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                %202 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %203 = arith.extui %202 : i1 to i32
                %204 = arith.cmpi eq, %203, %c0_i32_0 : i32
              }
              %195 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %196 = arith.extui %195 : i1 to i32
              %197 = arith.cmpi eq, %196, %c0_i32_0 : i32
              scf.if %197 {
                %201 = affine.load %75[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
                %202 = arith.addi %201, %c1_i32_2 : i32
                affine.store %202, %75[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
                %203 = affine.load %72[0] {from = "inst_naddr", unsigned} : memref<1xi5>
                affine.store %203, %71[0] {to = "inst_addr", unsigned} : memref<1xi5>
                affine.store %96, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
              }
              %198 = affine.load %141[0] {from = "addr_top", unsigned} : memref<1xi5>
              %199 = affine.load %72[0] {from = "inst_naddr", unsigned} : memref<1xi5>
              %200 = arith.cmpi eq, %198, %199 : i5
              scf.if %200 {
                %201 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %201, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
                affine.store %201, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                %202 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %203 = arith.extui %202 : i1 to i32
                %204 = arith.cmpi eq, %203, %c0_i32_0 : i32
                scf.if %204 {
                } else {
                  %205 = affine.load %170[0] {from = "inst_lat", unsigned} : memref<1xi32>
                  %c2_i32 = arith.constant 2 : i32
                  %206 = arith.subi %205, %c2_i32 : i32
                  affine.store %206, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
                  %207 = affine.load %77[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                  %208 = arith.addi %207, %c1_i32_2 : i32
                  affine.store %208, %77[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                  affine.store %201, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
                  affine.store %201, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                  %209 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                  %210 = arith.extui %209 : i1 to i32
                  %211 = arith.cmpi eq, %210, %c0_i32_0 : i32
                  scf.if %211 {
                  } else {
                    %212 = affine.load %74[0] {from = "latstalled", unsigned} : memref<1xi1>
                    %213 = arith.extui %212 : i1 to i32
                    %214 = affine.load %73[0] {from = "latency_count", unsigned} : memref<1xi32>
                    %215 = arith.subi %214, %c1_i32_2 : i32
                    affine.store %215, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
                    %216 = affine.load %77[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                    %217 = arith.addi %216, %c1_i32_2 : i32
                    affine.store %217, %77[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                    affine.store %201, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
                    affine.store %201, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                    %218 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                    %219 = arith.extui %218 : i1 to i32
                    %220 = arith.cmpi eq, %219, %c0_i32_0 : i32
                  }
                }
              }
            }
          }
          scf.yield
        }
        %148 = affine.load %70[0] {from = "addr_stop", unsigned} : memref<1xi1>
        %149 = arith.extui %148 : i1 to i32
        %150 = arith.cmpi ne, %149, %c0_i32_0 : i32
        scf.if %150 {
          affine.store %96, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
        } else {
          %151 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
          %152 = arith.extui %151 : i4 to i32
          %c1_i32_2 = arith.constant 1 : i32
          %153 = arith.cmpi eq, %152, %c1_i32_2 : i32
          scf.if %153 {
            %158 = affine.load %64[0] {from = "flags_active", unsigned} : memref<1xi1>
            %159 = arith.extui %158 : i1 to i32
            affine.store %96, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
            affine.store %96, %65[0] {to = "flags_halt", unsigned} : memref<1xi1>
            affine.store %96, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
            affine.store %96, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            affine.store %96, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
            affine.store %96, %69[0] {to = "count_stop", unsigned} : memref<1xi1>
            affine.store %96, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
            affine.store %102, %71[0] {to = "inst_addr", unsigned} : memref<1xi5>
            affine.store %102, %72[0] {to = "inst_naddr", unsigned} : memref<1xi5>
            affine.store %c0_i32_0, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
            affine.store %96, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
            affine.store %102, %71[0] {to = "inst_addr", unsigned} : memref<1xi5>
            %160 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %160, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
          }
          %154 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
          %155 = arith.extui %154 : i4 to i32
          %156 = arith.subi %155, %c1_i32_2 : i32
          %157 = arith.trunci %156 {unsigned} : i32 to i4
          affine.store %157, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
        }
      }
      %135 = affine.load %47[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %136 = arith.extui %135 : i1 to i32
      %137 = arith.cmpi ne, %136, %c0_i32_0 : i32
      scf.if %137 {
        %141 = hcl.create_op_handle "ntt_out_swizzle_ot"
        %142 = hcl.create_loop_handle %141, "i"
        affine.for %arg2 = 0 to 64 {
          %c64_i32 = arith.constant 64 : i32
          %145 = arith.index_cast %c64_i32 : i32 to index
          %146 = arith.muli %arg2, %145 : index
          %c128_i32 = arith.constant 128 : i32
          %147 = arith.index_cast %c128_i32 : i32 to index
          %148 = arith.muli %arg2, %147 : index
          %149 = hcl.create_op_handle "ot64"
          %150 = hcl.create_loop_handle %149, "j"
          affine.for %arg3 = 0 to 64 {
            %153 = arith.index_cast %c0_i32_0 : i32 to index
            %154 = arith.addi %153, %146 : index
            %155 = arith.addi %148, %arg3 : index
            %156 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %157 = arith.index_cast %155 {unsigned} : index to i32
            affine.store %157, %156[0] {to = "read_addr", unsigned} : memref<1xi32>
            %158 = affine.load %156[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %159 = arith.addi %158, %c1_i32_2 : i32
            %c8192_i32 = arith.constant 8192 : i32
            %160 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %161 = hcl.create_op_handle "Mem.read_c"
            %162 = hcl.create_loop_handle %161, "i"
            %163 = affine.load %156[0] {from = "read_addr", unsigned} : memref<1xi32>
            %164 = arith.index_cast %163 : i32 to index
            %165 = arith.addi %164, %c0 : index
            %166 = memref.load %54[%165] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %166, %160[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %167 = affine.load %160[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %168 = arith.addi %154, %arg3 : index
            %169 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %170 = arith.index_cast %168 {unsigned} : index to i32
            affine.store %170, %169[0] {to = "write_addr", unsigned} : memref<1xi32>
            %171 = affine.load %169[0] {from = "write_addr", unsigned} : memref<1xi32>
            %172 = arith.addi %171, %c1_i32_2 : i32
            %173 = arith.index_cast %171 : i32 to index
            memref.store %167, %52[%173] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          %151 = hcl.create_op_handle "ot64"
          %152 = hcl.create_loop_handle %151, "j"
          affine.for %arg3 = 0 to 64 {
            %153 = arith.addi %148, %145 : index
            %154 = arith.index_cast %c0_i32_0 : i32 to index
            %155 = arith.addi %154, %146 : index
            %156 = arith.addi %153, %arg3 : index
            %157 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %158 = arith.index_cast %156 {unsigned} : index to i32
            affine.store %158, %157[0] {to = "read_addr", unsigned} : memref<1xi32>
            %159 = affine.load %157[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %160 = arith.addi %159, %c1_i32_2 : i32
            %c8192_i32 = arith.constant 8192 : i32
            %161 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %162 = hcl.create_op_handle "Mem.read_c"
            %163 = hcl.create_loop_handle %162, "i"
            %164 = affine.load %157[0] {from = "read_addr", unsigned} : memref<1xi32>
            %165 = arith.index_cast %164 : i32 to index
            %166 = arith.addi %165, %c0 : index
            %167 = memref.load %54[%166] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %167, %161[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %168 = affine.load %161[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %169 = arith.addi %155, %arg3 : index
            %170 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %171 = arith.index_cast %169 {unsigned} : index to i32
            affine.store %171, %170[0] {to = "write_addr", unsigned} : memref<1xi32>
            %172 = affine.load %170[0] {from = "write_addr", unsigned} : memref<1xi32>
            %173 = arith.addi %172, %c1_i32_2 : i32
            %174 = arith.index_cast %172 : i32 to index
            memref.store %168, %53[%174] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ot"}
        %143 = hcl.create_op_handle "ntt_out_swizzle_ob"
        %144 = hcl.create_loop_handle %143, "i"
        affine.for %arg2 = 0 to 64 {
          %c64_i32 = arith.constant 64 : i32
          %145 = arith.index_cast %c64_i32 : i32 to index
          %146 = arith.muli %arg2, %145 : index
          %c128_i32 = arith.constant 128 : i32
          %147 = arith.index_cast %c128_i32 : i32 to index
          %148 = arith.muli %arg2, %147 : index
          %149 = hcl.create_op_handle "ot64"
          %150 = hcl.create_loop_handle %149, "j"
          affine.for %arg3 = 0 to 64 {
            %c4096_i32 = arith.constant 4096 : i32
            %153 = arith.index_cast %c4096_i32 : i32 to index
            %154 = arith.addi %153, %146 : index
            %155 = arith.addi %148, %arg3 : index
            %156 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %157 = arith.index_cast %155 {unsigned} : index to i32
            affine.store %157, %156[0] {to = "read_addr", unsigned} : memref<1xi32>
            %158 = affine.load %156[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %159 = arith.addi %158, %c1_i32_2 : i32
            %c8192_i32 = arith.constant 8192 : i32
            %160 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %161 = hcl.create_op_handle "Mem.read_c"
            %162 = hcl.create_loop_handle %161, "i"
            %163 = affine.load %156[0] {from = "read_addr", unsigned} : memref<1xi32>
            %164 = arith.index_cast %163 : i32 to index
            %165 = arith.addi %164, %c0 : index
            %166 = memref.load %55[%165] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %166, %160[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %167 = affine.load %160[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %168 = arith.addi %154, %arg3 : index
            %169 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %170 = arith.index_cast %168 {unsigned} : index to i32
            affine.store %170, %169[0] {to = "write_addr", unsigned} : memref<1xi32>
            %171 = affine.load %169[0] {from = "write_addr", unsigned} : memref<1xi32>
            %172 = arith.addi %171, %c1_i32_2 : i32
            %173 = arith.index_cast %171 : i32 to index
            memref.store %167, %52[%173] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          %151 = hcl.create_op_handle "ot64"
          %152 = hcl.create_loop_handle %151, "j"
          affine.for %arg3 = 0 to 64 {
            %153 = arith.addi %148, %145 : index
            %c4096_i32 = arith.constant 4096 : i32
            %154 = arith.index_cast %c4096_i32 : i32 to index
            %155 = arith.addi %154, %146 : index
            %156 = arith.addi %153, %arg3 : index
            %157 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
            %158 = arith.index_cast %156 {unsigned} : index to i32
            affine.store %158, %157[0] {to = "read_addr", unsigned} : memref<1xi32>
            %159 = affine.load %157[0] {from = "read_addr", unsigned} : memref<1xi32>
            %c1_i32_2 = arith.constant 1 : i32
            %160 = arith.addi %159, %c1_i32_2 : i32
            %c8192_i32 = arith.constant 8192 : i32
            %161 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
            %162 = hcl.create_op_handle "Mem.read_c"
            %163 = hcl.create_loop_handle %162, "i"
            %164 = affine.load %157[0] {from = "read_addr", unsigned} : memref<1xi32>
            %165 = arith.index_cast %164 : i32 to index
            %166 = arith.addi %165, %c0 : index
            %167 = memref.load %55[%166] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %167, %161[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %168 = affine.load %161[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %169 = arith.addi %155, %arg3 : index
            %170 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %171 = arith.index_cast %169 {unsigned} : index to i32
            affine.store %171, %170[0] {to = "write_addr", unsigned} : memref<1xi32>
            %172 = affine.load %170[0] {from = "write_addr", unsigned} : memref<1xi32>
            %173 = arith.addi %172, %c1_i32_2 : i32
            %174 = arith.index_cast %172 : i32 to index
            memref.store %168, %53[%174] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ob"}
      } else {
        %141 = affine.load %48[0] {from = "flag_intt", unsigned} : memref<1xi1>
        %142 = arith.extui %141 : i1 to i32
        %143 = arith.cmpi ne, %142, %c0_i32_0 : i32
        scf.if %143 {
          %144 = hcl.create_op_handle "intt_out_swizzle"
          %145 = hcl.create_loop_handle %144, "i"
          affine.for %arg2 = 0 to 128 {
            %c64_i32 = arith.constant 64 : i32
            %146 = arith.index_cast %c64_i32 : i32 to index
            %147 = arith.muli %arg2, %146 : index
            %148 = hcl.create_op_handle "nttin_even_odd_arf"
            %149 = hcl.create_loop_handle %148, "j"
            affine.for %arg3 = 0 to 32 {
              %152 = arith.index_cast %c0_i32_0 : i32 to index
              %153 = arith.addi %147, %152 : index
              %154 = arith.addi %153, %arg3 : index
              %155 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              %156 = arith.index_cast %154 {unsigned} : index to i32
              affine.store %156, %155[0] {to = "read_addr", unsigned} : memref<1xi32>
              %157 = affine.load %155[0] {from = "read_addr", unsigned} : memref<1xi32>
              %c1_i32_2 = arith.constant 1 : i32
              %158 = arith.addi %157, %c1_i32_2 : i32
              %c8192_i32 = arith.constant 8192 : i32
              %159 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %160 = hcl.create_op_handle "Mem.read_c"
              %161 = hcl.create_loop_handle %160, "i"
              %162 = affine.load %155[0] {from = "read_addr", unsigned} : memref<1xi32>
              %163 = arith.index_cast %162 : i32 to index
              %164 = arith.addi %163, %c0 : index
              %165 = memref.load %58[%164] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %165, %159[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %166 = affine.load %159[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %167 = arith.index_cast %c2_i32 : i32 to index
              %168 = arith.muli %167, %arg3 : index
              %169 = arith.addi %147, %168 : index
              %170 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %171 = arith.index_cast %169 {unsigned} : index to i32
              affine.store %171, %170[0] {to = "write_addr", unsigned} : memref<1xi32>
              %172 = affine.load %170[0] {from = "write_addr", unsigned} : memref<1xi32>
              %173 = arith.addi %172, %c1_i32_2 : i32
              %174 = arith.index_cast %172 : i32 to index
              memref.store %166, %56[%174] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
              %175 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              affine.store %156, %175[0] {to = "read_addr", unsigned} : memref<1xi32>
              %176 = affine.load %175[0] {from = "read_addr", unsigned} : memref<1xi32>
              %177 = arith.addi %176, %c1_i32_2 : i32
              %178 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %179 = hcl.create_op_handle "Mem.read_c"
              %180 = hcl.create_loop_handle %179, "i"
              %181 = affine.load %175[0] {from = "read_addr", unsigned} : memref<1xi32>
              %182 = arith.index_cast %181 : i32 to index
              %183 = arith.addi %182, %c0 : index
              %184 = memref.load %59[%183] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %184, %178[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %185 = affine.load %178[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %186 = arith.index_cast %c1_i32_2 : i32 to index
              %187 = arith.addi %169, %186 : index
              %188 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %189 = arith.index_cast %187 {unsigned} : index to i32
              affine.store %189, %188[0] {to = "write_addr", unsigned} : memref<1xi32>
              %190 = affine.load %188[0] {from = "write_addr", unsigned} : memref<1xi32>
              %191 = arith.addi %190, %c1_i32_2 : i32
              %192 = arith.index_cast %190 : i32 to index
              memref.store %185, %56[%192] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
            %150 = hcl.create_op_handle "nttin_even_odd_brf"
            %151 = hcl.create_loop_handle %150, "j"
            affine.for %arg3 = 0 to 32 {
              %c32_i32 = arith.constant 32 : i32
              %152 = arith.index_cast %c32_i32 : i32 to index
              %153 = arith.addi %147, %152 : index
              %154 = arith.addi %153, %arg3 : index
              %155 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              %156 = arith.index_cast %154 {unsigned} : index to i32
              affine.store %156, %155[0] {to = "read_addr", unsigned} : memref<1xi32>
              %157 = affine.load %155[0] {from = "read_addr", unsigned} : memref<1xi32>
              %c1_i32_2 = arith.constant 1 : i32
              %158 = arith.addi %157, %c1_i32_2 : i32
              %c8192_i32 = arith.constant 8192 : i32
              %159 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %160 = hcl.create_op_handle "Mem.read_c"
              %161 = hcl.create_loop_handle %160, "i"
              %162 = affine.load %155[0] {from = "read_addr", unsigned} : memref<1xi32>
              %163 = arith.index_cast %162 : i32 to index
              %164 = arith.addi %163, %c0 : index
              %165 = memref.load %58[%164] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %165, %159[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %166 = affine.load %159[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %167 = arith.index_cast %c2_i32 : i32 to index
              %168 = arith.muli %167, %arg3 : index
              %169 = arith.addi %147, %168 : index
              %170 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %171 = arith.index_cast %169 {unsigned} : index to i32
              affine.store %171, %170[0] {to = "write_addr", unsigned} : memref<1xi32>
              %172 = affine.load %170[0] {from = "write_addr", unsigned} : memref<1xi32>
              %173 = arith.addi %172, %c1_i32_2 : i32
              %174 = arith.index_cast %172 : i32 to index
              memref.store %166, %57[%174] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
              %175 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              affine.store %156, %175[0] {to = "read_addr", unsigned} : memref<1xi32>
              %176 = affine.load %175[0] {from = "read_addr", unsigned} : memref<1xi32>
              %177 = arith.addi %176, %c1_i32_2 : i32
              %178 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %179 = hcl.create_op_handle "Mem.read_c"
              %180 = hcl.create_loop_handle %179, "i"
              %181 = affine.load %175[0] {from = "read_addr", unsigned} : memref<1xi32>
              %182 = arith.index_cast %181 : i32 to index
              %183 = arith.addi %182, %c0 : index
              %184 = memref.load %59[%183] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %184, %178[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %185 = affine.load %178[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %186 = arith.index_cast %c1_i32_2 : i32 to index
              %187 = arith.addi %169, %186 : index
              %188 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %189 = arith.index_cast %187 {unsigned} : index to i32
              affine.store %189, %188[0] {to = "write_addr", unsigned} : memref<1xi32>
              %190 = affine.load %188[0] {from = "write_addr", unsigned} : memref<1xi32>
              %191 = arith.addi %190, %c1_i32_2 : i32
              %192 = arith.index_cast %190 : i32 to index
              memref.store %185, %57[%192] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
          } {loop_name = "i", op_name = "intt_out_swizzle"}
        }
      }
      %138 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      %c1_i32_1 = arith.constant 1 : i32
      %139 = arith.addi %138, %c1_i32_1 : i32
      affine.store %139, %94[0] {to = "sys_steps", unsigned} : memref<1xi32>
      %140 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      %c100000_i32 = arith.constant 100000 : i32
      scf.yield
    }
    %103 = affine.load %14[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %104 = affine.load %15[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%103, %104) {format = "ce0.mf uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %105 = affine.load %36[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %106 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%105, %106) {format = "ce0.cf uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %107 = affine.load %75[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %108 = affine.load %76[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%107, %108) {format = "ce0.cetiles.Mtile uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %109 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
    hcl.print(%109) {format = "Total steps: %d\0A", signedness = "u"} : i32
    return
  }
}
