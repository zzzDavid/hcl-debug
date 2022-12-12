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
        %140 = affine.load %49[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %141 = memref.alloc() : memref<1xi7>
        %142 = memref.alloc() : memref<1xi2>
        %c6 = arith.constant 6 : index
        %c0_2 = arith.constant 0 : index
        %143 = hcl.get_slice(%140 : i9, %c6, %c0_2) -> i7
        %c8 = arith.constant 8 : index
        %c7 = arith.constant 7 : index
        %144 = hcl.get_slice(%140 : i9, %c8, %c7) -> i2
        affine.store %143, %141[0] : memref<1xi7>
        affine.store %144, %142[0] : memref<1xi2>
        %145 = affine.load %142[0] : memref<1xi2>
        %146 = affine.load %141[0] : memref<1xi7>
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
        %c8192_i32_3 = arith.constant 8192 : i32
        %154 = hcl.create_op_handle "copyN"
        %155 = hcl.create_loop_handle %154, "i"
        %156 = arith.index_cast %c0_i32_0 : i32 to index
        %157 = arith.index_cast %148 : i32 to index
        %c1_i32_4 = arith.constant 1 : i32
        %158 = arith.index_cast %c1_i32_4 : i32 to index
        scf.for %arg2 = %156 to %157 step %158 {
          %176 = arith.index_cast %150 : i32 to index
          %177 = arith.addi %176, %arg2 : index
          %178 = memref.load %52[%177] {from = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %179 = arith.index_cast %152 : i32 to index
          %180 = arith.addi %179, %arg2 : index
          %181 = arith.index_cast %145 : i2 to index
          %182 = arith.index_cast %146 : i7 to index
          memref.store %178, %39[%181, %182, %180] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %159 = affine.load %50[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %160 = memref.alloc() : memref<1xi7>
        %161 = memref.alloc() : memref<1xi2>
        %c6_5 = arith.constant 6 : index
        %c0_6 = arith.constant 0 : index
        %162 = hcl.get_slice(%159 : i9, %c6_5, %c0_6) -> i7
        %c8_7 = arith.constant 8 : index
        %c7_8 = arith.constant 7 : index
        %163 = hcl.get_slice(%159 : i9, %c8_7, %c7_8) -> i2
        affine.store %162, %160[0] : memref<1xi7>
        affine.store %163, %161[0] : memref<1xi2>
        %164 = affine.load %161[0] : memref<1xi2>
        %165 = affine.load %160[0] : memref<1xi7>
        %166 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        affine.store %c8192_i32, %166[0] {to = "count", unsigned} : memref<1xi32>
        %167 = affine.load %166[0] {from = "count", unsigned} : memref<1xi32>
        %168 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %168[0] {to = "src_addr", unsigned} : memref<1xi32>
        %169 = affine.load %168[0] {from = "src_addr", unsigned} : memref<1xi32>
        %170 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %170[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %171 = affine.load %170[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %172 = arith.addi %169, %167 {unsigned} : i32
        %173 = hcl.create_op_handle "copyN"
        %174 = hcl.create_loop_handle %173, "i"
        %175 = arith.index_cast %167 : i32 to index
        scf.for %arg2 = %156 to %175 step %158 {
          %176 = arith.index_cast %169 : i32 to index
          %177 = arith.addi %176, %arg2 : index
          %178 = memref.load %53[%177] {from = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %179 = arith.index_cast %171 : i32 to index
          %180 = arith.addi %179, %arg2 : index
          %181 = arith.index_cast %164 : i2 to index
          %182 = arith.index_cast %165 : i7 to index
          memref.store %178, %39[%181, %182, %180] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        affine.store %96, %47[0] {to = "flag_ntt", unsigned} : memref<1xi1>
      }
      %114 = affine.load %48[0] {from = "flag_intt", unsigned} : memref<1xi1>
      %115 = arith.extui %114 : i1 to i32
      %116 = arith.cmpi ne, %115, %c0_i32_0 : i32
      scf.if %116 {
        %140 = affine.load %49[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %141 = memref.alloc() : memref<1xi7>
        %142 = memref.alloc() : memref<1xi2>
        %c6 = arith.constant 6 : index
        %c0_2 = arith.constant 0 : index
        %143 = hcl.get_slice(%140 : i9, %c6, %c0_2) -> i7
        %c8 = arith.constant 8 : index
        %c7 = arith.constant 7 : index
        %144 = hcl.get_slice(%140 : i9, %c8, %c7) -> i2
        affine.store %143, %141[0] : memref<1xi7>
        affine.store %144, %142[0] : memref<1xi2>
        %145 = affine.load %142[0] : memref<1xi2>
        %146 = affine.load %141[0] : memref<1xi7>
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
        %c8192_i32_3 = arith.constant 8192 : i32
        %154 = hcl.create_op_handle "copyN"
        %155 = hcl.create_loop_handle %154, "i"
        %156 = arith.index_cast %c0_i32_0 : i32 to index
        %157 = arith.index_cast %148 : i32 to index
        %c1_i32_4 = arith.constant 1 : i32
        %158 = arith.index_cast %c1_i32_4 : i32 to index
        scf.for %arg2 = %156 to %157 step %158 {
          %176 = arith.index_cast %150 : i32 to index
          %177 = arith.addi %176, %arg2 : index
          %178 = memref.load %56[%177] {from = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %179 = arith.index_cast %152 : i32 to index
          %180 = arith.addi %179, %arg2 : index
          %181 = arith.index_cast %145 : i2 to index
          %182 = arith.index_cast %146 : i7 to index
          memref.store %178, %39[%181, %182, %180] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %159 = affine.load %50[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %160 = memref.alloc() : memref<1xi7>
        %161 = memref.alloc() : memref<1xi2>
        %c6_5 = arith.constant 6 : index
        %c0_6 = arith.constant 0 : index
        %162 = hcl.get_slice(%159 : i9, %c6_5, %c0_6) -> i7
        %c8_7 = arith.constant 8 : index
        %c7_8 = arith.constant 7 : index
        %163 = hcl.get_slice(%159 : i9, %c8_7, %c7_8) -> i2
        affine.store %162, %160[0] : memref<1xi7>
        affine.store %163, %161[0] : memref<1xi2>
        %164 = affine.load %161[0] : memref<1xi2>
        %165 = affine.load %160[0] : memref<1xi7>
        %166 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
        affine.store %c8192_i32, %166[0] {to = "count", unsigned} : memref<1xi32>
        %167 = affine.load %166[0] {from = "count", unsigned} : memref<1xi32>
        %168 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %168[0] {to = "src_addr", unsigned} : memref<1xi32>
        %169 = affine.load %168[0] {from = "src_addr", unsigned} : memref<1xi32>
        %170 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
        affine.store %c0_i32, %170[0] {to = "dst_addr", unsigned} : memref<1xi32>
        %171 = affine.load %170[0] {from = "dst_addr", unsigned} : memref<1xi32>
        %172 = arith.addi %169, %167 {unsigned} : i32
        %173 = hcl.create_op_handle "copyN"
        %174 = hcl.create_loop_handle %173, "i"
        %175 = arith.index_cast %167 : i32 to index
        scf.for %arg2 = %156 to %175 step %158 {
          %176 = arith.index_cast %169 : i32 to index
          %177 = arith.addi %176, %arg2 : index
          %178 = memref.load %57[%177] {from = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %179 = arith.index_cast %171 : i32 to index
          %180 = arith.addi %179, %arg2 : index
          %181 = arith.index_cast %164 : i2 to index
          %182 = arith.index_cast %165 : i7 to index
          memref.store %178, %39[%181, %182, %180] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        affine.store %96, %48[0] {to = "flag_intt", unsigned} : memref<1xi1>
      }
      %117 = affine.load %92[0] {from = "proc_started", unsigned} : memref<1xi1>
      %118 = arith.extui %117 : i1 to i32
      %119 = arith.cmpi eq, %118, %c0_i32_0 : i32
      scf.if %119 {
        %c1_i32_2 = arith.constant 1 : i32
        %140 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
        affine.store %140, %92[0] {to = "proc_started", unsigned} : memref<1xi1>
        %141 = affine.load %78[0] {from = "flags_active", unsigned} : memref<1xi1>
        %142 = arith.extui %141 : i1 to i32
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
        affine.store %140, %78[0] {to = "flags_active", unsigned} : memref<1xi1>
      } else {
        %140 = affine.load %78[0] {from = "flags_active", unsigned} : memref<1xi1>
        %141 = arith.extui %140 : i1 to i32
        %142 = arith.cmpi eq, %141, %c0_i32_0 : i32
        scf.if %142 {
          %c1_i32_2 = arith.constant 1 : i32
          %143 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
          affine.store %143, %95[0] {to = "sys_done", unsigned} : memref<1xi1>
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
        %140 = arith.andi %122, %125 : i1
        scf.condition(%140)
      } do {
        %140 = affine.load %12[0] {from = "latency_count", unsigned} : memref<1xi32>
        %141 = arith.cmpi eq, %140, %c0_i32_0 : i32
        scf.if %141 {
          %142 = affine.load %10[0] {from = "inst_addr", unsigned} : memref<1xi16>
          %143 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi16>
          affine.store %142, %143[0] {to = "_cur_address", unsigned} : memref<1xi16>
          %c1_i32_2 = arith.constant 1 : i32
          %144 = arith.extui %142 : i16 to i32
          %145 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi16>
          affine.store %142, %145[0] {to = "read_addr", unsigned} : memref<1xi16>
          %146 = affine.load %145[0] {from = "read_addr", unsigned} : memref<1xi16>
          %147 = arith.extui %146 : i16 to i32
          %148 = arith.addi %147, %c1_i32_2 : i32
          %c8192_i32 = arith.constant 8192 : i32
          %149 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi64>
          %150 = hcl.create_op_handle "Mem.read_c"
          %151 = hcl.create_loop_handle %150, "i"
          %152 = affine.load %145[0] {from = "read_addr", unsigned} : memref<1xi16>
          %153 = arith.index_cast %152 : i16 to index
          %154 = arith.addi %153, %c0 : index
          %155 = memref.load %1[%154] {from = "minstq.alloc_c", unsigned} : memref<8192xi64>
          affine.store %155, %149[%c0] {to = "Mem.read_c"} : memref<1xi64>
          %156 = affine.load %149[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
          %157 = memref.alloc() {name = "inst", unsigned} : memref<1xi64>
          affine.store %156, %157[0] {to = "inst", unsigned} : memref<1xi64>
          %158 = affine.load %157[0] {from = "inst", unsigned} : memref<1xi64>
          %159 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
          affine.store %c0_i32, %159[0] {to = "inst_lat", unsigned} : memref<1xi32>
          %160 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi64>
          affine.store %158, %160[0] {to = "decode_inst", unsigned} : memref<1xi64>
          %161 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
          affine.store %c0_i16, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
          %162 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %163 = memref.alloc() : memref<1xi4>
          %164 = memref.alloc() : memref<1xi60>
          %c3 = arith.constant 3 : index
          %c0_3 = arith.constant 0 : index
          %165 = hcl.get_slice(%162 : i64, %c3, %c0_3) -> i4
          %c63 = arith.constant 63 : index
          %c4 = arith.constant 4 : index
          %166 = hcl.get_slice(%162 : i64, %c63, %c4) -> i60
          affine.store %165, %163[0] : memref<1xi4>
          affine.store %166, %164[0] : memref<1xi60>
          %167 = affine.load %163[0] : memref<1xi4>
          %c15_i32 = arith.constant 15 : i32
          %168 = arith.extsi %167 : i4 to i32
          %169 = arith.cmpi eq, %168, %c15_i32 : i32
          scf.if %169 {
            affine.store %97, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
          } else {
            %179 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %180 = memref.alloc() : memref<1xi4>
            %181 = memref.alloc() : memref<1xi60>
            %c3_4 = arith.constant 3 : index
            %c0_5 = arith.constant 0 : index
            %182 = hcl.get_slice(%179 : i64, %c3_4, %c0_5) -> i4
            %c63_6 = arith.constant 63 : index
            %c4_7 = arith.constant 4 : index
            %183 = hcl.get_slice(%179 : i64, %c63_6, %c4_7) -> i60
            affine.store %182, %180[0] : memref<1xi4>
            affine.store %183, %181[0] : memref<1xi60>
            %184 = affine.load %180[0] : memref<1xi4>
            %c14_i32 = arith.constant 14 : i32
            %185 = arith.extsi %184 : i4 to i32
            %186 = arith.cmpi eq, %185, %c14_i32 : i32
            scf.if %186 {
              %187 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
              affine.store %187, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %187 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %188 = memref.alloc() : memref<1xi4>
              %189 = memref.alloc() : memref<1xi60>
              %c3_8 = arith.constant 3 : index
              %c0_9 = arith.constant 0 : index
              %190 = hcl.get_slice(%187 : i64, %c3_8, %c0_9) -> i4
              %c63_10 = arith.constant 63 : index
              %c4_11 = arith.constant 4 : index
              %191 = hcl.get_slice(%187 : i64, %c63_10, %c4_11) -> i60
              affine.store %190, %188[0] : memref<1xi4>
              affine.store %191, %189[0] : memref<1xi60>
              %192 = affine.load %188[0] : memref<1xi4>
              %c12_i32 = arith.constant 12 : i32
              %193 = arith.extsi %192 : i4 to i32
              %194 = arith.cmpi eq, %193, %c12_i32 : i32
              scf.if %194 {
                %c2_i32 = arith.constant 2 : i32
                %195 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %195, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %195 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %196 = memref.alloc() : memref<1xi4>
                %197 = memref.alloc() : memref<1xi60>
                %c3_12 = arith.constant 3 : index
                %c0_13 = arith.constant 0 : index
                %198 = hcl.get_slice(%195 : i64, %c3_12, %c0_13) -> i4
                %c63_14 = arith.constant 63 : index
                %c4_15 = arith.constant 4 : index
                %199 = hcl.get_slice(%195 : i64, %c63_14, %c4_15) -> i60
                affine.store %198, %196[0] : memref<1xi4>
                affine.store %199, %197[0] : memref<1xi60>
                %200 = affine.load %196[0] : memref<1xi4>
                %c11_i32 = arith.constant 11 : i32
                %201 = arith.extsi %200 : i4 to i32
                %202 = arith.cmpi eq, %201, %c11_i32 : i32
                scf.if %202 {
                  %c3_i32 = arith.constant 3 : i32
                  %203 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %203, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %203 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                  %204 = memref.alloc() : memref<1xi4>
                  %205 = memref.alloc() : memref<1xi30>
                  %206 = memref.alloc() : memref<1xi30>
                  %c3_16 = arith.constant 3 : index
                  %c0_17 = arith.constant 0 : index
                  %207 = hcl.get_slice(%203 : i64, %c3_16, %c0_17) -> i4
                  %c33 = arith.constant 33 : index
                  %c4_18 = arith.constant 4 : index
                  %208 = hcl.get_slice(%203 : i64, %c33, %c4_18) -> i30
                  %c63_19 = arith.constant 63 : index
                  %c34 = arith.constant 34 : index
                  %209 = hcl.get_slice(%203 : i64, %c63_19, %c34) -> i30
                  affine.store %207, %204[0] : memref<1xi4>
                  affine.store %208, %205[0] : memref<1xi30>
                  affine.store %209, %206[0] : memref<1xi30>
                  %210 = affine.load %204[0] : memref<1xi4>
                  %211 = arith.extsi %210 : i4 to i32
                  %212 = arith.cmpi eq, %211, %c1_i32_2 : i32
                  scf.if %212 {
                    %c4_i32 = arith.constant 4 : i32
                    %213 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %213, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %213 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %214 = memref.alloc() : memref<1xi4>
                    %215 = memref.alloc() : memref<1xi30>
                    %216 = memref.alloc() : memref<1xi30>
                    %c3_20 = arith.constant 3 : index
                    %c0_21 = arith.constant 0 : index
                    %217 = hcl.get_slice(%213 : i64, %c3_20, %c0_21) -> i4
                    %c33_22 = arith.constant 33 : index
                    %c4_23 = arith.constant 4 : index
                    %218 = hcl.get_slice(%213 : i64, %c33_22, %c4_23) -> i30
                    %c63_24 = arith.constant 63 : index
                    %c34_25 = arith.constant 34 : index
                    %219 = hcl.get_slice(%213 : i64, %c63_24, %c34_25) -> i30
                    affine.store %217, %214[0] : memref<1xi4>
                    affine.store %218, %215[0] : memref<1xi30>
                    affine.store %219, %216[0] : memref<1xi30>
                    %220 = affine.load %214[0] : memref<1xi4>
                    %c2_i32 = arith.constant 2 : i32
                    %221 = arith.extsi %220 : i4 to i32
                    %222 = arith.cmpi eq, %221, %c2_i32 : i32
                    scf.if %222 {
                      %c5_i32 = arith.constant 5 : i32
                      %223 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %223, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %223 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                      %224 = memref.alloc() : memref<1xi4>
                      %225 = memref.alloc() : memref<1xi30>
                      %226 = memref.alloc() : memref<1xi24>
                      %227 = memref.alloc() : memref<1xi6>
                      %c3_26 = arith.constant 3 : index
                      %c0_27 = arith.constant 0 : index
                      %228 = hcl.get_slice(%223 : i64, %c3_26, %c0_27) -> i4
                      %c33_28 = arith.constant 33 : index
                      %c4_29 = arith.constant 4 : index
                      %229 = hcl.get_slice(%223 : i64, %c33_28, %c4_29) -> i30
                      %c57 = arith.constant 57 : index
                      %c34_30 = arith.constant 34 : index
                      %230 = hcl.get_slice(%223 : i64, %c57, %c34_30) -> i24
                      %c63_31 = arith.constant 63 : index
                      %c58 = arith.constant 58 : index
                      %231 = hcl.get_slice(%223 : i64, %c63_31, %c58) -> i6
                      affine.store %228, %224[0] : memref<1xi4>
                      affine.store %229, %225[0] : memref<1xi30>
                      affine.store %230, %226[0] : memref<1xi24>
                      affine.store %231, %227[0] : memref<1xi6>
                      %232 = affine.load %224[0] : memref<1xi4>
                      %c3_i32 = arith.constant 3 : i32
                      %233 = arith.extsi %232 : i4 to i32
                      %234 = arith.cmpi eq, %233, %c3_i32 : i32
                      scf.if %234 {
                        %c6_i32 = arith.constant 6 : i32
                        %235 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %235, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %235 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                        %236 = memref.alloc() : memref<1xi4>
                        %237 = memref.alloc() : memref<1xi30>
                        %238 = memref.alloc() : memref<1xi24>
                        %239 = memref.alloc() : memref<1xi6>
                        %c3_32 = arith.constant 3 : index
                        %c0_33 = arith.constant 0 : index
                        %240 = hcl.get_slice(%235 : i64, %c3_32, %c0_33) -> i4
                        %c33_34 = arith.constant 33 : index
                        %c4_35 = arith.constant 4 : index
                        %241 = hcl.get_slice(%235 : i64, %c33_34, %c4_35) -> i30
                        %c57_36 = arith.constant 57 : index
                        %c34_37 = arith.constant 34 : index
                        %242 = hcl.get_slice(%235 : i64, %c57_36, %c34_37) -> i24
                        %c63_38 = arith.constant 63 : index
                        %c58_39 = arith.constant 58 : index
                        %243 = hcl.get_slice(%235 : i64, %c63_38, %c58_39) -> i6
                        affine.store %240, %236[0] : memref<1xi4>
                        affine.store %241, %237[0] : memref<1xi30>
                        affine.store %242, %238[0] : memref<1xi24>
                        affine.store %243, %239[0] : memref<1xi6>
                        %244 = affine.load %236[0] : memref<1xi4>
                        %c4_i32 = arith.constant 4 : i32
                        %245 = arith.extsi %244 : i4 to i32
                        %246 = arith.cmpi eq, %245, %c4_i32 : i32
                        scf.if %246 {
                          %c7_i32 = arith.constant 7 : i32
                          %247 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %247, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %c8_i32 = arith.constant 8 : i32
                          %247 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                          affine.store %247, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
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
          %171 = affine.load %159[0] {from = "inst_lat", unsigned} : memref<1xi32>
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
            affine.store %158, %179[0] {to = "execute_inst", unsigned} : memref<1xi64>
            %180 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
            %181 = arith.extui %180 : i16 to i32
            %182 = arith.cmpi eq, %181, %c0_i32_0 : i32
            scf.if %182 {
              %188 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %189 = memref.alloc() {name = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
              %c3_4 = arith.constant 3 : index
              %c0_5 = arith.constant 0 : index
              %190 = hcl.get_slice(%188 : i64, %c3_4, %c0_5) -> i4
              %c63_6 = arith.constant 63 : index
              %c4_7 = arith.constant 4 : index
              %191 = hcl.get_slice(%188 : i64, %c63_6, %c4_7) -> i60
              %192 = hcl.struct_construct(%190, %191) : i4, i60 -> <i4, i60>
              affine.store %192, %189[0] {to = "dec_inst_mhalt"} : memref<1x!hcl.struct<i4, i60>>
              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
              %193 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
              hcl.print(%193) {format = "ip=%d ", signedness = "u"} : i16
              hcl.print(%c0_i32_0) {format = "mhalt", signedness = "_"} : i32
              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
              %194 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %194, %4[0] {to = "flags_halt", unsigned} : memref<1xi1>
              affine.store %96, %3[0] {to = "flags_active", unsigned} : memref<1xi1>
              affine.store %194, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
              %195 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %196 = arith.extui %195 : i1 to i32
              %197 = arith.cmpi eq, %196, %c0_i32_0 : i32
              scf.if %197 {
              } else {
                %198 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                %199 = arith.extui %198 : i16 to i32
                %200 = arith.cmpi eq, %199, %c1_i32_2 : i32
                scf.if %200 {
                  %201 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                  %202 = memref.alloc() {name = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
                  %c3_8 = arith.constant 3 : index
                  %c0_9 = arith.constant 0 : index
                  %203 = hcl.get_slice(%201 : i64, %c3_8, %c0_9) -> i4
                  %c63_10 = arith.constant 63 : index
                  %c4_11 = arith.constant 4 : index
                  %204 = hcl.get_slice(%201 : i64, %c63_10, %c4_11) -> i60
                  %205 = hcl.struct_construct(%203, %204) : i4, i60 -> <i4, i60>
                  affine.store %205, %202[0] {to = "dec_inst_mwait"} : memref<1x!hcl.struct<i4, i60>>
                  %206 = affine.load %25[0] {from = "flags_active", unsigned} : memref<1xi1>
                  %207 = arith.extui %206 : i1 to i32
                  %208 = arith.cmpi ne, %207, %c0_i32_0 : i32
                  scf.if %208 {
                    %209 = affine.load %6[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                    %210 = arith.extui %209 : i1 to i32
                    %211 = arith.cmpi eq, %210, %c0_i32_0 : i32
                    scf.if %211 {
                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %217 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%217) {format = "ip=%d ", signedness = "u"} : i16
                      hcl.print(%c0_i32_0) {format = "mwait", signedness = "_"} : i32
                      hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                    } else {
                      %217 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %218 = arith.extui %217 : i16 to i32
                      %c2_i32 = arith.constant 2 : i32
                      %219 = arith.cmpi eq, %218, %c2_i32 : i32
                      scf.if %219 {
                        %220 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                        %221 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
                        %c3_12 = arith.constant 3 : index
                        %c0_13 = arith.constant 0 : index
                        %222 = hcl.get_slice(%220 : i64, %c3_12, %c0_13) -> i4
                        %c63_14 = arith.constant 63 : index
                        %c4_15 = arith.constant 4 : index
                        %223 = hcl.get_slice(%220 : i64, %c63_14, %c4_15) -> i60
                        %224 = hcl.struct_construct(%222, %223) : i4, i60 -> <i4, i60>
                        affine.store %224, %221[0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i4, i60>>
                        hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                        %225 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                        hcl.print(%225) {format = "ip=%d ", signedness = "u"} : i16
                        hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                        affine.store %194, %21[0] {to = "csyncm", unsigned} : memref<1xi1>
                      } else {
                        %220 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                        %221 = arith.extui %220 : i16 to i32
                        %c3_i32 = arith.constant 3 : i32
                        %222 = arith.cmpi eq, %221, %c3_i32 : i32
                        scf.if %222 {
                          %223 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                          %224 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                          %c3_12 = arith.constant 3 : index
                          %c0_13 = arith.constant 0 : index
                          %225 = hcl.get_slice(%223 : i64, %c3_12, %c0_13) -> i4
                          %c63_14 = arith.constant 63 : index
                          %c4_15 = arith.constant 4 : index
                          %226 = hcl.get_slice(%223 : i64, %c63_14, %c4_15) -> i60
                          %227 = hcl.struct_construct(%225, %226) : i4, i60 -> <i4, i60>
                          affine.store %227, %224[0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i4, i60>>
                          %228 = affine.load %2[0] {from = "flags_msyncc", unsigned} : memref<1xi1>
                          %229 = arith.extui %228 : i1 to i32
                          %230 = arith.cmpi eq, %229, %c0_i32_0 : i32
                          scf.if %230 {
                            %231 = affine.load %6[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                            %232 = arith.extui %231 : i1 to i32
                            %233 = arith.cmpi eq, %232, %c0_i32_0 : i32
                            scf.if %233 {
                              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                              %239 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                              hcl.print(%239) {format = "ip=%d ", signedness = "u"} : i16
                              hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                              hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                            } else {
                              %239 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                              %240 = arith.extui %239 : i16 to i32
                              %c4_i32 = arith.constant 4 : i32
                              %241 = arith.cmpi eq, %240, %c4_i32 : i32
                              scf.if %241 {
                                %242 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                %243 = memref.alloc() : memref<1xi4>
                                %244 = memref.alloc() : memref<1xi30>
                                %245 = memref.alloc() : memref<1xi30>
                                %c3_16 = arith.constant 3 : index
                                %c0_17 = arith.constant 0 : index
                                %246 = hcl.get_slice(%242 : i64, %c3_16, %c0_17) -> i4
                                %c33 = arith.constant 33 : index
                                %c4_18 = arith.constant 4 : index
                                %247 = hcl.get_slice(%242 : i64, %c33, %c4_18) -> i30
                                %c63_19 = arith.constant 63 : index
                                %c34 = arith.constant 34 : index
                                %248 = hcl.get_slice(%242 : i64, %c63_19, %c34) -> i30
                                affine.store %246, %243[0] : memref<1xi4>
                                affine.store %247, %244[0] : memref<1xi30>
                                affine.store %248, %245[0] : memref<1xi30>
                                hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                %249 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                hcl.print(%249) {format = "ip=%d ", signedness = "u"} : i16
                                %250 = affine.load %244[0] : memref<1xi30>
                                %251 = affine.load %245[0] : memref<1xi30>
                                hcl.print(%250, %251) {format = "mload hbmaddr=0x%x spadaddr=0x%x", signedness = "__"} : i30, i30
                                hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                %c13_i32 = arith.constant 13 : i32
                                %252 = arith.trunci %c13_i32 : i32 to i30
                                %253 = arith.extsi %250 : i30 to i60
                                %254 = arith.extsi %252 : i30 to i60
                                %255 = arith.shli %253, %254 : i60
                                %256 = arith.extsi %251 : i30 to i60
                                %257 = arith.shli %256, %254 : i60
                                %258 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                %c8192_i32_20 = arith.constant {unsigned} 8192 : i32
                                affine.store %c8192_i32_20, %258[0] {to = "count", unsigned} : memref<1xi32>
                                %259 = affine.load %258[0] {from = "count", unsigned} : memref<1xi32>
                                %260 = memref.alloc() {name = "src_addr"} : memref<1xi60>
                                affine.store %255, %260[0] {to = "src_addr"} : memref<1xi60>
                                %261 = affine.load %260[0] {from = "src_addr"} : memref<1xi60>
                                %262 = memref.alloc() {name = "dst_addr"} : memref<1xi60>
                                affine.store %257, %262[0] {to = "dst_addr"} : memref<1xi60>
                                %263 = affine.load %262[0] {from = "dst_addr"} : memref<1xi60>
                                %264 = arith.extui %259 : i32 to i60
                                %265 = arith.addi %261, %264 : i60
                                %c33554432_i32 = arith.constant 33554432 : i32
                                %266 = arith.extsi %c33554432_i32 : i32 to i60
                                %267 = hcl.create_op_handle "copyN"
                                %268 = hcl.create_loop_handle %267, "i"
                                %269 = arith.index_cast %c0_i32_0 : i32 to index
                                %270 = arith.index_cast %259 : i32 to index
                                %271 = arith.index_cast %c1_i32_2 : i32 to index
                                scf.for %arg2 = %269 to %270 step %271 {
                                  %272 = arith.index_cast %261 : i60 to index
                                  %273 = arith.addi %272, %arg2 : index
                                  %274 = memref.load %arg0[%273] {from = "hbm", unsigned} : memref<33554432xi32>
                                  %275 = arith.index_cast %263 : i60 to index
                                  %276 = arith.addi %275, %arg2 : index
                                  memref.store %274, %0[%276] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                } {loop_name = "i", op_name = "copyN"}
                              } else {
                                %242 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                %243 = arith.extui %242 : i16 to i32
                                %c5_i32 = arith.constant 5 : i32
                                %244 = arith.cmpi eq, %243, %c5_i32 : i32
                                scf.if %244 {
                                  %245 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                  %246 = memref.alloc() : memref<1xi4>
                                  %247 = memref.alloc() : memref<1xi30>
                                  %248 = memref.alloc() : memref<1xi30>
                                  %c3_16 = arith.constant 3 : index
                                  %c0_17 = arith.constant 0 : index
                                  %249 = hcl.get_slice(%245 : i64, %c3_16, %c0_17) -> i4
                                  %c33 = arith.constant 33 : index
                                  %c4_18 = arith.constant 4 : index
                                  %250 = hcl.get_slice(%245 : i64, %c33, %c4_18) -> i30
                                  %c63_19 = arith.constant 63 : index
                                  %c34 = arith.constant 34 : index
                                  %251 = hcl.get_slice(%245 : i64, %c63_19, %c34) -> i30
                                  affine.store %249, %246[0] : memref<1xi4>
                                  affine.store %250, %247[0] : memref<1xi30>
                                  affine.store %251, %248[0] : memref<1xi30>
                                  hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                  %252 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                  hcl.print(%252) {format = "ip=%d ", signedness = "u"} : i16
                                  %253 = affine.load %247[0] : memref<1xi30>
                                  %254 = affine.load %248[0] : memref<1xi30>
                                  hcl.print(%253, %254) {format = "mstore hbmaddr=0x%x spadaddr=0x%x", signedness = "__"} : i30, i30
                                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                  %c13_i32 = arith.constant 13 : i32
                                  %255 = arith.trunci %c13_i32 : i32 to i30
                                  %256 = arith.extsi %254 : i30 to i60
                                  %257 = arith.extsi %255 : i30 to i60
                                  %258 = arith.shli %256, %257 : i60
                                  %259 = arith.extsi %253 : i30 to i60
                                  %260 = arith.shli %259, %257 : i60
                                  %261 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                  %c8192_i32_20 = arith.constant {unsigned} 8192 : i32
                                  affine.store %c8192_i32_20, %261[0] {to = "count", unsigned} : memref<1xi32>
                                  %262 = affine.load %261[0] {from = "count", unsigned} : memref<1xi32>
                                  %263 = memref.alloc() {name = "src_addr"} : memref<1xi60>
                                  affine.store %258, %263[0] {to = "src_addr"} : memref<1xi60>
                                  %264 = affine.load %263[0] {from = "src_addr"} : memref<1xi60>
                                  %265 = memref.alloc() {name = "dst_addr"} : memref<1xi60>
                                  affine.store %260, %265[0] {to = "dst_addr"} : memref<1xi60>
                                  %266 = affine.load %265[0] {from = "dst_addr"} : memref<1xi60>
                                  %267 = arith.extui %262 : i32 to i60
                                  %268 = arith.addi %264, %267 : i60
                                  %c33554432_i32 = arith.constant 33554432 : i32
                                  %269 = arith.extsi %c33554432_i32 : i32 to i60
                                  %270 = hcl.create_op_handle "copyN"
                                  %271 = hcl.create_loop_handle %270, "i"
                                  %272 = arith.index_cast %c0_i32_0 : i32 to index
                                  %273 = arith.index_cast %262 : i32 to index
                                  %274 = arith.index_cast %c1_i32_2 : i32 to index
                                  scf.for %arg2 = %272 to %273 step %274 {
                                    %275 = arith.index_cast %264 : i60 to index
                                    %276 = arith.addi %275, %arg2 : index
                                    %277 = memref.load %0[%276] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                    %278 = arith.index_cast %266 : i60 to index
                                    %279 = arith.addi %278, %arg2 : index
                                    memref.store %277, %arg0[%279] {to = "hbm", unsigned} : memref<33554432xi32>
                                  } {loop_name = "i", op_name = "copyN"}
                                } else {
                                  %245 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                  %246 = arith.extui %245 : i16 to i32
                                  %c6_i32 = arith.constant 6 : i32
                                  %247 = arith.cmpi eq, %246, %c6_i32 : i32
                                  scf.if %247 {
                                    %248 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                    %249 = memref.alloc() : memref<1xi4>
                                    %250 = memref.alloc() : memref<1xi30>
                                    %251 = memref.alloc() : memref<1xi24>
                                    %252 = memref.alloc() : memref<1xi6>
                                    %c3_16 = arith.constant 3 : index
                                    %c0_17 = arith.constant 0 : index
                                    %253 = hcl.get_slice(%248 : i64, %c3_16, %c0_17) -> i4
                                    %c33 = arith.constant 33 : index
                                    %c4_18 = arith.constant 4 : index
                                    %254 = hcl.get_slice(%248 : i64, %c33, %c4_18) -> i30
                                    %c57 = arith.constant 57 : index
                                    %c34 = arith.constant 34 : index
                                    %255 = hcl.get_slice(%248 : i64, %c57, %c34) -> i24
                                    %c63_19 = arith.constant 63 : index
                                    %c58 = arith.constant 58 : index
                                    %256 = hcl.get_slice(%248 : i64, %c63_19, %c58) -> i6
                                    affine.store %253, %249[0] : memref<1xi4>
                                    affine.store %254, %250[0] : memref<1xi30>
                                    affine.store %255, %251[0] : memref<1xi24>
                                    affine.store %256, %252[0] : memref<1xi6>
                                    hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                    %257 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%257) {format = "ip=%d ", signedness = "u"} : i16
                                    %258 = affine.load %250[0] : memref<1xi30>
                                    %259 = affine.load %251[0] : memref<1xi24>
                                    hcl.print(%258, %259) {format = "cinstload ccode_addr=0x%x ccode_count=0x%x", signedness = "__"} : i30, i24
                                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                    %260 = memref.alloc() {name = "count"} : memref<1xi24>
                                    affine.store %259, %260[0] {to = "count"} : memref<1xi24>
                                    %261 = affine.load %260[0] {from = "count"} : memref<1xi24>
                                    %262 = memref.alloc() {name = "src_addr"} : memref<1xi30>
                                    affine.store %258, %262[0] {to = "src_addr"} : memref<1xi30>
                                    %263 = affine.load %262[0] {from = "src_addr"} : memref<1xi30>
                                    %264 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                                    affine.store %c0_i32, %264[0] {to = "dst_addr", unsigned} : memref<1xi32>
                                    %265 = affine.load %264[0] {from = "dst_addr", unsigned} : memref<1xi32>
                                    %266 = arith.extsi %261 {unsigned} : i24 to i32
                                    %267 = arith.addi %265, %266 {unsigned} : i32
                                    %268 = memref.alloc() {name = "tmp", unsigned} : memref<1xi64>
                                    %c0_i64 = arith.constant {unsigned} 0 : i64
                                    affine.store %c0_i64, %268[0] {to = "tmp", unsigned} : memref<1xi64>
                                    %269 = arith.extsi %261 : i24 to i32
                                    %270 = arith.muli %269, %c2_i32 : i32
                                    %271 = arith.extsi %263 : i30 to i32
                                    %272 = arith.addi %271, %270 : i32
                                    %c33554432_i32 = arith.constant 33554432 : i32
                                    %273 = hcl.create_op_handle "copyN"
                                    %274 = hcl.create_loop_handle %273, "i"
                                    %275 = arith.index_cast %c0_i32_0 : i32 to index
                                    %276 = arith.index_cast %261 : i24 to index
                                    %277 = arith.index_cast %c1_i32_2 : i32 to index
                                    scf.for %arg2 = %275 to %276 step %277 {
                                      %280 = arith.extsi %c0_i32_0 {unsigned} : i32 to i64
                                      affine.store %280, %268[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %281 = affine.load %268[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %c32_i32 = arith.constant 32 : i32
                                      %282 = arith.extsi %c32_i32 {unsigned} : i32 to i64
                                      %283 = arith.extui %281 : i64 to i128
                                      %284 = arith.extui %282 : i64 to i128
                                      %285 = arith.shli %283, %284 : i128
                                      %286 = arith.index_cast %c2_i32 : i32 to index
                                      %287 = arith.muli %arg2, %286 : index
                                      %288 = arith.index_cast %263 : i30 to index
                                      %289 = arith.addi %288, %287 : index
                                      %290 = arith.addi %289, %275 : index
                                      %291 = memref.load %arg0[%290] {from = "hbm", unsigned} : memref<33554432xi32>
                                      %292 = arith.extui %291 : i32 to i128
                                      %293 = arith.ori %285, %292 : i128
                                      %294 = arith.trunci %293 {unsigned} : i128 to i64
                                      affine.store %294, %268[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %295 = affine.load %268[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %296 = arith.extui %295 : i64 to i128
                                      %297 = arith.shli %296, %284 : i128
                                      %298 = arith.addi %289, %277 : index
                                      %299 = memref.load %arg0[%298] {from = "hbm", unsigned} : memref<33554432xi32>
                                      %300 = arith.extui %299 : i32 to i128
                                      %301 = arith.ori %297, %300 : i128
                                      %302 = arith.trunci %301 {unsigned} : i128 to i64
                                      affine.store %302, %268[0] {to = "tmp", unsigned} : memref<1xi64>
                                      %303 = affine.load %268[0] {from = "tmp", unsigned} : memref<1xi64>
                                      %304 = arith.index_cast %265 : i32 to index
                                      %305 = arith.addi %304, %arg2 : index
                                      memref.store %303, %19[%305] {to = "cinstq.alloc_c", unsigned} : memref<8192xi64>
                                    } {loop_name = "i", op_name = "copyN"}
                                    %278 = affine.load %25[0] {from = "flags_active", unsigned} : memref<1xi1>
                                    %279 = arith.extui %278 : i1 to i32
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
                                    affine.store %194, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
                                  } else {
                                    %248 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                    %249 = arith.extui %248 : i16 to i32
                                    %c7_i32 = arith.constant 7 : i32
                                    %250 = arith.cmpi eq, %249, %c7_i32 : i32
                                    scf.if %250 {
                                      %251 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      %252 = memref.alloc() : memref<1xi4>
                                      %253 = memref.alloc() : memref<1xi30>
                                      %254 = memref.alloc() : memref<1xi24>
                                      %255 = memref.alloc() : memref<1xi6>
                                      %c3_16 = arith.constant 3 : index
                                      %c0_17 = arith.constant 0 : index
                                      %256 = hcl.get_slice(%251 : i64, %c3_16, %c0_17) -> i4
                                      %c33 = arith.constant 33 : index
                                      %c4_18 = arith.constant 4 : index
                                      %257 = hcl.get_slice(%251 : i64, %c33, %c4_18) -> i30
                                      %c57 = arith.constant 57 : index
                                      %c34 = arith.constant 34 : index
                                      %258 = hcl.get_slice(%251 : i64, %c57, %c34) -> i24
                                      %c63_19 = arith.constant 63 : index
                                      %c58 = arith.constant 58 : index
                                      %259 = hcl.get_slice(%251 : i64, %c63_19, %c58) -> i6
                                      affine.store %256, %252[0] : memref<1xi4>
                                      affine.store %257, %253[0] : memref<1xi30>
                                      affine.store %258, %254[0] : memref<1xi24>
                                      affine.store %259, %255[0] : memref<1xi6>
                                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                                      %260 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                      hcl.print(%260) {format = "ip=%d ", signedness = "u"} : i16
                                      %261 = affine.load %253[0] : memref<1xi30>
                                      %262 = affine.load %254[0] : memref<1xi24>
                                      hcl.print(%261, %262) {format = "xinstload xcode_addr=0x%x xcode_count=0x%x", signedness = "__"} : i30, i24
                                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                      %c16_i32 = arith.constant 16 : i32
                                      %263 = arith.extsi %262 : i24 to i32
                                      %264 = arith.remsi %263, %c16_i32 : i32
                                      %265 = memref.alloc() {name = "count"} : memref<1xi24>
                                      affine.store %262, %265[0] {to = "count"} : memref<1xi24>
                                      %266 = affine.load %265[0] {from = "count"} : memref<1xi24>
                                      %267 = memref.alloc() {name = "src_addr"} : memref<1xi30>
                                      affine.store %261, %267[0] {to = "src_addr"} : memref<1xi30>
                                      %268 = affine.load %267[0] {from = "src_addr"} : memref<1xi30>
                                      %269 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                                      affine.store %c0_i32, %269[0] {to = "dst_addr", unsigned} : memref<1xi32>
                                      %270 = affine.load %269[0] {from = "dst_addr", unsigned} : memref<1xi32>
                                      %271 = arith.extsi %266 {unsigned} : i24 to i32
                                      %272 = arith.addi %270, %271 {unsigned} : i32
                                      %273 = memref.alloc() {name = "tmp", unsigned} : memref<1xi128>
                                      %c0_i128 = arith.constant {unsigned} 0 : i128
                                      affine.store %c0_i128, %273[0] {to = "tmp", unsigned} : memref<1xi128>
                                      %274 = arith.extsi %266 : i24 to i32
                                      %275 = arith.muli %274, %c4_i32 : i32
                                      %276 = arith.extsi %268 : i30 to i32
                                      %277 = arith.addi %276, %275 : i32
                                      %c33554432_i32 = arith.constant 33554432 : i32
                                      %278 = hcl.create_op_handle "copyN"
                                      %279 = hcl.create_loop_handle %278, "i"
                                      %280 = arith.index_cast %c0_i32_0 : i32 to index
                                      %281 = arith.index_cast %266 : i24 to index
                                      %282 = arith.index_cast %c1_i32_2 : i32 to index
                                      scf.for %arg2 = %280 to %281 step %282 {
                                        %284 = arith.extsi %c0_i32_0 {unsigned} : i32 to i128
                                        affine.store %284, %273[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %285 = affine.load %273[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %c32_i32 = arith.constant 32 : i32
                                        %286 = arith.extsi %c32_i32 {unsigned} : i32 to i128
                                        %287 = arith.extui %285 : i128 to i256
                                        %288 = arith.extui %286 : i128 to i256
                                        %289 = arith.shli %287, %288 : i256
                                        %290 = arith.index_cast %c4_i32 : i32 to index
                                        %291 = arith.muli %arg2, %290 : index
                                        %292 = arith.index_cast %268 : i30 to index
                                        %293 = arith.addi %292, %291 : index
                                        %294 = arith.addi %293, %280 : index
                                        %295 = memref.load %arg0[%294] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %296 = arith.extui %295 : i32 to i256
                                        %297 = arith.ori %289, %296 : i256
                                        %298 = arith.trunci %297 {unsigned} : i256 to i128
                                        affine.store %298, %273[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %299 = affine.load %273[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %300 = arith.extui %299 : i128 to i256
                                        %301 = arith.shli %300, %288 : i256
                                        %302 = arith.addi %293, %282 : index
                                        %303 = memref.load %arg0[%302] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %304 = arith.extui %303 : i32 to i256
                                        %305 = arith.ori %301, %304 : i256
                                        %306 = arith.trunci %305 {unsigned} : i256 to i128
                                        affine.store %306, %273[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %307 = affine.load %273[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %308 = arith.extui %307 : i128 to i256
                                        %309 = arith.shli %308, %288 : i256
                                        %310 = arith.index_cast %c2_i32 : i32 to index
                                        %311 = arith.addi %293, %310 : index
                                        %312 = memref.load %arg0[%311] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %313 = arith.extui %312 : i32 to i256
                                        %314 = arith.ori %309, %313 : i256
                                        %315 = arith.trunci %314 {unsigned} : i256 to i128
                                        affine.store %315, %273[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %316 = affine.load %273[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %317 = arith.extui %316 : i128 to i256
                                        %318 = arith.shli %317, %288 : i256
                                        %319 = arith.index_cast %c3_i32 : i32 to index
                                        %320 = arith.addi %293, %319 : index
                                        %321 = memref.load %arg0[%320] {from = "hbm", unsigned} : memref<33554432xi32>
                                        %322 = arith.extui %321 : i32 to i256
                                        %323 = arith.ori %318, %322 : i256
                                        %324 = arith.trunci %323 {unsigned} : i256 to i128
                                        affine.store %324, %273[0] {to = "tmp", unsigned} : memref<1xi128>
                                        %325 = affine.load %273[0] {from = "tmp", unsigned} : memref<1xi128>
                                        %326 = arith.index_cast %270 : i32 to index
                                        %327 = arith.addi %326, %arg2 : index
                                        memref.store %325, %17[%327] {to = "xinstq.alloc_c", unsigned} : memref<8192xi128>
                                      } {loop_name = "i", op_name = "copyN"}
                                      %283 = arith.divsi %263, %c16_i32 : i32
                                      affine.store %283, %18[0] {to = "xinstq_bundles", unsigned} : memref<1xi32>
                                    } else {
                                      %251 = affine.load %179[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                      hcl.print(%251) {format = "%016lx", signedness = "u"} : i64
                                      hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                    }
                                  }
                                }
                              }
                            }
                            %234 = affine.load %15[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                            %235 = arith.addi %234, %c1_i32_2 : i32
                            affine.store %235, %15[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                            affine.store %194, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
                            affine.store %194, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                            affine.store %194, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
                            %236 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
                            %237 = arith.extui %236 : i1 to i32
                            %238 = arith.cmpi eq, %237, %c0_i32_0 : i32
                            scf.if %238 {
                            } else {
                              hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                              %239 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                              hcl.print(%239) {format = "ip=%d ", signedness = "u"} : i16
                              hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                              hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                              affine.store %96, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
                            }
                          }
                        }
                      }
                    }
                    %212 = affine.load %15[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                    %213 = arith.addi %212, %c1_i32_2 : i32
                    affine.store %213, %15[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                    affine.store %194, %5[0] {to = "flags_stall", unsigned} : memref<1xi1>
                    affine.store %194, %6[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                    affine.store %194, %7[0] {to = "flags_break", unsigned} : memref<1xi1>
                    %214 = affine.load %5[0] {from = "flags_stall", unsigned} : memref<1xi1>
                    %215 = arith.extui %214 : i1 to i32
                    %216 = arith.cmpi eq, %215, %c0_i32_0 : i32
                    scf.if %216 {
                    } else {
                      hcl.print(%c0_i32_0) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %217 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%217) {format = "ip=%d ", signedness = "u"} : i16
                      hcl.print(%c0_i32_0) {format = "mwait", signedness = "_"} : i32
                      hcl.print(%c0_i32_0) {format = "    <resume>\0A", signedness = "_"} : i32
                    }
                  }
                }
              }
            }
            affine.store %96, %13[0] {to = "latstalled", unsigned} : memref<1xi1>
            %183 = affine.load %159[0] {from = "inst_lat", unsigned} : memref<1xi32>
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
              %188 = affine.load %159[0] {from = "inst_lat", unsigned} : memref<1xi32>
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
        %140 = arith.andi %128, %131 : i1
        scf.condition(%140)
      } do {
        %140 = affine.load %34[0] {from = "latency_count", unsigned} : memref<1xi32>
        %141 = arith.cmpi eq, %140, %c0_i32_0 : i32
        scf.if %141 {
          %142 = affine.load %32[0] {from = "inst_addr", unsigned} : memref<1xi16>
          %143 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi16>
          affine.store %142, %143[0] {to = "_cur_address", unsigned} : memref<1xi16>
          %c1_i32_2 = arith.constant 1 : i32
          %144 = arith.extui %142 : i16 to i32
          %145 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi16>
          affine.store %142, %145[0] {to = "read_addr", unsigned} : memref<1xi16>
          %146 = affine.load %145[0] {from = "read_addr", unsigned} : memref<1xi16>
          %147 = arith.extui %146 : i16 to i32
          %148 = arith.addi %147, %c1_i32_2 : i32
          %c8192_i32 = arith.constant 8192 : i32
          %149 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi64>
          %150 = hcl.create_op_handle "Mem.read_c"
          %151 = hcl.create_loop_handle %150, "i"
          %152 = affine.load %145[0] {from = "read_addr", unsigned} : memref<1xi16>
          %153 = arith.index_cast %152 : i16 to index
          %154 = arith.addi %153, %c0 : index
          %155 = memref.load %19[%154] {from = "cinstq.alloc_c", unsigned} : memref<8192xi64>
          affine.store %155, %149[%c0] {to = "Mem.read_c"} : memref<1xi64>
          %156 = affine.load %149[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
          %157 = memref.alloc() {name = "inst", unsigned} : memref<1xi64>
          affine.store %156, %157[0] {to = "inst", unsigned} : memref<1xi64>
          %158 = affine.load %157[0] {from = "inst", unsigned} : memref<1xi64>
          %159 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
          affine.store %c0_i32, %159[0] {to = "inst_lat", unsigned} : memref<1xi32>
          %160 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi64>
          affine.store %158, %160[0] {to = "decode_inst", unsigned} : memref<1xi64>
          %161 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
          affine.store %c0_i16, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
          %162 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %163 = memref.alloc() : memref<1xi9>
          %164 = memref.alloc() : memref<1xi2>
          %165 = memref.alloc() : memref<1xi2>
          %166 = memref.alloc() : memref<1xi1>
          %167 = memref.alloc() : memref<1xi2>
          %168 = memref.alloc() : memref<1xi48>
          %c8 = arith.constant 8 : index
          %c0_3 = arith.constant 0 : index
          %169 = hcl.get_slice(%162 : i64, %c8, %c0_3) -> i9
          %c10 = arith.constant 10 : index
          %c9 = arith.constant 9 : index
          %170 = hcl.get_slice(%162 : i64, %c10, %c9) -> i2
          %c12 = arith.constant 12 : index
          %c11 = arith.constant 11 : index
          %171 = hcl.get_slice(%162 : i64, %c12, %c11) -> i2
          %c13 = arith.constant 13 : index
          %c13_4 = arith.constant 13 : index
          %172 = hcl.get_slice(%162 : i64, %c13, %c13_4) -> i1
          %c15 = arith.constant 15 : index
          %c14 = arith.constant 14 : index
          %173 = hcl.get_slice(%162 : i64, %c15, %c14) -> i2
          %c63 = arith.constant 63 : index
          %c16 = arith.constant 16 : index
          %174 = hcl.get_slice(%162 : i64, %c63, %c16) -> i48
          affine.store %169, %163[0] : memref<1xi9>
          affine.store %170, %164[0] : memref<1xi2>
          affine.store %171, %165[0] : memref<1xi2>
          affine.store %172, %166[0] : memref<1xi1>
          affine.store %173, %167[0] : memref<1xi2>
          affine.store %174, %168[0] : memref<1xi48>
          %175 = affine.load %166[0] : memref<1xi1>
          %176 = arith.extui %175 : i1 to i32
          %177 = arith.cmpi eq, %176, %c1_i32_2 : i32
          %178 = affine.load %165[0] : memref<1xi2>
          %179 = arith.extsi %178 : i2 to i32
          %180 = arith.cmpi eq, %179, %c1_i32_2 : i32
          %181 = arith.andi %177, %180 : i1
          scf.if %181 {
            affine.store %97, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
          } else {
            %191 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %192 = memref.alloc() : memref<1xi9>
            %193 = memref.alloc() : memref<1xi2>
            %194 = memref.alloc() : memref<1xi2>
            %195 = memref.alloc() : memref<1xi1>
            %196 = memref.alloc() : memref<1xi2>
            %197 = memref.alloc() : memref<1xi48>
            %c8_5 = arith.constant 8 : index
            %c0_6 = arith.constant 0 : index
            %198 = hcl.get_slice(%191 : i64, %c8_5, %c0_6) -> i9
            %c10_7 = arith.constant 10 : index
            %c9_8 = arith.constant 9 : index
            %199 = hcl.get_slice(%191 : i64, %c10_7, %c9_8) -> i2
            %c12_9 = arith.constant 12 : index
            %c11_10 = arith.constant 11 : index
            %200 = hcl.get_slice(%191 : i64, %c12_9, %c11_10) -> i2
            %c13_11 = arith.constant 13 : index
            %c13_12 = arith.constant 13 : index
            %201 = hcl.get_slice(%191 : i64, %c13_11, %c13_12) -> i1
            %c15_13 = arith.constant 15 : index
            %c14_14 = arith.constant 14 : index
            %202 = hcl.get_slice(%191 : i64, %c15_13, %c14_14) -> i2
            %c63_15 = arith.constant 63 : index
            %c16_16 = arith.constant 16 : index
            %203 = hcl.get_slice(%191 : i64, %c63_15, %c16_16) -> i48
            affine.store %198, %192[0] : memref<1xi9>
            affine.store %199, %193[0] : memref<1xi2>
            affine.store %200, %194[0] : memref<1xi2>
            affine.store %201, %195[0] : memref<1xi1>
            affine.store %202, %196[0] : memref<1xi2>
            affine.store %203, %197[0] : memref<1xi48>
            %204 = affine.load %195[0] : memref<1xi1>
            %205 = arith.extui %204 : i1 to i32
            %206 = arith.cmpi eq, %205, %c1_i32_2 : i32
            %207 = affine.load %194[0] : memref<1xi2>
            %c2_i32 = arith.constant 2 : i32
            %208 = arith.extsi %207 : i2 to i32
            %209 = arith.cmpi eq, %208, %c2_i32 : i32
            %210 = arith.andi %206, %209 : i1
            scf.if %210 {
              %211 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
              affine.store %211, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %211 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %212 = memref.alloc() : memref<1xi9>
              %213 = memref.alloc() : memref<1xi1>
              %214 = memref.alloc() : memref<1xi1>
              %215 = memref.alloc() : memref<1xi2>
              %216 = memref.alloc() : memref<1xi1>
              %217 = memref.alloc() : memref<1xi2>
              %218 = memref.alloc() : memref<1xi48>
              %c8_17 = arith.constant 8 : index
              %c0_18 = arith.constant 0 : index
              %219 = hcl.get_slice(%211 : i64, %c8_17, %c0_18) -> i9
              %c9_19 = arith.constant 9 : index
              %c9_20 = arith.constant 9 : index
              %220 = hcl.get_slice(%211 : i64, %c9_19, %c9_20) -> i1
              %c10_21 = arith.constant 10 : index
              %c10_22 = arith.constant 10 : index
              %221 = hcl.get_slice(%211 : i64, %c10_21, %c10_22) -> i1
              %c12_23 = arith.constant 12 : index
              %c11_24 = arith.constant 11 : index
              %222 = hcl.get_slice(%211 : i64, %c12_23, %c11_24) -> i2
              %c13_25 = arith.constant 13 : index
              %c13_26 = arith.constant 13 : index
              %223 = hcl.get_slice(%211 : i64, %c13_25, %c13_26) -> i1
              %c15_27 = arith.constant 15 : index
              %c14_28 = arith.constant 14 : index
              %224 = hcl.get_slice(%211 : i64, %c15_27, %c14_28) -> i2
              %c63_29 = arith.constant 63 : index
              %c16_30 = arith.constant 16 : index
              %225 = hcl.get_slice(%211 : i64, %c63_29, %c16_30) -> i48
              affine.store %219, %212[0] : memref<1xi9>
              affine.store %220, %213[0] : memref<1xi1>
              affine.store %221, %214[0] : memref<1xi1>
              affine.store %222, %215[0] : memref<1xi2>
              affine.store %223, %216[0] : memref<1xi1>
              affine.store %224, %217[0] : memref<1xi2>
              affine.store %225, %218[0] : memref<1xi48>
              %226 = affine.load %216[0] : memref<1xi1>
              %227 = arith.extui %226 : i1 to i32
              %228 = arith.cmpi eq, %227, %c1_i32_2 : i32
              %229 = affine.load %215[0] : memref<1xi2>
              %230 = arith.extsi %229 : i2 to i32
              %231 = arith.cmpi eq, %230, %c0_i32_0 : i32
              %232 = arith.andi %228, %231 : i1
              scf.if %232 {
                %233 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %233, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %233 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %234 = memref.alloc() : memref<1xi9>
                %235 = memref.alloc() : memref<1xi2>
                %236 = memref.alloc() : memref<1xi2>
                %237 = memref.alloc() : memref<1xi1>
                %238 = memref.alloc() : memref<1xi2>
                %239 = memref.alloc() : memref<1xi48>
                %c8_31 = arith.constant 8 : index
                %c0_32 = arith.constant 0 : index
                %240 = hcl.get_slice(%233 : i64, %c8_31, %c0_32) -> i9
                %c10_33 = arith.constant 10 : index
                %c9_34 = arith.constant 9 : index
                %241 = hcl.get_slice(%233 : i64, %c10_33, %c9_34) -> i2
                %c12_35 = arith.constant 12 : index
                %c11_36 = arith.constant 11 : index
                %242 = hcl.get_slice(%233 : i64, %c12_35, %c11_36) -> i2
                %c13_37 = arith.constant 13 : index
                %c13_38 = arith.constant 13 : index
                %243 = hcl.get_slice(%233 : i64, %c13_37, %c13_38) -> i1
                %c15_39 = arith.constant 15 : index
                %c14_40 = arith.constant 14 : index
                %244 = hcl.get_slice(%233 : i64, %c15_39, %c14_40) -> i2
                %c63_41 = arith.constant 63 : index
                %c16_42 = arith.constant 16 : index
                %245 = hcl.get_slice(%233 : i64, %c63_41, %c16_42) -> i48
                affine.store %240, %234[0] : memref<1xi9>
                affine.store %241, %235[0] : memref<1xi2>
                affine.store %242, %236[0] : memref<1xi2>
                affine.store %243, %237[0] : memref<1xi1>
                affine.store %244, %238[0] : memref<1xi2>
                affine.store %245, %239[0] : memref<1xi48>
                %246 = affine.load %237[0] : memref<1xi1>
                %247 = arith.extui %246 : i1 to i32
                %248 = arith.cmpi eq, %247, %c0_i32_0 : i32
                %249 = affine.load %238[0] : memref<1xi2>
                %250 = arith.extsi %249 : i2 to i32
                %251 = arith.cmpi eq, %250, %c1_i32_2 : i32
                %252 = arith.andi %248, %251 : i1
                scf.if %252 {
                  %c3_i32 = arith.constant 3 : i32
                  %253 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %253, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %253 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                  %254 = memref.alloc() : memref<1xi9>
                  %255 = memref.alloc() : memref<1xi2>
                  %256 = memref.alloc() : memref<1xi2>
                  %257 = memref.alloc() : memref<1xi1>
                  %258 = memref.alloc() : memref<1xi2>
                  %259 = memref.alloc() : memref<1xi48>
                  %c8_43 = arith.constant 8 : index
                  %c0_44 = arith.constant 0 : index
                  %260 = hcl.get_slice(%253 : i64, %c8_43, %c0_44) -> i9
                  %c10_45 = arith.constant 10 : index
                  %c9_46 = arith.constant 9 : index
                  %261 = hcl.get_slice(%253 : i64, %c10_45, %c9_46) -> i2
                  %c12_47 = arith.constant 12 : index
                  %c11_48 = arith.constant 11 : index
                  %262 = hcl.get_slice(%253 : i64, %c12_47, %c11_48) -> i2
                  %c13_49 = arith.constant 13 : index
                  %c13_50 = arith.constant 13 : index
                  %263 = hcl.get_slice(%253 : i64, %c13_49, %c13_50) -> i1
                  %c15_51 = arith.constant 15 : index
                  %c14_52 = arith.constant 14 : index
                  %264 = hcl.get_slice(%253 : i64, %c15_51, %c14_52) -> i2
                  %c63_53 = arith.constant 63 : index
                  %c16_54 = arith.constant 16 : index
                  %265 = hcl.get_slice(%253 : i64, %c63_53, %c16_54) -> i48
                  affine.store %260, %254[0] : memref<1xi9>
                  affine.store %261, %255[0] : memref<1xi2>
                  affine.store %262, %256[0] : memref<1xi2>
                  affine.store %263, %257[0] : memref<1xi1>
                  affine.store %264, %258[0] : memref<1xi2>
                  affine.store %265, %259[0] : memref<1xi48>
                  %266 = affine.load %257[0] : memref<1xi1>
                  %267 = arith.extui %266 : i1 to i32
                  %268 = arith.cmpi eq, %267, %c0_i32_0 : i32
                  %269 = affine.load %258[0] : memref<1xi2>
                  %270 = arith.extsi %269 : i2 to i32
                  %271 = arith.cmpi eq, %270, %c0_i32_0 : i32
                  %272 = arith.andi %268, %271 : i1
                  scf.if %272 {
                    %c4_i32 = arith.constant 4 : i32
                    %273 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %273, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %273 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %274 = memref.alloc() : memref<1xi9>
                    %275 = memref.alloc() : memref<1xi2>
                    %276 = memref.alloc() : memref<1xi2>
                    %277 = memref.alloc() : memref<1xi1>
                    %278 = memref.alloc() : memref<1xi2>
                    %279 = memref.alloc() : memref<1xi48>
                    %c8_55 = arith.constant 8 : index
                    %c0_56 = arith.constant 0 : index
                    %280 = hcl.get_slice(%273 : i64, %c8_55, %c0_56) -> i9
                    %c10_57 = arith.constant 10 : index
                    %c9_58 = arith.constant 9 : index
                    %281 = hcl.get_slice(%273 : i64, %c10_57, %c9_58) -> i2
                    %c12_59 = arith.constant 12 : index
                    %c11_60 = arith.constant 11 : index
                    %282 = hcl.get_slice(%273 : i64, %c12_59, %c11_60) -> i2
                    %c13_61 = arith.constant 13 : index
                    %c13_62 = arith.constant 13 : index
                    %283 = hcl.get_slice(%273 : i64, %c13_61, %c13_62) -> i1
                    %c15_63 = arith.constant 15 : index
                    %c14_64 = arith.constant 14 : index
                    %284 = hcl.get_slice(%273 : i64, %c15_63, %c14_64) -> i2
                    %c63_65 = arith.constant 63 : index
                    %c16_66 = arith.constant 16 : index
                    %285 = hcl.get_slice(%273 : i64, %c63_65, %c16_66) -> i48
                    affine.store %280, %274[0] : memref<1xi9>
                    affine.store %281, %275[0] : memref<1xi2>
                    affine.store %282, %276[0] : memref<1xi2>
                    affine.store %283, %277[0] : memref<1xi1>
                    affine.store %284, %278[0] : memref<1xi2>
                    affine.store %285, %279[0] : memref<1xi48>
                    %286 = affine.load %277[0] : memref<1xi1>
                    %287 = arith.extui %286 : i1 to i32
                    %288 = arith.cmpi eq, %287, %c0_i32_0 : i32
                    %289 = affine.load %278[0] : memref<1xi2>
                    %290 = arith.extsi %289 : i2 to i32
                    %291 = arith.cmpi eq, %290, %c2_i32 : i32
                    %292 = affine.load %274[0] : memref<1xi9>
                    %293 = arith.extsi %292 : i9 to i32
                    %294 = arith.cmpi eq, %293, %c0_i32_0 : i32
                    %295 = arith.andi %288, %291 : i1
                    %296 = arith.andi %295, %294 : i1
                    scf.if %296 {
                      %c5_i32 = arith.constant 5 : i32
                      %297 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %297, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %297 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                      %298 = memref.alloc() : memref<1xi9>
                      %299 = memref.alloc() : memref<1xi2>
                      %300 = memref.alloc() : memref<1xi2>
                      %301 = memref.alloc() : memref<1xi1>
                      %302 = memref.alloc() : memref<1xi2>
                      %303 = memref.alloc() : memref<1xi48>
                      %c8_67 = arith.constant 8 : index
                      %c0_68 = arith.constant 0 : index
                      %304 = hcl.get_slice(%297 : i64, %c8_67, %c0_68) -> i9
                      %c10_69 = arith.constant 10 : index
                      %c9_70 = arith.constant 9 : index
                      %305 = hcl.get_slice(%297 : i64, %c10_69, %c9_70) -> i2
                      %c12_71 = arith.constant 12 : index
                      %c11_72 = arith.constant 11 : index
                      %306 = hcl.get_slice(%297 : i64, %c12_71, %c11_72) -> i2
                      %c13_73 = arith.constant 13 : index
                      %c13_74 = arith.constant 13 : index
                      %307 = hcl.get_slice(%297 : i64, %c13_73, %c13_74) -> i1
                      %c15_75 = arith.constant 15 : index
                      %c14_76 = arith.constant 14 : index
                      %308 = hcl.get_slice(%297 : i64, %c15_75, %c14_76) -> i2
                      %c63_77 = arith.constant 63 : index
                      %c16_78 = arith.constant 16 : index
                      %309 = hcl.get_slice(%297 : i64, %c63_77, %c16_78) -> i48
                      affine.store %304, %298[0] : memref<1xi9>
                      affine.store %305, %299[0] : memref<1xi2>
                      affine.store %306, %300[0] : memref<1xi2>
                      affine.store %307, %301[0] : memref<1xi1>
                      affine.store %308, %302[0] : memref<1xi2>
                      affine.store %309, %303[0] : memref<1xi48>
                      %310 = affine.load %301[0] : memref<1xi1>
                      %311 = arith.extui %310 : i1 to i32
                      %312 = arith.cmpi eq, %311, %c0_i32_0 : i32
                      %313 = affine.load %302[0] : memref<1xi2>
                      %314 = arith.extsi %313 : i2 to i32
                      %315 = arith.cmpi eq, %314, %c2_i32 : i32
                      %316 = affine.load %298[0] : memref<1xi9>
                      %317 = arith.extsi %316 : i9 to i32
                      %318 = arith.cmpi eq, %317, %c2_i32 : i32
                      %319 = arith.andi %312, %315 : i1
                      %320 = arith.andi %319, %318 : i1
                      scf.if %320 {
                        %c6_i32 = arith.constant 6 : i32
                        %321 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %321, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %321 = affine.load %160[0] {from = "decode_inst", unsigned} : memref<1xi64>
                        %322 = memref.alloc() : memref<1xi9>
                        %323 = memref.alloc() : memref<1xi2>
                        %324 = memref.alloc() : memref<1xi2>
                        %325 = memref.alloc() : memref<1xi1>
                        %326 = memref.alloc() : memref<1xi2>
                        %327 = memref.alloc() : memref<1xi48>
                        %c8_79 = arith.constant 8 : index
                        %c0_80 = arith.constant 0 : index
                        %328 = hcl.get_slice(%321 : i64, %c8_79, %c0_80) -> i9
                        %c10_81 = arith.constant 10 : index
                        %c9_82 = arith.constant 9 : index
                        %329 = hcl.get_slice(%321 : i64, %c10_81, %c9_82) -> i2
                        %c12_83 = arith.constant 12 : index
                        %c11_84 = arith.constant 11 : index
                        %330 = hcl.get_slice(%321 : i64, %c12_83, %c11_84) -> i2
                        %c13_85 = arith.constant 13 : index
                        %c13_86 = arith.constant 13 : index
                        %331 = hcl.get_slice(%321 : i64, %c13_85, %c13_86) -> i1
                        %c15_87 = arith.constant 15 : index
                        %c14_88 = arith.constant 14 : index
                        %332 = hcl.get_slice(%321 : i64, %c15_87, %c14_88) -> i2
                        %c63_89 = arith.constant 63 : index
                        %c16_90 = arith.constant 16 : index
                        %333 = hcl.get_slice(%321 : i64, %c63_89, %c16_90) -> i48
                        affine.store %328, %322[0] : memref<1xi9>
                        affine.store %329, %323[0] : memref<1xi2>
                        affine.store %330, %324[0] : memref<1xi2>
                        affine.store %331, %325[0] : memref<1xi1>
                        affine.store %332, %326[0] : memref<1xi2>
                        affine.store %333, %327[0] : memref<1xi48>
                        %334 = affine.load %325[0] : memref<1xi1>
                        %335 = arith.extui %334 : i1 to i32
                        %336 = arith.cmpi eq, %335, %c0_i32_0 : i32
                        %337 = affine.load %326[0] : memref<1xi2>
                        %338 = arith.extsi %337 : i2 to i32
                        %339 = arith.cmpi eq, %338, %c2_i32 : i32
                        %340 = affine.load %322[0] : memref<1xi9>
                        %c3_i32 = arith.constant 3 : i32
                        %341 = arith.extsi %340 : i9 to i32
                        %342 = arith.cmpi eq, %341, %c3_i32 : i32
                        %343 = arith.andi %336, %339 : i1
                        %344 = arith.andi %343, %342 : i1
                        scf.if %344 {
                          %c7_i32 = arith.constant 7 : i32
                          %345 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %345, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %c8_i32 = arith.constant 8 : i32
                          %345 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                          affine.store %345, %161[0] {to = "inst_id", unsigned} : memref<1xi16>
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          %182 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
          affine.store %false, %182[0] {to = "tmp", unsigned} : memref<1xi1>
          %183 = affine.load %159[0] {from = "inst_lat", unsigned} : memref<1xi32>
          %184 = arith.cmpi sle, %183, %c1_i32_2 : i32
          scf.if %184 {
            %191 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %191, %182[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %185 = affine.load %35[0] {from = "latstalled", unsigned} : memref<1xi1>
          %186 = arith.extui %185 : i1 to i32
          %187 = arith.cmpi eq, %186, %c1_i32_2 : i32
          scf.if %187 {
            %191 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %191, %182[0] {to = "tmp", unsigned} : memref<1xi1>
          }
          %188 = affine.load %182[0] {from = "tmp", unsigned} : memref<1xi1>
          %189 = arith.extui %188 : i1 to i32
          %190 = arith.cmpi ne, %189, %c0_i32_0 : i32
          scf.if %190 {
            %191 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi64>
            affine.store %158, %191[0] {to = "execute_inst", unsigned} : memref<1xi64>
            %192 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
            %193 = arith.extui %192 : i16 to i32
            %194 = arith.cmpi eq, %193, %c0_i32_0 : i32
            scf.if %194 {
              %200 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %201 = memref.alloc() : memref<1xi9>
              %202 = memref.alloc() : memref<1xi2>
              %203 = memref.alloc() : memref<1xi2>
              %204 = memref.alloc() : memref<1xi1>
              %205 = memref.alloc() : memref<1xi2>
              %206 = memref.alloc() : memref<1xi48>
              %c8_5 = arith.constant 8 : index
              %c0_6 = arith.constant 0 : index
              %207 = hcl.get_slice(%200 : i64, %c8_5, %c0_6) -> i9
              %c10_7 = arith.constant 10 : index
              %c9_8 = arith.constant 9 : index
              %208 = hcl.get_slice(%200 : i64, %c10_7, %c9_8) -> i2
              %c12_9 = arith.constant 12 : index
              %c11_10 = arith.constant 11 : index
              %209 = hcl.get_slice(%200 : i64, %c12_9, %c11_10) -> i2
              %c13_11 = arith.constant 13 : index
              %c13_12 = arith.constant 13 : index
              %210 = hcl.get_slice(%200 : i64, %c13_11, %c13_12) -> i1
              %c15_13 = arith.constant 15 : index
              %c14_14 = arith.constant 14 : index
              %211 = hcl.get_slice(%200 : i64, %c15_13, %c14_14) -> i2
              %c63_15 = arith.constant 63 : index
              %c16_16 = arith.constant 16 : index
              %212 = hcl.get_slice(%200 : i64, %c63_15, %c16_16) -> i48
              affine.store %207, %201[0] : memref<1xi9>
              affine.store %208, %202[0] : memref<1xi2>
              affine.store %209, %203[0] : memref<1xi2>
              affine.store %210, %204[0] : memref<1xi1>
              affine.store %211, %205[0] : memref<1xi2>
              affine.store %212, %206[0] : memref<1xi48>
              %213 = memref.alloc() {name = "tiles_active", unsigned} : memref<1xi1>
              affine.store %false, %213[0] {to = "tiles_active", unsigned} : memref<1xi1>
              %214 = affine.load %64[0] {from = "flags_active", unsigned} : memref<1xi1>
              %215 = arith.extui %214 : i1 to i32
              %216 = arith.cmpi ne, %215, %c0_i32_0 : i32
              scf.if %216 {
                %220 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %220, %213[0] {to = "tiles_active", unsigned} : memref<1xi1>
              }
              %217 = affine.load %213[0] {from = "tiles_active", unsigned} : memref<1xi1>
              %218 = arith.extui %217 : i1 to i32
              %219 = arith.cmpi ne, %218, %c0_i32_0 : i32
              scf.if %219 {
                %220 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                %221 = arith.extui %220 : i1 to i32
                %222 = arith.cmpi eq, %221, %c0_i32_0 : i32
                scf.if %222 {
                  hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %229 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                  hcl.print(%229) {format = "ip=%d ", signedness = "u"} : i16
                  %230 = affine.load %201[0] : memref<1xi9>
                  hcl.print(%230) {format = "ifetch bundle=0x%x", signedness = "_"} : i9
                  hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                } else {
                  %229 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %230 = arith.extui %229 : i16 to i32
                  %231 = arith.cmpi eq, %230, %c1_i32_2 : i32
                  scf.if %231 {
                    %232 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                    %233 = memref.alloc() : memref<1xi9>
                    %234 = memref.alloc() : memref<1xi2>
                    %235 = memref.alloc() : memref<1xi2>
                    %236 = memref.alloc() : memref<1xi1>
                    %237 = memref.alloc() : memref<1xi2>
                    %238 = memref.alloc() : memref<1xi48>
                    %c8_17 = arith.constant 8 : index
                    %c0_18 = arith.constant 0 : index
                    %239 = hcl.get_slice(%232 : i64, %c8_17, %c0_18) -> i9
                    %c10_19 = arith.constant 10 : index
                    %c9_20 = arith.constant 9 : index
                    %240 = hcl.get_slice(%232 : i64, %c10_19, %c9_20) -> i2
                    %c12_21 = arith.constant 12 : index
                    %c11_22 = arith.constant 11 : index
                    %241 = hcl.get_slice(%232 : i64, %c12_21, %c11_22) -> i2
                    %c13_23 = arith.constant 13 : index
                    %c13_24 = arith.constant 13 : index
                    %242 = hcl.get_slice(%232 : i64, %c13_23, %c13_24) -> i1
                    %c15_25 = arith.constant 15 : index
                    %c14_26 = arith.constant 14 : index
                    %243 = hcl.get_slice(%232 : i64, %c15_25, %c14_26) -> i2
                    %c63_27 = arith.constant 63 : index
                    %c16_28 = arith.constant 16 : index
                    %244 = hcl.get_slice(%232 : i64, %c63_27, %c16_28) -> i48
                    affine.store %239, %233[0] : memref<1xi9>
                    affine.store %240, %234[0] : memref<1xi2>
                    affine.store %241, %235[0] : memref<1xi2>
                    affine.store %242, %236[0] : memref<1xi1>
                    affine.store %243, %237[0] : memref<1xi2>
                    affine.store %244, %238[0] : memref<1xi48>
                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                    %245 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                    hcl.print(%245) {format = "ip=%d ", signedness = "u"} : i16
                    %246 = affine.load %238[0] : memref<1xi48>
                    hcl.print(%246) {format = "bload spadaddr=0x%x", signedness = "_"} : i48
                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                    %247 = memref.alloc() {name = "addr", unsigned} : memref<1xi32>
                    %248 = arith.trunci %246 {unsigned} : i48 to i32
                    affine.store %248, %247[0] {to = "addr", unsigned} : memref<1xi32>
                    %249 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %250 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %249, %250[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %251 = affine.load %250[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %252 = arith.addi %251, %c1_i32_2 : i32
                    %c33554432_i32 = arith.constant 33554432 : i32
                    %253 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %254 = hcl.create_op_handle "Mem.read_c"
                    %255 = hcl.create_loop_handle %254, "i"
                    %256 = affine.load %250[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %257 = arith.index_cast %256 : i32 to index
                    %258 = arith.addi %257, %c0 : index
                    %259 = memref.load %arg0[%258] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %259, %253[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %260 = affine.load %253[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %260, %40[0] {to = "residue_count", unsigned} : memref<1xi32>
                    %261 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %262 = arith.addi %261, %c1_i32_2 : i32
                    affine.store %262, %247[0] {to = "addr", unsigned} : memref<1xi32>
                    %263 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %264 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %263, %264[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %265 = affine.load %264[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %266 = arith.addi %265, %c1_i32_2 : i32
                    %267 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %268 = hcl.create_op_handle "Mem.read_c"
                    %269 = hcl.create_loop_handle %268, "i"
                    %270 = affine.load %264[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %271 = arith.index_cast %270 : i32 to index
                    %272 = arith.addi %271, %c0 : index
                    %273 = memref.load %arg0[%272] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %273, %267[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %274 = affine.load %267[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %274, %41[0] {to = "stage_count", unsigned} : memref<1xi32>
                    %275 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %276 = arith.addi %275, %c1_i32_2 : i32
                    affine.store %276, %247[0] {to = "addr", unsigned} : memref<1xi32>
                    %277 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %278 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                    affine.store %277, %278[0] {to = "read_addr", unsigned} : memref<1xi32>
                    %279 = affine.load %278[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %280 = arith.addi %279, %c1_i32_2 : i32
                    %281 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                    %282 = hcl.create_op_handle "Mem.read_c"
                    %283 = hcl.create_loop_handle %282, "i"
                    %284 = affine.load %278[0] {from = "read_addr", unsigned} : memref<1xi32>
                    %285 = arith.index_cast %284 : i32 to index
                    %286 = arith.addi %285, %c0 : index
                    %287 = memref.load %arg0[%286] {from = "hbm", unsigned} : memref<33554432xi32>
                    affine.store %287, %281[%c0] {to = "Mem.read_c"} : memref<1xi32>
                    %288 = affine.load %281[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                    affine.store %288, %42[0] {to = "tw_count", unsigned} : memref<1xi32>
                    %289 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %290 = arith.addi %289, %c1_i32_2 : i32
                    affine.store %290, %247[0] {to = "addr", unsigned} : memref<1xi32>
                    %291 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %292 = affine.load %40[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %293 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                    affine.store %292, %293[0] {to = "count", unsigned} : memref<1xi32>
                    %294 = affine.load %293[0] {from = "count", unsigned} : memref<1xi32>
                    %295 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %291, %295[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %296 = affine.load %295[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %297 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %297[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %298 = affine.load %297[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %299 = arith.addi %296, %294 {unsigned} : i32
                    %300 = hcl.create_op_handle "copyN"
                    %301 = hcl.create_loop_handle %300, "i"
                    %302 = arith.index_cast %c0_i32_0 : i32 to index
                    %303 = arith.index_cast %294 : i32 to index
                    %304 = arith.index_cast %c1_i32_2 : i32 to index
                    scf.for %arg2 = %302 to %303 step %304 {
                      %340 = arith.index_cast %296 : i32 to index
                      %341 = arith.addi %340, %arg2 : index
                      %342 = memref.load %arg0[%341] {from = "hbm", unsigned} : memref<33554432xi32>
                      %343 = arith.index_cast %298 : i32 to index
                      %344 = arith.addi %343, %arg2 : index
                      memref.store %342, %43[%344] {to = "residues.alloc_c", unsigned} : memref<64xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %305 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %306 = affine.load %40[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %307 = arith.addi %305, %306 {unsigned} : i32
                    affine.store %307, %247[0] {to = "addr", unsigned} : memref<1xi32>
                    %308 = affine.load %40[0] {from = "residue_count", unsigned} : memref<1xi32>
                    %309 = affine.load %41[0] {from = "stage_count", unsigned} : memref<1xi32>
                    %310 = arith.muli %308, %309 {unsigned} : i32
                    %311 = affine.load %42[0] {from = "tw_count", unsigned} : memref<1xi32>
                    %312 = arith.muli %310, %311 {unsigned} : i32
                    %313 = arith.muli %312, %c8192_i32 : i32
                    %314 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %315 = memref.alloc() {name = "count"} : memref<1xi32>
                    affine.store %313, %315[0] {to = "count"} : memref<1xi32>
                    %316 = affine.load %315[0] {from = "count"} : memref<1xi32>
                    %317 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %314, %317[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %318 = affine.load %317[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %319 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %319[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %320 = affine.load %319[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %321 = arith.addi %318, %316 : i32
                    %322 = hcl.create_op_handle "copyN"
                    %323 = hcl.create_loop_handle %322, "i"
                    %324 = arith.index_cast %316 : i32 to index
                    scf.for %arg2 = %302 to %324 step %304 {
                      %340 = arith.index_cast %318 : i32 to index
                      %341 = arith.addi %340, %arg2 : index
                      %342 = memref.load %arg0[%341] {from = "hbm", unsigned} : memref<33554432xi32>
                      %343 = arith.index_cast %320 : i32 to index
                      %344 = arith.addi %343, %arg2 : index
                      memref.store %342, %44[%344] {to = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %325 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %326 = arith.addi %325, %313 : i32
                    affine.store %326, %247[0] {to = "addr", unsigned} : memref<1xi32>
                    %327 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %328 = memref.alloc() {name = "count"} : memref<1xi32>
                    affine.store %313, %328[0] {to = "count"} : memref<1xi32>
                    %329 = affine.load %328[0] {from = "count"} : memref<1xi32>
                    %330 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                    affine.store %327, %330[0] {to = "src_addr", unsigned} : memref<1xi32>
                    %331 = affine.load %330[0] {from = "src_addr", unsigned} : memref<1xi32>
                    %332 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                    affine.store %c0_i32, %332[0] {to = "dst_addr", unsigned} : memref<1xi32>
                    %333 = affine.load %332[0] {from = "dst_addr", unsigned} : memref<1xi32>
                    %334 = arith.addi %331, %329 : i32
                    %335 = hcl.create_op_handle "copyN"
                    %336 = hcl.create_loop_handle %335, "i"
                    %337 = arith.index_cast %329 : i32 to index
                    scf.for %arg2 = %302 to %337 step %304 {
                      %340 = arith.index_cast %331 : i32 to index
                      %341 = arith.addi %340, %arg2 : index
                      %342 = memref.load %arg0[%341] {from = "hbm", unsigned} : memref<33554432xi32>
                      %343 = arith.index_cast %333 : i32 to index
                      %344 = arith.addi %343, %arg2 : index
                      memref.store %342, %45[%344] {to = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
                    } {loop_name = "i", op_name = "copyN"}
                    %338 = affine.load %247[0] {from = "addr", unsigned} : memref<1xi32>
                    %339 = arith.addi %338, %313 : i32
                    affine.store %339, %247[0] {to = "addr", unsigned} : memref<1xi32>
                  } else {
                    %232 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                    %233 = arith.extui %232 : i16 to i32
                    %c2_i32 = arith.constant 2 : i32
                    %234 = arith.cmpi eq, %233, %c2_i32 : i32
                    scf.if %234 {
                      %235 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                      %236 = memref.alloc() : memref<1xi9>
                      %237 = memref.alloc() : memref<1xi1>
                      %238 = memref.alloc() : memref<1xi1>
                      %239 = memref.alloc() : memref<1xi2>
                      %240 = memref.alloc() : memref<1xi1>
                      %241 = memref.alloc() : memref<1xi2>
                      %242 = memref.alloc() : memref<1xi48>
                      %c8_17 = arith.constant 8 : index
                      %c0_18 = arith.constant 0 : index
                      %243 = hcl.get_slice(%235 : i64, %c8_17, %c0_18) -> i9
                      %c9_19 = arith.constant 9 : index
                      %c9_20 = arith.constant 9 : index
                      %244 = hcl.get_slice(%235 : i64, %c9_19, %c9_20) -> i1
                      %c10_21 = arith.constant 10 : index
                      %c10_22 = arith.constant 10 : index
                      %245 = hcl.get_slice(%235 : i64, %c10_21, %c10_22) -> i1
                      %c12_23 = arith.constant 12 : index
                      %c11_24 = arith.constant 11 : index
                      %246 = hcl.get_slice(%235 : i64, %c12_23, %c11_24) -> i2
                      %c13_25 = arith.constant 13 : index
                      %c13_26 = arith.constant 13 : index
                      %247 = hcl.get_slice(%235 : i64, %c13_25, %c13_26) -> i1
                      %c15_27 = arith.constant 15 : index
                      %c14_28 = arith.constant 14 : index
                      %248 = hcl.get_slice(%235 : i64, %c15_27, %c14_28) -> i2
                      %c63_29 = arith.constant 63 : index
                      %c16_30 = arith.constant 16 : index
                      %249 = hcl.get_slice(%235 : i64, %c63_29, %c16_30) -> i48
                      affine.store %243, %236[0] : memref<1xi9>
                      affine.store %244, %237[0] : memref<1xi1>
                      affine.store %245, %238[0] : memref<1xi1>
                      affine.store %246, %239[0] : memref<1xi2>
                      affine.store %247, %240[0] : memref<1xi1>
                      affine.store %248, %241[0] : memref<1xi2>
                      affine.store %249, %242[0] : memref<1xi48>
                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                      %250 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                      hcl.print(%250) {format = "ip=%d ", signedness = "u"} : i16
                      %251 = affine.load %236[0] : memref<1xi9>
                      %252 = affine.load %237[0] : memref<1xi1>
                      %253 = affine.load %242[0] : memref<1xi48>
                      hcl.print(%251, %252, %253) {format = "cload rfaddr=0x%x dbg=0x%x spadaddr=0x%x", signedness = "___"} : i9, i1, i48
                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                      %c13_i32 = arith.constant 13 : i32
                      %254 = arith.extsi %c13_i32 : i32 to i48
                      %255 = arith.extsi %253 : i48 to i96
                      %256 = arith.extsi %254 : i48 to i96
                      %257 = arith.shli %255, %256 : i96
                      %258 = memref.alloc() : memref<1xi7>
                      %259 = memref.alloc() : memref<1xi2>
                      %c6 = arith.constant 6 : index
                      %c0_31 = arith.constant 0 : index
                      %260 = hcl.get_slice(%251 : i9, %c6, %c0_31) -> i7
                      %c8_32 = arith.constant 8 : index
                      %c7 = arith.constant 7 : index
                      %261 = hcl.get_slice(%251 : i9, %c8_32, %c7) -> i2
                      affine.store %260, %258[0] : memref<1xi7>
                      affine.store %261, %259[0] : memref<1xi2>
                      %262 = affine.load %259[0] : memref<1xi2>
                      %263 = affine.load %258[0] : memref<1xi7>
                      %264 = arith.extsi %c0_i32_0 : i32 to i96
                      %265 = arith.addi %257, %264 : i96
                      %266 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                      %c8192_i32_33 = arith.constant {unsigned} 8192 : i32
                      affine.store %c8192_i32_33, %266[0] {to = "count", unsigned} : memref<1xi32>
                      %267 = affine.load %266[0] {from = "count", unsigned} : memref<1xi32>
                      %268 = memref.alloc() {name = "src_addr"} : memref<1xi96>
                      affine.store %265, %268[0] {to = "src_addr"} : memref<1xi96>
                      %269 = affine.load %268[0] {from = "src_addr"} : memref<1xi96>
                      %270 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                      affine.store %c0_i32, %270[0] {to = "dst_addr", unsigned} : memref<1xi32>
                      %271 = affine.load %270[0] {from = "dst_addr", unsigned} : memref<1xi32>
                      %272 = arith.extui %267 : i32 to i96
                      %273 = arith.addi %269, %272 : i96
                      %c33554432_i32 = arith.constant 33554432 : i32
                      %274 = arith.extsi %c33554432_i32 : i32 to i96
                      %275 = hcl.create_op_handle "copyN"
                      %276 = hcl.create_loop_handle %275, "i"
                      %277 = arith.index_cast %c0_i32_0 : i32 to index
                      %278 = arith.index_cast %267 : i32 to index
                      %279 = arith.index_cast %c1_i32_2 : i32 to index
                      scf.for %arg2 = %277 to %278 step %279 {
                        %280 = arith.index_cast %269 : i96 to index
                        %281 = arith.addi %280, %arg2 : index
                        %282 = memref.load %0[%281] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                        %283 = arith.index_cast %271 : i32 to index
                        %284 = arith.addi %283, %arg2 : index
                        %285 = arith.index_cast %262 : i2 to index
                        %286 = arith.index_cast %263 : i7 to index
                        memref.store %282, %39[%285, %286, %284] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "copyN"}
                    } else {
                      %235 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %236 = arith.extui %235 : i16 to i32
                      %c3_i32 = arith.constant 3 : i32
                      %237 = arith.cmpi eq, %236, %c3_i32 : i32
                      scf.if %237 {
                        %238 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                        %239 = memref.alloc() : memref<1xi9>
                        %240 = memref.alloc() : memref<1xi2>
                        %241 = memref.alloc() : memref<1xi2>
                        %242 = memref.alloc() : memref<1xi1>
                        %243 = memref.alloc() : memref<1xi2>
                        %244 = memref.alloc() : memref<1xi48>
                        %c8_17 = arith.constant 8 : index
                        %c0_18 = arith.constant 0 : index
                        %245 = hcl.get_slice(%238 : i64, %c8_17, %c0_18) -> i9
                        %c10_19 = arith.constant 10 : index
                        %c9_20 = arith.constant 9 : index
                        %246 = hcl.get_slice(%238 : i64, %c10_19, %c9_20) -> i2
                        %c12_21 = arith.constant 12 : index
                        %c11_22 = arith.constant 11 : index
                        %247 = hcl.get_slice(%238 : i64, %c12_21, %c11_22) -> i2
                        %c13_23 = arith.constant 13 : index
                        %c13_24 = arith.constant 13 : index
                        %248 = hcl.get_slice(%238 : i64, %c13_23, %c13_24) -> i1
                        %c15_25 = arith.constant 15 : index
                        %c14_26 = arith.constant 14 : index
                        %249 = hcl.get_slice(%238 : i64, %c15_25, %c14_26) -> i2
                        %c63_27 = arith.constant 63 : index
                        %c16_28 = arith.constant 16 : index
                        %250 = hcl.get_slice(%238 : i64, %c63_27, %c16_28) -> i48
                        affine.store %245, %239[0] : memref<1xi9>
                        affine.store %246, %240[0] : memref<1xi2>
                        affine.store %247, %241[0] : memref<1xi2>
                        affine.store %248, %242[0] : memref<1xi1>
                        affine.store %249, %243[0] : memref<1xi2>
                        affine.store %250, %244[0] : memref<1xi48>
                        %251 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                        %252 = arith.extui %251 : i3 to i32
                        %253 = arith.cmpi eq, %252, %c0_i32_0 : i32
                        scf.if %253 {
                          %254 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                          %255 = arith.extui %254 : i1 to i32
                          %256 = arith.cmpi eq, %255, %c0_i32_0 : i32
                          scf.if %256 {
                            hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                            %270 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                            hcl.print(%270) {format = "ip=%d ", signedness = "u"} : i16
                            %271 = affine.load %244[0] : memref<1xi48>
                            hcl.print(%271) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                            hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                          }
                          %257 = arith.trunci %c1_i32_2 {unsigned} : i32 to i3
                          affine.store %257, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                          affine.store %96, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                          %258 = affine.load %244[0] : memref<1xi48>
                          %c13_i32 = arith.constant 13 : i32
                          %259 = arith.extsi %c13_i32 : i32 to i48
                          %260 = arith.extsi %258 : i48 to i96
                          %261 = arith.extsi %259 : i48 to i96
                          %262 = arith.shli %260, %261 : i96
                          %263 = arith.trunci %262 {unsigned} : i96 to i48
                          affine.store %263, %24[0] {to = "cstore_spadaddr", unsigned} : memref<1xi48>
                          %264 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                          %265 = arith.addi %264, %c1_i32_2 : i32
                          affine.store %265, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                          %266 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                          affine.store %266, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                          affine.store %266, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                          affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                          %267 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                          %268 = arith.extui %267 : i1 to i32
                          %269 = arith.cmpi eq, %268, %c0_i32_0 : i32
                          scf.if %269 {
                          } else {
                            %270 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                            %271 = arith.extui %270 : i3 to i32
                            %272 = arith.cmpi eq, %271, %c1_i32_2 : i32
                            scf.if %272 {
                              %273 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                              %274 = arith.extui %273 : i1 to i32
                              %275 = arith.cmpi eq, %274, %c0_i32_0 : i32
                              scf.if %275 {
                                hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                %284 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                hcl.print(%284) {format = "ip=%d ", signedness = "u"} : i16
                                hcl.print(%258) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                              }
                              %276 = affine.load %23[0] {from = "cstore_valid", unsigned} : memref<1xi1>
                              %277 = arith.extui %276 : i1 to i32
                              %278 = arith.cmpi eq, %277, %c1_i32_2 : i32
                              scf.if %278 {
                                %284 = arith.trunci %c2_i32 {unsigned} : i32 to i3
                                affine.store %284, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                              }
                              %279 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                              %280 = arith.addi %279, %c1_i32_2 : i32
                              affine.store %280, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                              affine.store %266, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                              affine.store %266, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                              affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                              %281 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                              %282 = arith.extui %281 : i1 to i32
                              %283 = arith.cmpi eq, %282, %c0_i32_0 : i32
                              scf.if %283 {
                              } else {
                                %284 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                %285 = arith.extui %284 : i3 to i32
                                %286 = arith.cmpi ne, %285, %c3_i32 : i32
                                scf.if %286 {
                                  %287 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                  %288 = arith.extui %287 : i1 to i32
                                  %289 = arith.cmpi eq, %288, %c0_i32_0 : i32
                                  scf.if %289 {
                                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                    %299 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%299) {format = "ip=%d ", signedness = "u"} : i16
                                    hcl.print(%258) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
                                    hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                  } else {
                                    %299 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                    %300 = arith.extui %299 : i16 to i32
                                    %c4_i32 = arith.constant 4 : i32
                                    %301 = arith.cmpi eq, %300, %c4_i32 : i32
                                    scf.if %301 {
                                      %302 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                      %303 = memref.alloc() : memref<1xi9>
                                      %304 = memref.alloc() : memref<1xi2>
                                      %305 = memref.alloc() : memref<1xi2>
                                      %306 = memref.alloc() : memref<1xi1>
                                      %307 = memref.alloc() : memref<1xi2>
                                      %308 = memref.alloc() : memref<1xi48>
                                      %c8_29 = arith.constant 8 : index
                                      %c0_30 = arith.constant 0 : index
                                      %309 = hcl.get_slice(%302 : i64, %c8_29, %c0_30) -> i9
                                      %c10_31 = arith.constant 10 : index
                                      %c9_32 = arith.constant 9 : index
                                      %310 = hcl.get_slice(%302 : i64, %c10_31, %c9_32) -> i2
                                      %c12_33 = arith.constant 12 : index
                                      %c11_34 = arith.constant 11 : index
                                      %311 = hcl.get_slice(%302 : i64, %c12_33, %c11_34) -> i2
                                      %c13_35 = arith.constant 13 : index
                                      %c13_36 = arith.constant 13 : index
                                      %312 = hcl.get_slice(%302 : i64, %c13_35, %c13_36) -> i1
                                      %c15_37 = arith.constant 15 : index
                                      %c14_38 = arith.constant 14 : index
                                      %313 = hcl.get_slice(%302 : i64, %c15_37, %c14_38) -> i2
                                      %c63_39 = arith.constant 63 : index
                                      %c16_40 = arith.constant 16 : index
                                      %314 = hcl.get_slice(%302 : i64, %c63_39, %c16_40) -> i48
                                      affine.store %309, %303[0] : memref<1xi9>
                                      affine.store %310, %304[0] : memref<1xi2>
                                      affine.store %311, %305[0] : memref<1xi2>
                                      affine.store %312, %306[0] : memref<1xi1>
                                      affine.store %313, %307[0] : memref<1xi2>
                                      affine.store %314, %308[0] : memref<1xi48>
                                      %315 = affine.load %20[0] {from = "nop_count", unsigned} : memref<1xi32>
                                      %316 = affine.load %303[0] : memref<1xi9>
                                      %317 = arith.extsi %316 {unsigned} : i9 to i32
                                      %318 = arith.cmpi ult, %315, %317 : i32
                                      scf.if %318 {
                                        %319 = affine.load %20[0] {from = "nop_count", unsigned} : memref<1xi32>
                                        %320 = arith.addi %319, %c1_i32_2 : i32
                                        affine.store %320, %20[0] {to = "nop_count", unsigned} : memref<1xi32>
                                        %321 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                        %322 = arith.addi %321, %c1_i32_2 : i32
                                        affine.store %322, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                        affine.store %266, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                        affine.store %266, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                        affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                        %323 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                        %324 = arith.extui %323 : i1 to i32
                                        %325 = arith.cmpi eq, %324, %c0_i32_0 : i32
                                        %326 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                        %327 = arith.extui %326 : i1 to i32
                                        %328 = arith.cmpi eq, %327, %c0_i32_0 : i32
                                        scf.if %328 {
                                          hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                          %329 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                          hcl.print(%329) {format = "ip=%d ", signedness = "u"} : i16
                                          hcl.print(%316) {format = "nop count=0x%x", signedness = "_"} : i9
                                          hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                        } else {
                                          affine.store %c0_i32_0, %20[0] {to = "nop_count", unsigned} : memref<1xi32>
                                          affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                          %329 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                          %330 = arith.extui %329 : i1 to i32
                                          %331 = arith.cmpi eq, %330, %c0_i32_0 : i32
                                          scf.if %331 {
                                          } else {
                                            %333 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                            %334 = arith.extui %333 : i16 to i32
                                            %c5_i32 = arith.constant 5 : i32
                                            %335 = arith.cmpi eq, %334, %c5_i32 : i32
                                            scf.if %335 {
                                              %336 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                              %337 = memref.alloc() {name = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                              %c8_41 = arith.constant 8 : index
                                              %c0_42 = arith.constant 0 : index
                                              %338 = hcl.get_slice(%336 : i64, %c8_41, %c0_42) -> i9
                                              %c10_43 = arith.constant 10 : index
                                              %c9_44 = arith.constant 9 : index
                                              %339 = hcl.get_slice(%336 : i64, %c10_43, %c9_44) -> i2
                                              %c12_45 = arith.constant 12 : index
                                              %c11_46 = arith.constant 11 : index
                                              %340 = hcl.get_slice(%336 : i64, %c12_45, %c11_46) -> i2
                                              %c13_47 = arith.constant 13 : index
                                              %c13_48 = arith.constant 13 : index
                                              %341 = hcl.get_slice(%336 : i64, %c13_47, %c13_48) -> i1
                                              %c15_49 = arith.constant 15 : index
                                              %c14_50 = arith.constant 14 : index
                                              %342 = hcl.get_slice(%336 : i64, %c15_49, %c14_50) -> i2
                                              %c63_51 = arith.constant 63 : index
                                              %c16_52 = arith.constant 16 : index
                                              %343 = hcl.get_slice(%336 : i64, %c63_51, %c16_52) -> i48
                                              %344 = hcl.struct_construct(%338, %339, %340, %341, %342, %343) : i9, i2, i2, i1, i2, i48 -> <i9, i2, i2, i1, i2, i48>
                                              affine.store %344, %337[0] {to = "dec_inst_chalt"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                              hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                              %345 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                              hcl.print(%345) {format = "ip=%d ", signedness = "u"} : i16
                                              hcl.print(%c0_i32_0) {format = "chalt", signedness = "_"} : i32
                                              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                              affine.store %266, %26[0] {to = "flags_halt", unsigned} : memref<1xi1>
                                              affine.store %96, %25[0] {to = "flags_active", unsigned} : memref<1xi1>
                                              affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                              %346 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                              %347 = arith.extui %346 : i1 to i32
                                              %348 = arith.cmpi eq, %347, %c0_i32_0 : i32
                                              scf.if %348 {
                                              } else {
                                                %349 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                                %350 = arith.extui %349 : i16 to i32
                                                %c6_i32 = arith.constant 6 : i32
                                                %351 = arith.cmpi eq, %350, %c6_i32 : i32
                                                scf.if %351 {
                                                  %352 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                  %353 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                  %c8_53 = arith.constant 8 : index
                                                  %c0_54 = arith.constant 0 : index
                                                  %354 = hcl.get_slice(%352 : i64, %c8_53, %c0_54) -> i9
                                                  %c10_55 = arith.constant 10 : index
                                                  %c9_56 = arith.constant 9 : index
                                                  %355 = hcl.get_slice(%352 : i64, %c10_55, %c9_56) -> i2
                                                  %c12_57 = arith.constant 12 : index
                                                  %c11_58 = arith.constant 11 : index
                                                  %356 = hcl.get_slice(%352 : i64, %c12_57, %c11_58) -> i2
                                                  %c13_59 = arith.constant 13 : index
                                                  %c13_60 = arith.constant 13 : index
                                                  %357 = hcl.get_slice(%352 : i64, %c13_59, %c13_60) -> i1
                                                  %c15_61 = arith.constant 15 : index
                                                  %c14_62 = arith.constant 14 : index
                                                  %358 = hcl.get_slice(%352 : i64, %c15_61, %c14_62) -> i2
                                                  %c63_63 = arith.constant 63 : index
                                                  %c16_64 = arith.constant 16 : index
                                                  %359 = hcl.get_slice(%352 : i64, %c63_63, %c16_64) -> i48
                                                  %360 = hcl.struct_construct(%354, %355, %356, %357, %358, %359) : i9, i2, i2, i1, i2, i48 -> <i9, i2, i2, i1, i2, i48>
                                                  affine.store %360, %353[0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                  %361 = affine.load %21[0] {from = "csyncm", unsigned} : memref<1xi1>
                                                  %362 = arith.extui %361 : i1 to i32
                                                  %363 = arith.cmpi eq, %362, %c0_i32_0 : i32
                                                  scf.if %363 {
                                                    %364 = affine.load %28[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                                    %365 = arith.extui %364 : i1 to i32
                                                    %366 = arith.cmpi eq, %365, %c0_i32_0 : i32
                                                    scf.if %366 {
                                                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                      %372 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                      hcl.print(%372) {format = "ip=%d ", signedness = "u"} : i16
                                                      hcl.print(%c0_i32_0) {format = "csyncm", signedness = "_"} : i32
                                                      hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                                    } else {
                                                      %372 = affine.load %161[0] {from = "inst_id", unsigned} : memref<1xi16>
                                                      %373 = arith.extui %372 : i16 to i32
                                                      %c7_i32 = arith.constant 7 : i32
                                                      %374 = arith.cmpi eq, %373, %c7_i32 : i32
                                                      scf.if %374 {
                                                        %375 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                        %376 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                        %c8_65 = arith.constant 8 : index
                                                        %c0_66 = arith.constant 0 : index
                                                        %377 = hcl.get_slice(%375 : i64, %c8_65, %c0_66) -> i9
                                                        %c10_67 = arith.constant 10 : index
                                                        %c9_68 = arith.constant 9 : index
                                                        %378 = hcl.get_slice(%375 : i64, %c10_67, %c9_68) -> i2
                                                        %c12_69 = arith.constant 12 : index
                                                        %c11_70 = arith.constant 11 : index
                                                        %379 = hcl.get_slice(%375 : i64, %c12_69, %c11_70) -> i2
                                                        %c13_71 = arith.constant 13 : index
                                                        %c13_72 = arith.constant 13 : index
                                                        %380 = hcl.get_slice(%375 : i64, %c13_71, %c13_72) -> i1
                                                        %c15_73 = arith.constant 15 : index
                                                        %c14_74 = arith.constant 14 : index
                                                        %381 = hcl.get_slice(%375 : i64, %c15_73, %c14_74) -> i2
                                                        %c63_75 = arith.constant 63 : index
                                                        %c16_76 = arith.constant 16 : index
                                                        %382 = hcl.get_slice(%375 : i64, %c63_75, %c16_76) -> i48
                                                        %383 = hcl.struct_construct(%377, %378, %379, %380, %381, %382) : i9, i2, i2, i1, i2, i48 -> <i9, i2, i2, i1, i2, i48>
                                                        affine.store %383, %376[0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i9, i2, i2, i1, i2, i48>>
                                                        hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                        %384 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                        hcl.print(%384) {format = "ip=%d ", signedness = "u"} : i16
                                                        hcl.print(%c0_i32_0) {format = "msyncc", signedness = "_"} : i32
                                                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                                        affine.store %266, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
                                                      } else {
                                                        %375 = affine.load %191[0] {from = "execute_inst", unsigned} : memref<1xi64>
                                                        hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                                        hcl.print(%375) {format = "%016lx", signedness = "u"} : i64
                                                        hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                                      }
                                                    }
                                                    %367 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                                    %368 = arith.addi %367, %c1_i32_2 : i32
                                                    affine.store %368, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                                    affine.store %266, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                                    affine.store %266, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                                    affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                                    %369 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                                    %370 = arith.extui %369 : i1 to i32
                                                    %371 = arith.cmpi eq, %370, %c0_i32_0 : i32
                                                    scf.if %371 {
                                                    } else {
                                                      hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                                      %372 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                                      hcl.print(%372) {format = "ip=%d ", signedness = "u"} : i16
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
                                          %332 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                          hcl.print(%332) {format = "ip=%d ", signedness = "u"} : i16
                                          hcl.print(%316) {format = "nop count=0x%x", signedness = "_"} : i9
                                          hcl.print(%c0_i32_0) {format = "    <break>\0A", signedness = "_"} : i32
                                        }
                                      }
                                    }
                                  }
                                  %290 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                  %291 = arith.extui %290 : i3 to i32
                                  %292 = arith.addi %291, %c1_i32_2 : i32
                                  %293 = arith.trunci %292 {unsigned} : i32 to i3
                                  affine.store %293, %22[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                                  %294 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                  %295 = arith.addi %294, %c1_i32_2 : i32
                                  affine.store %295, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                  affine.store %266, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                  affine.store %266, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                  affine.store %266, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                                  %296 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                  %297 = arith.extui %296 : i1 to i32
                                  %298 = arith.cmpi eq, %297, %c0_i32_0 : i32
                                  scf.if %298 {
                                  } else {
                                    hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                    %299 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                                    hcl.print(%299) {format = "ip=%d ", signedness = "u"} : i16
                                    hcl.print(%258) {format = "cstore spadaddr=0x%x", signedness = "_"} : i48
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
                %223 = affine.load %37[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                %224 = arith.addi %223, %c1_i32_2 : i32
                affine.store %224, %37[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                %225 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %225, %27[0] {to = "flags_stall", unsigned} : memref<1xi1>
                affine.store %225, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                affine.store %225, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                %226 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %227 = arith.extui %226 : i1 to i32
                %228 = arith.cmpi eq, %227, %c0_i32_0 : i32
                scf.if %228 {
                } else {
                  hcl.print(%c0_i32_0) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %229 = affine.load %143[0] {from = "_cur_address", unsigned} : memref<1xi16>
                  hcl.print(%229) {format = "ip=%d ", signedness = "u"} : i16
                  %230 = affine.load %201[0] : memref<1xi9>
                  hcl.print(%230) {format = "ifetch bundle=0x%x", signedness = "_"} : i9
                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                  %c16_i32 = arith.constant 16 : i32
                  %231 = arith.extsi %230 : i9 to i32
                  %232 = arith.muli %231, %c16_i32 : i32
                  %233 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                  %c16_i32_17 = arith.constant {unsigned} 16 : i32
                  affine.store %c16_i32_17, %233[0] {to = "count", unsigned} : memref<1xi32>
                  %234 = affine.load %233[0] {from = "count", unsigned} : memref<1xi32>
                  %235 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                  affine.store %232, %235[0] {to = "src_addr"} : memref<1xi32>
                  %236 = affine.load %235[0] {from = "src_addr"} : memref<1xi32>
                  %237 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %237[0] {to = "dst_addr", unsigned} : memref<1xi32>
                  %238 = affine.load %237[0] {from = "dst_addr", unsigned} : memref<1xi32>
                  %239 = arith.addi %236, %234 {unsigned} : i32
                  %240 = hcl.create_op_handle "copyN"
                  %241 = hcl.create_loop_handle %240, "i"
                  %242 = arith.index_cast %c0_i32_0 : i32 to index
                  %243 = arith.index_cast %234 : i32 to index
                  %244 = arith.index_cast %c1_i32_2 : i32 to index
                  scf.for %arg2 = %242 to %243 step %244 {
                    %246 = arith.index_cast %236 : i32 to index
                    %247 = arith.addi %246, %arg2 : index
                    %248 = memref.load %17[%247] {from = "xinstq.alloc_c", unsigned} : memref<8192xi128>
                    %249 = arith.index_cast %238 : i32 to index
                    %250 = arith.addi %249, %arg2 : index
                    memref.store %248, %51[%250] {to = "instq.alloc_c", unsigned} : memref<16xi128>
                  } {loop_name = "i", op_name = "copyN"}
                  %c5_i32 = arith.constant 5 : i32
                  %245 = arith.trunci %c5_i32 {unsigned} : i32 to i4
                  affine.store %245, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
                }
              }
            }
            affine.store %96, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
            %195 = affine.load %159[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %196 = arith.cmpi ne, %195, %c0_i32_0 : i32
            scf.if %196 {
              %200 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %200, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
              %201 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %202 = arith.extui %201 : i1 to i32
              %203 = arith.cmpi eq, %202, %c0_i32_0 : i32
            }
            %197 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
            %198 = arith.extui %197 : i1 to i32
            %199 = arith.cmpi eq, %198, %c0_i32_0 : i32
            scf.if %199 {
              %200 = affine.load %36[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
              %201 = arith.addi %200, %c1_i32_2 : i32
              affine.store %201, %36[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
              %202 = affine.load %33[0] {from = "inst_naddr", unsigned} : memref<1xi16>
              affine.store %202, %32[0] {to = "inst_addr", unsigned} : memref<1xi16>
              affine.store %96, %28[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            } else {
              %200 = affine.load %159[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %201 = arith.subi %200, %c2_i32 : i32
              affine.store %201, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
              %202 = affine.load %38[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
              %203 = arith.addi %202, %c1_i32_2 : i32
              affine.store %203, %38[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
              %204 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %204, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
              affine.store %204, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
              %205 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %206 = arith.extui %205 : i1 to i32
              %207 = arith.cmpi eq, %206, %c0_i32_0 : i32
              scf.if %207 {
              } else {
                %208 = affine.load %35[0] {from = "latstalled", unsigned} : memref<1xi1>
                %209 = arith.extui %208 : i1 to i32
                %210 = affine.load %34[0] {from = "latency_count", unsigned} : memref<1xi32>
                %211 = arith.subi %210, %c1_i32_2 : i32
                affine.store %211, %34[0] {to = "latency_count", unsigned} : memref<1xi32>
                %212 = affine.load %38[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                %213 = arith.addi %212, %c1_i32_2 : i32
                affine.store %213, %38[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                affine.store %204, %35[0] {to = "latstalled", unsigned} : memref<1xi1>
                affine.store %204, %29[0] {to = "flags_break", unsigned} : memref<1xi1>
                %214 = affine.load %27[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %215 = arith.extui %214 : i1 to i32
                %216 = arith.cmpi eq, %215, %c0_i32_0 : i32
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
        %140 = memref.alloc() {name = "addr_top", unsigned} : memref<1xi5>
        %c-16_i5 = arith.constant {unsigned} -16 : i5
        affine.store %c-16_i5, %140[0] {to = "addr_top", unsigned} : memref<1xi5>
        affine.store %96, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
        affine.store %96, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
        affine.store %96, %69[0] {to = "count_stop", unsigned} : memref<1xi1>
        affine.store %96, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
        %141 = affine.load %64[0] {from = "flags_active", unsigned} : memref<1xi1>
        %142 = arith.extui %141 : i1 to i32
        %143 = arith.cmpi ne, %142, %c0_i32_0 : i32
        %144 = affine.load %68[0] {from = "flags_break", unsigned} : memref<1xi1>
        %145 = arith.extui %144 : i1 to i32
        %146 = arith.cmpi eq, %145, %c0_i32_0 : i32
        scf.while : () -> () {
          %150 = arith.andi %143, %146 : i1
          scf.condition(%150)
        } do {
          %150 = affine.load %73[0] {from = "latency_count", unsigned} : memref<1xi32>
          %151 = arith.cmpi eq, %150, %c0_i32_0 : i32
          scf.if %151 {
            %152 = affine.load %71[0] {from = "inst_addr", unsigned} : memref<1xi5>
            %153 = memref.alloc() {name = "_cur_address", unsigned} : memref<1xi5>
            affine.store %152, %153[0] {to = "_cur_address", unsigned} : memref<1xi5>
            %c1_i32_2 = arith.constant 1 : i32
            %154 = arith.extui %152 : i5 to i32
            %155 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi5>
            affine.store %152, %155[0] {to = "read_addr", unsigned} : memref<1xi5>
            %156 = affine.load %155[0] {from = "read_addr", unsigned} : memref<1xi5>
            %157 = arith.extui %156 : i5 to i32
            %158 = arith.addi %157, %c1_i32_2 : i32
            %c16_i32 = arith.constant 16 : i32
            %159 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi128>
            %160 = hcl.create_op_handle "Mem.read_c"
            %161 = hcl.create_loop_handle %160, "i"
            %162 = affine.load %155[0] {from = "read_addr", unsigned} : memref<1xi5>
            %163 = arith.index_cast %162 : i5 to index
            %164 = arith.addi %163, %c0 : index
            %165 = memref.load %51[%164] {from = "instq.alloc_c", unsigned} : memref<16xi128>
            affine.store %165, %159[%c0] {to = "Mem.read_c"} : memref<1xi128>
            %166 = affine.load %159[0] {from = "Mem.read_c", unsigned} : memref<1xi128>
            %167 = memref.alloc() {name = "inst", unsigned} : memref<1xi128>
            affine.store %166, %167[0] {to = "inst", unsigned} : memref<1xi128>
            %168 = affine.load %167[0] {from = "inst", unsigned} : memref<1xi128>
            %169 = memref.alloc() {name = "inst_lat", unsigned} : memref<1xi32>
            affine.store %c0_i32, %169[0] {to = "inst_lat", unsigned} : memref<1xi32>
            %170 = memref.alloc() {name = "decode_inst", unsigned} : memref<1xi128>
            affine.store %168, %170[0] {to = "decode_inst", unsigned} : memref<1xi128>
            %171 = memref.alloc() {name = "inst_id", unsigned} : memref<1xi16>
            affine.store %c0_i16, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
            %172 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
            %173 = memref.alloc() : memref<1xi6>
            %174 = memref.alloc() : memref<1xi1>
            %175 = memref.alloc() : memref<1xi9>
            %176 = memref.alloc() : memref<1xi9>
            %177 = memref.alloc() : memref<1xi9>
            %178 = memref.alloc() : memref<1xi62>
            %179 = memref.alloc() : memref<1xi32>
            %c5 = arith.constant 5 : index
            %c0_3 = arith.constant 0 : index
            %180 = hcl.get_slice(%172 : i128, %c5, %c0_3) -> i6
            %c6 = arith.constant 6 : index
            %c6_4 = arith.constant 6 : index
            %181 = hcl.get_slice(%172 : i128, %c6, %c6_4) -> i1
            %c15 = arith.constant 15 : index
            %c7 = arith.constant 7 : index
            %182 = hcl.get_slice(%172 : i128, %c15, %c7) -> i9
            %c24 = arith.constant 24 : index
            %c16 = arith.constant 16 : index
            %183 = hcl.get_slice(%172 : i128, %c24, %c16) -> i9
            %c33 = arith.constant 33 : index
            %c25 = arith.constant 25 : index
            %184 = hcl.get_slice(%172 : i128, %c33, %c25) -> i9
            %c95 = arith.constant 95 : index
            %c34 = arith.constant 34 : index
            %185 = hcl.get_slice(%172 : i128, %c95, %c34) -> i62
            %c127 = arith.constant 127 : index
            %c96 = arith.constant 96 : index
            %186 = hcl.get_slice(%172 : i128, %c127, %c96) -> i32
            affine.store %180, %173[0] : memref<1xi6>
            affine.store %181, %174[0] : memref<1xi1>
            affine.store %182, %175[0] : memref<1xi9>
            affine.store %183, %176[0] : memref<1xi9>
            affine.store %184, %177[0] : memref<1xi9>
            affine.store %185, %178[0] : memref<1xi62>
            affine.store %186, %179[0] : memref<1xi32>
            %187 = affine.load %173[0] : memref<1xi6>
            %c4_i32 = arith.constant 4 : i32
            %188 = arith.extsi %187 : i6 to i32
            %189 = arith.cmpi eq, %188, %c4_i32 : i32
            scf.if %189 {
              affine.store %97, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
            } else {
              %199 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
              %200 = memref.alloc() : memref<1xi6>
              %201 = memref.alloc() : memref<1xi1>
              %202 = memref.alloc() : memref<1xi9>
              %203 = memref.alloc() : memref<1xi9>
              %204 = memref.alloc() : memref<1xi9>
              %205 = memref.alloc() : memref<1xi62>
              %206 = memref.alloc() : memref<1xi32>
              %c5_5 = arith.constant 5 : index
              %c0_6 = arith.constant 0 : index
              %207 = hcl.get_slice(%199 : i128, %c5_5, %c0_6) -> i6
              %c6_7 = arith.constant 6 : index
              %c6_8 = arith.constant 6 : index
              %208 = hcl.get_slice(%199 : i128, %c6_7, %c6_8) -> i1
              %c15_9 = arith.constant 15 : index
              %c7_10 = arith.constant 7 : index
              %209 = hcl.get_slice(%199 : i128, %c15_9, %c7_10) -> i9
              %c24_11 = arith.constant 24 : index
              %c16_12 = arith.constant 16 : index
              %210 = hcl.get_slice(%199 : i128, %c24_11, %c16_12) -> i9
              %c33_13 = arith.constant 33 : index
              %c25_14 = arith.constant 25 : index
              %211 = hcl.get_slice(%199 : i128, %c33_13, %c25_14) -> i9
              %c95_15 = arith.constant 95 : index
              %c34_16 = arith.constant 34 : index
              %212 = hcl.get_slice(%199 : i128, %c95_15, %c34_16) -> i62
              %c127_17 = arith.constant 127 : index
              %c96_18 = arith.constant 96 : index
              %213 = hcl.get_slice(%199 : i128, %c127_17, %c96_18) -> i32
              affine.store %207, %200[0] : memref<1xi6>
              affine.store %208, %201[0] : memref<1xi1>
              affine.store %209, %202[0] : memref<1xi9>
              affine.store %210, %203[0] : memref<1xi9>
              affine.store %211, %204[0] : memref<1xi9>
              affine.store %212, %205[0] : memref<1xi62>
              affine.store %213, %206[0] : memref<1xi32>
              %214 = affine.load %200[0] : memref<1xi6>
              %c5_i32 = arith.constant 5 : i32
              %215 = arith.extsi %214 : i6 to i32
              %216 = arith.cmpi eq, %215, %c5_i32 : i32
              scf.if %216 {
                %217 = arith.trunci %c1_i32_2 {unsigned} : i32 to i16
                affine.store %217, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
              } else {
                %217 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                %218 = memref.alloc() : memref<1xi6>
                %219 = memref.alloc() : memref<1xi1>
                %220 = memref.alloc() : memref<1xi9>
                %221 = memref.alloc() : memref<1xi9>
                %222 = memref.alloc() : memref<1xi39>
                %223 = memref.alloc() : memref<1xi32>
                %224 = memref.alloc() : memref<1xi32>
                %c5_19 = arith.constant 5 : index
                %c0_20 = arith.constant 0 : index
                %225 = hcl.get_slice(%217 : i128, %c5_19, %c0_20) -> i6
                %c6_21 = arith.constant 6 : index
                %c6_22 = arith.constant 6 : index
                %226 = hcl.get_slice(%217 : i128, %c6_21, %c6_22) -> i1
                %c15_23 = arith.constant 15 : index
                %c7_24 = arith.constant 7 : index
                %227 = hcl.get_slice(%217 : i128, %c15_23, %c7_24) -> i9
                %c24_25 = arith.constant 24 : index
                %c16_26 = arith.constant 16 : index
                %228 = hcl.get_slice(%217 : i128, %c24_25, %c16_26) -> i9
                %c63 = arith.constant 63 : index
                %c25_27 = arith.constant 25 : index
                %229 = hcl.get_slice(%217 : i128, %c63, %c25_27) -> i39
                %c95_28 = arith.constant 95 : index
                %c64 = arith.constant 64 : index
                %230 = hcl.get_slice(%217 : i128, %c95_28, %c64) -> i32
                %c127_29 = arith.constant 127 : index
                %c96_30 = arith.constant 96 : index
                %231 = hcl.get_slice(%217 : i128, %c127_29, %c96_30) -> i32
                affine.store %225, %218[0] : memref<1xi6>
                affine.store %226, %219[0] : memref<1xi1>
                affine.store %227, %220[0] : memref<1xi9>
                affine.store %228, %221[0] : memref<1xi9>
                affine.store %229, %222[0] : memref<1xi39>
                affine.store %230, %223[0] : memref<1xi32>
                affine.store %231, %224[0] : memref<1xi32>
                %232 = affine.load %218[0] : memref<1xi6>
                %c21_i32 = arith.constant 21 : i32
                %233 = arith.extsi %232 : i6 to i32
                %234 = arith.cmpi eq, %233, %c21_i32 : i32
                scf.if %234 {
                  %c2_i32 = arith.constant 2 : i32
                  %235 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                  affine.store %235, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                } else {
                  %235 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                  %236 = memref.alloc() : memref<1xi6>
                  %237 = memref.alloc() : memref<1xi9>
                  %238 = memref.alloc() : memref<1xi9>
                  %239 = memref.alloc() : memref<1xi9>
                  %240 = memref.alloc() : memref<1xi9>
                  %241 = memref.alloc() : memref<1xi54>
                  %242 = memref.alloc() : memref<1xi32>
                  %c5_31 = arith.constant 5 : index
                  %c0_32 = arith.constant 0 : index
                  %243 = hcl.get_slice(%235 : i128, %c5_31, %c0_32) -> i6
                  %c14 = arith.constant 14 : index
                  %c6_33 = arith.constant 6 : index
                  %244 = hcl.get_slice(%235 : i128, %c14, %c6_33) -> i9
                  %c23 = arith.constant 23 : index
                  %c15_34 = arith.constant 15 : index
                  %245 = hcl.get_slice(%235 : i128, %c23, %c15_34) -> i9
                  %c32 = arith.constant 32 : index
                  %c24_35 = arith.constant 24 : index
                  %246 = hcl.get_slice(%235 : i128, %c32, %c24_35) -> i9
                  %c41 = arith.constant 41 : index
                  %c33_36 = arith.constant 33 : index
                  %247 = hcl.get_slice(%235 : i128, %c41, %c33_36) -> i9
                  %c95_37 = arith.constant 95 : index
                  %c42 = arith.constant 42 : index
                  %248 = hcl.get_slice(%235 : i128, %c95_37, %c42) -> i54
                  %c127_38 = arith.constant 127 : index
                  %c96_39 = arith.constant 96 : index
                  %249 = hcl.get_slice(%235 : i128, %c127_38, %c96_39) -> i32
                  affine.store %243, %236[0] : memref<1xi6>
                  affine.store %244, %237[0] : memref<1xi9>
                  affine.store %245, %238[0] : memref<1xi9>
                  affine.store %246, %239[0] : memref<1xi9>
                  affine.store %247, %240[0] : memref<1xi9>
                  affine.store %248, %241[0] : memref<1xi54>
                  affine.store %249, %242[0] : memref<1xi32>
                  %250 = affine.load %236[0] : memref<1xi6>
                  %c6_i32 = arith.constant 6 : i32
                  %251 = arith.extsi %250 : i6 to i32
                  %252 = arith.cmpi eq, %251, %c6_i32 : i32
                  scf.if %252 {
                    %c3_i32 = arith.constant 3 : i32
                    %253 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                    affine.store %253, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                  } else {
                    %253 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                    %254 = memref.alloc() : memref<1xi6>
                    %255 = memref.alloc() : memref<1xi9>
                    %256 = memref.alloc() : memref<1xi9>
                    %257 = memref.alloc() : memref<1xi9>
                    %258 = memref.alloc() : memref<1xi31>
                    %259 = memref.alloc() : memref<1xi32>
                    %260 = memref.alloc() : memref<1xi32>
                    %c5_40 = arith.constant 5 : index
                    %c0_41 = arith.constant 0 : index
                    %261 = hcl.get_slice(%253 : i128, %c5_40, %c0_41) -> i6
                    %c14_42 = arith.constant 14 : index
                    %c6_43 = arith.constant 6 : index
                    %262 = hcl.get_slice(%253 : i128, %c14_42, %c6_43) -> i9
                    %c23_44 = arith.constant 23 : index
                    %c15_45 = arith.constant 15 : index
                    %263 = hcl.get_slice(%253 : i128, %c23_44, %c15_45) -> i9
                    %c32_46 = arith.constant 32 : index
                    %c24_47 = arith.constant 24 : index
                    %264 = hcl.get_slice(%253 : i128, %c32_46, %c24_47) -> i9
                    %c63_48 = arith.constant 63 : index
                    %c33_49 = arith.constant 33 : index
                    %265 = hcl.get_slice(%253 : i128, %c63_48, %c33_49) -> i31
                    %c95_50 = arith.constant 95 : index
                    %c64_51 = arith.constant 64 : index
                    %266 = hcl.get_slice(%253 : i128, %c95_50, %c64_51) -> i32
                    %c127_52 = arith.constant 127 : index
                    %c96_53 = arith.constant 96 : index
                    %267 = hcl.get_slice(%253 : i128, %c127_52, %c96_53) -> i32
                    affine.store %261, %254[0] : memref<1xi6>
                    affine.store %262, %255[0] : memref<1xi9>
                    affine.store %263, %256[0] : memref<1xi9>
                    affine.store %264, %257[0] : memref<1xi9>
                    affine.store %265, %258[0] : memref<1xi31>
                    affine.store %266, %259[0] : memref<1xi32>
                    affine.store %267, %260[0] : memref<1xi32>
                    %268 = affine.load %254[0] : memref<1xi6>
                    %c22_i32 = arith.constant 22 : i32
                    %269 = arith.extsi %268 : i6 to i32
                    %270 = arith.cmpi eq, %269, %c22_i32 : i32
                    scf.if %270 {
                      %271 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                      affine.store %271, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                    } else {
                      %271 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                      %272 = memref.alloc() : memref<1xi6>
                      %273 = memref.alloc() : memref<1xi9>
                      %274 = memref.alloc() : memref<1xi9>
                      %275 = memref.alloc() : memref<1xi9>
                      %276 = memref.alloc() : memref<1xi9>
                      %277 = memref.alloc() : memref<1xi11>
                      %278 = memref.alloc() : memref<1xi43>
                      %279 = memref.alloc() : memref<1xi32>
                      %c5_54 = arith.constant 5 : index
                      %c0_55 = arith.constant 0 : index
                      %280 = hcl.get_slice(%271 : i128, %c5_54, %c0_55) -> i6
                      %c14_56 = arith.constant 14 : index
                      %c6_57 = arith.constant 6 : index
                      %281 = hcl.get_slice(%271 : i128, %c14_56, %c6_57) -> i9
                      %c23_58 = arith.constant 23 : index
                      %c15_59 = arith.constant 15 : index
                      %282 = hcl.get_slice(%271 : i128, %c23_58, %c15_59) -> i9
                      %c32_60 = arith.constant 32 : index
                      %c24_61 = arith.constant 24 : index
                      %283 = hcl.get_slice(%271 : i128, %c32_60, %c24_61) -> i9
                      %c41_62 = arith.constant 41 : index
                      %c33_63 = arith.constant 33 : index
                      %284 = hcl.get_slice(%271 : i128, %c41_62, %c33_63) -> i9
                      %c52 = arith.constant 52 : index
                      %c42_64 = arith.constant 42 : index
                      %285 = hcl.get_slice(%271 : i128, %c52, %c42_64) -> i11
                      %c95_65 = arith.constant 95 : index
                      %c53 = arith.constant 53 : index
                      %286 = hcl.get_slice(%271 : i128, %c95_65, %c53) -> i43
                      %c127_66 = arith.constant 127 : index
                      %c96_67 = arith.constant 96 : index
                      %287 = hcl.get_slice(%271 : i128, %c127_66, %c96_67) -> i32
                      affine.store %280, %272[0] : memref<1xi6>
                      affine.store %281, %273[0] : memref<1xi9>
                      affine.store %282, %274[0] : memref<1xi9>
                      affine.store %283, %275[0] : memref<1xi9>
                      affine.store %284, %276[0] : memref<1xi9>
                      affine.store %285, %277[0] : memref<1xi11>
                      affine.store %286, %278[0] : memref<1xi43>
                      affine.store %287, %279[0] : memref<1xi32>
                      %288 = affine.load %272[0] : memref<1xi6>
                      %c7_i32 = arith.constant 7 : i32
                      %289 = arith.extsi %288 : i6 to i32
                      %290 = arith.cmpi eq, %289, %c7_i32 : i32
                      scf.if %290 {
                        %291 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                        affine.store %291, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                      } else {
                        %291 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                        %292 = memref.alloc() : memref<1xi6>
                        %293 = memref.alloc() : memref<1xi9>
                        %294 = memref.alloc() : memref<1xi9>
                        %295 = memref.alloc() : memref<1xi9>
                        %296 = memref.alloc() : memref<1xi9>
                        %297 = memref.alloc() : memref<1xi11>
                        %298 = memref.alloc() : memref<1xi43>
                        %299 = memref.alloc() : memref<1xi32>
                        %c5_68 = arith.constant 5 : index
                        %c0_69 = arith.constant 0 : index
                        %300 = hcl.get_slice(%291 : i128, %c5_68, %c0_69) -> i6
                        %c14_70 = arith.constant 14 : index
                        %c6_71 = arith.constant 6 : index
                        %301 = hcl.get_slice(%291 : i128, %c14_70, %c6_71) -> i9
                        %c23_72 = arith.constant 23 : index
                        %c15_73 = arith.constant 15 : index
                        %302 = hcl.get_slice(%291 : i128, %c23_72, %c15_73) -> i9
                        %c32_74 = arith.constant 32 : index
                        %c24_75 = arith.constant 24 : index
                        %303 = hcl.get_slice(%291 : i128, %c32_74, %c24_75) -> i9
                        %c41_76 = arith.constant 41 : index
                        %c33_77 = arith.constant 33 : index
                        %304 = hcl.get_slice(%291 : i128, %c41_76, %c33_77) -> i9
                        %c52_78 = arith.constant 52 : index
                        %c42_79 = arith.constant 42 : index
                        %305 = hcl.get_slice(%291 : i128, %c52_78, %c42_79) -> i11
                        %c95_80 = arith.constant 95 : index
                        %c53_81 = arith.constant 53 : index
                        %306 = hcl.get_slice(%291 : i128, %c95_80, %c53_81) -> i43
                        %c127_82 = arith.constant 127 : index
                        %c96_83 = arith.constant 96 : index
                        %307 = hcl.get_slice(%291 : i128, %c127_82, %c96_83) -> i32
                        affine.store %300, %292[0] : memref<1xi6>
                        affine.store %301, %293[0] : memref<1xi9>
                        affine.store %302, %294[0] : memref<1xi9>
                        affine.store %303, %295[0] : memref<1xi9>
                        affine.store %304, %296[0] : memref<1xi9>
                        affine.store %305, %297[0] : memref<1xi11>
                        affine.store %306, %298[0] : memref<1xi43>
                        affine.store %307, %299[0] : memref<1xi32>
                        %308 = affine.load %292[0] : memref<1xi6>
                        %c15_i32 = arith.constant 15 : i32
                        %309 = arith.extsi %308 : i6 to i32
                        %310 = arith.cmpi eq, %309, %c15_i32 : i32
                        scf.if %310 {
                          %311 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                          affine.store %311, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                        } else {
                          %311 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                          %312 = memref.alloc() : memref<1xi6>
                          %313 = memref.alloc() : memref<1xi1>
                          %314 = memref.alloc() : memref<1xi9>
                          %315 = memref.alloc() : memref<1xi9>
                          %316 = memref.alloc() : memref<1xi9>
                          %317 = memref.alloc() : memref<1xi62>
                          %318 = memref.alloc() : memref<1xi32>
                          %c5_84 = arith.constant 5 : index
                          %c0_85 = arith.constant 0 : index
                          %319 = hcl.get_slice(%311 : i128, %c5_84, %c0_85) -> i6
                          %c6_86 = arith.constant 6 : index
                          %c6_87 = arith.constant 6 : index
                          %320 = hcl.get_slice(%311 : i128, %c6_86, %c6_87) -> i1
                          %c15_88 = arith.constant 15 : index
                          %c7_89 = arith.constant 7 : index
                          %321 = hcl.get_slice(%311 : i128, %c15_88, %c7_89) -> i9
                          %c24_90 = arith.constant 24 : index
                          %c16_91 = arith.constant 16 : index
                          %322 = hcl.get_slice(%311 : i128, %c24_90, %c16_91) -> i9
                          %c33_92 = arith.constant 33 : index
                          %c25_93 = arith.constant 25 : index
                          %323 = hcl.get_slice(%311 : i128, %c33_92, %c25_93) -> i9
                          %c95_94 = arith.constant 95 : index
                          %c34_95 = arith.constant 34 : index
                          %324 = hcl.get_slice(%311 : i128, %c95_94, %c34_95) -> i62
                          %c127_96 = arith.constant 127 : index
                          %c96_97 = arith.constant 96 : index
                          %325 = hcl.get_slice(%311 : i128, %c127_96, %c96_97) -> i32
                          affine.store %319, %312[0] : memref<1xi6>
                          affine.store %320, %313[0] : memref<1xi1>
                          affine.store %321, %314[0] : memref<1xi9>
                          affine.store %322, %315[0] : memref<1xi9>
                          affine.store %323, %316[0] : memref<1xi9>
                          affine.store %324, %317[0] : memref<1xi62>
                          affine.store %325, %318[0] : memref<1xi32>
                          %326 = affine.load %312[0] : memref<1xi6>
                          %327 = arith.extsi %326 : i6 to i32
                          %328 = arith.cmpi eq, %327, %c4_i32 : i32
                          scf.if %328 {
                            %329 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                            affine.store %329, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                          } else {
                            %329 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                            %330 = memref.alloc() : memref<1xi6>
                            %331 = memref.alloc() : memref<1xi7>
                            %332 = memref.alloc() : memref<1xi115>
                            %c5_98 = arith.constant 5 : index
                            %c0_99 = arith.constant 0 : index
                            %333 = hcl.get_slice(%329 : i128, %c5_98, %c0_99) -> i6
                            %c12 = arith.constant 12 : index
                            %c6_100 = arith.constant 6 : index
                            %334 = hcl.get_slice(%329 : i128, %c12, %c6_100) -> i7
                            %c127_101 = arith.constant 127 : index
                            %c13 = arith.constant 13 : index
                            %335 = hcl.get_slice(%329 : i128, %c127_101, %c13) -> i115
                            affine.store %333, %330[0] : memref<1xi6>
                            affine.store %334, %331[0] : memref<1xi7>
                            affine.store %335, %332[0] : memref<1xi115>
                            %336 = affine.load %330[0] : memref<1xi6>
                            %337 = arith.extsi %336 : i6 to i32
                            %338 = arith.cmpi eq, %337, %c0_i32_0 : i32
                            scf.if %338 {
                              %c8_i32 = arith.constant 8 : i32
                              %339 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                              affine.store %339, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                            } else {
                              %339 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                              %340 = memref.alloc() : memref<1xi6>
                              %341 = memref.alloc() : memref<1xi1>
                              %342 = memref.alloc() : memref<1xi9>
                              %343 = memref.alloc() : memref<1xi112>
                              %c5_102 = arith.constant 5 : index
                              %c0_103 = arith.constant 0 : index
                              %344 = hcl.get_slice(%339 : i128, %c5_102, %c0_103) -> i6
                              %c6_104 = arith.constant 6 : index
                              %c6_105 = arith.constant 6 : index
                              %345 = hcl.get_slice(%339 : i128, %c6_104, %c6_105) -> i1
                              %c15_106 = arith.constant 15 : index
                              %c7_107 = arith.constant 7 : index
                              %346 = hcl.get_slice(%339 : i128, %c15_106, %c7_107) -> i9
                              %c127_108 = arith.constant 127 : index
                              %c16_109 = arith.constant 16 : index
                              %347 = hcl.get_slice(%339 : i128, %c127_108, %c16_109) -> i112
                              affine.store %344, %340[0] : memref<1xi6>
                              affine.store %345, %341[0] : memref<1xi1>
                              affine.store %346, %342[0] : memref<1xi9>
                              affine.store %347, %343[0] : memref<1xi112>
                              %348 = affine.load %340[0] : memref<1xi6>
                              %c9_i32 = arith.constant 9 : i32
                              %349 = arith.extsi %348 : i6 to i32
                              %350 = arith.cmpi eq, %349, %c9_i32 : i32
                              scf.if %350 {
                                %351 = arith.trunci %c9_i32 {unsigned} : i32 to i16
                                affine.store %351, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                              } else {
                                %351 = affine.load %170[0] {from = "decode_inst", unsigned} : memref<1xi128>
                                %352 = memref.alloc() : memref<1xi6>
                                %353 = memref.alloc() : memref<1xi1>
                                %354 = memref.alloc() : memref<1xi9>
                                %355 = memref.alloc() : memref<1xi9>
                                %356 = memref.alloc() : memref<1xi103>
                                %c5_110 = arith.constant 5 : index
                                %c0_111 = arith.constant 0 : index
                                %357 = hcl.get_slice(%351 : i128, %c5_110, %c0_111) -> i6
                                %c6_112 = arith.constant 6 : index
                                %c6_113 = arith.constant 6 : index
                                %358 = hcl.get_slice(%351 : i128, %c6_112, %c6_113) -> i1
                                %c15_114 = arith.constant 15 : index
                                %c7_115 = arith.constant 7 : index
                                %359 = hcl.get_slice(%351 : i128, %c15_114, %c7_115) -> i9
                                %c24_116 = arith.constant 24 : index
                                %c16_117 = arith.constant 16 : index
                                %360 = hcl.get_slice(%351 : i128, %c24_116, %c16_117) -> i9
                                %c127_118 = arith.constant 127 : index
                                %c25_119 = arith.constant 25 : index
                                %361 = hcl.get_slice(%351 : i128, %c127_118, %c25_119) -> i103
                                affine.store %357, %352[0] : memref<1xi6>
                                affine.store %358, %353[0] : memref<1xi1>
                                affine.store %359, %354[0] : memref<1xi9>
                                affine.store %360, %355[0] : memref<1xi9>
                                affine.store %361, %356[0] : memref<1xi103>
                                %362 = affine.load %352[0] : memref<1xi6>
                                %c10_i32 = arith.constant 10 : i32
                                %363 = arith.extsi %362 : i6 to i32
                                %364 = arith.cmpi eq, %363, %c10_i32 : i32
                                scf.if %364 {
                                  %365 = arith.trunci %c10_i32 {unsigned} : i32 to i16
                                  affine.store %365, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
                                } else {
                                  %c11_i32 = arith.constant 11 : i32
                                  %365 = arith.trunci %c11_i32 {unsigned} : i32 to i16
                                  affine.store %365, %171[0] {to = "inst_id", unsigned} : memref<1xi16>
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
            %190 = memref.alloc() {name = "tmp", unsigned} : memref<1xi1>
            affine.store %false, %190[0] {to = "tmp", unsigned} : memref<1xi1>
            %191 = affine.load %169[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %192 = arith.cmpi sle, %191, %c1_i32_2 : i32
            scf.if %192 {
              %199 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %199, %190[0] {to = "tmp", unsigned} : memref<1xi1>
            }
            %193 = affine.load %74[0] {from = "latstalled", unsigned} : memref<1xi1>
            %194 = arith.extui %193 : i1 to i32
            %195 = arith.cmpi eq, %194, %c1_i32_2 : i32
            scf.if %195 {
              %199 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
              affine.store %199, %190[0] {to = "tmp", unsigned} : memref<1xi1>
            }
            %196 = affine.load %190[0] {from = "tmp", unsigned} : memref<1xi1>
            %197 = arith.extui %196 : i1 to i32
            %198 = arith.cmpi ne, %197, %c0_i32_0 : i32
            scf.if %198 {
              %199 = memref.alloc() {name = "execute_inst", unsigned} : memref<1xi128>
              affine.store %168, %199[0] {to = "execute_inst", unsigned} : memref<1xi128>
              %200 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
              %201 = arith.extui %200 : i16 to i32
              %202 = arith.cmpi eq, %201, %c0_i32_0 : i32
              scf.if %202 {
                %211 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                %212 = memref.alloc() : memref<1xi6>
                %213 = memref.alloc() : memref<1xi1>
                %214 = memref.alloc() : memref<1xi9>
                %215 = memref.alloc() : memref<1xi9>
                %216 = memref.alloc() : memref<1xi9>
                %217 = memref.alloc() : memref<1xi62>
                %218 = memref.alloc() : memref<1xi32>
                %c5_5 = arith.constant 5 : index
                %c0_6 = arith.constant 0 : index
                %219 = hcl.get_slice(%211 : i128, %c5_5, %c0_6) -> i6
                %c6_7 = arith.constant 6 : index
                %c6_8 = arith.constant 6 : index
                %220 = hcl.get_slice(%211 : i128, %c6_7, %c6_8) -> i1
                %c15_9 = arith.constant 15 : index
                %c7_10 = arith.constant 7 : index
                %221 = hcl.get_slice(%211 : i128, %c15_9, %c7_10) -> i9
                %c24_11 = arith.constant 24 : index
                %c16_12 = arith.constant 16 : index
                %222 = hcl.get_slice(%211 : i128, %c24_11, %c16_12) -> i9
                %c33_13 = arith.constant 33 : index
                %c25_14 = arith.constant 25 : index
                %223 = hcl.get_slice(%211 : i128, %c33_13, %c25_14) -> i9
                %c95_15 = arith.constant 95 : index
                %c34_16 = arith.constant 34 : index
                %224 = hcl.get_slice(%211 : i128, %c95_15, %c34_16) -> i62
                %c127_17 = arith.constant 127 : index
                %c96_18 = arith.constant 96 : index
                %225 = hcl.get_slice(%211 : i128, %c127_17, %c96_18) -> i32
                affine.store %219, %212[0] : memref<1xi6>
                affine.store %220, %213[0] : memref<1xi1>
                affine.store %221, %214[0] : memref<1xi9>
                affine.store %222, %215[0] : memref<1xi9>
                affine.store %223, %216[0] : memref<1xi9>
                affine.store %224, %217[0] : memref<1xi62>
                affine.store %225, %218[0] : memref<1xi32>
                hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                %226 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                hcl.print(%226) {format = "ip=%d ", signedness = "u"} : i5
                %227 = affine.load %213[0] : memref<1xi1>
                %228 = affine.load %214[0] : memref<1xi9>
                %229 = affine.load %215[0] : memref<1xi9>
                %230 = affine.load %216[0] : memref<1xi9>
                %231 = affine.load %218[0] : memref<1xi32>
                hcl.print(%227, %228, %229, %230, %231) {format = "padd dbg=0x%x res=0x%x a=0x%x b=0x%x q=0x%x", signedness = "_____"} : i1, i9, i9, i9, i32
                hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                %232 = memref.alloc() : memref<1xi7>
                %233 = memref.alloc() : memref<1xi2>
                %c6_19 = arith.constant 6 : index
                %c0_20 = arith.constant 0 : index
                %234 = hcl.get_slice(%229 : i9, %c6_19, %c0_20) -> i7
                %c8 = arith.constant 8 : index
                %c7_21 = arith.constant 7 : index
                %235 = hcl.get_slice(%229 : i9, %c8, %c7_21) -> i2
                affine.store %234, %232[0] : memref<1xi7>
                affine.store %235, %233[0] : memref<1xi2>
                %236 = memref.alloc() : memref<1xi7>
                %237 = memref.alloc() : memref<1xi2>
                %c6_22 = arith.constant 6 : index
                %c0_23 = arith.constant 0 : index
                %238 = hcl.get_slice(%230 : i9, %c6_22, %c0_23) -> i7
                %c8_24 = arith.constant 8 : index
                %c7_25 = arith.constant 7 : index
                %239 = hcl.get_slice(%230 : i9, %c8_24, %c7_25) -> i2
                affine.store %238, %236[0] : memref<1xi7>
                affine.store %239, %237[0] : memref<1xi2>
                %240 = memref.alloc() : memref<1xi7>
                %241 = memref.alloc() : memref<1xi2>
                %c6_26 = arith.constant 6 : index
                %c0_27 = arith.constant 0 : index
                %242 = hcl.get_slice(%228 : i9, %c6_26, %c0_27) -> i7
                %c8_28 = arith.constant 8 : index
                %c7_29 = arith.constant 7 : index
                %243 = hcl.get_slice(%228 : i9, %c8_28, %c7_29) -> i2
                affine.store %242, %240[0] : memref<1xi7>
                affine.store %243, %241[0] : memref<1xi2>
                %244 = affine.load %241[0] : memref<1xi2>
                %245 = affine.load %240[0] : memref<1xi7>
                %246 = memref.alloc() : memref<1xi7>
                %247 = memref.alloc() : memref<1xi2>
                %c6_30 = arith.constant 6 : index
                %c0_31 = arith.constant 0 : index
                %248 = hcl.get_slice(%229 : i9, %c6_30, %c0_31) -> i7
                %c8_32 = arith.constant 8 : index
                %c7_33 = arith.constant 7 : index
                %249 = hcl.get_slice(%229 : i9, %c8_32, %c7_33) -> i2
                affine.store %248, %246[0] : memref<1xi7>
                affine.store %249, %247[0] : memref<1xi2>
                %250 = affine.load %247[0] : memref<1xi2>
                %251 = affine.load %246[0] : memref<1xi7>
                %252 = memref.alloc() : memref<1xi7>
                %253 = memref.alloc() : memref<1xi2>
                %c6_34 = arith.constant 6 : index
                %c0_35 = arith.constant 0 : index
                %254 = hcl.get_slice(%230 : i9, %c6_34, %c0_35) -> i7
                %c8_36 = arith.constant 8 : index
                %c7_37 = arith.constant 7 : index
                %255 = hcl.get_slice(%230 : i9, %c8_36, %c7_37) -> i2
                affine.store %254, %252[0] : memref<1xi7>
                affine.store %255, %253[0] : memref<1xi2>
                %256 = affine.load %253[0] : memref<1xi2>
                %257 = affine.load %252[0] : memref<1xi7>
                %258 = hcl.create_op_handle "bflyfn"
                %259 = hcl.create_loop_handle %258, "i"
                affine.for %arg2 = 0 to 8192 {
                  %260 = arith.index_cast %250 : i2 to index
                  %261 = arith.index_cast %251 : i7 to index
                  %262 = memref.load %39[%260, %261, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %263 = arith.index_cast %256 : i2 to index
                  %264 = arith.index_cast %257 : i7 to index
                  %265 = memref.load %39[%263, %264, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %266 = arith.addi %262, %265 {unsigned} : i32
                  %267 = arith.remsi %266, %231 : i32
                  %268 = arith.addi %231, %262 {unsigned} : i32
                  %269 = arith.subi %268, %265 {unsigned} : i32
                  %270 = arith.index_cast %244 : i2 to index
                  %271 = arith.index_cast %245 : i7 to index
                  memref.store %267, %39[%270, %271, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                } {loop_name = "i", op_name = "bflyfn"}
              } else {
                %211 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                %212 = arith.extui %211 : i16 to i32
                %213 = arith.cmpi eq, %212, %c1_i32_2 : i32
                scf.if %213 {
                  %214 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                  %215 = memref.alloc() : memref<1xi6>
                  %216 = memref.alloc() : memref<1xi1>
                  %217 = memref.alloc() : memref<1xi9>
                  %218 = memref.alloc() : memref<1xi9>
                  %219 = memref.alloc() : memref<1xi9>
                  %220 = memref.alloc() : memref<1xi62>
                  %221 = memref.alloc() : memref<1xi32>
                  %c5_5 = arith.constant 5 : index
                  %c0_6 = arith.constant 0 : index
                  %222 = hcl.get_slice(%214 : i128, %c5_5, %c0_6) -> i6
                  %c6_7 = arith.constant 6 : index
                  %c6_8 = arith.constant 6 : index
                  %223 = hcl.get_slice(%214 : i128, %c6_7, %c6_8) -> i1
                  %c15_9 = arith.constant 15 : index
                  %c7_10 = arith.constant 7 : index
                  %224 = hcl.get_slice(%214 : i128, %c15_9, %c7_10) -> i9
                  %c24_11 = arith.constant 24 : index
                  %c16_12 = arith.constant 16 : index
                  %225 = hcl.get_slice(%214 : i128, %c24_11, %c16_12) -> i9
                  %c33_13 = arith.constant 33 : index
                  %c25_14 = arith.constant 25 : index
                  %226 = hcl.get_slice(%214 : i128, %c33_13, %c25_14) -> i9
                  %c95_15 = arith.constant 95 : index
                  %c34_16 = arith.constant 34 : index
                  %227 = hcl.get_slice(%214 : i128, %c95_15, %c34_16) -> i62
                  %c127_17 = arith.constant 127 : index
                  %c96_18 = arith.constant 96 : index
                  %228 = hcl.get_slice(%214 : i128, %c127_17, %c96_18) -> i32
                  affine.store %222, %215[0] : memref<1xi6>
                  affine.store %223, %216[0] : memref<1xi1>
                  affine.store %224, %217[0] : memref<1xi9>
                  affine.store %225, %218[0] : memref<1xi9>
                  affine.store %226, %219[0] : memref<1xi9>
                  affine.store %227, %220[0] : memref<1xi62>
                  affine.store %228, %221[0] : memref<1xi32>
                  hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                  %229 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                  hcl.print(%229) {format = "ip=%d ", signedness = "u"} : i5
                  %230 = affine.load %216[0] : memref<1xi1>
                  %231 = affine.load %217[0] : memref<1xi9>
                  %232 = affine.load %218[0] : memref<1xi9>
                  %233 = affine.load %219[0] : memref<1xi9>
                  %234 = affine.load %221[0] : memref<1xi32>
                  hcl.print(%230, %231, %232, %233, %234) {format = "pmul dbg=0x%x res=0x%x w=0x%x b=0x%x q=0x%x", signedness = "_____"} : i1, i9, i9, i9, i32
                  hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                  %235 = memref.alloc() : memref<1xi7>
                  %236 = memref.alloc() : memref<1xi2>
                  %c6_19 = arith.constant 6 : index
                  %c0_20 = arith.constant 0 : index
                  %237 = hcl.get_slice(%233 : i9, %c6_19, %c0_20) -> i7
                  %c8 = arith.constant 8 : index
                  %c7_21 = arith.constant 7 : index
                  %238 = hcl.get_slice(%233 : i9, %c8, %c7_21) -> i2
                  affine.store %237, %235[0] : memref<1xi7>
                  affine.store %238, %236[0] : memref<1xi2>
                  %239 = memref.alloc() : memref<1xi7>
                  %240 = memref.alloc() : memref<1xi2>
                  %c6_22 = arith.constant 6 : index
                  %c0_23 = arith.constant 0 : index
                  %241 = hcl.get_slice(%232 : i9, %c6_22, %c0_23) -> i7
                  %c8_24 = arith.constant 8 : index
                  %c7_25 = arith.constant 7 : index
                  %242 = hcl.get_slice(%232 : i9, %c8_24, %c7_25) -> i2
                  affine.store %241, %239[0] : memref<1xi7>
                  affine.store %242, %240[0] : memref<1xi2>
                  %243 = memref.alloc() : memref<1xi7>
                  %244 = memref.alloc() : memref<1xi2>
                  %c6_26 = arith.constant 6 : index
                  %c0_27 = arith.constant 0 : index
                  %245 = hcl.get_slice(%231 : i9, %c6_26, %c0_27) -> i7
                  %c8_28 = arith.constant 8 : index
                  %c7_29 = arith.constant 7 : index
                  %246 = hcl.get_slice(%231 : i9, %c8_28, %c7_29) -> i2
                  affine.store %245, %243[0] : memref<1xi7>
                  affine.store %246, %244[0] : memref<1xi2>
                  %247 = affine.load %244[0] : memref<1xi2>
                  %248 = affine.load %243[0] : memref<1xi7>
                  %249 = memref.alloc() : memref<1xi7>
                  %250 = memref.alloc() : memref<1xi2>
                  %c6_30 = arith.constant 6 : index
                  %c0_31 = arith.constant 0 : index
                  %251 = hcl.get_slice(%232 : i9, %c6_30, %c0_31) -> i7
                  %c8_32 = arith.constant 8 : index
                  %c7_33 = arith.constant 7 : index
                  %252 = hcl.get_slice(%232 : i9, %c8_32, %c7_33) -> i2
                  affine.store %251, %249[0] : memref<1xi7>
                  affine.store %252, %250[0] : memref<1xi2>
                  %253 = affine.load %250[0] : memref<1xi2>
                  %254 = affine.load %249[0] : memref<1xi7>
                  %255 = memref.alloc() : memref<1xi7>
                  %256 = memref.alloc() : memref<1xi2>
                  %c6_34 = arith.constant 6 : index
                  %c0_35 = arith.constant 0 : index
                  %257 = hcl.get_slice(%233 : i9, %c6_34, %c0_35) -> i7
                  %c8_36 = arith.constant 8 : index
                  %c7_37 = arith.constant 7 : index
                  %258 = hcl.get_slice(%233 : i9, %c8_36, %c7_37) -> i2
                  affine.store %257, %255[0] : memref<1xi7>
                  affine.store %258, %256[0] : memref<1xi2>
                  %259 = affine.load %256[0] : memref<1xi2>
                  %260 = affine.load %255[0] : memref<1xi7>
                  %261 = hcl.create_op_handle "bflyfn"
                  %262 = hcl.create_loop_handle %261, "i"
                  affine.for %arg2 = 0 to 8192 {
                    %263 = arith.index_cast %259 : i2 to index
                    %264 = arith.index_cast %260 : i7 to index
                    %265 = memref.load %39[%263, %264, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %266 = arith.index_cast %253 : i2 to index
                    %267 = arith.index_cast %254 : i7 to index
                    %268 = memref.load %39[%266, %267, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %269 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                    affine.store %265, %269[0] {to = "b", unsigned} : memref<1xi32>
                    %270 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                    affine.store %268, %270[0] {to = "w", unsigned} : memref<1xi32>
                    %271 = memref.alloc() {name = "q"} : memref<1xi32>
                    affine.store %234, %271[0] {to = "q"} : memref<1xi32>
                    %272 = affine.load %271[0] {from = "q"} : memref<1xi32>
                    %c65535_i32 = arith.constant 65535 : i32
                    %273 = arith.andi %272, %c65535_i32 : i32
                    %274 = affine.load %270[0] {from = "w", unsigned} : memref<1xi32>
                    %275 = affine.load %269[0] {from = "b", unsigned} : memref<1xi32>
                    %276 = arith.muli %274, %275 {unsigned} : i32
                    %277 = arith.subi %c0_i32_0, %276 {unsigned} : i32
                    %278 = arith.andi %277, %c65535_i32 {unsigned} : i32
                    %279 = arith.muli %278, %272 : i32
                    %280 = arith.addi %276, %279 : i32
                    %281 = arith.shrui %280, %c16_i32 : i32
                    %282 = arith.subi %c0_i32_0, %281 : i32
                    %283 = arith.andi %282, %c65535_i32 : i32
                    %284 = arith.muli %283, %272 : i32
                    %285 = arith.addi %281, %284 : i32
                    %286 = arith.shrui %285, %c16_i32 : i32
                    %287 = arith.cmpi slt, %286, %272 : i32
                    %288 = arith.subi %286, %272 : i32
                    %289 = arith.select %287, %286, %288 : i32
                    %290 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                    affine.store %289, %290[0] {to = "mont_redc", unsigned} : memref<1xi32>
                    %291 = affine.load %290[0] {from = "mont_redc", unsigned} : memref<1xi32>
                    %292 = arith.index_cast %247 : i2 to index
                    %293 = arith.index_cast %248 : i7 to index
                    memref.store %291, %39[%292, %293, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                  } {loop_name = "i", op_name = "bflyfn"}
                } else {
                  %214 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %215 = arith.extui %214 : i16 to i32
                  %c2_i32 = arith.constant 2 : i32
                  %216 = arith.cmpi eq, %215, %c2_i32 : i32
                  scf.if %216 {
                    %217 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                    %218 = memref.alloc() : memref<1xi6>
                    %219 = memref.alloc() : memref<1xi1>
                    %220 = memref.alloc() : memref<1xi9>
                    %221 = memref.alloc() : memref<1xi9>
                    %222 = memref.alloc() : memref<1xi39>
                    %223 = memref.alloc() : memref<1xi32>
                    %224 = memref.alloc() : memref<1xi32>
                    %c5_5 = arith.constant 5 : index
                    %c0_6 = arith.constant 0 : index
                    %225 = hcl.get_slice(%217 : i128, %c5_5, %c0_6) -> i6
                    %c6_7 = arith.constant 6 : index
                    %c6_8 = arith.constant 6 : index
                    %226 = hcl.get_slice(%217 : i128, %c6_7, %c6_8) -> i1
                    %c15_9 = arith.constant 15 : index
                    %c7_10 = arith.constant 7 : index
                    %227 = hcl.get_slice(%217 : i128, %c15_9, %c7_10) -> i9
                    %c24_11 = arith.constant 24 : index
                    %c16_12 = arith.constant 16 : index
                    %228 = hcl.get_slice(%217 : i128, %c24_11, %c16_12) -> i9
                    %c63 = arith.constant 63 : index
                    %c25_13 = arith.constant 25 : index
                    %229 = hcl.get_slice(%217 : i128, %c63, %c25_13) -> i39
                    %c95_14 = arith.constant 95 : index
                    %c64 = arith.constant 64 : index
                    %230 = hcl.get_slice(%217 : i128, %c95_14, %c64) -> i32
                    %c127_15 = arith.constant 127 : index
                    %c96_16 = arith.constant 96 : index
                    %231 = hcl.get_slice(%217 : i128, %c127_15, %c96_16) -> i32
                    affine.store %225, %218[0] : memref<1xi6>
                    affine.store %226, %219[0] : memref<1xi1>
                    affine.store %227, %220[0] : memref<1xi9>
                    affine.store %228, %221[0] : memref<1xi9>
                    affine.store %229, %222[0] : memref<1xi39>
                    affine.store %230, %223[0] : memref<1xi32>
                    affine.store %231, %224[0] : memref<1xi32>
                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                    %232 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                    hcl.print(%232) {format = "ip=%d ", signedness = "u"} : i5
                    %233 = affine.load %220[0] : memref<1xi9>
                    %234 = affine.load %221[0] : memref<1xi9>
                    %235 = affine.load %223[0] : memref<1xi32>
                    %236 = affine.load %224[0] : memref<1xi32>
                    hcl.print(%233, %234, %235, %236) {format = "pmuli res=0x%x w=0x%x imm=0x%x q=0x%x", signedness = "____"} : i9, i9, i32, i32
                    hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                    %237 = memref.alloc() : memref<1xi7>
                    %238 = memref.alloc() : memref<1xi2>
                    %c6_17 = arith.constant 6 : index
                    %c0_18 = arith.constant 0 : index
                    %239 = hcl.get_slice(%233 : i9, %c6_17, %c0_18) -> i7
                    %c8 = arith.constant 8 : index
                    %c7_19 = arith.constant 7 : index
                    %240 = hcl.get_slice(%233 : i9, %c8, %c7_19) -> i2
                    affine.store %239, %237[0] : memref<1xi7>
                    affine.store %240, %238[0] : memref<1xi2>
                    %241 = affine.load %238[0] : memref<1xi2>
                    %242 = affine.load %237[0] : memref<1xi7>
                    %243 = memref.alloc() : memref<1xi7>
                    %244 = memref.alloc() : memref<1xi2>
                    %c6_20 = arith.constant 6 : index
                    %c0_21 = arith.constant 0 : index
                    %245 = hcl.get_slice(%234 : i9, %c6_20, %c0_21) -> i7
                    %c8_22 = arith.constant 8 : index
                    %c7_23 = arith.constant 7 : index
                    %246 = hcl.get_slice(%234 : i9, %c8_22, %c7_23) -> i2
                    affine.store %245, %243[0] : memref<1xi7>
                    affine.store %246, %244[0] : memref<1xi2>
                    %247 = affine.load %244[0] : memref<1xi2>
                    %248 = affine.load %243[0] : memref<1xi7>
                    %249 = hcl.create_op_handle "bflyfn"
                    %250 = hcl.create_loop_handle %249, "i"
                    affine.for %arg2 = 0 to 8192 {
                      %251 = hcl.get_bit(%235 : i32, %arg2) -> i1
                      %252 = arith.index_cast %247 : i2 to index
                      %253 = arith.index_cast %248 : i7 to index
                      %254 = memref.load %39[%252, %253, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      %255 = memref.alloc() {name = "b"} : memref<1xi1>
                      affine.store %251, %255[0] {to = "b"} : memref<1xi1>
                      %256 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                      affine.store %254, %256[0] {to = "w", unsigned} : memref<1xi32>
                      %257 = memref.alloc() {name = "q"} : memref<1xi32>
                      affine.store %236, %257[0] {to = "q"} : memref<1xi32>
                      %258 = affine.load %257[0] {from = "q"} : memref<1xi32>
                      %c65535_i32 = arith.constant 65535 : i32
                      %259 = arith.andi %258, %c65535_i32 : i32
                      %260 = affine.load %256[0] {from = "w", unsigned} : memref<1xi32>
                      %261 = affine.load %255[0] {from = "b"} : memref<1xi1>
                      %262 = arith.extui %261 {unsigned} : i1 to i32
                      %263 = arith.muli %260, %262 {unsigned} : i32
                      %264 = arith.subi %c0_i32_0, %263 {unsigned} : i32
                      %265 = arith.andi %264, %c65535_i32 {unsigned} : i32
                      %266 = arith.muli %265, %258 : i32
                      %267 = arith.addi %263, %266 : i32
                      %268 = arith.shrui %267, %c16_i32 : i32
                      %269 = arith.subi %c0_i32_0, %268 : i32
                      %270 = arith.andi %269, %c65535_i32 : i32
                      %271 = arith.muli %270, %258 : i32
                      %272 = arith.addi %268, %271 : i32
                      %273 = arith.shrui %272, %c16_i32 : i32
                      %274 = arith.cmpi slt, %273, %258 : i32
                      %275 = arith.subi %273, %258 : i32
                      %276 = arith.select %274, %273, %275 : i32
                      %277 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                      affine.store %276, %277[0] {to = "mont_redc", unsigned} : memref<1xi32>
                      %278 = affine.load %277[0] {from = "mont_redc", unsigned} : memref<1xi32>
                      %279 = arith.index_cast %241 : i2 to index
                      %280 = arith.index_cast %242 : i7 to index
                      memref.store %278, %39[%279, %280, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                    } {loop_name = "i", op_name = "bflyfn"}
                  } else {
                    %217 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                    %218 = arith.extui %217 : i16 to i32
                    %c3_i32 = arith.constant 3 : i32
                    %219 = arith.cmpi eq, %218, %c3_i32 : i32
                    scf.if %219 {
                      %220 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                      %221 = memref.alloc() : memref<1xi6>
                      %222 = memref.alloc() : memref<1xi9>
                      %223 = memref.alloc() : memref<1xi9>
                      %224 = memref.alloc() : memref<1xi9>
                      %225 = memref.alloc() : memref<1xi9>
                      %226 = memref.alloc() : memref<1xi54>
                      %227 = memref.alloc() : memref<1xi32>
                      %c5_5 = arith.constant 5 : index
                      %c0_6 = arith.constant 0 : index
                      %228 = hcl.get_slice(%220 : i128, %c5_5, %c0_6) -> i6
                      %c14 = arith.constant 14 : index
                      %c6_7 = arith.constant 6 : index
                      %229 = hcl.get_slice(%220 : i128, %c14, %c6_7) -> i9
                      %c23 = arith.constant 23 : index
                      %c15_8 = arith.constant 15 : index
                      %230 = hcl.get_slice(%220 : i128, %c23, %c15_8) -> i9
                      %c32 = arith.constant 32 : index
                      %c24_9 = arith.constant 24 : index
                      %231 = hcl.get_slice(%220 : i128, %c32, %c24_9) -> i9
                      %c41 = arith.constant 41 : index
                      %c33_10 = arith.constant 33 : index
                      %232 = hcl.get_slice(%220 : i128, %c41, %c33_10) -> i9
                      %c95_11 = arith.constant 95 : index
                      %c42 = arith.constant 42 : index
                      %233 = hcl.get_slice(%220 : i128, %c95_11, %c42) -> i54
                      %c127_12 = arith.constant 127 : index
                      %c96_13 = arith.constant 96 : index
                      %234 = hcl.get_slice(%220 : i128, %c127_12, %c96_13) -> i32
                      affine.store %228, %221[0] : memref<1xi6>
                      affine.store %229, %222[0] : memref<1xi9>
                      affine.store %230, %223[0] : memref<1xi9>
                      affine.store %231, %224[0] : memref<1xi9>
                      affine.store %232, %225[0] : memref<1xi9>
                      affine.store %233, %226[0] : memref<1xi54>
                      affine.store %234, %227[0] : memref<1xi32>
                      hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                      %235 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                      hcl.print(%235) {format = "ip=%d ", signedness = "u"} : i5
                      %236 = affine.load %222[0] : memref<1xi9>
                      %237 = affine.load %223[0] : memref<1xi9>
                      %238 = affine.load %224[0] : memref<1xi9>
                      %239 = affine.load %225[0] : memref<1xi9>
                      %240 = affine.load %227[0] : memref<1xi32>
                      hcl.print(%236, %237, %238, %239, %240) {format = "pmac res=0x%x a=0x%x w=0x%x b=0x%x q=0x%x", signedness = "_____"} : i9, i9, i9, i9, i32
                      hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                      %241 = memref.alloc() : memref<1xi7>
                      %242 = memref.alloc() : memref<1xi2>
                      %c6_14 = arith.constant 6 : index
                      %c0_15 = arith.constant 0 : index
                      %243 = hcl.get_slice(%237 : i9, %c6_14, %c0_15) -> i7
                      %c8 = arith.constant 8 : index
                      %c7_16 = arith.constant 7 : index
                      %244 = hcl.get_slice(%237 : i9, %c8, %c7_16) -> i2
                      affine.store %243, %241[0] : memref<1xi7>
                      affine.store %244, %242[0] : memref<1xi2>
                      %245 = memref.alloc() : memref<1xi7>
                      %246 = memref.alloc() : memref<1xi2>
                      %c6_17 = arith.constant 6 : index
                      %c0_18 = arith.constant 0 : index
                      %247 = hcl.get_slice(%239 : i9, %c6_17, %c0_18) -> i7
                      %c8_19 = arith.constant 8 : index
                      %c7_20 = arith.constant 7 : index
                      %248 = hcl.get_slice(%239 : i9, %c8_19, %c7_20) -> i2
                      affine.store %247, %245[0] : memref<1xi7>
                      affine.store %248, %246[0] : memref<1xi2>
                      %249 = memref.alloc() : memref<1xi7>
                      %250 = memref.alloc() : memref<1xi2>
                      %c6_21 = arith.constant 6 : index
                      %c0_22 = arith.constant 0 : index
                      %251 = hcl.get_slice(%238 : i9, %c6_21, %c0_22) -> i7
                      %c8_23 = arith.constant 8 : index
                      %c7_24 = arith.constant 7 : index
                      %252 = hcl.get_slice(%238 : i9, %c8_23, %c7_24) -> i2
                      affine.store %251, %249[0] : memref<1xi7>
                      affine.store %252, %250[0] : memref<1xi2>
                      %253 = memref.alloc() : memref<1xi7>
                      %254 = memref.alloc() : memref<1xi2>
                      %c6_25 = arith.constant 6 : index
                      %c0_26 = arith.constant 0 : index
                      %255 = hcl.get_slice(%237 : i9, %c6_25, %c0_26) -> i7
                      %c8_27 = arith.constant 8 : index
                      %c7_28 = arith.constant 7 : index
                      %256 = hcl.get_slice(%237 : i9, %c8_27, %c7_28) -> i2
                      affine.store %255, %253[0] : memref<1xi7>
                      affine.store %256, %254[0] : memref<1xi2>
                      %257 = affine.load %254[0] : memref<1xi2>
                      %258 = affine.load %253[0] : memref<1xi7>
                      %259 = memref.alloc() : memref<1xi7>
                      %260 = memref.alloc() : memref<1xi2>
                      %c6_29 = arith.constant 6 : index
                      %c0_30 = arith.constant 0 : index
                      %261 = hcl.get_slice(%237 : i9, %c6_29, %c0_30) -> i7
                      %c8_31 = arith.constant 8 : index
                      %c7_32 = arith.constant 7 : index
                      %262 = hcl.get_slice(%237 : i9, %c8_31, %c7_32) -> i2
                      affine.store %261, %259[0] : memref<1xi7>
                      affine.store %262, %260[0] : memref<1xi2>
                      %263 = affine.load %260[0] : memref<1xi2>
                      %264 = affine.load %259[0] : memref<1xi7>
                      %265 = memref.alloc() : memref<1xi7>
                      %266 = memref.alloc() : memref<1xi2>
                      %c6_33 = arith.constant 6 : index
                      %c0_34 = arith.constant 0 : index
                      %267 = hcl.get_slice(%238 : i9, %c6_33, %c0_34) -> i7
                      %c8_35 = arith.constant 8 : index
                      %c7_36 = arith.constant 7 : index
                      %268 = hcl.get_slice(%238 : i9, %c8_35, %c7_36) -> i2
                      affine.store %267, %265[0] : memref<1xi7>
                      affine.store %268, %266[0] : memref<1xi2>
                      %269 = affine.load %266[0] : memref<1xi2>
                      %270 = affine.load %265[0] : memref<1xi7>
                      %271 = memref.alloc() : memref<1xi7>
                      %272 = memref.alloc() : memref<1xi2>
                      %c6_37 = arith.constant 6 : index
                      %c0_38 = arith.constant 0 : index
                      %273 = hcl.get_slice(%239 : i9, %c6_37, %c0_38) -> i7
                      %c8_39 = arith.constant 8 : index
                      %c7_40 = arith.constant 7 : index
                      %274 = hcl.get_slice(%239 : i9, %c8_39, %c7_40) -> i2
                      affine.store %273, %271[0] : memref<1xi7>
                      affine.store %274, %272[0] : memref<1xi2>
                      %275 = affine.load %272[0] : memref<1xi2>
                      %276 = affine.load %271[0] : memref<1xi7>
                      %277 = hcl.create_op_handle "bflyfn"
                      %278 = hcl.create_loop_handle %277, "i"
                      affine.for %arg2 = 0 to 8192 {
                        %279 = arith.index_cast %263 : i2 to index
                        %280 = arith.index_cast %264 : i7 to index
                        %281 = memref.load %39[%279, %280, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %282 = arith.index_cast %275 : i2 to index
                        %283 = arith.index_cast %276 : i7 to index
                        %284 = memref.load %39[%282, %283, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %285 = arith.index_cast %269 : i2 to index
                        %286 = arith.index_cast %270 : i7 to index
                        %287 = memref.load %39[%285, %286, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %288 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                        affine.store %284, %288[0] {to = "b", unsigned} : memref<1xi32>
                        %289 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                        affine.store %287, %289[0] {to = "w", unsigned} : memref<1xi32>
                        %290 = memref.alloc() {name = "q"} : memref<1xi32>
                        affine.store %240, %290[0] {to = "q"} : memref<1xi32>
                        %291 = affine.load %290[0] {from = "q"} : memref<1xi32>
                        %c65535_i32 = arith.constant 65535 : i32
                        %292 = arith.andi %291, %c65535_i32 : i32
                        %293 = affine.load %289[0] {from = "w", unsigned} : memref<1xi32>
                        %294 = affine.load %288[0] {from = "b", unsigned} : memref<1xi32>
                        %295 = arith.muli %293, %294 {unsigned} : i32
                        %296 = arith.subi %c0_i32_0, %295 {unsigned} : i32
                        %297 = arith.andi %296, %c65535_i32 {unsigned} : i32
                        %298 = arith.muli %297, %291 : i32
                        %299 = arith.addi %295, %298 : i32
                        %300 = arith.shrui %299, %c16_i32 : i32
                        %301 = arith.subi %c0_i32_0, %300 : i32
                        %302 = arith.andi %301, %c65535_i32 : i32
                        %303 = arith.muli %302, %291 : i32
                        %304 = arith.addi %300, %303 : i32
                        %305 = arith.shrui %304, %c16_i32 : i32
                        %306 = arith.cmpi slt, %305, %291 : i32
                        %307 = arith.subi %305, %291 : i32
                        %308 = arith.select %306, %305, %307 : i32
                        %309 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                        affine.store %308, %309[0] {to = "mont_redc", unsigned} : memref<1xi32>
                        %310 = affine.load %309[0] {from = "mont_redc", unsigned} : memref<1xi32>
                        %311 = arith.addi %281, %310 {unsigned} : i32
                        %312 = arith.remsi %311, %240 : i32
                        %313 = arith.index_cast %257 : i2 to index
                        %314 = arith.index_cast %258 : i7 to index
                        memref.store %312, %39[%313, %314, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "bflyfn"}
                    } else {
                      %220 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                      %221 = arith.extui %220 : i16 to i32
                      %222 = arith.cmpi eq, %221, %c4_i32 : i32
                      scf.if %222 {
                        %223 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                        %224 = memref.alloc() : memref<1xi6>
                        %225 = memref.alloc() : memref<1xi9>
                        %226 = memref.alloc() : memref<1xi9>
                        %227 = memref.alloc() : memref<1xi9>
                        %228 = memref.alloc() : memref<1xi31>
                        %229 = memref.alloc() : memref<1xi32>
                        %230 = memref.alloc() : memref<1xi32>
                        %c5_5 = arith.constant 5 : index
                        %c0_6 = arith.constant 0 : index
                        %231 = hcl.get_slice(%223 : i128, %c5_5, %c0_6) -> i6
                        %c14 = arith.constant 14 : index
                        %c6_7 = arith.constant 6 : index
                        %232 = hcl.get_slice(%223 : i128, %c14, %c6_7) -> i9
                        %c23 = arith.constant 23 : index
                        %c15_8 = arith.constant 15 : index
                        %233 = hcl.get_slice(%223 : i128, %c23, %c15_8) -> i9
                        %c32 = arith.constant 32 : index
                        %c24_9 = arith.constant 24 : index
                        %234 = hcl.get_slice(%223 : i128, %c32, %c24_9) -> i9
                        %c63 = arith.constant 63 : index
                        %c33_10 = arith.constant 33 : index
                        %235 = hcl.get_slice(%223 : i128, %c63, %c33_10) -> i31
                        %c95_11 = arith.constant 95 : index
                        %c64 = arith.constant 64 : index
                        %236 = hcl.get_slice(%223 : i128, %c95_11, %c64) -> i32
                        %c127_12 = arith.constant 127 : index
                        %c96_13 = arith.constant 96 : index
                        %237 = hcl.get_slice(%223 : i128, %c127_12, %c96_13) -> i32
                        affine.store %231, %224[0] : memref<1xi6>
                        affine.store %232, %225[0] : memref<1xi9>
                        affine.store %233, %226[0] : memref<1xi9>
                        affine.store %234, %227[0] : memref<1xi9>
                        affine.store %235, %228[0] : memref<1xi31>
                        affine.store %236, %229[0] : memref<1xi32>
                        affine.store %237, %230[0] : memref<1xi32>
                        hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                        %238 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                        hcl.print(%238) {format = "ip=%d ", signedness = "u"} : i5
                        %239 = affine.load %226[0] : memref<1xi9>
                        %240 = affine.load %227[0] : memref<1xi9>
                        %241 = affine.load %229[0] : memref<1xi32>
                        %242 = affine.load %230[0] : memref<1xi32>
                        hcl.print(%239, %240, %241, %242) {format = "pmaci a=0x%x w=0x%x imm=0x%x q=0x%x", signedness = "____"} : i9, i9, i32, i32
                        hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                        %243 = memref.alloc() : memref<1xi7>
                        %244 = memref.alloc() : memref<1xi2>
                        %c6_14 = arith.constant 6 : index
                        %c0_15 = arith.constant 0 : index
                        %245 = hcl.get_slice(%239 : i9, %c6_14, %c0_15) -> i7
                        %c8 = arith.constant 8 : index
                        %c7_16 = arith.constant 7 : index
                        %246 = hcl.get_slice(%239 : i9, %c8, %c7_16) -> i2
                        affine.store %245, %243[0] : memref<1xi7>
                        affine.store %246, %244[0] : memref<1xi2>
                        %247 = memref.alloc() : memref<1xi7>
                        %248 = memref.alloc() : memref<1xi2>
                        %c6_17 = arith.constant 6 : index
                        %c0_18 = arith.constant 0 : index
                        %249 = hcl.get_slice(%240 : i9, %c6_17, %c0_18) -> i7
                        %c8_19 = arith.constant 8 : index
                        %c7_20 = arith.constant 7 : index
                        %250 = hcl.get_slice(%240 : i9, %c8_19, %c7_20) -> i2
                        affine.store %249, %247[0] : memref<1xi7>
                        affine.store %250, %248[0] : memref<1xi2>
                        %251 = memref.alloc() : memref<1xi7>
                        %252 = memref.alloc() : memref<1xi2>
                        %c6_21 = arith.constant 6 : index
                        %c0_22 = arith.constant 0 : index
                        %253 = hcl.get_slice(%239 : i9, %c6_21, %c0_22) -> i7
                        %c8_23 = arith.constant 8 : index
                        %c7_24 = arith.constant 7 : index
                        %254 = hcl.get_slice(%239 : i9, %c8_23, %c7_24) -> i2
                        affine.store %253, %251[0] : memref<1xi7>
                        affine.store %254, %252[0] : memref<1xi2>
                        %255 = affine.load %252[0] : memref<1xi2>
                        %256 = affine.load %251[0] : memref<1xi7>
                        %257 = memref.alloc() : memref<1xi7>
                        %258 = memref.alloc() : memref<1xi2>
                        %c6_25 = arith.constant 6 : index
                        %c0_26 = arith.constant 0 : index
                        %259 = hcl.get_slice(%239 : i9, %c6_25, %c0_26) -> i7
                        %c8_27 = arith.constant 8 : index
                        %c7_28 = arith.constant 7 : index
                        %260 = hcl.get_slice(%239 : i9, %c8_27, %c7_28) -> i2
                        affine.store %259, %257[0] : memref<1xi7>
                        affine.store %260, %258[0] : memref<1xi2>
                        %261 = affine.load %258[0] : memref<1xi2>
                        %262 = affine.load %257[0] : memref<1xi7>
                        %263 = memref.alloc() : memref<1xi7>
                        %264 = memref.alloc() : memref<1xi2>
                        %c6_29 = arith.constant 6 : index
                        %c0_30 = arith.constant 0 : index
                        %265 = hcl.get_slice(%240 : i9, %c6_29, %c0_30) -> i7
                        %c8_31 = arith.constant 8 : index
                        %c7_32 = arith.constant 7 : index
                        %266 = hcl.get_slice(%240 : i9, %c8_31, %c7_32) -> i2
                        affine.store %265, %263[0] : memref<1xi7>
                        affine.store %266, %264[0] : memref<1xi2>
                        %267 = affine.load %264[0] : memref<1xi2>
                        %268 = affine.load %263[0] : memref<1xi7>
                        %269 = hcl.create_op_handle "bflyfn"
                        %270 = hcl.create_loop_handle %269, "i"
                        affine.for %arg2 = 0 to 8192 {
                          %271 = arith.index_cast %261 : i2 to index
                          %272 = arith.index_cast %262 : i7 to index
                          %273 = memref.load %39[%271, %272, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %274 = hcl.get_bit(%241 : i32, %arg2) -> i1
                          %275 = arith.index_cast %267 : i2 to index
                          %276 = arith.index_cast %268 : i7 to index
                          %277 = memref.load %39[%275, %276, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %278 = memref.alloc() {name = "b"} : memref<1xi1>
                          affine.store %274, %278[0] {to = "b"} : memref<1xi1>
                          %279 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                          affine.store %277, %279[0] {to = "w", unsigned} : memref<1xi32>
                          %280 = memref.alloc() {name = "q"} : memref<1xi32>
                          affine.store %242, %280[0] {to = "q"} : memref<1xi32>
                          %281 = affine.load %280[0] {from = "q"} : memref<1xi32>
                          %c65535_i32 = arith.constant 65535 : i32
                          %282 = arith.andi %281, %c65535_i32 : i32
                          %283 = affine.load %279[0] {from = "w", unsigned} : memref<1xi32>
                          %284 = affine.load %278[0] {from = "b"} : memref<1xi1>
                          %285 = arith.extui %284 {unsigned} : i1 to i32
                          %286 = arith.muli %283, %285 {unsigned} : i32
                          %287 = arith.subi %c0_i32_0, %286 {unsigned} : i32
                          %288 = arith.andi %287, %c65535_i32 {unsigned} : i32
                          %289 = arith.muli %288, %281 : i32
                          %290 = arith.addi %286, %289 : i32
                          %291 = arith.shrui %290, %c16_i32 : i32
                          %292 = arith.subi %c0_i32_0, %291 : i32
                          %293 = arith.andi %292, %c65535_i32 : i32
                          %294 = arith.muli %293, %281 : i32
                          %295 = arith.addi %291, %294 : i32
                          %296 = arith.shrui %295, %c16_i32 : i32
                          %297 = arith.cmpi slt, %296, %281 : i32
                          %298 = arith.subi %296, %281 : i32
                          %299 = arith.select %297, %296, %298 : i32
                          %300 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                          affine.store %299, %300[0] {to = "mont_redc", unsigned} : memref<1xi32>
                          %301 = affine.load %300[0] {from = "mont_redc", unsigned} : memref<1xi32>
                          %302 = arith.addi %273, %301 {unsigned} : i32
                          %303 = arith.remsi %302, %242 : i32
                          %304 = arith.index_cast %255 : i2 to index
                          %305 = arith.index_cast %256 : i7 to index
                          memref.store %303, %39[%304, %305, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                        } {loop_name = "i", op_name = "bflyfn"}
                      } else {
                        %223 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                        %224 = arith.extui %223 : i16 to i32
                        %c5_i32 = arith.constant 5 : i32
                        %225 = arith.cmpi eq, %224, %c5_i32 : i32
                        scf.if %225 {
                          %226 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                          %227 = memref.alloc() : memref<1xi6>
                          %228 = memref.alloc() : memref<1xi9>
                          %229 = memref.alloc() : memref<1xi9>
                          %230 = memref.alloc() : memref<1xi9>
                          %231 = memref.alloc() : memref<1xi9>
                          %232 = memref.alloc() : memref<1xi11>
                          %233 = memref.alloc() : memref<1xi43>
                          %234 = memref.alloc() : memref<1xi32>
                          %c5_5 = arith.constant 5 : index
                          %c0_6 = arith.constant 0 : index
                          %235 = hcl.get_slice(%226 : i128, %c5_5, %c0_6) -> i6
                          %c14 = arith.constant 14 : index
                          %c6_7 = arith.constant 6 : index
                          %236 = hcl.get_slice(%226 : i128, %c14, %c6_7) -> i9
                          %c23 = arith.constant 23 : index
                          %c15_8 = arith.constant 15 : index
                          %237 = hcl.get_slice(%226 : i128, %c23, %c15_8) -> i9
                          %c32 = arith.constant 32 : index
                          %c24_9 = arith.constant 24 : index
                          %238 = hcl.get_slice(%226 : i128, %c32, %c24_9) -> i9
                          %c41 = arith.constant 41 : index
                          %c33_10 = arith.constant 33 : index
                          %239 = hcl.get_slice(%226 : i128, %c41, %c33_10) -> i9
                          %c52 = arith.constant 52 : index
                          %c42 = arith.constant 42 : index
                          %240 = hcl.get_slice(%226 : i128, %c52, %c42) -> i11
                          %c95_11 = arith.constant 95 : index
                          %c53 = arith.constant 53 : index
                          %241 = hcl.get_slice(%226 : i128, %c95_11, %c53) -> i43
                          %c127_12 = arith.constant 127 : index
                          %c96_13 = arith.constant 96 : index
                          %242 = hcl.get_slice(%226 : i128, %c127_12, %c96_13) -> i32
                          affine.store %235, %227[0] : memref<1xi6>
                          affine.store %236, %228[0] : memref<1xi9>
                          affine.store %237, %229[0] : memref<1xi9>
                          affine.store %238, %230[0] : memref<1xi9>
                          affine.store %239, %231[0] : memref<1xi9>
                          affine.store %240, %232[0] : memref<1xi11>
                          affine.store %241, %233[0] : memref<1xi43>
                          affine.store %242, %234[0] : memref<1xi32>
                          hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                          %243 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                          hcl.print(%243) {format = "ip=%d ", signedness = "u"} : i5
                          %244 = affine.load %228[0] : memref<1xi9>
                          %245 = affine.load %229[0] : memref<1xi9>
                          %246 = affine.load %230[0] : memref<1xi9>
                          %247 = affine.load %231[0] : memref<1xi9>
                          %248 = affine.load %232[0] : memref<1xi11>
                          %249 = affine.load %234[0] : memref<1xi32>
                          hcl.print(%244, %245, %246, %247, %248, %249) {format = "ntt top=0x%x bot=0x%x a=0x%x b=0x%x twidx=0x%x q=0x%x", signedness = "______"} : i9, i9, i9, i9, i11, i32
                          hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                          %250 = affine.load %47[0] {from = "flag_ntt", unsigned} : memref<1xi1>
                          %251 = arith.extui %250 : i1 to i32
                          %252 = memref.alloc() : memref<1xi7>
                          %253 = memref.alloc() : memref<1xi2>
                          %c6_14 = arith.constant 6 : index
                          %c0_15 = arith.constant 0 : index
                          %254 = hcl.get_slice(%246 : i9, %c6_14, %c0_15) -> i7
                          %c8 = arith.constant 8 : index
                          %c7_16 = arith.constant 7 : index
                          %255 = hcl.get_slice(%246 : i9, %c8, %c7_16) -> i2
                          affine.store %254, %252[0] : memref<1xi7>
                          affine.store %255, %253[0] : memref<1xi2>
                          %256 = memref.alloc() : memref<1xi7>
                          %257 = memref.alloc() : memref<1xi2>
                          %c6_17 = arith.constant 6 : index
                          %c0_18 = arith.constant 0 : index
                          %258 = hcl.get_slice(%247 : i9, %c6_17, %c0_18) -> i7
                          %c8_19 = arith.constant 8 : index
                          %c7_20 = arith.constant 7 : index
                          %259 = hcl.get_slice(%247 : i9, %c8_19, %c7_20) -> i2
                          affine.store %258, %256[0] : memref<1xi7>
                          affine.store %259, %257[0] : memref<1xi2>
                          %260 = memref.alloc() : memref<1xi7>
                          %261 = memref.alloc() : memref<1xi2>
                          %c6_21 = arith.constant 6 : index
                          %c0_22 = arith.constant 0 : index
                          %262 = hcl.get_slice(%244 : i9, %c6_21, %c0_22) -> i7
                          %c8_23 = arith.constant 8 : index
                          %c7_24 = arith.constant 7 : index
                          %263 = hcl.get_slice(%244 : i9, %c8_23, %c7_24) -> i2
                          affine.store %262, %260[0] : memref<1xi7>
                          affine.store %263, %261[0] : memref<1xi2>
                          %264 = memref.alloc() : memref<1xi7>
                          %265 = memref.alloc() : memref<1xi2>
                          %c6_25 = arith.constant 6 : index
                          %c0_26 = arith.constant 0 : index
                          %266 = hcl.get_slice(%245 : i9, %c6_25, %c0_26) -> i7
                          %c8_27 = arith.constant 8 : index
                          %c7_28 = arith.constant 7 : index
                          %267 = hcl.get_slice(%245 : i9, %c8_27, %c7_28) -> i2
                          affine.store %266, %264[0] : memref<1xi7>
                          affine.store %267, %265[0] : memref<1xi2>
                          %268 = memref.alloc() : memref<1xi7>
                          %269 = memref.alloc() : memref<1xi2>
                          %c6_29 = arith.constant 6 : index
                          %c0_30 = arith.constant 0 : index
                          %270 = hcl.get_slice(%246 : i9, %c6_29, %c0_30) -> i7
                          %c8_31 = arith.constant 8 : index
                          %c7_32 = arith.constant 7 : index
                          %271 = hcl.get_slice(%246 : i9, %c8_31, %c7_32) -> i2
                          affine.store %270, %268[0] : memref<1xi7>
                          affine.store %271, %269[0] : memref<1xi2>
                          %272 = affine.load %269[0] : memref<1xi2>
                          %273 = affine.load %268[0] : memref<1xi7>
                          %274 = memref.alloc() : memref<1xi7>
                          %275 = memref.alloc() : memref<1xi2>
                          %c6_33 = arith.constant 6 : index
                          %c0_34 = arith.constant 0 : index
                          %276 = hcl.get_slice(%247 : i9, %c6_33, %c0_34) -> i7
                          %c8_35 = arith.constant 8 : index
                          %c7_36 = arith.constant 7 : index
                          %277 = hcl.get_slice(%247 : i9, %c8_35, %c7_36) -> i2
                          affine.store %276, %274[0] : memref<1xi7>
                          affine.store %277, %275[0] : memref<1xi2>
                          %278 = affine.load %275[0] : memref<1xi2>
                          %279 = affine.load %274[0] : memref<1xi7>
                          %c8192_i32 = arith.constant 8192 : i32
                          %280 = arith.extsi %248 : i11 to i32
                          %281 = arith.muli %280, %c8192_i32 : i32
                          %282 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                          %c8192_i32_37 = arith.constant {unsigned} 8192 : i32
                          affine.store %c8192_i32_37, %282[0] {to = "count", unsigned} : memref<1xi32>
                          %283 = affine.load %282[0] {from = "count", unsigned} : memref<1xi32>
                          %284 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                          affine.store %281, %284[0] {to = "src_addr"} : memref<1xi32>
                          %285 = affine.load %284[0] {from = "src_addr"} : memref<1xi32>
                          %286 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                          affine.store %c0_i32, %286[0] {to = "dst_addr", unsigned} : memref<1xi32>
                          %287 = affine.load %286[0] {from = "dst_addr", unsigned} : memref<1xi32>
                          %288 = arith.addi %285, %283 {unsigned} : i32
                          %c71303168_i32 = arith.constant 71303168 : i32
                          %289 = hcl.create_op_handle "copyN"
                          %290 = hcl.create_loop_handle %289, "i"
                          %291 = arith.index_cast %c0_i32_0 : i32 to index
                          %292 = arith.index_cast %283 : i32 to index
                          %293 = arith.index_cast %c1_i32_2 : i32 to index
                          scf.for %arg2 = %291 to %292 step %293 {
                            %299 = arith.index_cast %285 : i32 to index
                            %300 = arith.addi %299, %arg2 : index
                            %301 = memref.load %44[%300] {from = "nttroots.alloc_c", unsigned} : memref<71303168xi32>
                            %302 = arith.index_cast %287 : i32 to index
                            %303 = arith.addi %302, %arg2 : index
                            memref.store %301, %62[%303] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "copyN"}
                          %294 = hcl.create_op_handle "ntt_in_swizzle"
                          %295 = hcl.create_loop_handle %294, "i"
                          affine.for %arg2 = 0 to 128 {
                            %c64_i32 = arith.constant 64 : i32
                            %299 = arith.index_cast %c64_i32 : i32 to index
                            %300 = arith.muli %arg2, %299 : index
                            %301 = hcl.create_op_handle "nttin_even_odd_arf"
                            %302 = hcl.create_loop_handle %301, "j"
                            affine.for %arg3 = 0 to 32 {
                              %305 = arith.index_cast %c2_i32 : i32 to index
                              %306 = arith.muli %305, %arg3 : index
                              %307 = arith.addi %300, %306 : index
                              %308 = arith.index_cast %272 : i2 to index
                              %309 = arith.index_cast %273 : i7 to index
                              %310 = memref.load %39[%308, %309, %307] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %311 = arith.addi %300, %291 : index
                              %312 = arith.addi %311, %arg3 : index
                              %313 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              %314 = arith.index_cast %312 {unsigned} : index to i32
                              affine.store %314, %313[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %315 = affine.load %313[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %316 = arith.addi %315, %c1_i32_2 : i32
                              %317 = arith.index_cast %315 : i32 to index
                              memref.store %310, %60[%317] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %318 = arith.addi %307, %293 : index
                              %319 = memref.load %39[%308, %309, %318] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %320 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %314, %320[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %321 = affine.load %320[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %322 = arith.addi %321, %c1_i32_2 : i32
                              %323 = arith.index_cast %321 : i32 to index
                              memref.store %319, %61[%323] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
                            %303 = hcl.create_op_handle "nttin_even_odd_brf"
                            %304 = hcl.create_loop_handle %303, "j"
                            affine.for %arg3 = 0 to 32 {
                              %305 = arith.index_cast %c2_i32 : i32 to index
                              %306 = arith.muli %305, %arg3 : index
                              %307 = arith.addi %300, %306 : index
                              %308 = arith.index_cast %278 : i2 to index
                              %309 = arith.index_cast %279 : i7 to index
                              %310 = memref.load %39[%308, %309, %307] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %c32_i32 = arith.constant 32 : i32
                              %311 = arith.index_cast %c32_i32 : i32 to index
                              %312 = arith.addi %300, %311 : index
                              %313 = arith.addi %312, %arg3 : index
                              %314 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              %315 = arith.index_cast %313 {unsigned} : index to i32
                              affine.store %315, %314[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %316 = affine.load %314[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %317 = arith.addi %316, %c1_i32_2 : i32
                              %318 = arith.index_cast %316 : i32 to index
                              memref.store %310, %60[%318] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %319 = arith.addi %307, %293 : index
                              %320 = memref.load %39[%308, %309, %319] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %321 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %315, %321[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %322 = affine.load %321[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %323 = arith.addi %322, %c1_i32_2 : i32
                              %324 = arith.index_cast %322 : i32 to index
                              memref.store %320, %61[%324] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
                          } {loop_name = "i", op_name = "ntt_in_swizzle"}
                          %296 = hcl.create_op_handle "bflyfn"
                          %297 = hcl.create_loop_handle %296, "i"
                          affine.for %arg2 = 0 to 8192 {
                            %299 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            %300 = arith.index_cast %arg2 {unsigned} : index to i32
                            affine.store %300, %299[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %301 = affine.load %299[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %302 = arith.addi %301, %c1_i32_2 : i32
                            %303 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %304 = hcl.create_op_handle "Mem.read_c"
                            %305 = hcl.create_loop_handle %304, "i"
                            %306 = affine.load %299[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %307 = arith.index_cast %306 : i32 to index
                            %308 = arith.addi %307, %c0 : index
                            %309 = memref.load %60[%308] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %309, %303[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %310 = affine.load %303[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %311 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            affine.store %300, %311[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %312 = affine.load %311[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %313 = arith.addi %312, %c1_i32_2 : i32
                            %314 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %315 = hcl.create_op_handle "Mem.read_c"
                            %316 = hcl.create_loop_handle %315, "i"
                            %317 = affine.load %311[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %318 = arith.index_cast %317 : i32 to index
                            %319 = arith.addi %318, %c0 : index
                            %320 = memref.load %61[%319] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %320, %314[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %321 = affine.load %314[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %322 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                            affine.store %300, %322[0] {to = "read_addr", unsigned} : memref<1xi32>
                            %323 = affine.load %322[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %324 = arith.addi %323, %c1_i32_2 : i32
                            %325 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                            %326 = hcl.create_op_handle "Mem.read_c"
                            %327 = hcl.create_loop_handle %326, "i"
                            %328 = affine.load %322[0] {from = "read_addr", unsigned} : memref<1xi32>
                            %329 = arith.index_cast %328 : i32 to index
                            %330 = arith.addi %329, %c0 : index
                            %331 = memref.load %62[%330] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %331, %325[%c0] {to = "Mem.read_c"} : memref<1xi32>
                            %332 = affine.load %325[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                            %333 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                            affine.store %321, %333[0] {to = "b", unsigned} : memref<1xi32>
                            %334 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                            affine.store %332, %334[0] {to = "w", unsigned} : memref<1xi32>
                            %335 = memref.alloc() {name = "q"} : memref<1xi32>
                            affine.store %249, %335[0] {to = "q"} : memref<1xi32>
                            %336 = affine.load %335[0] {from = "q"} : memref<1xi32>
                            %c65535_i32 = arith.constant 65535 : i32
                            %337 = arith.andi %336, %c65535_i32 : i32
                            %338 = affine.load %334[0] {from = "w", unsigned} : memref<1xi32>
                            %339 = affine.load %333[0] {from = "b", unsigned} : memref<1xi32>
                            %340 = arith.muli %338, %339 {unsigned} : i32
                            %341 = arith.subi %c0_i32_0, %340 {unsigned} : i32
                            %342 = arith.andi %341, %c65535_i32 {unsigned} : i32
                            %343 = arith.muli %342, %336 : i32
                            %344 = arith.addi %340, %343 : i32
                            %345 = arith.shrui %344, %c16_i32 : i32
                            %346 = arith.subi %c0_i32_0, %345 : i32
                            %347 = arith.andi %346, %c65535_i32 : i32
                            %348 = arith.muli %347, %336 : i32
                            %349 = arith.addi %345, %348 : i32
                            %350 = arith.shrui %349, %c16_i32 : i32
                            %351 = arith.cmpi slt, %350, %336 : i32
                            %352 = arith.subi %350, %336 : i32
                            %353 = arith.select %351, %350, %352 : i32
                            %354 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                            affine.store %353, %354[0] {to = "mont_redc", unsigned} : memref<1xi32>
                            %355 = affine.load %354[0] {from = "mont_redc", unsigned} : memref<1xi32>
                            %356 = arith.addi %310, %355 {unsigned} : i32
                            %357 = arith.remsi %356, %249 : i32
                            %358 = arith.addi %249, %310 {unsigned} : i32
                            %359 = arith.subi %358, %355 {unsigned} : i32
                            %360 = arith.remsi %359, %249 : i32
                            %361 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                            affine.store %300, %361[0] {to = "write_addr", unsigned} : memref<1xi32>
                            %362 = affine.load %361[0] {from = "write_addr", unsigned} : memref<1xi32>
                            %363 = arith.addi %362, %c1_i32_2 : i32
                            %364 = arith.index_cast %362 : i32 to index
                            memref.store %357, %54[%364] {to = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                            %365 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                            affine.store %300, %365[0] {to = "write_addr", unsigned} : memref<1xi32>
                            %366 = affine.load %365[0] {from = "write_addr", unsigned} : memref<1xi32>
                            %367 = arith.addi %366, %c1_i32_2 : i32
                            %368 = arith.index_cast %366 : i32 to index
                            memref.store %360, %55[%368] {to = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "bflyfn"}
                          affine.store %244, %49[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                          affine.store %245, %50[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                          %298 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                          affine.store %298, %47[0] {to = "flag_ntt", unsigned} : memref<1xi1>
                        } else {
                          %226 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                          %227 = arith.extui %226 : i16 to i32
                          %c6_i32 = arith.constant 6 : i32
                          %228 = arith.cmpi eq, %227, %c6_i32 : i32
                          scf.if %228 {
                            %229 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                            %230 = memref.alloc() : memref<1xi6>
                            %231 = memref.alloc() : memref<1xi9>
                            %232 = memref.alloc() : memref<1xi9>
                            %233 = memref.alloc() : memref<1xi9>
                            %234 = memref.alloc() : memref<1xi9>
                            %235 = memref.alloc() : memref<1xi11>
                            %236 = memref.alloc() : memref<1xi43>
                            %237 = memref.alloc() : memref<1xi32>
                            %c5_5 = arith.constant 5 : index
                            %c0_6 = arith.constant 0 : index
                            %238 = hcl.get_slice(%229 : i128, %c5_5, %c0_6) -> i6
                            %c14 = arith.constant 14 : index
                            %c6_7 = arith.constant 6 : index
                            %239 = hcl.get_slice(%229 : i128, %c14, %c6_7) -> i9
                            %c23 = arith.constant 23 : index
                            %c15_8 = arith.constant 15 : index
                            %240 = hcl.get_slice(%229 : i128, %c23, %c15_8) -> i9
                            %c32 = arith.constant 32 : index
                            %c24_9 = arith.constant 24 : index
                            %241 = hcl.get_slice(%229 : i128, %c32, %c24_9) -> i9
                            %c41 = arith.constant 41 : index
                            %c33_10 = arith.constant 33 : index
                            %242 = hcl.get_slice(%229 : i128, %c41, %c33_10) -> i9
                            %c52 = arith.constant 52 : index
                            %c42 = arith.constant 42 : index
                            %243 = hcl.get_slice(%229 : i128, %c52, %c42) -> i11
                            %c95_11 = arith.constant 95 : index
                            %c53 = arith.constant 53 : index
                            %244 = hcl.get_slice(%229 : i128, %c95_11, %c53) -> i43
                            %c127_12 = arith.constant 127 : index
                            %c96_13 = arith.constant 96 : index
                            %245 = hcl.get_slice(%229 : i128, %c127_12, %c96_13) -> i32
                            affine.store %238, %230[0] : memref<1xi6>
                            affine.store %239, %231[0] : memref<1xi9>
                            affine.store %240, %232[0] : memref<1xi9>
                            affine.store %241, %233[0] : memref<1xi9>
                            affine.store %242, %234[0] : memref<1xi9>
                            affine.store %243, %235[0] : memref<1xi11>
                            affine.store %244, %236[0] : memref<1xi43>
                            affine.store %245, %237[0] : memref<1xi32>
                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                            %246 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                            hcl.print(%246) {format = "ip=%d ", signedness = "u"} : i5
                            %247 = affine.load %231[0] : memref<1xi9>
                            %248 = affine.load %232[0] : memref<1xi9>
                            %249 = affine.load %233[0] : memref<1xi9>
                            %250 = affine.load %234[0] : memref<1xi9>
                            %251 = affine.load %235[0] : memref<1xi11>
                            %252 = affine.load %237[0] : memref<1xi32>
                            hcl.print(%247, %248, %249, %250, %251, %252) {format = "intt top=0x%x bot=0x%x a=0x%x b=0x%x twidx=0x%x q=0x%x", signedness = "______"} : i9, i9, i9, i9, i11, i32
                            hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                            %253 = affine.load %48[0] {from = "flag_intt", unsigned} : memref<1xi1>
                            %254 = arith.extui %253 : i1 to i32
                            %255 = memref.alloc() : memref<1xi7>
                            %256 = memref.alloc() : memref<1xi2>
                            %c6_14 = arith.constant 6 : index
                            %c0_15 = arith.constant 0 : index
                            %257 = hcl.get_slice(%249 : i9, %c6_14, %c0_15) -> i7
                            %c8 = arith.constant 8 : index
                            %c7_16 = arith.constant 7 : index
                            %258 = hcl.get_slice(%249 : i9, %c8, %c7_16) -> i2
                            affine.store %257, %255[0] : memref<1xi7>
                            affine.store %258, %256[0] : memref<1xi2>
                            %259 = memref.alloc() : memref<1xi7>
                            %260 = memref.alloc() : memref<1xi2>
                            %c6_17 = arith.constant 6 : index
                            %c0_18 = arith.constant 0 : index
                            %261 = hcl.get_slice(%250 : i9, %c6_17, %c0_18) -> i7
                            %c8_19 = arith.constant 8 : index
                            %c7_20 = arith.constant 7 : index
                            %262 = hcl.get_slice(%250 : i9, %c8_19, %c7_20) -> i2
                            affine.store %261, %259[0] : memref<1xi7>
                            affine.store %262, %260[0] : memref<1xi2>
                            %263 = memref.alloc() : memref<1xi7>
                            %264 = memref.alloc() : memref<1xi2>
                            %c6_21 = arith.constant 6 : index
                            %c0_22 = arith.constant 0 : index
                            %265 = hcl.get_slice(%247 : i9, %c6_21, %c0_22) -> i7
                            %c8_23 = arith.constant 8 : index
                            %c7_24 = arith.constant 7 : index
                            %266 = hcl.get_slice(%247 : i9, %c8_23, %c7_24) -> i2
                            affine.store %265, %263[0] : memref<1xi7>
                            affine.store %266, %264[0] : memref<1xi2>
                            %267 = memref.alloc() : memref<1xi7>
                            %268 = memref.alloc() : memref<1xi2>
                            %c6_25 = arith.constant 6 : index
                            %c0_26 = arith.constant 0 : index
                            %269 = hcl.get_slice(%248 : i9, %c6_25, %c0_26) -> i7
                            %c8_27 = arith.constant 8 : index
                            %c7_28 = arith.constant 7 : index
                            %270 = hcl.get_slice(%248 : i9, %c8_27, %c7_28) -> i2
                            affine.store %269, %267[0] : memref<1xi7>
                            affine.store %270, %268[0] : memref<1xi2>
                            %271 = memref.alloc() : memref<1xi7>
                            %272 = memref.alloc() : memref<1xi2>
                            %c6_29 = arith.constant 6 : index
                            %c0_30 = arith.constant 0 : index
                            %273 = hcl.get_slice(%249 : i9, %c6_29, %c0_30) -> i7
                            %c8_31 = arith.constant 8 : index
                            %c7_32 = arith.constant 7 : index
                            %274 = hcl.get_slice(%249 : i9, %c8_31, %c7_32) -> i2
                            affine.store %273, %271[0] : memref<1xi7>
                            affine.store %274, %272[0] : memref<1xi2>
                            %275 = affine.load %272[0] : memref<1xi2>
                            %276 = affine.load %271[0] : memref<1xi7>
                            %277 = memref.alloc() : memref<1xi7>
                            %278 = memref.alloc() : memref<1xi2>
                            %c6_33 = arith.constant 6 : index
                            %c0_34 = arith.constant 0 : index
                            %279 = hcl.get_slice(%250 : i9, %c6_33, %c0_34) -> i7
                            %c8_35 = arith.constant 8 : index
                            %c7_36 = arith.constant 7 : index
                            %280 = hcl.get_slice(%250 : i9, %c8_35, %c7_36) -> i2
                            affine.store %279, %277[0] : memref<1xi7>
                            affine.store %280, %278[0] : memref<1xi2>
                            %281 = affine.load %278[0] : memref<1xi2>
                            %282 = affine.load %277[0] : memref<1xi7>
                            %c8192_i32 = arith.constant 8192 : i32
                            %283 = arith.extsi %251 : i11 to i32
                            %284 = arith.muli %283, %c8192_i32 : i32
                            %285 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                            %c8192_i32_37 = arith.constant {unsigned} 8192 : i32
                            affine.store %c8192_i32_37, %285[0] {to = "count", unsigned} : memref<1xi32>
                            %286 = affine.load %285[0] {from = "count", unsigned} : memref<1xi32>
                            %287 = memref.alloc() {name = "src_addr"} : memref<1xi32>
                            affine.store %284, %287[0] {to = "src_addr"} : memref<1xi32>
                            %288 = affine.load %287[0] {from = "src_addr"} : memref<1xi32>
                            %289 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi32>
                            affine.store %c0_i32, %289[0] {to = "dst_addr", unsigned} : memref<1xi32>
                            %290 = affine.load %289[0] {from = "dst_addr", unsigned} : memref<1xi32>
                            %291 = arith.addi %288, %286 {unsigned} : i32
                            %c71303168_i32 = arith.constant 71303168 : i32
                            %292 = hcl.create_op_handle "copyN"
                            %293 = hcl.create_loop_handle %292, "i"
                            %294 = arith.index_cast %c0_i32_0 : i32 to index
                            %295 = arith.index_cast %286 : i32 to index
                            %296 = arith.index_cast %c1_i32_2 : i32 to index
                            scf.for %arg2 = %294 to %295 step %296 {
                              %304 = arith.index_cast %288 : i32 to index
                              %305 = arith.addi %304, %arg2 : index
                              %306 = memref.load %45[%305] {from = "inttroots.alloc_c", unsigned} : memref<71303168xi32>
                              %307 = arith.index_cast %290 : i32 to index
                              %308 = arith.addi %307, %arg2 : index
                              memref.store %306, %62[%308] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "copyN"}
                            %297 = hcl.create_op_handle "intt_in_swizzle_a"
                            %298 = hcl.create_loop_handle %297, "i"
                            affine.for %arg2 = 0 to 64 {
                              %c64_i32 = arith.constant 64 : i32
                              %304 = arith.index_cast %c64_i32 : i32 to index
                              %305 = arith.muli %arg2, %304 : index
                              %c128_i32 = arith.constant 128 : i32
                              %306 = arith.index_cast %c128_i32 : i32 to index
                              %307 = arith.muli %arg2, %306 : index
                              %308 = hcl.create_op_handle "ain64"
                              %309 = hcl.create_loop_handle %308, "j"
                              affine.for %arg3 = 0 to 64 {
                                %312 = arith.addi %294, %305 : index
                                %313 = arith.addi %312, %arg3 : index
                                %314 = arith.index_cast %275 : i2 to index
                                %315 = arith.index_cast %276 : i7 to index
                                %316 = memref.load %39[%314, %315, %313] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %317 = arith.addi %307, %arg3 : index
                                %318 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %319 = arith.index_cast %317 {unsigned} : index to i32
                                affine.store %319, %318[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %320 = affine.load %318[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %321 = arith.addi %320, %c1_i32_2 : i32
                                %322 = arith.index_cast %320 : i32 to index
                                memref.store %316, %60[%322] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              %310 = hcl.create_op_handle "bin64"
                              %311 = hcl.create_loop_handle %310, "j"
                              affine.for %arg3 = 0 to 64 {
                                %312 = arith.addi %307, %304 : index
                                %313 = arith.addi %294, %305 : index
                                %314 = arith.addi %313, %arg3 : index
                                %315 = arith.index_cast %281 : i2 to index
                                %316 = arith.index_cast %282 : i7 to index
                                %317 = memref.load %39[%315, %316, %314] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %318 = arith.addi %312, %arg3 : index
                                %319 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %320 = arith.index_cast %318 {unsigned} : index to i32
                                affine.store %320, %319[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %321 = affine.load %319[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %322 = arith.addi %321, %c1_i32_2 : i32
                                %323 = arith.index_cast %321 : i32 to index
                                memref.store %317, %60[%323] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_a"}
                            %299 = hcl.create_op_handle "intt_in_swizzle_b"
                            %300 = hcl.create_loop_handle %299, "i"
                            affine.for %arg2 = 0 to 64 {
                              %c64_i32 = arith.constant 64 : i32
                              %304 = arith.index_cast %c64_i32 : i32 to index
                              %305 = arith.muli %arg2, %304 : index
                              %c128_i32 = arith.constant 128 : i32
                              %306 = arith.index_cast %c128_i32 : i32 to index
                              %307 = arith.muli %arg2, %306 : index
                              %308 = hcl.create_op_handle "ain64"
                              %309 = hcl.create_loop_handle %308, "j"
                              affine.for %arg3 = 0 to 64 {
                                %c4096_i32 = arith.constant 4096 : i32
                                %312 = arith.index_cast %c4096_i32 : i32 to index
                                %313 = arith.addi %312, %305 : index
                                %314 = arith.addi %313, %arg3 : index
                                %315 = arith.index_cast %275 : i2 to index
                                %316 = arith.index_cast %276 : i7 to index
                                %317 = memref.load %39[%315, %316, %314] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %318 = arith.addi %307, %arg3 : index
                                %319 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %320 = arith.index_cast %318 {unsigned} : index to i32
                                affine.store %320, %319[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %321 = affine.load %319[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %322 = arith.addi %321, %c1_i32_2 : i32
                                %323 = arith.index_cast %321 : i32 to index
                                memref.store %317, %61[%323] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              %310 = hcl.create_op_handle "bin64"
                              %311 = hcl.create_loop_handle %310, "j"
                              affine.for %arg3 = 0 to 64 {
                                %312 = arith.addi %307, %304 : index
                                %c4096_i32 = arith.constant 4096 : i32
                                %313 = arith.index_cast %c4096_i32 : i32 to index
                                %314 = arith.addi %313, %305 : index
                                %315 = arith.addi %314, %arg3 : index
                                %316 = arith.index_cast %281 : i2 to index
                                %317 = arith.index_cast %282 : i7 to index
                                %318 = memref.load %39[%316, %317, %315] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %319 = arith.addi %312, %arg3 : index
                                %320 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                                %321 = arith.index_cast %319 {unsigned} : index to i32
                                affine.store %321, %320[0] {to = "write_addr", unsigned} : memref<1xi32>
                                %322 = affine.load %320[0] {from = "write_addr", unsigned} : memref<1xi32>
                                %323 = arith.addi %322, %c1_i32_2 : i32
                                %324 = arith.index_cast %322 : i32 to index
                                memref.store %318, %61[%324] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_b"}
                            %301 = hcl.create_op_handle "bflyfn"
                            %302 = hcl.create_loop_handle %301, "i"
                            affine.for %arg2 = 0 to 8192 {
                              %304 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              %305 = arith.index_cast %arg2 {unsigned} : index to i32
                              affine.store %305, %304[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %306 = affine.load %304[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %307 = arith.addi %306, %c1_i32_2 : i32
                              %308 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %309 = hcl.create_op_handle "Mem.read_c"
                              %310 = hcl.create_loop_handle %309, "i"
                              %311 = affine.load %304[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %312 = arith.index_cast %311 : i32 to index
                              %313 = arith.addi %312, %c0 : index
                              %314 = memref.load %60[%313] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %314, %308[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %315 = affine.load %308[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %316 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              affine.store %305, %316[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %317 = affine.load %316[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %318 = arith.addi %317, %c1_i32_2 : i32
                              %319 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %320 = hcl.create_op_handle "Mem.read_c"
                              %321 = hcl.create_loop_handle %320, "i"
                              %322 = affine.load %316[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %323 = arith.index_cast %322 : i32 to index
                              %324 = arith.addi %323, %c0 : index
                              %325 = memref.load %61[%324] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %325, %319[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %326 = affine.load %319[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %327 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
                              affine.store %305, %327[0] {to = "read_addr", unsigned} : memref<1xi32>
                              %328 = affine.load %327[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %329 = arith.addi %328, %c1_i32_2 : i32
                              %330 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
                              %331 = hcl.create_op_handle "Mem.read_c"
                              %332 = hcl.create_loop_handle %331, "i"
                              %333 = affine.load %327[0] {from = "read_addr", unsigned} : memref<1xi32>
                              %334 = arith.index_cast %333 : i32 to index
                              %335 = arith.addi %334, %c0 : index
                              %336 = memref.load %62[%335] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %336, %330[%c0] {to = "Mem.read_c"} : memref<1xi32>
                              %337 = affine.load %330[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
                              %338 = memref.alloc() {name = "b", unsigned} : memref<1xi32>
                              affine.store %326, %338[0] {to = "b", unsigned} : memref<1xi32>
                              %339 = memref.alloc() {name = "w", unsigned} : memref<1xi32>
                              affine.store %337, %339[0] {to = "w", unsigned} : memref<1xi32>
                              %340 = memref.alloc() {name = "q"} : memref<1xi32>
                              affine.store %252, %340[0] {to = "q"} : memref<1xi32>
                              %341 = affine.load %340[0] {from = "q"} : memref<1xi32>
                              %c65535_i32 = arith.constant 65535 : i32
                              %342 = arith.andi %341, %c65535_i32 : i32
                              %343 = affine.load %339[0] {from = "w", unsigned} : memref<1xi32>
                              %344 = affine.load %338[0] {from = "b", unsigned} : memref<1xi32>
                              %345 = arith.muli %343, %344 {unsigned} : i32
                              %346 = arith.subi %c0_i32_0, %345 {unsigned} : i32
                              %347 = arith.andi %346, %c65535_i32 {unsigned} : i32
                              %348 = arith.muli %347, %341 : i32
                              %349 = arith.addi %345, %348 : i32
                              %350 = arith.shrui %349, %c16_i32 : i32
                              %351 = arith.subi %c0_i32_0, %350 : i32
                              %352 = arith.andi %351, %c65535_i32 : i32
                              %353 = arith.muli %352, %341 : i32
                              %354 = arith.addi %350, %353 : i32
                              %355 = arith.shrui %354, %c16_i32 : i32
                              %356 = arith.cmpi slt, %355, %341 : i32
                              %357 = arith.subi %355, %341 : i32
                              %358 = arith.select %356, %355, %357 : i32
                              %359 = memref.alloc() {name = "mont_redc", unsigned} : memref<1xi32>
                              affine.store %358, %359[0] {to = "mont_redc", unsigned} : memref<1xi32>
                              %360 = affine.load %359[0] {from = "mont_redc", unsigned} : memref<1xi32>
                              %361 = arith.addi %315, %360 {unsigned} : i32
                              %362 = arith.remsi %361, %252 : i32
                              %363 = arith.addi %252, %315 {unsigned} : i32
                              %364 = arith.subi %363, %360 {unsigned} : i32
                              %365 = arith.remsi %364, %252 : i32
                              %366 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %305, %366[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %367 = affine.load %366[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %368 = arith.addi %367, %c1_i32_2 : i32
                              %369 = arith.index_cast %367 : i32 to index
                              memref.store %362, %58[%369] {to = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                              %370 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
                              affine.store %305, %370[0] {to = "write_addr", unsigned} : memref<1xi32>
                              %371 = affine.load %370[0] {from = "write_addr", unsigned} : memref<1xi32>
                              %372 = arith.addi %371, %c1_i32_2 : i32
                              %373 = arith.index_cast %371 : i32 to index
                              memref.store %365, %59[%373] {to = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "bflyfn"}
                            affine.store %247, %49[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                            affine.store %248, %50[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                            %303 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                            affine.store %303, %48[0] {to = "flag_intt", unsigned} : memref<1xi1>
                          } else {
                            %229 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                            %230 = arith.extui %229 : i16 to i32
                            %c7_i32 = arith.constant 7 : i32
                            %231 = arith.cmpi eq, %230, %c7_i32 : i32
                            scf.if %231 {
                              %232 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                              %233 = memref.alloc() : memref<1xi6>
                              %234 = memref.alloc() : memref<1xi1>
                              %235 = memref.alloc() : memref<1xi9>
                              %236 = memref.alloc() : memref<1xi9>
                              %237 = memref.alloc() : memref<1xi9>
                              %238 = memref.alloc() : memref<1xi62>
                              %239 = memref.alloc() : memref<1xi32>
                              %c5_5 = arith.constant 5 : index
                              %c0_6 = arith.constant 0 : index
                              %240 = hcl.get_slice(%232 : i128, %c5_5, %c0_6) -> i6
                              %c6_7 = arith.constant 6 : index
                              %c6_8 = arith.constant 6 : index
                              %241 = hcl.get_slice(%232 : i128, %c6_7, %c6_8) -> i1
                              %c15_9 = arith.constant 15 : index
                              %c7_10 = arith.constant 7 : index
                              %242 = hcl.get_slice(%232 : i128, %c15_9, %c7_10) -> i9
                              %c24_11 = arith.constant 24 : index
                              %c16_12 = arith.constant 16 : index
                              %243 = hcl.get_slice(%232 : i128, %c24_11, %c16_12) -> i9
                              %c33_13 = arith.constant 33 : index
                              %c25_14 = arith.constant 25 : index
                              %244 = hcl.get_slice(%232 : i128, %c33_13, %c25_14) -> i9
                              %c95_15 = arith.constant 95 : index
                              %c34_16 = arith.constant 34 : index
                              %245 = hcl.get_slice(%232 : i128, %c95_15, %c34_16) -> i62
                              %c127_17 = arith.constant 127 : index
                              %c96_18 = arith.constant 96 : index
                              %246 = hcl.get_slice(%232 : i128, %c127_17, %c96_18) -> i32
                              affine.store %240, %233[0] : memref<1xi6>
                              affine.store %241, %234[0] : memref<1xi1>
                              affine.store %242, %235[0] : memref<1xi9>
                              affine.store %243, %236[0] : memref<1xi9>
                              affine.store %244, %237[0] : memref<1xi9>
                              affine.store %245, %238[0] : memref<1xi62>
                              affine.store %246, %239[0] : memref<1xi32>
                              hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                              %247 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                              hcl.print(%247) {format = "ip=%d ", signedness = "u"} : i5
                              %248 = affine.load %235[0] : memref<1xi9>
                              %249 = affine.load %236[0] : memref<1xi9>
                              %250 = affine.load %237[0] : memref<1xi9>
                              %251 = affine.load %239[0] : memref<1xi32>
                              hcl.print(%248, %249, %250, %251) {format = "psub res=0x%x a=0x%x b=0x%x q=0x%x", signedness = "____"} : i9, i9, i9, i32
                              hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                              %252 = memref.alloc() : memref<1xi7>
                              %253 = memref.alloc() : memref<1xi2>
                              %c6_19 = arith.constant 6 : index
                              %c0_20 = arith.constant 0 : index
                              %254 = hcl.get_slice(%249 : i9, %c6_19, %c0_20) -> i7
                              %c8 = arith.constant 8 : index
                              %c7_21 = arith.constant 7 : index
                              %255 = hcl.get_slice(%249 : i9, %c8, %c7_21) -> i2
                              affine.store %254, %252[0] : memref<1xi7>
                              affine.store %255, %253[0] : memref<1xi2>
                              %256 = memref.alloc() : memref<1xi7>
                              %257 = memref.alloc() : memref<1xi2>
                              %c6_22 = arith.constant 6 : index
                              %c0_23 = arith.constant 0 : index
                              %258 = hcl.get_slice(%250 : i9, %c6_22, %c0_23) -> i7
                              %c8_24 = arith.constant 8 : index
                              %c7_25 = arith.constant 7 : index
                              %259 = hcl.get_slice(%250 : i9, %c8_24, %c7_25) -> i2
                              affine.store %258, %256[0] : memref<1xi7>
                              affine.store %259, %257[0] : memref<1xi2>
                              %260 = memref.alloc() : memref<1xi7>
                              %261 = memref.alloc() : memref<1xi2>
                              %c6_26 = arith.constant 6 : index
                              %c0_27 = arith.constant 0 : index
                              %262 = hcl.get_slice(%248 : i9, %c6_26, %c0_27) -> i7
                              %c8_28 = arith.constant 8 : index
                              %c7_29 = arith.constant 7 : index
                              %263 = hcl.get_slice(%248 : i9, %c8_28, %c7_29) -> i2
                              affine.store %262, %260[0] : memref<1xi7>
                              affine.store %263, %261[0] : memref<1xi2>
                              %264 = affine.load %261[0] : memref<1xi2>
                              %265 = affine.load %260[0] : memref<1xi7>
                              %266 = memref.alloc() : memref<1xi7>
                              %267 = memref.alloc() : memref<1xi2>
                              %c6_30 = arith.constant 6 : index
                              %c0_31 = arith.constant 0 : index
                              %268 = hcl.get_slice(%249 : i9, %c6_30, %c0_31) -> i7
                              %c8_32 = arith.constant 8 : index
                              %c7_33 = arith.constant 7 : index
                              %269 = hcl.get_slice(%249 : i9, %c8_32, %c7_33) -> i2
                              affine.store %268, %266[0] : memref<1xi7>
                              affine.store %269, %267[0] : memref<1xi2>
                              %270 = affine.load %267[0] : memref<1xi2>
                              %271 = affine.load %266[0] : memref<1xi7>
                              %272 = memref.alloc() : memref<1xi7>
                              %273 = memref.alloc() : memref<1xi2>
                              %c6_34 = arith.constant 6 : index
                              %c0_35 = arith.constant 0 : index
                              %274 = hcl.get_slice(%250 : i9, %c6_34, %c0_35) -> i7
                              %c8_36 = arith.constant 8 : index
                              %c7_37 = arith.constant 7 : index
                              %275 = hcl.get_slice(%250 : i9, %c8_36, %c7_37) -> i2
                              affine.store %274, %272[0] : memref<1xi7>
                              affine.store %275, %273[0] : memref<1xi2>
                              %276 = affine.load %273[0] : memref<1xi2>
                              %277 = affine.load %272[0] : memref<1xi7>
                              %278 = hcl.create_op_handle "bflyfn"
                              %279 = hcl.create_loop_handle %278, "i"
                              affine.for %arg2 = 0 to 8192 {
                                %280 = arith.index_cast %270 : i2 to index
                                %281 = arith.index_cast %271 : i7 to index
                                %282 = memref.load %39[%280, %281, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %283 = arith.index_cast %276 : i2 to index
                                %284 = arith.index_cast %277 : i7 to index
                                %285 = memref.load %39[%283, %284, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %286 = arith.addi %282, %285 {unsigned} : i32
                                %287 = arith.addi %251, %282 {unsigned} : i32
                                %288 = arith.subi %287, %285 {unsigned} : i32
                                %289 = arith.remsi %288, %251 : i32
                                %290 = arith.index_cast %264 : i2 to index
                                %291 = arith.index_cast %265 : i7 to index
                                memref.store %289, %39[%290, %291, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                              } {loop_name = "i", op_name = "bflyfn"}
                            } else {
                              %232 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                              %233 = arith.extui %232 : i16 to i32
                              %c8_i32 = arith.constant 8 : i32
                              %234 = arith.cmpi eq, %233, %c8_i32 : i32
                              scf.if %234 {
                                %235 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                %236 = memref.alloc() : memref<1xi6>
                                %237 = memref.alloc() : memref<1xi7>
                                %238 = memref.alloc() : memref<1xi115>
                                %c5_5 = arith.constant 5 : index
                                %c0_6 = arith.constant 0 : index
                                %239 = hcl.get_slice(%235 : i128, %c5_5, %c0_6) -> i6
                                %c12 = arith.constant 12 : index
                                %c6_7 = arith.constant 6 : index
                                %240 = hcl.get_slice(%235 : i128, %c12, %c6_7) -> i7
                                %c127_8 = arith.constant 127 : index
                                %c13 = arith.constant 13 : index
                                %241 = hcl.get_slice(%235 : i128, %c127_8, %c13) -> i115
                                affine.store %239, %236[0] : memref<1xi6>
                                affine.store %240, %237[0] : memref<1xi7>
                                affine.store %241, %238[0] : memref<1xi115>
                                %242 = affine.load %46[0] {from = "nop_count", unsigned} : memref<1xi32>
                                %243 = affine.load %237[0] : memref<1xi7>
                                %244 = arith.extsi %243 {unsigned} : i7 to i32
                                %245 = arith.cmpi ult, %242, %244 : i32
                                scf.if %245 {
                                  %246 = affine.load %46[0] {from = "nop_count", unsigned} : memref<1xi32>
                                  %247 = arith.addi %246, %c1_i32_2 : i32
                                  affine.store %247, %46[0] {to = "nop_count", unsigned} : memref<1xi32>
                                  %248 = affine.load %76[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                                  %249 = arith.addi %248, %c1_i32_2 : i32
                                  affine.store %249, %76[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                                  %250 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                                  affine.store %250, %66[0] {to = "flags_stall", unsigned} : memref<1xi1>
                                  affine.store %250, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                                  affine.store %250, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                                  %251 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                  %252 = arith.extui %251 : i1 to i32
                                  %253 = arith.cmpi eq, %252, %c0_i32_0 : i32
                                  %254 = affine.load %67[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                                  %255 = arith.extui %254 : i1 to i32
                                  %256 = arith.cmpi eq, %255, %c0_i32_0 : i32
                                  scf.if %256 {
                                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %257 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                    hcl.print(%257) {format = "ip=%d ", signedness = "u"} : i5
                                    hcl.print(%243) {format = "nop count=0x%x", signedness = "_"} : i7
                                    hcl.print(%c0_i32_0) {format = "    <stall>\0A", signedness = "_"} : i32
                                  } else {
                                    affine.store %c0_i32_0, %46[0] {to = "nop_count", unsigned} : memref<1xi32>
                                    affine.store %250, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                                    %257 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                    %258 = arith.extui %257 : i1 to i32
                                    %259 = arith.cmpi eq, %258, %c0_i32_0 : i32
                                    scf.if %259 {
                                    } else {
                                      %261 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                                      %262 = arith.extui %261 : i16 to i32
                                      %c9_i32 = arith.constant 9 : i32
                                      %263 = arith.cmpi eq, %262, %c9_i32 : i32
                                      scf.if %263 {
                                        %264 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                        %265 = memref.alloc() : memref<1xi6>
                                        %266 = memref.alloc() : memref<1xi1>
                                        %267 = memref.alloc() : memref<1xi9>
                                        %268 = memref.alloc() : memref<1xi112>
                                        %c5_9 = arith.constant 5 : index
                                        %c0_10 = arith.constant 0 : index
                                        %269 = hcl.get_slice(%264 : i128, %c5_9, %c0_10) -> i6
                                        %c6_11 = arith.constant 6 : index
                                        %c6_12 = arith.constant 6 : index
                                        %270 = hcl.get_slice(%264 : i128, %c6_11, %c6_12) -> i1
                                        %c15_13 = arith.constant 15 : index
                                        %c7_14 = arith.constant 7 : index
                                        %271 = hcl.get_slice(%264 : i128, %c15_13, %c7_14) -> i9
                                        %c127_15 = arith.constant 127 : index
                                        %c16_16 = arith.constant 16 : index
                                        %272 = hcl.get_slice(%264 : i128, %c127_15, %c16_16) -> i112
                                        affine.store %269, %265[0] : memref<1xi6>
                                        affine.store %270, %266[0] : memref<1xi1>
                                        affine.store %271, %267[0] : memref<1xi9>
                                        affine.store %272, %268[0] : memref<1xi112>
                                        %273 = affine.load %22[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                        %274 = arith.extui %273 : i3 to i32
                                        %275 = arith.cmpi eq, %274, %c1_i32_2 : i32
                                        scf.if %275 {
                                          hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                          %276 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                          hcl.print(%276) {format = "ip=%d ", signedness = "u"} : i5
                                          %277 = affine.load %266[0] : memref<1xi1>
                                          %278 = affine.load %267[0] : memref<1xi9>
                                          hcl.print(%277, %278) {format = "cstore dbg=0x%x addr=0x%x", signedness = "__"} : i1, i9
                                          hcl.print(%c0_i32_0) {format = "    <got matching cfetch cstore!>\0A", signedness = "_"} : i32
                                          %279 = memref.alloc() : memref<1xi7>
                                          %280 = memref.alloc() : memref<1xi2>
                                          %c6_17 = arith.constant 6 : index
                                          %c0_18 = arith.constant 0 : index
                                          %281 = hcl.get_slice(%278 : i9, %c6_17, %c0_18) -> i7
                                          %c8 = arith.constant 8 : index
                                          %c7_19 = arith.constant 7 : index
                                          %282 = hcl.get_slice(%278 : i9, %c8, %c7_19) -> i2
                                          affine.store %281, %279[0] : memref<1xi7>
                                          affine.store %282, %280[0] : memref<1xi2>
                                          %283 = affine.load %280[0] : memref<1xi2>
                                          %284 = affine.load %279[0] : memref<1xi7>
                                          %285 = affine.load %24[0] {from = "cstore_spadaddr", unsigned} : memref<1xi48>
                                          %286 = arith.addi %285, %99 {unsigned} : i48
                                          %287 = memref.alloc() {name = "count", unsigned} : memref<1xi32>
                                          %c8192_i32 = arith.constant {unsigned} 8192 : i32
                                          affine.store %c8192_i32, %287[0] {to = "count", unsigned} : memref<1xi32>
                                          %288 = affine.load %287[0] {from = "count", unsigned} : memref<1xi32>
                                          %289 = memref.alloc() {name = "src_addr", unsigned} : memref<1xi32>
                                          affine.store %c0_i32, %289[0] {to = "src_addr", unsigned} : memref<1xi32>
                                          %290 = affine.load %289[0] {from = "src_addr", unsigned} : memref<1xi32>
                                          %291 = memref.alloc() {name = "dst_addr", unsigned} : memref<1xi48>
                                          affine.store %286, %291[0] {to = "dst_addr", unsigned} : memref<1xi48>
                                          %292 = affine.load %291[0] {from = "dst_addr", unsigned} : memref<1xi48>
                                          %293 = arith.addi %290, %288 {unsigned} : i32
                                          %c8192_i32_20 = arith.constant 8192 : i32
                                          %294 = hcl.create_op_handle "copyN"
                                          %295 = hcl.create_loop_handle %294, "i"
                                          %296 = arith.index_cast %c0_i32_0 : i32 to index
                                          %297 = arith.index_cast %288 : i32 to index
                                          %298 = arith.index_cast %c1_i32_2 : i32 to index
                                          scf.for %arg2 = %296 to %297 step %298 {
                                            %302 = arith.index_cast %290 : i32 to index
                                            %303 = arith.addi %302, %arg2 : index
                                            %304 = arith.index_cast %283 : i2 to index
                                            %305 = arith.index_cast %284 : i7 to index
                                            %306 = memref.load %39[%304, %305, %303] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                            %307 = arith.index_cast %292 : i48 to index
                                            %308 = arith.addi %307, %arg2 : index
                                            memref.store %306, %0[%308] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                          } {loop_name = "i", op_name = "copyN"}
                                          affine.store %250, %23[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                                          affine.store %250, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                                          %299 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                                          %300 = arith.extui %299 : i1 to i32
                                          %301 = arith.cmpi eq, %300, %c0_i32_0 : i32
                                          scf.if %301 {
                                          } else {
                                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                            %302 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                            hcl.print(%302) {format = "ip=%d ", signedness = "u"} : i5
                                            hcl.print(%277, %278) {format = "cstore dbg=0x%x addr=0x%x", signedness = "__"} : i1, i9
                                            hcl.print(%c0_i32_0) {format = "    <no matching cfetch cstore?>\0A", signedness = "_"} : i32
                                          }
                                        } else {
                                          %276 = affine.load %171[0] {from = "inst_id", unsigned} : memref<1xi16>
                                          %277 = arith.extui %276 : i16 to i32
                                          %c10_i32 = arith.constant 10 : i32
                                          %278 = arith.cmpi eq, %277, %c10_i32 : i32
                                          scf.if %278 {
                                            %279 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                            %280 = memref.alloc() : memref<1xi6>
                                            %281 = memref.alloc() : memref<1xi1>
                                            %282 = memref.alloc() : memref<1xi9>
                                            %283 = memref.alloc() : memref<1xi9>
                                            %284 = memref.alloc() : memref<1xi103>
                                            %c5_17 = arith.constant 5 : index
                                            %c0_18 = arith.constant 0 : index
                                            %285 = hcl.get_slice(%279 : i128, %c5_17, %c0_18) -> i6
                                            %c6_19 = arith.constant 6 : index
                                            %c6_20 = arith.constant 6 : index
                                            %286 = hcl.get_slice(%279 : i128, %c6_19, %c6_20) -> i1
                                            %c15_21 = arith.constant 15 : index
                                            %c7_22 = arith.constant 7 : index
                                            %287 = hcl.get_slice(%279 : i128, %c15_21, %c7_22) -> i9
                                            %c24_23 = arith.constant 24 : index
                                            %c16_24 = arith.constant 16 : index
                                            %288 = hcl.get_slice(%279 : i128, %c24_23, %c16_24) -> i9
                                            %c127_25 = arith.constant 127 : index
                                            %c25_26 = arith.constant 25 : index
                                            %289 = hcl.get_slice(%279 : i128, %c127_25, %c25_26) -> i103
                                            affine.store %285, %280[0] : memref<1xi6>
                                            affine.store %286, %281[0] : memref<1xi1>
                                            affine.store %287, %282[0] : memref<1xi9>
                                            affine.store %288, %283[0] : memref<1xi9>
                                            affine.store %289, %284[0] : memref<1xi103>
                                            hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                            %290 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                            hcl.print(%290) {format = "ip=%d ", signedness = "u"} : i5
                                            %291 = affine.load %281[0] : memref<1xi1>
                                            %292 = affine.load %282[0] : memref<1xi9>
                                            %293 = affine.load %283[0] : memref<1xi9>
                                            hcl.print(%291, %292, %293) {format = "move dbg=0x%x res=0x%x a=0x%x", signedness = "___"} : i1, i9, i9
                                            hcl.print(%c0_i32_0) {format = "    \0A", signedness = "_"} : i32
                                            %294 = memref.alloc() : memref<1xi7>
                                            %295 = memref.alloc() : memref<1xi2>
                                            %c6_27 = arith.constant 6 : index
                                            %c0_28 = arith.constant 0 : index
                                            %296 = hcl.get_slice(%292 : i9, %c6_27, %c0_28) -> i7
                                            %c8 = arith.constant 8 : index
                                            %c7_29 = arith.constant 7 : index
                                            %297 = hcl.get_slice(%292 : i9, %c8, %c7_29) -> i2
                                            affine.store %296, %294[0] : memref<1xi7>
                                            affine.store %297, %295[0] : memref<1xi2>
                                            %298 = affine.load %295[0] : memref<1xi2>
                                            %299 = affine.load %294[0] : memref<1xi7>
                                            %300 = memref.alloc() : memref<1xi7>
                                            %301 = memref.alloc() : memref<1xi2>
                                            %c6_30 = arith.constant 6 : index
                                            %c0_31 = arith.constant 0 : index
                                            %302 = hcl.get_slice(%293 : i9, %c6_30, %c0_31) -> i7
                                            %c8_32 = arith.constant 8 : index
                                            %c7_33 = arith.constant 7 : index
                                            %303 = hcl.get_slice(%293 : i9, %c8_32, %c7_33) -> i2
                                            affine.store %302, %300[0] : memref<1xi7>
                                            affine.store %303, %301[0] : memref<1xi2>
                                            %304 = affine.load %301[0] : memref<1xi2>
                                            %305 = affine.load %300[0] : memref<1xi7>
                                            %306 = hcl.create_op_handle "bflyfn"
                                            %307 = hcl.create_loop_handle %306, "i"
                                            affine.for %arg2 = 0 to 8192 {
                                              %308 = arith.index_cast %304 : i2 to index
                                              %309 = arith.index_cast %305 : i7 to index
                                              %310 = memref.load %39[%308, %309, %arg2] {from = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                              %311 = arith.addi %310, %c0_i32_0 : i32
                                              %c4294967295_i64 = arith.constant 4294967295 : i64
                                              %312 = arith.extsi %311 : i32 to i64
                                              %313 = arith.remsi %312, %c4294967295_i64 : i64
                                              %314 = arith.extui %310 : i32 to i64
                                              %315 = arith.addi %c4294967295_i64, %314 : i64
                                              %316 = arith.extsi %c0_i32_0 : i32 to i64
                                              %317 = arith.subi %315, %316 : i64
                                              %318 = arith.trunci %313 {unsigned} : i64 to i32
                                              %319 = arith.index_cast %298 : i2 to index
                                              %320 = arith.index_cast %299 : i7 to index
                                              memref.store %318, %39[%319, %320, %arg2] {to = "RF.alloc_c", unsigned} : memref<4x72x8192xi32>
                                            } {loop_name = "i", op_name = "bflyfn"}
                                          } else {
                                            %279 = affine.load %199[0] {from = "execute_inst", unsigned} : memref<1xi128>
                                            hcl.print(%c0_i32_0) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                            %c127_17 = arith.constant 127 : index
                                            %c64 = arith.constant 64 : index
                                            %280 = hcl.get_slice(%279 : i128, %c127_17, %c64) {unsigned} -> i128
                                            hcl.print(%280) {format = "%016lx", signedness = "u"} : i128
                                            %c63 = arith.constant 63 : index
                                            %281 = hcl.get_slice(%279 : i128, %c63, %c0) {unsigned} -> i128
                                            hcl.print(%281) {format = "%016lx", signedness = "u"} : i128
                                            hcl.print(%c0_i32_0) {format = "\0A", signedness = "_"} : i32
                                          }
                                        }
                                      }
                                    }
                                    hcl.print(%c0_i32_0) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %260 = affine.load %153[0] {from = "_cur_address", unsigned} : memref<1xi5>
                                    hcl.print(%260) {format = "ip=%d ", signedness = "u"} : i5
                                    hcl.print(%243) {format = "nop count=0x%x", signedness = "_"} : i7
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
              %203 = affine.load %169[0] {from = "inst_lat", unsigned} : memref<1xi32>
              %204 = arith.cmpi ne, %203, %c0_i32_0 : i32
              scf.if %204 {
                %211 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %211, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                %212 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %213 = arith.extui %212 : i1 to i32
                %214 = arith.cmpi eq, %213, %c0_i32_0 : i32
              }
              %205 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
              %206 = arith.extui %205 : i1 to i32
              %207 = arith.cmpi eq, %206, %c0_i32_0 : i32
              scf.if %207 {
                %211 = affine.load %75[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
                %212 = arith.addi %211, %c1_i32_2 : i32
                affine.store %212, %75[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
                %213 = affine.load %72[0] {from = "inst_naddr", unsigned} : memref<1xi5>
                affine.store %213, %71[0] {to = "inst_addr", unsigned} : memref<1xi5>
                affine.store %96, %67[0] {to = "flags_stalled", unsigned} : memref<1xi1>
              }
              %208 = affine.load %140[0] {from = "addr_top", unsigned} : memref<1xi5>
              %209 = affine.load %72[0] {from = "inst_naddr", unsigned} : memref<1xi5>
              %210 = arith.cmpi eq, %208, %209 : i5
              scf.if %210 {
                %211 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
                affine.store %211, %70[0] {to = "addr_stop", unsigned} : memref<1xi1>
                affine.store %211, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                %212 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                %213 = arith.extui %212 : i1 to i32
                %214 = arith.cmpi eq, %213, %c0_i32_0 : i32
                scf.if %214 {
                } else {
                  %215 = affine.load %169[0] {from = "inst_lat", unsigned} : memref<1xi32>
                  %c2_i32 = arith.constant 2 : i32
                  %216 = arith.subi %215, %c2_i32 : i32
                  affine.store %216, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
                  %217 = affine.load %77[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                  %218 = arith.addi %217, %c1_i32_2 : i32
                  affine.store %218, %77[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                  affine.store %211, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
                  affine.store %211, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                  %219 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                  %220 = arith.extui %219 : i1 to i32
                  %221 = arith.cmpi eq, %220, %c0_i32_0 : i32
                  scf.if %221 {
                  } else {
                    %222 = affine.load %74[0] {from = "latstalled", unsigned} : memref<1xi1>
                    %223 = arith.extui %222 : i1 to i32
                    %224 = affine.load %73[0] {from = "latency_count", unsigned} : memref<1xi32>
                    %225 = arith.subi %224, %c1_i32_2 : i32
                    affine.store %225, %73[0] {to = "latency_count", unsigned} : memref<1xi32>
                    %226 = affine.load %77[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
                    %227 = arith.addi %226, %c1_i32_2 : i32
                    affine.store %227, %77[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
                    affine.store %211, %74[0] {to = "latstalled", unsigned} : memref<1xi1>
                    affine.store %211, %68[0] {to = "flags_break", unsigned} : memref<1xi1>
                    %228 = affine.load %66[0] {from = "flags_stall", unsigned} : memref<1xi1>
                    %229 = arith.extui %228 : i1 to i32
                    %230 = arith.cmpi eq, %229, %c0_i32_0 : i32
                  }
                }
              }
            }
          }
          scf.yield
        }
        %147 = affine.load %70[0] {from = "addr_stop", unsigned} : memref<1xi1>
        %148 = arith.extui %147 : i1 to i32
        %149 = arith.cmpi ne, %148, %c0_i32_0 : i32
        scf.if %149 {
          affine.store %96, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
        } else {
          %150 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
          %151 = arith.extui %150 : i4 to i32
          %c1_i32_2 = arith.constant 1 : i32
          %152 = arith.cmpi eq, %151, %c1_i32_2 : i32
          scf.if %152 {
            %157 = affine.load %64[0] {from = "flags_active", unsigned} : memref<1xi1>
            %158 = arith.extui %157 : i1 to i32
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
            %159 = arith.trunci %c1_i32_2 {unsigned} : i32 to i1
            affine.store %159, %64[0] {to = "flags_active", unsigned} : memref<1xi1>
          }
          %153 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
          %154 = arith.extui %153 : i4 to i32
          %155 = arith.subi %154, %c1_i32_2 : i32
          %156 = arith.trunci %155 {unsigned} : i32 to i4
          affine.store %156, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
        }
      }
      %135 = affine.load %47[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %136 = arith.extui %135 : i1 to i32
      %137 = arith.cmpi ne, %136, %c0_i32_0 : i32
      scf.if %137 {
        %140 = hcl.create_op_handle "ntt_out_swizzle_ot"
        %141 = hcl.create_loop_handle %140, "i"
        affine.for %arg2 = 0 to 64 {
          %c64_i32 = arith.constant 64 : i32
          %144 = arith.index_cast %c64_i32 : i32 to index
          %145 = arith.muli %arg2, %144 : index
          %c128_i32 = arith.constant 128 : i32
          %146 = arith.index_cast %c128_i32 : i32 to index
          %147 = arith.muli %arg2, %146 : index
          %148 = hcl.create_op_handle "ot64"
          %149 = hcl.create_loop_handle %148, "j"
          affine.for %arg3 = 0 to 64 {
            %152 = arith.index_cast %c0_i32_0 : i32 to index
            %153 = arith.addi %152, %145 : index
            %154 = arith.addi %147, %arg3 : index
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
            %165 = memref.load %54[%164] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %165, %159[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %166 = affine.load %159[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %167 = arith.addi %153, %arg3 : index
            %168 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %169 = arith.index_cast %167 {unsigned} : index to i32
            affine.store %169, %168[0] {to = "write_addr", unsigned} : memref<1xi32>
            %170 = affine.load %168[0] {from = "write_addr", unsigned} : memref<1xi32>
            %171 = arith.addi %170, %c1_i32_2 : i32
            %172 = arith.index_cast %170 : i32 to index
            memref.store %166, %52[%172] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          %150 = hcl.create_op_handle "ot64"
          %151 = hcl.create_loop_handle %150, "j"
          affine.for %arg3 = 0 to 64 {
            %152 = arith.addi %147, %144 : index
            %153 = arith.index_cast %c0_i32_0 : i32 to index
            %154 = arith.addi %153, %145 : index
            %155 = arith.addi %152, %arg3 : index
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
            memref.store %167, %53[%173] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ot"}
        %142 = hcl.create_op_handle "ntt_out_swizzle_ob"
        %143 = hcl.create_loop_handle %142, "i"
        affine.for %arg2 = 0 to 64 {
          %c64_i32 = arith.constant 64 : i32
          %144 = arith.index_cast %c64_i32 : i32 to index
          %145 = arith.muli %arg2, %144 : index
          %c128_i32 = arith.constant 128 : i32
          %146 = arith.index_cast %c128_i32 : i32 to index
          %147 = arith.muli %arg2, %146 : index
          %148 = hcl.create_op_handle "ot64"
          %149 = hcl.create_loop_handle %148, "j"
          affine.for %arg3 = 0 to 64 {
            %c4096_i32 = arith.constant 4096 : i32
            %152 = arith.index_cast %c4096_i32 : i32 to index
            %153 = arith.addi %152, %145 : index
            %154 = arith.addi %147, %arg3 : index
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
            %165 = memref.load %55[%164] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %165, %159[%c0] {to = "Mem.read_c"} : memref<1xi32>
            %166 = affine.load %159[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
            %167 = arith.addi %153, %arg3 : index
            %168 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
            %169 = arith.index_cast %167 {unsigned} : index to i32
            affine.store %169, %168[0] {to = "write_addr", unsigned} : memref<1xi32>
            %170 = affine.load %168[0] {from = "write_addr", unsigned} : memref<1xi32>
            %171 = arith.addi %170, %c1_i32_2 : i32
            %172 = arith.index_cast %170 : i32 to index
            memref.store %166, %52[%172] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          %150 = hcl.create_op_handle "ot64"
          %151 = hcl.create_loop_handle %150, "j"
          affine.for %arg3 = 0 to 64 {
            %152 = arith.addi %147, %144 : index
            %c4096_i32 = arith.constant 4096 : i32
            %153 = arith.index_cast %c4096_i32 : i32 to index
            %154 = arith.addi %153, %145 : index
            %155 = arith.addi %152, %arg3 : index
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
            memref.store %167, %53[%173] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ob"}
      } else {
        %140 = affine.load %48[0] {from = "flag_intt", unsigned} : memref<1xi1>
        %141 = arith.extui %140 : i1 to i32
        %142 = arith.cmpi ne, %141, %c0_i32_0 : i32
        scf.if %142 {
          %143 = hcl.create_op_handle "intt_out_swizzle"
          %144 = hcl.create_loop_handle %143, "i"
          affine.for %arg2 = 0 to 128 {
            %c64_i32 = arith.constant 64 : i32
            %145 = arith.index_cast %c64_i32 : i32 to index
            %146 = arith.muli %arg2, %145 : index
            %147 = hcl.create_op_handle "nttin_even_odd_arf"
            %148 = hcl.create_loop_handle %147, "j"
            affine.for %arg3 = 0 to 32 {
              %151 = arith.index_cast %c0_i32_0 : i32 to index
              %152 = arith.addi %146, %151 : index
              %153 = arith.addi %152, %arg3 : index
              %154 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              %155 = arith.index_cast %153 {unsigned} : index to i32
              affine.store %155, %154[0] {to = "read_addr", unsigned} : memref<1xi32>
              %156 = affine.load %154[0] {from = "read_addr", unsigned} : memref<1xi32>
              %c1_i32_2 = arith.constant 1 : i32
              %157 = arith.addi %156, %c1_i32_2 : i32
              %c8192_i32 = arith.constant 8192 : i32
              %158 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %159 = hcl.create_op_handle "Mem.read_c"
              %160 = hcl.create_loop_handle %159, "i"
              %161 = affine.load %154[0] {from = "read_addr", unsigned} : memref<1xi32>
              %162 = arith.index_cast %161 : i32 to index
              %163 = arith.addi %162, %c0 : index
              %164 = memref.load %58[%163] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %164, %158[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %165 = affine.load %158[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %166 = arith.index_cast %c2_i32 : i32 to index
              %167 = arith.muli %166, %arg3 : index
              %168 = arith.addi %146, %167 : index
              %169 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %170 = arith.index_cast %168 {unsigned} : index to i32
              affine.store %170, %169[0] {to = "write_addr", unsigned} : memref<1xi32>
              %171 = affine.load %169[0] {from = "write_addr", unsigned} : memref<1xi32>
              %172 = arith.addi %171, %c1_i32_2 : i32
              %173 = arith.index_cast %171 : i32 to index
              memref.store %165, %56[%173] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
              %174 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              affine.store %155, %174[0] {to = "read_addr", unsigned} : memref<1xi32>
              %175 = affine.load %174[0] {from = "read_addr", unsigned} : memref<1xi32>
              %176 = arith.addi %175, %c1_i32_2 : i32
              %177 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %178 = hcl.create_op_handle "Mem.read_c"
              %179 = hcl.create_loop_handle %178, "i"
              %180 = affine.load %174[0] {from = "read_addr", unsigned} : memref<1xi32>
              %181 = arith.index_cast %180 : i32 to index
              %182 = arith.addi %181, %c0 : index
              %183 = memref.load %59[%182] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %183, %177[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %184 = affine.load %177[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %185 = arith.index_cast %c1_i32_2 : i32 to index
              %186 = arith.addi %168, %185 : index
              %187 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %188 = arith.index_cast %186 {unsigned} : index to i32
              affine.store %188, %187[0] {to = "write_addr", unsigned} : memref<1xi32>
              %189 = affine.load %187[0] {from = "write_addr", unsigned} : memref<1xi32>
              %190 = arith.addi %189, %c1_i32_2 : i32
              %191 = arith.index_cast %189 : i32 to index
              memref.store %184, %56[%191] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
            %149 = hcl.create_op_handle "nttin_even_odd_brf"
            %150 = hcl.create_loop_handle %149, "j"
            affine.for %arg3 = 0 to 32 {
              %c32_i32 = arith.constant 32 : i32
              %151 = arith.index_cast %c32_i32 : i32 to index
              %152 = arith.addi %146, %151 : index
              %153 = arith.addi %152, %arg3 : index
              %154 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              %155 = arith.index_cast %153 {unsigned} : index to i32
              affine.store %155, %154[0] {to = "read_addr", unsigned} : memref<1xi32>
              %156 = affine.load %154[0] {from = "read_addr", unsigned} : memref<1xi32>
              %c1_i32_2 = arith.constant 1 : i32
              %157 = arith.addi %156, %c1_i32_2 : i32
              %c8192_i32 = arith.constant 8192 : i32
              %158 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %159 = hcl.create_op_handle "Mem.read_c"
              %160 = hcl.create_loop_handle %159, "i"
              %161 = affine.load %154[0] {from = "read_addr", unsigned} : memref<1xi32>
              %162 = arith.index_cast %161 : i32 to index
              %163 = arith.addi %162, %c0 : index
              %164 = memref.load %58[%163] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %164, %158[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %165 = affine.load %158[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %166 = arith.index_cast %c2_i32 : i32 to index
              %167 = arith.muli %166, %arg3 : index
              %168 = arith.addi %146, %167 : index
              %169 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %170 = arith.index_cast %168 {unsigned} : index to i32
              affine.store %170, %169[0] {to = "write_addr", unsigned} : memref<1xi32>
              %171 = affine.load %169[0] {from = "write_addr", unsigned} : memref<1xi32>
              %172 = arith.addi %171, %c1_i32_2 : i32
              %173 = arith.index_cast %171 : i32 to index
              memref.store %165, %57[%173] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
              %174 = memref.alloc() {name = "read_addr", unsigned} : memref<1xi32>
              affine.store %155, %174[0] {to = "read_addr", unsigned} : memref<1xi32>
              %175 = affine.load %174[0] {from = "read_addr", unsigned} : memref<1xi32>
              %176 = arith.addi %175, %c1_i32_2 : i32
              %177 = memref.alloc() {name = "Mem.read_c", unsigned} : memref<1xi32>
              %178 = hcl.create_op_handle "Mem.read_c"
              %179 = hcl.create_loop_handle %178, "i"
              %180 = affine.load %174[0] {from = "read_addr", unsigned} : memref<1xi32>
              %181 = arith.index_cast %180 : i32 to index
              %182 = arith.addi %181, %c0 : index
              %183 = memref.load %59[%182] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %183, %177[%c0] {to = "Mem.read_c"} : memref<1xi32>
              %184 = affine.load %177[0] {from = "Mem.read_c", unsigned} : memref<1xi32>
              %185 = arith.index_cast %c1_i32_2 : i32 to index
              %186 = arith.addi %168, %185 : index
              %187 = memref.alloc() {name = "write_addr", unsigned} : memref<1xi32>
              %188 = arith.index_cast %186 {unsigned} : index to i32
              affine.store %188, %187[0] {to = "write_addr", unsigned} : memref<1xi32>
              %189 = affine.load %187[0] {from = "write_addr", unsigned} : memref<1xi32>
              %190 = arith.addi %189, %c1_i32_2 : i32
              %191 = arith.index_cast %189 : i32 to index
              memref.store %184, %57[%191] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
          } {loop_name = "i", op_name = "intt_out_swizzle"}
        }
      }
      %138 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      %c1_i32_1 = arith.constant 1 : i32
      %139 = arith.addi %138, %c1_i32_1 : i32
      affine.store %139, %94[0] {to = "sys_steps", unsigned} : memref<1xi32>
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

