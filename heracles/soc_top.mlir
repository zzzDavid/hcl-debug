module {
  func.func @top(%arg0: memref<33554432xi32>, %arg1: memref<10xi64>) attributes {bit, itypes = "uu", otypes = ""} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "SPAD.alloc_c"} : memref<33554432xi32>
    affine.for %arg2 = 0 to 33554432 {
      %c0_i32_0 = arith.constant 0 : i32
      affine.store %c0_i32_0, %0[%arg2] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
    } {loop_name = "i0", op_name = "SPAD.alloc_c"}
    %1 = memref.alloc() {name = "minstq.alloc_c"} : memref<16384xi64>
    affine.for %arg2 = 0 to 16384 {
      %c0_i32_0 = arith.constant 0 : i32
      %109 = arith.extsi %c0_i32_0 {unsigned} : i32 to i64
      affine.store %109, %1[%arg2] {to = "minstq.alloc_c", unsigned} : memref<16384xi64>
    } {loop_name = "i0", op_name = "minstq.alloc_c"}
    %2 = memref.alloc() {name = "flags_msyncc"} : memref<1xi1>
    %c0_i32 = arith.constant 0 : i32
    %3 = arith.trunci %c0_i32 {unsigned} : i32 to i1
    affine.store %3, %2[%c0] {to = "flags_msyncc", unsigned} : memref<1xi1>
    %4 = memref.alloc() {name = "flags_active"} : memref<1xi1>
    affine.store %3, %4[%c0] {to = "flags_active", unsigned} : memref<1xi1>
    %5 = memref.alloc() {name = "flags_halt"} : memref<1xi1>
    affine.store %3, %5[%c0] {to = "flags_halt", unsigned} : memref<1xi1>
    %6 = memref.alloc() {name = "flags_stall"} : memref<1xi1>
    affine.store %3, %6[%c0] {to = "flags_stall", unsigned} : memref<1xi1>
    %7 = memref.alloc() {name = "flags_stalled"} : memref<1xi1>
    affine.store %3, %7[%c0] {to = "flags_stalled", unsigned} : memref<1xi1>
    %8 = memref.alloc() {name = "flags_break"} : memref<1xi1>
    affine.store %3, %8[%c0] {to = "flags_break", unsigned} : memref<1xi1>
    %9 = memref.alloc() {name = "count_stop"} : memref<1xi1>
    affine.store %3, %9[%c0] {to = "count_stop", unsigned} : memref<1xi1>
    %10 = memref.alloc() {name = "addr_stop"} : memref<1xi1>
    affine.store %3, %10[%c0] {to = "addr_stop", unsigned} : memref<1xi1>
    %11 = memref.alloc() {name = "inst_addr"} : memref<1xi32>
    affine.store %c0_i32, %11[%c0] {to = "inst_addr", unsigned} : memref<1xi32>
    %12 = memref.alloc() {name = "inst_naddr"} : memref<1xi32>
    affine.store %c0_i32, %12[%c0] {to = "inst_naddr", unsigned} : memref<1xi32>
    %13 = memref.alloc() {name = "latency_count"} : memref<1xi32>
    affine.store %c0_i32, %13[%c0] {to = "latency_count", unsigned} : memref<1xi32>
    %14 = memref.alloc() {name = "latstalled"} : memref<1xi1>
    affine.store %3, %14[%c0] {to = "latstalled", unsigned} : memref<1xi1>
    %15 = memref.alloc() {name = "tele_inst_count"} : memref<1xi32>
    affine.store %c0_i32, %15[%c0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    %16 = memref.alloc() {name = "tele_stall_count"} : memref<1xi32>
    affine.store %c0_i32, %16[%c0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    %17 = memref.alloc() {name = "tele_latstall_count"} : memref<1xi32>
    affine.store %c0_i32, %17[%c0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    %18 = memref.alloc() {name = "xinstq.alloc_c"} : memref<32768xi128>
    affine.for %arg2 = 0 to 32768 {
      %109 = arith.extsi %c0_i32 {unsigned} : i32 to i128
      affine.store %109, %18[%arg2] {to = "xinstq.alloc_c", unsigned} : memref<32768xi128>
    } {loop_name = "i0", op_name = "xinstq.alloc_c"}
    %19 = memref.alloc() {name = "xinstq_bundles"} : memref<1xi32>
    affine.store %c0_i32, %19[%c0] {to = "xinstq_bundles", unsigned} : memref<1xi32>
    %20 = memref.alloc() {name = "cinstq.alloc_c"} : memref<16384xi64>
    affine.for %arg2 = 0 to 16384 {
      %109 = arith.extsi %c0_i32 {unsigned} : i32 to i64
      affine.store %109, %20[%arg2] {to = "cinstq.alloc_c", unsigned} : memref<16384xi64>
    } {loop_name = "i0", op_name = "cinstq.alloc_c"}
    %21 = memref.alloc() {name = "nop_count"} : memref<1xi32>
    affine.store %c0_i32, %21[%c0] {to = "nop_count", unsigned} : memref<1xi32>
    %22 = memref.alloc() {name = "csyncm"} : memref<1xi1>
    affine.store %3, %22[%c0] {to = "csyncm", unsigned} : memref<1xi1>
    %23 = memref.alloc() {name = "cstore_cycle"} : memref<1xi3>
    %24 = arith.trunci %c0_i32 {unsigned} : i32 to i3
    affine.store %24, %23[%c0] {to = "cstore_cycle", unsigned} : memref<1xi3>
    %25 = memref.alloc() {name = "cstore_valid"} : memref<1xi1>
    affine.store %3, %25[%c0] {to = "cstore_valid", unsigned} : memref<1xi1>
    %26 = memref.alloc() {name = "cstore_spadaddr"} : memref<1xi32>
    affine.store %c0_i32, %26[%c0] {to = "cstore_spadaddr", unsigned} : memref<1xi32>
    %27 = memref.alloc() {name = "flags_active_21"} : memref<1xi1>
    affine.store %3, %27[%c0] {to = "flags_active_21", unsigned} : memref<1xi1>
    %28 = memref.alloc() {name = "flags_halt_22"} : memref<1xi1>
    affine.store %3, %28[%c0] {to = "flags_halt_22", unsigned} : memref<1xi1>
    %29 = memref.alloc() {name = "flags_stall_23"} : memref<1xi1>
    affine.store %3, %29[%c0] {to = "flags_stall_23", unsigned} : memref<1xi1>
    %30 = memref.alloc() {name = "flags_stalled_24"} : memref<1xi1>
    affine.store %3, %30[%c0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
    %31 = memref.alloc() {name = "flags_break_25"} : memref<1xi1>
    affine.store %3, %31[%c0] {to = "flags_break_25", unsigned} : memref<1xi1>
    %32 = memref.alloc() {name = "count_stop_26"} : memref<1xi1>
    affine.store %3, %32[%c0] {to = "count_stop_26", unsigned} : memref<1xi1>
    %33 = memref.alloc() {name = "addr_stop_27"} : memref<1xi1>
    affine.store %3, %33[%c0] {to = "addr_stop_27", unsigned} : memref<1xi1>
    %34 = memref.alloc() {name = "inst_addr_28"} : memref<1xi32>
    affine.store %c0_i32, %34[%c0] {to = "inst_addr_28", unsigned} : memref<1xi32>
    %35 = memref.alloc() {name = "inst_naddr_29"} : memref<1xi32>
    affine.store %c0_i32, %35[%c0] {to = "inst_naddr_29", unsigned} : memref<1xi32>
    %36 = memref.alloc() {name = "latency_count_30"} : memref<1xi32>
    affine.store %c0_i32, %36[%c0] {to = "latency_count_30", unsigned} : memref<1xi32>
    %37 = memref.alloc() {name = "latstalled_31"} : memref<1xi1>
    affine.store %3, %37[%c0] {to = "latstalled_31", unsigned} : memref<1xi1>
    %38 = memref.alloc() {name = "tele_inst_count_32"} : memref<1xi32>
    affine.store %c0_i32, %38[%c0] {to = "tele_inst_count_32", unsigned} : memref<1xi32>
    %39 = memref.alloc() {name = "tele_stall_count_33"} : memref<1xi32>
    affine.store %c0_i32, %39[%c0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
    %40 = memref.alloc() {name = "tele_latstall_count_34"} : memref<1xi32>
    affine.store %c0_i32, %40[%c0] {to = "tele_latstall_count_34", unsigned} : memref<1xi32>
    %41 = memref.alloc() {name = "RFfoo.alloc_c"} : memref<4x72x8192xi32>
    affine.for %arg2 = 0 to 4 {
      affine.for %arg3 = 0 to 72 {
        affine.for %arg4 = 0 to 8192 {
          affine.store %c0_i32, %41[%arg2, %arg3, %arg4] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i2"}
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "RFfoo.alloc_c"}
    %42 = memref.alloc() {name = "twpwrs.alloc_c"} : memref<32x64xi32>
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 64 {
        affine.store %c0_i32, %42[%arg2, %arg3] {to = "twpwrs.alloc_c", unsigned} : memref<32x64xi32>
      } {loop_name = "i1"}
    } {loop_name = "i0", op_name = "twpwrs.alloc_c"}
    %43 = memref.alloc() {name = "mone.alloc_c"} : memref<64xi32>
    affine.for %arg2 = 0 to 64 {
      affine.store %c0_i32, %43[%arg2] {to = "mone.alloc_c", unsigned} : memref<64xi32>
    } {loop_name = "i0", op_name = "mone.alloc_c"}
    %44 = memref.alloc() {name = "nop_count_35"} : memref<1xi32>
    affine.store %c0_i32, %44[%c0] {to = "nop_count_35", unsigned} : memref<1xi32>
    %45 = memref.alloc() {name = "flag_ntt"} : memref<1xi1>
    affine.store %3, %45[%c0] {to = "flag_ntt", unsigned} : memref<1xi1>
    %46 = memref.alloc() {name = "flag_intt"} : memref<1xi1>
    affine.store %3, %46[%c0] {to = "flag_intt", unsigned} : memref<1xi1>
    %47 = memref.alloc() {name = "ntt_intt_top_addr"} : memref<1xi9>
    %48 = arith.trunci %c0_i32 {unsigned} : i32 to i9
    affine.store %48, %47[%c0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    %49 = memref.alloc() {name = "ntt_intt_bot_addr"} : memref<1xi9>
    affine.store %48, %49[%c0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    %50 = memref.alloc() {name = "instq.alloc_c"} : memref<16xi128>
    affine.for %arg2 = 0 to 16 {
      %109 = arith.extsi %c0_i32 {unsigned} : i32 to i128
      affine.store %109, %50[%arg2] {to = "instq.alloc_c", unsigned} : memref<16xi128>
    } {loop_name = "i0", op_name = "instq.alloc_c"}
    %51 = memref.alloc() {name = "nttdataintop.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %51[%arg2] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataintop.alloc_c"}
    %52 = memref.alloc() {name = "nttdatainbot.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %52[%arg2] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdatainbot.alloc_c"}
    %53 = memref.alloc() {name = "nttdataouttop.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %53[%arg2] {to = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataouttop.alloc_c"}
    %54 = memref.alloc() {name = "nttdataoutbot.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %54[%arg2] {to = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "nttdataoutbot.alloc_c"}
    %55 = memref.alloc() {name = "inttdataintop.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %55[%arg2] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataintop.alloc_c"}
    %56 = memref.alloc() {name = "inttdatainbot.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %56[%arg2] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdatainbot.alloc_c"}
    %57 = memref.alloc() {name = "inttdataouttop.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %57[%arg2] {to = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataouttop.alloc_c"}
    %58 = memref.alloc() {name = "inttdataoutbot.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %58[%arg2] {to = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "inttdataoutbot.alloc_c"}
    %59 = memref.alloc() {name = "ntt_ain.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %59[%arg2] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_ain.alloc_c"}
    %60 = memref.alloc() {name = "ntt_bin.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %60[%arg2] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_bin.alloc_c"}
    %61 = memref.alloc() {name = "ntt_win.alloc_c"} : memref<8192xi32>
    affine.for %arg2 = 0 to 8192 {
      affine.store %c0_i32, %61[%arg2] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
    } {loop_name = "i0", op_name = "ntt_win.alloc_c"}
    %62 = memref.alloc() {name = "mone_val"} : memref<1xi32>
    affine.store %c0_i32, %62[%c0] {to = "mone_val", unsigned} : memref<1xi32>
    %63 = memref.alloc() {name = "uc_start_delay"} : memref<1xi4>
    %64 = arith.trunci %c0_i32 {unsigned} : i32 to i4
    affine.store %64, %63[%c0] {to = "uc_start_delay", unsigned} : memref<1xi4>
    %65 = memref.alloc() {name = "flags_active_42"} : memref<1xi1>
    affine.store %3, %65[%c0] {to = "flags_active_42", unsigned} : memref<1xi1>
    %66 = memref.alloc() {name = "flags_halt_43"} : memref<1xi1>
    affine.store %3, %66[%c0] {to = "flags_halt_43", unsigned} : memref<1xi1>
    %67 = memref.alloc() {name = "flags_stall_44"} : memref<1xi1>
    affine.store %3, %67[%c0] {to = "flags_stall_44", unsigned} : memref<1xi1>
    %68 = memref.alloc() {name = "flags_stalled_45"} : memref<1xi1>
    affine.store %3, %68[%c0] {to = "flags_stalled_45", unsigned} : memref<1xi1>
    %69 = memref.alloc() {name = "flags_break_46"} : memref<1xi1>
    affine.store %3, %69[%c0] {to = "flags_break_46", unsigned} : memref<1xi1>
    %70 = memref.alloc() {name = "count_stop_47"} : memref<1xi1>
    affine.store %3, %70[%c0] {to = "count_stop_47", unsigned} : memref<1xi1>
    %71 = memref.alloc() {name = "addr_stop_48"} : memref<1xi1>
    affine.store %3, %71[%c0] {to = "addr_stop_48", unsigned} : memref<1xi1>
    %72 = memref.alloc() {name = "inst_addr_49"} : memref<1xi5>
    %73 = arith.trunci %c0_i32 {unsigned} : i32 to i5
    affine.store %73, %72[%c0] {to = "inst_addr_49", unsigned} : memref<1xi5>
    %74 = memref.alloc() {name = "inst_naddr_50"} : memref<1xi5>
    affine.store %73, %74[%c0] {to = "inst_naddr_50", unsigned} : memref<1xi5>
    %75 = memref.alloc() {name = "latency_count_51"} : memref<1xi32>
    affine.store %c0_i32, %75[%c0] {to = "latency_count_51", unsigned} : memref<1xi32>
    %76 = memref.alloc() {name = "latstalled_52"} : memref<1xi1>
    affine.store %3, %76[%c0] {to = "latstalled_52", unsigned} : memref<1xi1>
    %77 = memref.alloc() {name = "tele_inst_count_53"} : memref<1xi32>
    affine.store %c0_i32, %77[%c0] {to = "tele_inst_count_53", unsigned} : memref<1xi32>
    %78 = memref.alloc() {name = "tele_stall_count_54"} : memref<1xi32>
    affine.store %c0_i32, %78[%c0] {to = "tele_stall_count_54", unsigned} : memref<1xi32>
    %79 = memref.alloc() {name = "tele_latstall_count_55"} : memref<1xi32>
    affine.store %c0_i32, %79[%c0] {to = "tele_latstall_count_55", unsigned} : memref<1xi32>
    %80 = memref.alloc() {name = "flags_active_56"} : memref<1xi1>
    affine.store %3, %80[%c0] {to = "flags_active_56", unsigned} : memref<1xi1>
    %81 = memref.alloc() {name = "flags_halt_57"} : memref<1xi1>
    affine.store %3, %81[%c0] {to = "flags_halt_57", unsigned} : memref<1xi1>
    %82 = memref.alloc() {name = "flags_stall_58"} : memref<1xi1>
    affine.store %3, %82[%c0] {to = "flags_stall_58", unsigned} : memref<1xi1>
    %83 = memref.alloc() {name = "flags_stalled_59"} : memref<1xi1>
    affine.store %3, %83[%c0] {to = "flags_stalled_59", unsigned} : memref<1xi1>
    %84 = memref.alloc() {name = "flags_break_60"} : memref<1xi1>
    affine.store %3, %84[%c0] {to = "flags_break_60", unsigned} : memref<1xi1>
    %85 = memref.alloc() {name = "count_stop_61"} : memref<1xi1>
    affine.store %3, %85[%c0] {to = "count_stop_61", unsigned} : memref<1xi1>
    %86 = memref.alloc() {name = "addr_stop_62"} : memref<1xi1>
    affine.store %3, %86[%c0] {to = "addr_stop_62", unsigned} : memref<1xi1>
    %87 = memref.alloc() {name = "inst_addr_63"} : memref<1xi32>
    affine.store %c0_i32, %87[%c0] {to = "inst_addr_63", unsigned} : memref<1xi32>
    %88 = memref.alloc() {name = "inst_naddr_64"} : memref<1xi32>
    affine.store %c0_i32, %88[%c0] {to = "inst_naddr_64", unsigned} : memref<1xi32>
    %89 = memref.alloc() {name = "latency_count_65"} : memref<1xi32>
    affine.store %c0_i32, %89[%c0] {to = "latency_count_65", unsigned} : memref<1xi32>
    %90 = memref.alloc() {name = "latstalled_66"} : memref<1xi1>
    affine.store %3, %90[%c0] {to = "latstalled_66", unsigned} : memref<1xi1>
    %91 = memref.alloc() {name = "tele_inst_count_67"} : memref<1xi32>
    affine.store %c0_i32, %91[%c0] {to = "tele_inst_count_67", unsigned} : memref<1xi32>
    %92 = memref.alloc() {name = "tele_stall_count_68"} : memref<1xi32>
    affine.store %c0_i32, %92[%c0] {to = "tele_stall_count_68", unsigned} : memref<1xi32>
    %93 = memref.alloc() {name = "tele_latstall_count_69"} : memref<1xi32>
    affine.store %c0_i32, %93[%c0] {to = "tele_latstall_count_69", unsigned} : memref<1xi32>
    hcl.print(%c0_i32) {format = "FIX ME : binding minstq as hbm for now ...\0A", signedness = "_"} : i32
    hcl.print(%c0_i32) {format = "FIX ME : binding cinstq as hbm for now ...\0A", signedness = "_"} : i32
    %94 = memref.alloc() {name = "sys_steps"} : memref<1xi32>
    %c1_i32 = arith.constant 1 : i32
    affine.store %c1_i32, %94[%c0] {to = "sys_steps", unsigned} : memref<1xi32>
    %95 = memref.alloc() {name = "sys_done"} : memref<1xi1>
    affine.store %3, %95[%c0] {to = "sys_done", unsigned} : memref<1xi1>
    affine.store %3, %2[0] {to = "flags_msyncc", unsigned} : memref<1xi1>
    affine.store %3, %4[0] {to = "flags_active", unsigned} : memref<1xi1>
    affine.store %3, %5[0] {to = "flags_halt", unsigned} : memref<1xi1>
    affine.store %3, %6[0] {to = "flags_stall", unsigned} : memref<1xi1>
    affine.store %3, %7[0] {to = "flags_stalled", unsigned} : memref<1xi1>
    affine.store %3, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
    affine.store %3, %9[0] {to = "count_stop", unsigned} : memref<1xi1>
    affine.store %3, %10[0] {to = "addr_stop", unsigned} : memref<1xi1>
    affine.store %c0_i32, %11[0] {to = "inst_addr", unsigned} : memref<1xi32>
    affine.store %c0_i32, %12[0] {to = "inst_naddr", unsigned} : memref<1xi32>
    affine.store %c0_i32, %13[0] {to = "latency_count", unsigned} : memref<1xi32>
    affine.store %3, %14[0] {to = "latstalled", unsigned} : memref<1xi1>
    affine.store %c0_i32, %15[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %16[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %17[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
    affine.store %c0_i32, %21[0] {to = "nop_count", unsigned} : memref<1xi32>
    affine.store %3, %22[0] {to = "csyncm", unsigned} : memref<1xi1>
    affine.store %24, %23[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
    affine.store %3, %25[0] {to = "cstore_valid", unsigned} : memref<1xi1>
    affine.store %c0_i32, %26[0] {to = "cstore_spadaddr", unsigned} : memref<1xi32>
    affine.store %c0_i32, %19[0] {to = "xinstq_bundles", unsigned} : memref<1xi32>
    affine.store %3, %27[0] {to = "flags_active_21", unsigned} : memref<1xi1>
    affine.store %3, %28[0] {to = "flags_halt_22", unsigned} : memref<1xi1>
    affine.store %3, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
    affine.store %3, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
    affine.store %3, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
    affine.store %3, %32[0] {to = "count_stop_26", unsigned} : memref<1xi1>
    affine.store %3, %33[0] {to = "addr_stop_27", unsigned} : memref<1xi1>
    affine.store %c0_i32, %34[0] {to = "inst_addr_28", unsigned} : memref<1xi32>
    affine.store %c0_i32, %35[0] {to = "inst_naddr_29", unsigned} : memref<1xi32>
    affine.store %c0_i32, %36[0] {to = "latency_count_30", unsigned} : memref<1xi32>
    affine.store %3, %37[0] {to = "latstalled_31", unsigned} : memref<1xi1>
    affine.store %c0_i32, %38[0] {to = "tele_inst_count_32", unsigned} : memref<1xi32>
    affine.store %c0_i32, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
    affine.store %c0_i32, %40[0] {to = "tele_latstall_count_34", unsigned} : memref<1xi32>
    affine.store %c0_i32, %44[0] {to = "nop_count_35", unsigned} : memref<1xi32>
    affine.store %3, %45[0] {to = "flag_ntt", unsigned} : memref<1xi1>
    affine.store %3, %46[0] {to = "flag_intt", unsigned} : memref<1xi1>
    affine.store %48, %47[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
    affine.store %48, %49[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
    affine.store %64, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
    affine.store %3, %65[0] {to = "flags_active_42", unsigned} : memref<1xi1>
    affine.store %3, %66[0] {to = "flags_halt_43", unsigned} : memref<1xi1>
    affine.store %3, %67[0] {to = "flags_stall_44", unsigned} : memref<1xi1>
    affine.store %3, %68[0] {to = "flags_stalled_45", unsigned} : memref<1xi1>
    affine.store %3, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
    affine.store %3, %70[0] {to = "count_stop_47", unsigned} : memref<1xi1>
    affine.store %3, %71[0] {to = "addr_stop_48", unsigned} : memref<1xi1>
    affine.store %73, %72[0] {to = "inst_addr_49", unsigned} : memref<1xi5>
    affine.store %73, %74[0] {to = "inst_naddr_50", unsigned} : memref<1xi5>
    affine.store %c0_i32, %75[0] {to = "latency_count_51", unsigned} : memref<1xi32>
    affine.store %3, %76[0] {to = "latstalled_52", unsigned} : memref<1xi1>
    affine.store %c0_i32, %77[0] {to = "tele_inst_count_53", unsigned} : memref<1xi32>
    affine.store %c0_i32, %78[0] {to = "tele_stall_count_54", unsigned} : memref<1xi32>
    affine.store %c0_i32, %79[0] {to = "tele_latstall_count_55", unsigned} : memref<1xi32>
    affine.store %3, %80[0] {to = "flags_active_56", unsigned} : memref<1xi1>
    affine.store %3, %81[0] {to = "flags_halt_57", unsigned} : memref<1xi1>
    affine.store %3, %82[0] {to = "flags_stall_58", unsigned} : memref<1xi1>
    affine.store %3, %83[0] {to = "flags_stalled_59", unsigned} : memref<1xi1>
    affine.store %3, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
    affine.store %3, %85[0] {to = "count_stop_61", unsigned} : memref<1xi1>
    affine.store %3, %86[0] {to = "addr_stop_62", unsigned} : memref<1xi1>
    affine.store %c0_i32, %87[0] {to = "inst_addr_63", unsigned} : memref<1xi32>
    affine.store %c0_i32, %88[0] {to = "inst_naddr_64", unsigned} : memref<1xi32>
    affine.store %c0_i32, %89[0] {to = "latency_count_65", unsigned} : memref<1xi32>
    affine.store %3, %90[0] {to = "latstalled_66", unsigned} : memref<1xi1>
    affine.store %c0_i32, %91[0] {to = "tele_inst_count_67", unsigned} : memref<1xi32>
    affine.store %c0_i32, %92[0] {to = "tele_stall_count_68", unsigned} : memref<1xi32>
    affine.store %c0_i32, %93[0] {to = "tele_latstall_count_69", unsigned} : memref<1xi32>
    scf.while : () -> () {
      %true = arith.constant {unsigned} true
      %109 = affine.load %95[0] {from = "sys_done", unsigned} : memref<1xi1>
      %110 = arith.extui %109 : i1 to i32
      %111 = arith.cmpi eq, %110, %c0_i32 : i32
      %112 = arith.andi %true, %111 {unsigned} : i1
      %113 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      %c100000_i32_0 = arith.constant 100000 : i32
      %114 = arith.extui %113 : i32 to i33
      %115 = arith.extsi %c100000_i32_0 : i32 to i33
      %116 = arith.cmpi slt, %114, %115 : i33
      %117 = arith.andi %112, %116 {unsigned} : i1
      scf.condition(%117)
    } do {
      %109 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      hcl.print(%109) {format = "step=%d ------------------------------------------------------------\0A", signedness = "u"} : i32
      %110 = affine.load %45[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %111 = arith.extui %110 : i1 to i32
      %112 = arith.cmpi ne, %111, %c0_i32 : i32
      scf.if %112 {
        %133 = memref.alloc() {name = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %134 = affine.load %47[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %135 = hcl.int_to_struct(%134) {unsigned} : i9 -> <i7, i2>
        affine.store %135, %133[%c0] {to = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %136 = memref.alloc() {name = "bv"} : memref<1xi3>
        %137 = affine.load %133[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %138 = hcl.struct_get %137[1] : <i7, i2> -> i2
        %139 = arith.extui %138 {unsigned} : i2 to i3
        affine.store %139, %136[%c0] {to = "bv", unsigned} : memref<1xi3>
        %140 = memref.alloc() {name = "rv"} : memref<1xi8>
        %141 = affine.load %133[0] {from = "rfaddr"} : memref<1x!hcl.struct<i7, i2>>
        %142 = hcl.struct_get %141[0] : <i7, i2> -> i7
        %143 = arith.extui %142 {unsigned} : i7 to i8
        affine.store %143, %140[%c0] {to = "rv", unsigned} : memref<1xi8>
        %144 = memref.alloc() {name = "count"} : memref<1xi32>
        %c8192_i32 = arith.constant 8192 : i32
        affine.store %c8192_i32, %144[%c0] {to = "count", unsigned} : memref<1xi32>
        %145 = memref.alloc() {name = "src_addr"} : memref<1xi32>
        affine.store %c0_i32, %145[%c0] {to = "src_addr", unsigned} : memref<1xi32>
        %146 = memref.alloc() {name = "dst_addr"} : memref<1xi32>
        affine.store %c0_i32, %146[%c0] {to = "dst_addr", unsigned} : memref<1xi32>
        %147 = memref.alloc() {name = "_addr"} : memref<1xi32>
        %148 = affine.load %145[0] {from = "src_addr", unsigned} : memref<1xi32>
        affine.store %148, %147[%c0] {to = "_addr", unsigned} : memref<1xi32>
        %149 = memref.alloc() {name = "assert_cond"} : memref<1xi1>
        %150 = affine.load %147[0] {from = "_addr", unsigned} : memref<1xi32>
        %151 = affine.load %144[0] {from = "count", unsigned} : memref<1xi32>
        %152 = arith.extui %150 {unsigned} : i32 to i33
        %153 = arith.extui %151 {unsigned} : i32 to i33
        %154 = arith.addi %152, %153 {unsigned} : i33
        %155 = arith.extui %154 : i33 to i34
        %156 = arith.extsi %c8192_i32 : i32 to i34
        %157 = arith.cmpi sle, %155, %156 : i34
        affine.store %157, %149[%c0] {to = "assert_cond", unsigned} : memref<1xi1>
        %158 = affine.load %149[0] {from = "assert_cond", unsigned} : memref<1xi1>
        %159 = arith.extui %158 : i1 to i32
        %160 = arith.cmpi eq, %159, %c0_i32 : i32
        scf.if %160 {
          %192 = affine.load %147[0] {from = "_addr", unsigned} : memref<1xi32>
          %193 = affine.load %144[0] {from = "count", unsigned} : memref<1xi32>
          %194 = arith.extui %192 {unsigned} : i32 to i33
          %195 = arith.extui %193 {unsigned} : i32 to i33
          %196 = arith.addi %194, %195 {unsigned} : i33
          hcl.print(%192, %196) {format = "\0A\0AAssertion failed {}: nttdataintop Mem.copyto exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "uu"} : i32, i33
          scf.while : () -> () {
            %197 = affine.load %149[0] {from = "assert_cond", unsigned} : memref<1xi1>
            %198 = arith.extui %197 : i1 to i32
            %199 = arith.cmpi ne, %198, %c1_i32 : i32
            scf.condition(%199)
          } do {
            affine.store %3, %149[0] {to = "assert_cond", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %c0_0 = arith.constant {unsigned} 0 : index
        %161 = affine.load %144[0] {from = "count", unsigned} : memref<1xi32>
        %162 = arith.index_cast %161 {unsigned} : i32 to index
        %c1 = arith.constant {unsigned} 1 : index
        scf.for %arg2 = %c0_0 to %162 step %c1 {
          %192 = affine.load %145[0] {from = "src_addr", unsigned} : memref<1xi32>
          %193 = arith.extui %192 {unsigned} : i32 to i33
          %194 = arith.index_cast %arg2 {unsigned} : index to i33
          %195 = arith.addi %193, %194 {unsigned} : i33
          %196 = arith.index_cast %195 {unsigned} : i33 to index
          %197 = memref.load %51[%196] {from = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %198 = affine.load %136[0] {from = "bv", unsigned} : memref<1xi3>
          %199 = arith.index_cast %198 {unsigned} : i3 to index
          %200 = affine.load %140[0] {from = "rv", unsigned} : memref<1xi8>
          %201 = arith.index_cast %200 {unsigned} : i8 to index
          %202 = affine.load %146[0] {from = "dst_addr", unsigned} : memref<1xi32>
          %203 = arith.extui %202 {unsigned} : i32 to i33
          %204 = arith.addi %203, %194 {unsigned} : i33
          %205 = arith.index_cast %204 {unsigned} : i33 to index
          memref.store %197, %41[%199, %201, %205] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN"}
        %163 = memref.alloc() {name = "rfaddr_80"} : memref<1x!hcl.struct<i7, i2>>
        %164 = affine.load %49[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %165 = hcl.int_to_struct(%164) {unsigned} : i9 -> <i7, i2>
        affine.store %165, %163[%c0] {to = "rfaddr_80"} : memref<1x!hcl.struct<i7, i2>>
        %166 = memref.alloc() {name = "bv_81"} : memref<1xi3>
        %167 = affine.load %163[0] {from = "rfaddr_80"} : memref<1x!hcl.struct<i7, i2>>
        %168 = hcl.struct_get %167[1] : <i7, i2> -> i2
        %169 = arith.extui %168 {unsigned} : i2 to i3
        affine.store %169, %166[%c0] {to = "bv_81", unsigned} : memref<1xi3>
        %170 = memref.alloc() {name = "rv_82"} : memref<1xi8>
        %171 = affine.load %163[0] {from = "rfaddr_80"} : memref<1x!hcl.struct<i7, i2>>
        %172 = hcl.struct_get %171[0] : <i7, i2> -> i7
        %173 = arith.extui %172 {unsigned} : i7 to i8
        affine.store %173, %170[%c0] {to = "rv_82", unsigned} : memref<1xi8>
        %174 = memref.alloc() {name = "count_83"} : memref<1xi32>
        affine.store %c8192_i32, %174[%c0] {to = "count_83", unsigned} : memref<1xi32>
        %175 = memref.alloc() {name = "src_addr_84"} : memref<1xi32>
        affine.store %c0_i32, %175[%c0] {to = "src_addr_84", unsigned} : memref<1xi32>
        %176 = memref.alloc() {name = "dst_addr_85"} : memref<1xi32>
        affine.store %c0_i32, %176[%c0] {to = "dst_addr_85", unsigned} : memref<1xi32>
        %177 = memref.alloc() {name = "_addr_86"} : memref<1xi32>
        %178 = affine.load %175[0] {from = "src_addr_84", unsigned} : memref<1xi32>
        affine.store %178, %177[%c0] {to = "_addr_86", unsigned} : memref<1xi32>
        %179 = memref.alloc() {name = "assert_cond_87"} : memref<1xi1>
        %180 = affine.load %177[0] {from = "_addr_86", unsigned} : memref<1xi32>
        %181 = affine.load %174[0] {from = "count_83", unsigned} : memref<1xi32>
        %182 = arith.extui %180 {unsigned} : i32 to i33
        %183 = arith.extui %181 {unsigned} : i32 to i33
        %184 = arith.addi %182, %183 {unsigned} : i33
        %185 = arith.extui %184 : i33 to i34
        %186 = arith.cmpi sle, %185, %156 : i34
        affine.store %186, %179[%c0] {to = "assert_cond_87", unsigned} : memref<1xi1>
        %187 = affine.load %179[0] {from = "assert_cond_87", unsigned} : memref<1xi1>
        %188 = arith.extui %187 : i1 to i32
        %189 = arith.cmpi eq, %188, %c0_i32 : i32
        scf.if %189 {
          %192 = affine.load %177[0] {from = "_addr_86", unsigned} : memref<1xi32>
          %193 = affine.load %174[0] {from = "count_83", unsigned} : memref<1xi32>
          %194 = arith.extui %192 {unsigned} : i32 to i33
          %195 = arith.extui %193 {unsigned} : i32 to i33
          %196 = arith.addi %194, %195 {unsigned} : i33
          hcl.print(%192, %196) {format = "\0A\0AAssertion failed {}: nttdatainbot Mem.copyto exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "uu"} : i32, i33
          scf.while : () -> () {
            %197 = affine.load %179[0] {from = "assert_cond_87", unsigned} : memref<1xi1>
            %198 = arith.extui %197 : i1 to i32
            %199 = arith.cmpi ne, %198, %c1_i32 : i32
            scf.condition(%199)
          } do {
            affine.store %3, %179[0] {to = "assert_cond_87", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %190 = affine.load %174[0] {from = "count_83", unsigned} : memref<1xi32>
        %191 = arith.index_cast %190 {unsigned} : i32 to index
        scf.for %arg2 = %c0_0 to %191 step %c1 {
          %192 = affine.load %175[0] {from = "src_addr_84", unsigned} : memref<1xi32>
          %193 = arith.extui %192 {unsigned} : i32 to i33
          %194 = arith.index_cast %arg2 {unsigned} : index to i33
          %195 = arith.addi %193, %194 {unsigned} : i33
          %196 = arith.index_cast %195 {unsigned} : i33 to index
          %197 = memref.load %52[%196] {from = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %198 = affine.load %166[0] {from = "bv_81", unsigned} : memref<1xi3>
          %199 = arith.index_cast %198 {unsigned} : i3 to index
          %200 = affine.load %170[0] {from = "rv_82", unsigned} : memref<1xi8>
          %201 = arith.index_cast %200 {unsigned} : i8 to index
          %202 = affine.load %176[0] {from = "dst_addr_85", unsigned} : memref<1xi32>
          %203 = arith.extui %202 {unsigned} : i32 to i33
          %204 = arith.addi %203, %194 {unsigned} : i33
          %205 = arith.index_cast %204 {unsigned} : i33 to index
          memref.store %197, %41[%199, %201, %205] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN_22"}
        affine.store %3, %45[0] {to = "flag_ntt", unsigned} : memref<1xi1>
      }
      %113 = affine.load %46[0] {from = "flag_intt", unsigned} : memref<1xi1>
      %114 = arith.extui %113 : i1 to i32
      %115 = arith.cmpi ne, %114, %c0_i32 : i32
      scf.if %115 {
        %133 = memref.alloc() {name = "rfaddr_88"} : memref<1x!hcl.struct<i7, i2>>
        %134 = affine.load %47[0] {from = "ntt_intt_top_addr", unsigned} : memref<1xi9>
        %135 = hcl.int_to_struct(%134) {unsigned} : i9 -> <i7, i2>
        affine.store %135, %133[%c0] {to = "rfaddr_88"} : memref<1x!hcl.struct<i7, i2>>
        %136 = memref.alloc() {name = "bv_89"} : memref<1xi3>
        %137 = affine.load %133[0] {from = "rfaddr_88"} : memref<1x!hcl.struct<i7, i2>>
        %138 = hcl.struct_get %137[1] : <i7, i2> -> i2
        %139 = arith.extui %138 {unsigned} : i2 to i3
        affine.store %139, %136[%c0] {to = "bv_89", unsigned} : memref<1xi3>
        %140 = memref.alloc() {name = "rv_90"} : memref<1xi8>
        %141 = affine.load %133[0] {from = "rfaddr_88"} : memref<1x!hcl.struct<i7, i2>>
        %142 = hcl.struct_get %141[0] : <i7, i2> -> i7
        %143 = arith.extui %142 {unsigned} : i7 to i8
        affine.store %143, %140[%c0] {to = "rv_90", unsigned} : memref<1xi8>
        %144 = memref.alloc() {name = "count_91"} : memref<1xi32>
        %c8192_i32 = arith.constant 8192 : i32
        affine.store %c8192_i32, %144[%c0] {to = "count_91", unsigned} : memref<1xi32>
        %145 = memref.alloc() {name = "src_addr_92"} : memref<1xi32>
        affine.store %c0_i32, %145[%c0] {to = "src_addr_92", unsigned} : memref<1xi32>
        %146 = memref.alloc() {name = "dst_addr_93"} : memref<1xi32>
        affine.store %c0_i32, %146[%c0] {to = "dst_addr_93", unsigned} : memref<1xi32>
        %147 = memref.alloc() {name = "_addr_94"} : memref<1xi32>
        %148 = affine.load %145[0] {from = "src_addr_92", unsigned} : memref<1xi32>
        affine.store %148, %147[%c0] {to = "_addr_94", unsigned} : memref<1xi32>
        %149 = memref.alloc() {name = "assert_cond_95"} : memref<1xi1>
        %150 = affine.load %147[0] {from = "_addr_94", unsigned} : memref<1xi32>
        %151 = affine.load %144[0] {from = "count_91", unsigned} : memref<1xi32>
        %152 = arith.extui %150 {unsigned} : i32 to i33
        %153 = arith.extui %151 {unsigned} : i32 to i33
        %154 = arith.addi %152, %153 {unsigned} : i33
        %155 = arith.extui %154 : i33 to i34
        %156 = arith.extsi %c8192_i32 : i32 to i34
        %157 = arith.cmpi sle, %155, %156 : i34
        affine.store %157, %149[%c0] {to = "assert_cond_95", unsigned} : memref<1xi1>
        %158 = affine.load %149[0] {from = "assert_cond_95", unsigned} : memref<1xi1>
        %159 = arith.extui %158 : i1 to i32
        %160 = arith.cmpi eq, %159, %c0_i32 : i32
        scf.if %160 {
          %192 = affine.load %147[0] {from = "_addr_94", unsigned} : memref<1xi32>
          %193 = affine.load %144[0] {from = "count_91", unsigned} : memref<1xi32>
          %194 = arith.extui %192 {unsigned} : i32 to i33
          %195 = arith.extui %193 {unsigned} : i32 to i33
          %196 = arith.addi %194, %195 {unsigned} : i33
          hcl.print(%192, %196) {format = "\0A\0AAssertion failed {}: inttdataintop Mem.copyto exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "uu"} : i32, i33
          scf.while : () -> () {
            %197 = affine.load %149[0] {from = "assert_cond_95", unsigned} : memref<1xi1>
            %198 = arith.extui %197 : i1 to i32
            %199 = arith.cmpi ne, %198, %c1_i32 : i32
            scf.condition(%199)
          } do {
            affine.store %3, %149[0] {to = "assert_cond_95", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %c0_0 = arith.constant {unsigned} 0 : index
        %161 = affine.load %144[0] {from = "count_91", unsigned} : memref<1xi32>
        %162 = arith.index_cast %161 {unsigned} : i32 to index
        %c1 = arith.constant {unsigned} 1 : index
        scf.for %arg2 = %c0_0 to %162 step %c1 {
          %192 = affine.load %145[0] {from = "src_addr_92", unsigned} : memref<1xi32>
          %193 = arith.extui %192 {unsigned} : i32 to i33
          %194 = arith.index_cast %arg2 {unsigned} : index to i33
          %195 = arith.addi %193, %194 {unsigned} : i33
          %196 = arith.index_cast %195 {unsigned} : i33 to index
          %197 = memref.load %55[%196] {from = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
          %198 = affine.load %136[0] {from = "bv_89", unsigned} : memref<1xi3>
          %199 = arith.index_cast %198 {unsigned} : i3 to index
          %200 = affine.load %140[0] {from = "rv_90", unsigned} : memref<1xi8>
          %201 = arith.index_cast %200 {unsigned} : i8 to index
          %202 = affine.load %146[0] {from = "dst_addr_93", unsigned} : memref<1xi32>
          %203 = arith.extui %202 {unsigned} : i32 to i33
          %204 = arith.addi %203, %194 {unsigned} : i33
          %205 = arith.index_cast %204 {unsigned} : i33 to index
          memref.store %197, %41[%199, %201, %205] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN_23"}
        %163 = memref.alloc() {name = "rfaddr_96"} : memref<1x!hcl.struct<i7, i2>>
        %164 = affine.load %49[0] {from = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
        %165 = hcl.int_to_struct(%164) {unsigned} : i9 -> <i7, i2>
        affine.store %165, %163[%c0] {to = "rfaddr_96"} : memref<1x!hcl.struct<i7, i2>>
        %166 = memref.alloc() {name = "bv_97"} : memref<1xi3>
        %167 = affine.load %163[0] {from = "rfaddr_96"} : memref<1x!hcl.struct<i7, i2>>
        %168 = hcl.struct_get %167[1] : <i7, i2> -> i2
        %169 = arith.extui %168 {unsigned} : i2 to i3
        affine.store %169, %166[%c0] {to = "bv_97", unsigned} : memref<1xi3>
        %170 = memref.alloc() {name = "rv_98"} : memref<1xi8>
        %171 = affine.load %163[0] {from = "rfaddr_96"} : memref<1x!hcl.struct<i7, i2>>
        %172 = hcl.struct_get %171[0] : <i7, i2> -> i7
        %173 = arith.extui %172 {unsigned} : i7 to i8
        affine.store %173, %170[%c0] {to = "rv_98", unsigned} : memref<1xi8>
        %174 = memref.alloc() {name = "count_99"} : memref<1xi32>
        affine.store %c8192_i32, %174[%c0] {to = "count_99", unsigned} : memref<1xi32>
        %175 = memref.alloc() {name = "src_addr_100"} : memref<1xi32>
        affine.store %c0_i32, %175[%c0] {to = "src_addr_100", unsigned} : memref<1xi32>
        %176 = memref.alloc() {name = "dst_addr_101"} : memref<1xi32>
        affine.store %c0_i32, %176[%c0] {to = "dst_addr_101", unsigned} : memref<1xi32>
        %177 = memref.alloc() {name = "_addr_102"} : memref<1xi32>
        %178 = affine.load %175[0] {from = "src_addr_100", unsigned} : memref<1xi32>
        affine.store %178, %177[%c0] {to = "_addr_102", unsigned} : memref<1xi32>
        %179 = memref.alloc() {name = "assert_cond_103"} : memref<1xi1>
        %180 = affine.load %177[0] {from = "_addr_102", unsigned} : memref<1xi32>
        %181 = affine.load %174[0] {from = "count_99", unsigned} : memref<1xi32>
        %182 = arith.extui %180 {unsigned} : i32 to i33
        %183 = arith.extui %181 {unsigned} : i32 to i33
        %184 = arith.addi %182, %183 {unsigned} : i33
        %185 = arith.extui %184 : i33 to i34
        %186 = arith.cmpi sle, %185, %156 : i34
        affine.store %186, %179[%c0] {to = "assert_cond_103", unsigned} : memref<1xi1>
        %187 = affine.load %179[0] {from = "assert_cond_103", unsigned} : memref<1xi1>
        %188 = arith.extui %187 : i1 to i32
        %189 = arith.cmpi eq, %188, %c0_i32 : i32
        scf.if %189 {
          %192 = affine.load %177[0] {from = "_addr_102", unsigned} : memref<1xi32>
          %193 = affine.load %174[0] {from = "count_99", unsigned} : memref<1xi32>
          %194 = arith.extui %192 {unsigned} : i32 to i33
          %195 = arith.extui %193 {unsigned} : i32 to i33
          %196 = arith.addi %194, %195 {unsigned} : i33
          hcl.print(%192, %196) {format = "\0A\0AAssertion failed {}: inttdatainbot Mem.copyto exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "uu"} : i32, i33
          scf.while : () -> () {
            %197 = affine.load %179[0] {from = "assert_cond_103", unsigned} : memref<1xi1>
            %198 = arith.extui %197 : i1 to i32
            %199 = arith.cmpi ne, %198, %c1_i32 : i32
            scf.condition(%199)
          } do {
            affine.store %3, %179[0] {to = "assert_cond_103", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %190 = affine.load %174[0] {from = "count_99", unsigned} : memref<1xi32>
        %191 = arith.index_cast %190 {unsigned} : i32 to index
        scf.for %arg2 = %c0_0 to %191 step %c1 {
          %192 = affine.load %175[0] {from = "src_addr_100", unsigned} : memref<1xi32>
          %193 = arith.extui %192 {unsigned} : i32 to i33
          %194 = arith.index_cast %arg2 {unsigned} : index to i33
          %195 = arith.addi %193, %194 {unsigned} : i33
          %196 = arith.index_cast %195 {unsigned} : i33 to index
          %197 = memref.load %56[%196] {from = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          %198 = affine.load %166[0] {from = "bv_97", unsigned} : memref<1xi3>
          %199 = arith.index_cast %198 {unsigned} : i3 to index
          %200 = affine.load %170[0] {from = "rv_98", unsigned} : memref<1xi8>
          %201 = arith.index_cast %200 {unsigned} : i8 to index
          %202 = affine.load %176[0] {from = "dst_addr_101", unsigned} : memref<1xi32>
          %203 = arith.extui %202 {unsigned} : i32 to i33
          %204 = arith.addi %203, %194 {unsigned} : i33
          %205 = arith.index_cast %204 {unsigned} : i33 to index
          memref.store %197, %41[%199, %201, %205] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
        } {loop_name = "i", op_name = "copyN_24"}
        affine.store %3, %46[0] {to = "flag_intt", unsigned} : memref<1xi1>
      }
      %false = arith.constant {unsigned} false
      %116 = affine.load %80[0] {from = "flags_active_56", unsigned} : memref<1xi1>
      %117 = arith.ori %false, %116 {unsigned} : i1
      %118 = affine.load %81[0] {from = "flags_halt_57", unsigned} : memref<1xi1>
      %119 = arith.ori %117, %118 {unsigned} : i1
      %120 = arith.extui %119 : i1 to i32
      %121 = arith.cmpi eq, %120, %c0_i32 : i32
      scf.if %121 {
        %133 = memref.alloc() {name = "read_addr"} : memref<1xi32>
        affine.store %c0_i32, %133[%c0] {to = "read_addr", unsigned} : memref<1xi32>
        %134 = memref.alloc() {name = "_addr_105"} : memref<1xi32>
        %135 = affine.load %133[0] {from = "read_addr", unsigned} : memref<1xi32>
        affine.store %135, %134[%c0] {to = "_addr_105", unsigned} : memref<1xi32>
        %136 = memref.alloc() {name = "assert_cond_106"} : memref<1xi1>
        %137 = affine.load %134[0] {from = "_addr_105", unsigned} : memref<1xi32>
        %138 = arith.extui %137 : i32 to i34
        %139 = arith.extsi %c1_i32 : i32 to i34
        %140 = arith.addi %138, %139 : i34
        %c10_i32 = arith.constant 10 : i32
        %141 = arith.extsi %c10_i32 : i32 to i34
        %142 = arith.cmpi sle, %140, %141 : i34
        affine.store %142, %136[%c0] {to = "assert_cond_106", unsigned} : memref<1xi1>
        %143 = affine.load %136[0] {from = "assert_cond_106", unsigned} : memref<1xi1>
        %144 = arith.extui %143 : i1 to i32
        %145 = arith.cmpi eq, %144, %c0_i32 : i32
        scf.if %145 {
          %163 = affine.load %134[0] {from = "_addr_105", unsigned} : memref<1xi32>
          %164 = arith.extui %163 : i32 to i34
          %165 = arith.addi %164, %139 : i34
          hcl.print(%163, %165) {format = "\0A\0AAssertion failed {}: Sysreg Mem.read exceeds memory size: addr=%d+size=%d > 10\0A\0A", signedness = "u_"} : i32, i34
          scf.while : () -> () {
            %166 = affine.load %136[0] {from = "assert_cond_106", unsigned} : memref<1xi1>
            %167 = arith.extui %166 : i1 to i32
            %168 = arith.cmpi ne, %167, %c1_i32 : i32
            scf.condition(%168)
          } do {
            affine.store %3, %136[0] {to = "assert_cond_106", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %146 = memref.alloc() {name = "Mem.read_c"} : memref<1xi64>
        %147 = affine.load %133[0] {from = "read_addr", unsigned} : memref<1xi32>
        %148 = arith.extui %147 {unsigned} : i32 to i33
        %149 = arith.index_cast %c0 {unsigned} : index to i33
        %150 = arith.addi %148, %149 {unsigned} : i33
        %151 = arith.index_cast %150 {unsigned} : i33 to index
        %152 = memref.load %arg1[%151] {from = "sysreg", unsigned} : memref<10xi64>
        affine.store %152, %146[%c0] {to = "Mem.read_c", unsigned} : memref<1xi64>
        %153 = memref.alloc() {name = "assert_cond_107"} : memref<1xi1>
        %154 = affine.load %80[0] {from = "flags_active_56", unsigned} : memref<1xi1>
        %155 = arith.extui %154 : i1 to i32
        %156 = arith.cmpi eq, %155, %c0_i32 : i32
        affine.store %156, %153[%c0] {to = "assert_cond_107", unsigned} : memref<1xi1>
        %157 = affine.load %153[0] {from = "assert_cond_107", unsigned} : memref<1xi1>
        %158 = arith.extui %157 : i1 to i32
        %159 = arith.cmpi eq, %158, %c0_i32 : i32
        scf.if %159 {
          hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: proc.UC: uController already/still active?\0A\0A", signedness = "_"} : i32
          scf.while : () -> () {
            %163 = affine.load %153[0] {from = "assert_cond_107", unsigned} : memref<1xi1>
            %164 = arith.extui %163 : i1 to i32
            %165 = arith.cmpi ne, %164, %c1_i32 : i32
            scf.condition(%165)
          } do {
            affine.store %3, %153[0] {to = "assert_cond_107", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        affine.store %3, %80[0] {to = "flags_active_56", unsigned} : memref<1xi1>
        affine.store %3, %81[0] {to = "flags_halt_57", unsigned} : memref<1xi1>
        affine.store %3, %82[0] {to = "flags_stall_58", unsigned} : memref<1xi1>
        affine.store %3, %83[0] {to = "flags_stalled_59", unsigned} : memref<1xi1>
        affine.store %3, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
        affine.store %3, %85[0] {to = "count_stop_61", unsigned} : memref<1xi1>
        affine.store %3, %86[0] {to = "addr_stop_62", unsigned} : memref<1xi1>
        affine.store %c0_i32, %87[0] {to = "inst_addr_63", unsigned} : memref<1xi32>
        affine.store %c0_i32, %88[0] {to = "inst_naddr_64", unsigned} : memref<1xi32>
        affine.store %c0_i32, %89[0] {to = "latency_count_65", unsigned} : memref<1xi32>
        affine.store %3, %90[0] {to = "latstalled_66", unsigned} : memref<1xi1>
        %160 = affine.load %146[0] {from = "Mem.read_c", unsigned} : memref<1xi64>
        %161 = arith.trunci %160 {unsigned} : i64 to i32
        affine.store %161, %87[0] {to = "inst_addr_63", unsigned} : memref<1xi32>
        %162 = arith.trunci %c1_i32 {unsigned} : i32 to i1
        affine.store %162, %80[0] {to = "flags_active_56", unsigned} : memref<1xi1>
      } else {
        %133 = affine.load %80[0] {from = "flags_active_56", unsigned} : memref<1xi1>
        %134 = arith.extui %133 : i1 to i32
        %135 = arith.cmpi eq, %134, %c0_i32 : i32
        scf.if %135 {
          %136 = arith.trunci %c1_i32 {unsigned} : i32 to i1
          affine.store %136, %95[0] {to = "sys_done", unsigned} : memref<1xi1>
        }
      }
      affine.store %3, %6[0] {to = "flags_stall", unsigned} : memref<1xi1>
      affine.store %3, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
      affine.store %3, %9[0] {to = "count_stop", unsigned} : memref<1xi1>
      affine.store %3, %10[0] {to = "addr_stop", unsigned} : memref<1xi1>
      scf.while : () -> () {
        %true = arith.constant {unsigned} true
        %133 = affine.load %4[0] {from = "flags_active", unsigned} : memref<1xi1>
        %134 = arith.extui %133 : i1 to i32
        %135 = arith.cmpi ne, %134, %c0_i32 : i32
        %136 = arith.andi %true, %135 {unsigned} : i1
        %137 = affine.load %8[0] {from = "flags_break", unsigned} : memref<1xi1>
        %138 = arith.extui %137 : i1 to i32
        %139 = arith.cmpi eq, %138, %c0_i32 : i32
        %140 = arith.andi %136, %139 {unsigned} : i1
        scf.condition(%140)
      } do {
        %133 = memref.alloc() {name = "assert_cond_108"} : memref<1xi1>
        %134 = affine.load %14[0] {from = "latstalled", unsigned} : memref<1xi1>
        %135 = arith.extui %134 : i1 to i32
        %136 = arith.cmpi eq, %135, %c1_i32 : i32
        %137 = arith.ori %false, %136 {unsigned} : i1
        %138 = affine.load %13[0] {from = "latency_count", unsigned} : memref<1xi32>
        %139 = arith.extui %138 : i32 to i33
        %140 = arith.extsi %c0_i32 : i32 to i33
        %141 = arith.cmpi eq, %139, %140 : i33
        %142 = arith.ori %137, %141 {unsigned} : i1
        %143 = arith.extui %142 : i1 to i32
        %144 = arith.cmpi ne, %143, %c0_i32 : i32
        affine.store %144, %133[%c0] {to = "assert_cond_108", unsigned} : memref<1xi1>
        %145 = affine.load %133[0] {from = "assert_cond_108", unsigned} : memref<1xi1>
        %146 = arith.extui %145 : i1 to i32
        %147 = arith.cmpi eq, %146, %c0_i32 : i32
        scf.if %147 {
          hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: \0A\0A", signedness = "_"} : i32
          scf.while : () -> () {
            %151 = affine.load %133[0] {from = "assert_cond_108", unsigned} : memref<1xi1>
            %152 = arith.extui %151 : i1 to i32
            %153 = arith.cmpi ne, %152, %c1_i32 : i32
            scf.condition(%153)
          } do {
            affine.store %3, %133[0] {to = "assert_cond_108", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %148 = affine.load %13[0] {from = "latency_count", unsigned} : memref<1xi32>
        %149 = arith.extui %148 : i32 to i33
        %150 = arith.cmpi eq, %149, %140 : i33
        scf.if %150 {
          %151 = memref.alloc() {name = "_cur_address"} : memref<1xi32>
          %152 = affine.load %11[0] {from = "inst_addr", unsigned} : memref<1xi32>
          affine.store %152, %151[%c0] {to = "_cur_address", unsigned} : memref<1xi32>
          %153 = affine.load %11[0] {from = "inst_addr", unsigned} : memref<1xi32>
          %c2_i32 = arith.constant 2 : i32
          %154 = arith.extui %153 : i32 to i34
          %155 = arith.extsi %c2_i32 : i32 to i34
          %156 = arith.addi %154, %155 : i34
          %157 = arith.trunci %156 {unsigned} : i34 to i32
          affine.store %157, %12[0] {to = "inst_naddr", unsigned} : memref<1xi32>
          %158 = memref.alloc() {name = "inst"} : memref<1xi64>
          %159 = arith.extsi %c0_i32 {unsigned} : i32 to i64
          affine.store %159, %158[%c0] {to = "inst", unsigned} : memref<1xi64>
          %160 = memref.alloc() {name = "read_addr_111"} : memref<1xi34>
          %161 = affine.load %11[0] {from = "inst_addr", unsigned} : memref<1xi32>
          %162 = arith.extui %161 : i32 to i34
          %163 = arith.extsi %c0_i32 : i32 to i34
          %164 = arith.addi %162, %163 : i34
          affine.store %164, %160[%c0] {to = "read_addr_111"} : memref<1xi34>
          %165 = memref.alloc() {name = "_addr_112"} : memref<1xi34>
          %166 = affine.load %160[0] {from = "read_addr_111"} : memref<1xi34>
          affine.store %166, %165[%c0] {to = "_addr_112"} : memref<1xi34>
          %167 = memref.alloc() {name = "assert_cond_113"} : memref<1xi1>
          %168 = affine.load %165[0] {from = "_addr_112"} : memref<1xi34>
          %169 = arith.extsi %168 : i34 to i35
          %170 = arith.extsi %c1_i32 : i32 to i35
          %171 = arith.addi %169, %170 : i35
          %c33554432_i32 = arith.constant 33554432 : i32
          %172 = arith.extsi %c33554432_i32 : i32 to i35
          %173 = arith.cmpi sle, %171, %172 : i35
          affine.store %173, %167[%c0] {to = "assert_cond_113", unsigned} : memref<1xi1>
          %174 = affine.load %167[0] {from = "assert_cond_113", unsigned} : memref<1xi1>
          %175 = arith.extui %174 : i1 to i32
          %176 = arith.cmpi eq, %175, %c0_i32 : i32
          scf.if %176 {
            %238 = affine.load %165[0] {from = "_addr_112"} : memref<1xi34>
            %239 = arith.extsi %238 : i34 to i35
            %240 = arith.addi %239, %170 : i35
            hcl.print(%238, %240) {format = "\0A\0AAssertion failed {}: HBM Mem.read exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
            scf.while : () -> () {
              %241 = affine.load %167[0] {from = "assert_cond_113", unsigned} : memref<1xi1>
              %242 = arith.extui %241 : i1 to i32
              %243 = arith.cmpi ne, %242, %c1_i32 : i32
              scf.condition(%243)
            } do {
              affine.store %3, %167[0] {to = "assert_cond_113", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %177 = memref.alloc() {name = "Mem.read_c_26"} : memref<1xi32>
          %178 = affine.load %160[0] {from = "read_addr_111"} : memref<1xi34>
          %179 = arith.extsi %178 : i34 to i35
          %180 = arith.index_cast %c0 : index to i35
          %181 = arith.addi %179, %180 : i35
          %182 = arith.index_cast %181 {unsigned} : i35 to index
          %183 = memref.load %arg0[%182] {from = "hbm", unsigned} : memref<33554432xi32>
          affine.store %183, %177[%c0] {to = "Mem.read_c_26", unsigned} : memref<1xi32>
          %c32_i32 = arith.constant 32 : i32
          %c0_i64 = arith.constant {unsigned} 0 : i64
          %184 = affine.load %177[0] {from = "Mem.read_c_26", unsigned} : memref<1xi32>
          %185 = arith.extui %184 {unsigned} : i32 to i64
          %186 = arith.ori %c0_i64, %185 {unsigned} : i64
          affine.store %186, %158[0] {to = "inst", unsigned} : memref<1xi64>
          %187 = memref.alloc() {name = "read_addr_114"} : memref<1xi34>
          %188 = affine.load %11[0] {from = "inst_addr", unsigned} : memref<1xi32>
          %189 = arith.extui %188 : i32 to i34
          %190 = arith.extsi %c1_i32 : i32 to i34
          %191 = arith.addi %189, %190 : i34
          affine.store %191, %187[%c0] {to = "read_addr_114"} : memref<1xi34>
          %192 = memref.alloc() {name = "_addr_115"} : memref<1xi34>
          %193 = affine.load %187[0] {from = "read_addr_114"} : memref<1xi34>
          affine.store %193, %192[%c0] {to = "_addr_115"} : memref<1xi34>
          %194 = memref.alloc() {name = "assert_cond_116"} : memref<1xi1>
          %195 = affine.load %192[0] {from = "_addr_115"} : memref<1xi34>
          %196 = arith.extsi %195 : i34 to i35
          %197 = arith.addi %196, %170 : i35
          %198 = arith.cmpi sle, %197, %172 : i35
          affine.store %198, %194[%c0] {to = "assert_cond_116", unsigned} : memref<1xi1>
          %199 = affine.load %194[0] {from = "assert_cond_116", unsigned} : memref<1xi1>
          %200 = arith.extui %199 : i1 to i32
          %201 = arith.cmpi eq, %200, %c0_i32 : i32
          scf.if %201 {
            %238 = affine.load %192[0] {from = "_addr_115"} : memref<1xi34>
            %239 = arith.extsi %238 : i34 to i35
            %240 = arith.addi %239, %170 : i35
            hcl.print(%238, %240) {format = "\0A\0AAssertion failed {}: HBM Mem.read exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
            scf.while : () -> () {
              %241 = affine.load %194[0] {from = "assert_cond_116", unsigned} : memref<1xi1>
              %242 = arith.extui %241 : i1 to i32
              %243 = arith.cmpi ne, %242, %c1_i32 : i32
              scf.condition(%243)
            } do {
              affine.store %3, %194[0] {to = "assert_cond_116", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %202 = memref.alloc() {name = "Mem.read_c_27"} : memref<1xi32>
          %203 = affine.load %187[0] {from = "read_addr_114"} : memref<1xi34>
          %204 = arith.extsi %203 : i34 to i35
          %205 = arith.addi %204, %180 : i35
          %206 = arith.index_cast %205 {unsigned} : i35 to index
          %207 = memref.load %arg0[%206] {from = "hbm", unsigned} : memref<33554432xi32>
          affine.store %207, %202[%c0] {to = "Mem.read_c_27", unsigned} : memref<1xi32>
          %208 = affine.load %202[0] {from = "Mem.read_c_27", unsigned} : memref<1xi32>
          %209 = arith.extui %208 {unsigned} : i32 to i64
          %210 = arith.ori %c0_i64, %209 {unsigned} : i64
          affine.store %210, %158[0] {to = "inst", unsigned} : memref<1xi64>
          hcl.print(%c0_i32) {format = "FETCH ce0.mf.UC inst=0x", signedness = "_"} : i32
          %211 = affine.load %158[0] {from = "inst", unsigned} : memref<1xi64>
          %c32 = arith.constant {unsigned} 32 : index
          %c63 = arith.constant {unsigned} 63 : index
          %212 = hcl.get_slice(%211 : i64, %c63, %c32) -> i32
          hcl.print(%212) {format = "%d:", signedness = "u"} : i32
          %213 = affine.load %158[0] {from = "inst", unsigned} : memref<1xi64>
          %c0_0 = arith.constant {unsigned} 0 : index
          %c31 = arith.constant {unsigned} 31 : index
          %214 = hcl.get_slice(%213 : i64, %c31, %c0_0) -> i32
          hcl.print(%214) {format = "%d:", signedness = "u"} : i32
          hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
          %215 = memref.alloc() {name = "inst_lat"} : memref<1xi32>
          affine.store %c0_i32, %215[%c0] {to = "inst_lat", unsigned} : memref<1xi32>
          %216 = memref.alloc() {name = "decode_inst"} : memref<1xi64>
          %217 = affine.load %158[0] {from = "inst", unsigned} : memref<1xi64>
          affine.store %217, %216[%c0] {to = "decode_inst", unsigned} : memref<1xi64>
          %218 = memref.alloc() {name = "inst_id"} : memref<1xi16>
          %219 = arith.trunci %c0_i32 {unsigned} : i32 to i16
          affine.store %219, %218[%c0] {to = "inst_id", unsigned} : memref<1xi16>
          %220 = memref.alloc() {name = "dec_inst_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
          %221 = affine.load %216[0] {from = "decode_inst", unsigned} : memref<1xi64>
          %222 = hcl.int_to_struct(%221) {unsigned} : i64 -> <i3, i11, i21, i29>
          affine.store %222, %220[%c0] {to = "dec_inst_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
          %true = arith.constant {unsigned} true
          %223 = affine.load %220[0] {from = "dec_inst_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
          %224 = hcl.struct_get %223[0] : <i3, i11, i21, i29> -> i3
          %225 = arith.cmpi eq, %224, %24 {unsigned} : i3
          %226 = arith.andi %true, %225 {unsigned} : i1
          scf.if %226 {
            affine.store %219, %218[0] {to = "inst_id", unsigned} : memref<1xi16>
            affine.store %c1_i32, %215[0] {to = "inst_lat", unsigned} : memref<1xi32>
          } else {
            %238 = memref.alloc() {name = "dec_inst_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
            %239 = affine.load %216[0] {from = "decode_inst", unsigned} : memref<1xi64>
            %240 = hcl.int_to_struct(%239) {unsigned} : i64 -> <i3, i11, i21, i29>
            affine.store %240, %238[%c0] {to = "dec_inst_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
            %241 = affine.load %238[0] {from = "dec_inst_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
            %242 = hcl.struct_get %241[0] : <i3, i11, i21, i29> -> i3
            %243 = arith.trunci %c1_i32 {unsigned} : i32 to i3
            %244 = arith.cmpi eq, %242, %243 {unsigned} : i3
            %245 = arith.andi %true, %244 {unsigned} : i1
            scf.if %245 {
              %246 = arith.trunci %c1_i32 {unsigned} : i32 to i16
              affine.store %246, %218[0] {to = "inst_id", unsigned} : memref<1xi16>
              affine.store %c1_i32, %215[0] {to = "inst_lat", unsigned} : memref<1xi32>
            } else {
              %246 = memref.alloc() {name = "dec_inst_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
              %247 = affine.load %216[0] {from = "decode_inst", unsigned} : memref<1xi64>
              %248 = hcl.int_to_struct(%247) {unsigned} : i64 -> <i3, i32, i15, i14>
              affine.store %248, %246[%c0] {to = "dec_inst_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
              %249 = affine.load %246[0] {from = "dec_inst_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
              %250 = hcl.struct_get %249[0] : <i3, i32, i15, i14> -> i3
              %251 = arith.trunci %c2_i32 {unsigned} : i32 to i3
              %252 = arith.cmpi eq, %250, %251 {unsigned} : i3
              %253 = arith.andi %true, %252 {unsigned} : i1
              scf.if %253 {
                %254 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %254, %218[0] {to = "inst_id", unsigned} : memref<1xi16>
                affine.store %c1_i32, %215[0] {to = "inst_lat", unsigned} : memref<1xi32>
              } else {
                %254 = memref.alloc() {name = "dec_inst_mexit"} : memref<1x!hcl.struct<i3, i61>>
                %255 = affine.load %216[0] {from = "decode_inst", unsigned} : memref<1xi64>
                %256 = hcl.int_to_struct(%255) {unsigned} : i64 -> <i3, i61>
                affine.store %256, %254[%c0] {to = "dec_inst_mexit"} : memref<1x!hcl.struct<i3, i61>>
                %257 = affine.load %254[0] {from = "dec_inst_mexit"} : memref<1x!hcl.struct<i3, i61>>
                %258 = hcl.struct_get %257[0] : <i3, i61> -> i3
                %c3_i32 = arith.constant 3 : i32
                %259 = arith.trunci %c3_i32 {unsigned} : i32 to i3
                %260 = arith.cmpi eq, %258, %259 {unsigned} : i3
                %261 = arith.andi %true, %260 {unsigned} : i1
                scf.if %261 {
                  %262 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %262, %218[0] {to = "inst_id", unsigned} : memref<1xi16>
                  affine.store %c1_i32, %215[0] {to = "inst_lat", unsigned} : memref<1xi32>
                } else {
                  %262 = memref.alloc() {name = "assert_cond_124"} : memref<1xi1>
                  affine.store %3, %262[%c0] {to = "assert_cond_124", unsigned} : memref<1xi1>
                  %263 = affine.load %262[0] {from = "assert_cond_124", unsigned} : memref<1xi1>
                  %264 = arith.extui %263 : i1 to i32
                  %265 = arith.cmpi eq, %264, %c0_i32 : i32
                  scf.if %265 {
                    %267 = affine.load %216[0] {from = "decode_inst", unsigned} : memref<1xi64>
                    %268 = affine.load %151[0] {from = "_cur_address", unsigned} : memref<1xi32>
                    hcl.print(%267, %268) {format = "\0A\0AAssertion failed {}: \0A\0Ace0.mf.UC.decode Invalid instruction (%d) at address %d\0A\0A\0A", signedness = "uu"} : i64, i32
                    scf.while : () -> () {
                      %269 = affine.load %262[0] {from = "assert_cond_124", unsigned} : memref<1xi1>
                      %270 = arith.extui %269 : i1 to i32
                      %271 = arith.cmpi ne, %270, %c1_i32 : i32
                      scf.condition(%271)
                    } do {
                      affine.store %3, %262[0] {to = "assert_cond_124", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %c4_i32 = arith.constant 4 : i32
                  %266 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                  affine.store %266, %218[0] {to = "inst_id", unsigned} : memref<1xi16>
                }
              }
            }
          }
          %227 = affine.load %215[0] {from = "inst_lat", unsigned} : memref<1xi32>
          %228 = arith.extui %227 : i32 to i33
          %229 = arith.extsi %c1_i32 : i32 to i33
          %230 = arith.cmpi sle, %228, %229 : i33
          %231 = arith.ori %false, %230 {unsigned} : i1
          %232 = affine.load %14[0] {from = "latstalled", unsigned} : memref<1xi1>
          %233 = arith.extui %232 : i1 to i32
          %234 = arith.cmpi eq, %233, %c1_i32 : i32
          %235 = arith.ori %231, %234 {unsigned} : i1
          %236 = arith.extui %235 : i1 to i32
          %237 = arith.cmpi ne, %236, %c0_i32 : i32
          scf.if %237 {
            %238 = memref.alloc() {name = "execute_inst"} : memref<1xi64>
            %239 = affine.load %158[0] {from = "inst", unsigned} : memref<1xi64>
            affine.store %239, %238[%c0] {to = "execute_inst", unsigned} : memref<1xi64>
            %240 = affine.load %218[0] {from = "inst_id", unsigned} : memref<1xi16>
            %241 = arith.extui %240 : i16 to i32
            %242 = arith.cmpi eq, %241, %c0_i32 : i32
            scf.if %242 {
              %249 = memref.alloc() {name = "exe_inst_ce0.mf.UC_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
              %250 = affine.load %238[0] {from = "execute_inst", unsigned} : memref<1xi64>
              %251 = hcl.int_to_struct(%250) {unsigned} : i64 -> <i3, i11, i21, i29>
              affine.store %251, %249[%c0] {to = "exe_inst_ce0.mf.UC_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
              hcl.print(%c0_i32) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
              %252 = affine.load %151[0] {from = "_cur_address", unsigned} : memref<1xi32>
              hcl.print(%252) {format = "ip=%d ", signedness = "u"} : i32
              %253 = affine.load %249[0] {from = "exe_inst_ce0.mf.UC_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
              %254 = hcl.struct_get %253[1] : <i3, i11, i21, i29> -> i11
              %255 = hcl.struct_get %253[2] : <i3, i11, i21, i29> -> i21
              hcl.print(%254, %255) {format = "mload spadaddr=%d hbmaddr=%d", signedness = "uu"} : i11, i21
              hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
              %256 = memref.alloc() {name = "sa"} : memref<1xi32>
              %257 = affine.load %249[0] {from = "exe_inst_ce0.mf.UC_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
              %258 = hcl.struct_get %257[1] : <i3, i11, i21, i29> -> i11
              %259 = arith.extui %258 {unsigned} : i11 to i32
              affine.store %259, %256[%c0] {to = "sa", unsigned} : memref<1xi32>
              %c0_i32_1 = arith.constant {unsigned} 0 : i32
              affine.store %c0_i32_1, %256[0] {to = "sa", unsigned} : memref<1xi32>
              %260 = memref.alloc() {name = "ha"} : memref<1xi32>
              %261 = affine.load %249[0] {from = "exe_inst_ce0.mf.UC_mload"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
              %262 = hcl.struct_get %261[2] : <i3, i11, i21, i29> -> i21
              %263 = arith.extui %262 {unsigned} : i21 to i32
              affine.store %263, %260[%c0] {to = "ha", unsigned} : memref<1xi32>
              affine.store %c0_i32_1, %260[0] {to = "ha", unsigned} : memref<1xi32>
              %264 = memref.alloc() {name = "count_129"} : memref<1xi32>
              %c8192_i32 = arith.constant 8192 : i32
              affine.store %c8192_i32, %264[%c0] {to = "count_129", unsigned} : memref<1xi32>
              %265 = memref.alloc() {name = "src_addr_130"} : memref<1xi32>
              %266 = affine.load %260[0] {from = "ha", unsigned} : memref<1xi32>
              affine.store %266, %265[%c0] {to = "src_addr_130", unsigned} : memref<1xi32>
              %267 = memref.alloc() {name = "dst_addr_131"} : memref<1xi32>
              %268 = affine.load %256[0] {from = "sa", unsigned} : memref<1xi32>
              affine.store %268, %267[%c0] {to = "dst_addr_131", unsigned} : memref<1xi32>
              %269 = memref.alloc() {name = "_addr_132"} : memref<1xi32>
              %270 = affine.load %265[0] {from = "src_addr_130", unsigned} : memref<1xi32>
              affine.store %270, %269[%c0] {to = "_addr_132", unsigned} : memref<1xi32>
              %271 = memref.alloc() {name = "assert_cond_133"} : memref<1xi1>
              %272 = affine.load %269[0] {from = "_addr_132", unsigned} : memref<1xi32>
              %273 = affine.load %264[0] {from = "count_129", unsigned} : memref<1xi32>
              %274 = arith.extui %272 {unsigned} : i32 to i33
              %275 = arith.extui %273 {unsigned} : i32 to i33
              %276 = arith.addi %274, %275 {unsigned} : i33
              %277 = arith.extui %276 : i33 to i34
              %278 = arith.extsi %c33554432_i32 : i32 to i34
              %279 = arith.cmpi sle, %277, %278 : i34
              affine.store %279, %271[%c0] {to = "assert_cond_133", unsigned} : memref<1xi1>
              %280 = affine.load %271[0] {from = "assert_cond_133", unsigned} : memref<1xi1>
              %281 = arith.extui %280 : i1 to i32
              %282 = arith.cmpi eq, %281, %c0_i32 : i32
              scf.if %282 {
                %285 = affine.load %269[0] {from = "_addr_132", unsigned} : memref<1xi32>
                %286 = affine.load %264[0] {from = "count_129", unsigned} : memref<1xi32>
                %287 = arith.extui %285 {unsigned} : i32 to i33
                %288 = arith.extui %286 {unsigned} : i32 to i33
                %289 = arith.addi %287, %288 {unsigned} : i33
                hcl.print(%285, %289) {format = "\0A\0AAssertion failed {}: HBM Mem.copyto exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "uu"} : i32, i33
                scf.while : () -> () {
                  %290 = affine.load %271[0] {from = "assert_cond_133", unsigned} : memref<1xi1>
                  %291 = arith.extui %290 : i1 to i32
                  %292 = arith.cmpi ne, %291, %c1_i32 : i32
                  scf.condition(%292)
                } do {
                  affine.store %3, %271[0] {to = "assert_cond_133", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %283 = affine.load %264[0] {from = "count_129", unsigned} : memref<1xi32>
              %284 = arith.index_cast %283 {unsigned} : i32 to index
              %c1 = arith.constant {unsigned} 1 : index
              scf.for %arg2 = %c0_0 to %284 step %c1 {
                %285 = affine.load %265[0] {from = "src_addr_130", unsigned} : memref<1xi32>
                %286 = arith.extui %285 {unsigned} : i32 to i33
                %287 = arith.index_cast %arg2 {unsigned} : index to i33
                %288 = arith.addi %286, %287 {unsigned} : i33
                %289 = arith.index_cast %288 {unsigned} : i33 to index
                %290 = memref.load %arg0[%289] {from = "hbm", unsigned} : memref<33554432xi32>
                %291 = affine.load %267[0] {from = "dst_addr_131", unsigned} : memref<1xi32>
                %292 = arith.extui %291 {unsigned} : i32 to i33
                %293 = arith.addi %292, %287 {unsigned} : i33
                %294 = arith.index_cast %293 {unsigned} : i33 to index
                memref.store %290, %0[%294] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
              } {loop_name = "i", op_name = "copyN_28"}
            } else {
              %249 = affine.load %218[0] {from = "inst_id", unsigned} : memref<1xi16>
              %250 = arith.extui %249 : i16 to i32
              %251 = arith.cmpi eq, %250, %c1_i32 : i32
              scf.if %251 {
                %252 = memref.alloc() {name = "exe_inst_ce0.mf.UC_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
                %253 = affine.load %238[0] {from = "execute_inst", unsigned} : memref<1xi64>
                %254 = hcl.int_to_struct(%253) {unsigned} : i64 -> <i3, i11, i21, i29>
                affine.store %254, %252[%c0] {to = "exe_inst_ce0.mf.UC_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
                hcl.print(%c0_i32) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                %255 = affine.load %151[0] {from = "_cur_address", unsigned} : memref<1xi32>
                hcl.print(%255) {format = "ip=%d ", signedness = "u"} : i32
                %256 = affine.load %252[0] {from = "exe_inst_ce0.mf.UC_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
                %257 = hcl.struct_get %256[1] : <i3, i11, i21, i29> -> i11
                %258 = hcl.struct_get %256[2] : <i3, i11, i21, i29> -> i21
                hcl.print(%257, %258) {format = "mstore spadaddr=%d hbmaddr=%d", signedness = "uu"} : i11, i21
                hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                %259 = memref.alloc() {name = "sa_135"} : memref<1xi32>
                %260 = affine.load %252[0] {from = "exe_inst_ce0.mf.UC_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
                %261 = hcl.struct_get %260[1] : <i3, i11, i21, i29> -> i11
                %262 = arith.extui %261 {unsigned} : i11 to i32
                affine.store %262, %259[%c0] {to = "sa_135", unsigned} : memref<1xi32>
                %c0_i32_1 = arith.constant {unsigned} 0 : i32
                affine.store %c0_i32_1, %259[0] {to = "sa_135", unsigned} : memref<1xi32>
                %263 = memref.alloc() {name = "ha_136"} : memref<1xi32>
                %264 = affine.load %252[0] {from = "exe_inst_ce0.mf.UC_mstore"} : memref<1x!hcl.struct<i3, i11, i21, i29>>
                %265 = hcl.struct_get %264[2] : <i3, i11, i21, i29> -> i21
                %266 = arith.extui %265 {unsigned} : i21 to i32
                affine.store %266, %263[%c0] {to = "ha_136", unsigned} : memref<1xi32>
                affine.store %c0_i32_1, %263[0] {to = "ha_136", unsigned} : memref<1xi32>
                %267 = memref.alloc() {name = "count_137"} : memref<1xi32>
                %c8192_i32 = arith.constant 8192 : i32
                affine.store %c8192_i32, %267[%c0] {to = "count_137", unsigned} : memref<1xi32>
                %268 = memref.alloc() {name = "src_addr_138"} : memref<1xi32>
                %269 = affine.load %259[0] {from = "sa_135", unsigned} : memref<1xi32>
                affine.store %269, %268[%c0] {to = "src_addr_138", unsigned} : memref<1xi32>
                %270 = memref.alloc() {name = "dst_addr_139"} : memref<1xi32>
                %271 = affine.load %263[0] {from = "ha_136", unsigned} : memref<1xi32>
                affine.store %271, %270[%c0] {to = "dst_addr_139", unsigned} : memref<1xi32>
                %272 = memref.alloc() {name = "_addr_140"} : memref<1xi32>
                %273 = affine.load %268[0] {from = "src_addr_138", unsigned} : memref<1xi32>
                affine.store %273, %272[%c0] {to = "_addr_140", unsigned} : memref<1xi32>
                %274 = memref.alloc() {name = "assert_cond_141"} : memref<1xi1>
                %275 = affine.load %272[0] {from = "_addr_140", unsigned} : memref<1xi32>
                %276 = affine.load %267[0] {from = "count_137", unsigned} : memref<1xi32>
                %277 = arith.extui %275 {unsigned} : i32 to i33
                %278 = arith.extui %276 {unsigned} : i32 to i33
                %279 = arith.addi %277, %278 {unsigned} : i33
                %280 = arith.extui %279 : i33 to i34
                %281 = arith.extsi %c33554432_i32 : i32 to i34
                %282 = arith.cmpi sle, %280, %281 : i34
                affine.store %282, %274[%c0] {to = "assert_cond_141", unsigned} : memref<1xi1>
                %283 = affine.load %274[0] {from = "assert_cond_141", unsigned} : memref<1xi1>
                %284 = arith.extui %283 : i1 to i32
                %285 = arith.cmpi eq, %284, %c0_i32 : i32
                scf.if %285 {
                  %288 = affine.load %272[0] {from = "_addr_140", unsigned} : memref<1xi32>
                  %289 = affine.load %267[0] {from = "count_137", unsigned} : memref<1xi32>
                  %290 = arith.extui %288 {unsigned} : i32 to i33
                  %291 = arith.extui %289 {unsigned} : i32 to i33
                  %292 = arith.addi %290, %291 {unsigned} : i33
                  hcl.print(%288, %292) {format = "\0A\0AAssertion failed {}: SPAD Mem.copyto exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "uu"} : i32, i33
                  scf.while : () -> () {
                    %293 = affine.load %274[0] {from = "assert_cond_141", unsigned} : memref<1xi1>
                    %294 = arith.extui %293 : i1 to i32
                    %295 = arith.cmpi ne, %294, %c1_i32 : i32
                    scf.condition(%295)
                  } do {
                    affine.store %3, %274[0] {to = "assert_cond_141", unsigned} : memref<1xi1>
                    scf.yield
                  }
                }
                %286 = affine.load %267[0] {from = "count_137", unsigned} : memref<1xi32>
                %287 = arith.index_cast %286 {unsigned} : i32 to index
                %c1 = arith.constant {unsigned} 1 : index
                scf.for %arg2 = %c0_0 to %287 step %c1 {
                  %288 = affine.load %268[0] {from = "src_addr_138", unsigned} : memref<1xi32>
                  %289 = arith.extui %288 {unsigned} : i32 to i33
                  %290 = arith.index_cast %arg2 {unsigned} : index to i33
                  %291 = arith.addi %289, %290 {unsigned} : i33
                  %292 = arith.index_cast %291 {unsigned} : i33 to index
                  %293 = memref.load %0[%292] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                  %294 = affine.load %270[0] {from = "dst_addr_139", unsigned} : memref<1xi32>
                  %295 = arith.extui %294 {unsigned} : i32 to i33
                  %296 = arith.addi %295, %290 {unsigned} : i33
                  %297 = arith.index_cast %296 {unsigned} : i33 to index
                  memref.store %293, %arg0[%297] {to = "hbm", unsigned} : memref<33554432xi32>
                } {loop_name = "i", op_name = "copyN_29"}
              } else {
                %252 = affine.load %218[0] {from = "inst_id", unsigned} : memref<1xi16>
                %253 = arith.extui %252 : i16 to i32
                %254 = arith.cmpi eq, %253, %c2_i32 : i32
                scf.if %254 {
                  %255 = memref.alloc() {name = "exe_inst_ce0.mf.UC_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
                  %256 = affine.load %238[0] {from = "execute_inst", unsigned} : memref<1xi64>
                  %257 = hcl.int_to_struct(%256) {unsigned} : i64 -> <i3, i32, i15, i14>
                  affine.store %257, %255[%c0] {to = "exe_inst_ce0.mf.UC_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
                  %258 = affine.load %38[0] {from = "tele_inst_count_32", unsigned} : memref<1xi32>
                  %259 = affine.load %255[0] {from = "exe_inst_ce0.mf.UC_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
                  %260 = hcl.struct_get %259[2] : <i3, i32, i15, i14> -> i15
                  %261 = arith.extui %260 {unsigned} : i15 to i32
                  %262 = arith.cmpi ule, %258, %261 {unsigned} : i32
                  scf.if %262 {
                    %263 = affine.load %7[0] {from = "flags_stalled", unsigned} : memref<1xi1>
                    %264 = arith.extui %263 : i1 to i32
                    %265 = arith.cmpi eq, %264, %c0_i32 : i32
                    scf.if %265 {
                      hcl.print(%c0_i32) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                      %271 = affine.load %151[0] {from = "_cur_address", unsigned} : memref<1xi32>
                      hcl.print(%271) {format = "ip=%d ", signedness = "u"} : i32
                      %272 = affine.load %255[0] {from = "exe_inst_ce0.mf.UC_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
                      %273 = hcl.struct_get %272[2] : <i3, i32, i15, i14> -> i15
                      hcl.print(%273) {format = "msyncc cinstqaddr=%d", signedness = "u"} : i15
                      hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                    }
                    %266 = affine.load %16[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
                    %267 = arith.extui %266 : i32 to i34
                    %268 = arith.addi %267, %190 : i34
                    %269 = arith.trunci %268 {unsigned} : i34 to i32
                    affine.store %269, %16[0] {to = "tele_stall_count", unsigned} : memref<1xi32>
                    %270 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                    affine.store %270, %6[0] {to = "flags_stall", unsigned} : memref<1xi1>
                    affine.store %270, %7[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                    affine.store %270, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
                  } else {
                    hcl.print(%c0_i32) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                    %263 = affine.load %151[0] {from = "_cur_address", unsigned} : memref<1xi32>
                    hcl.print(%263) {format = "ip=%d ", signedness = "u"} : i32
                    %264 = affine.load %255[0] {from = "exe_inst_ce0.mf.UC_msyncc"} : memref<1x!hcl.struct<i3, i32, i15, i14>>
                    %265 = hcl.struct_get %264[2] : <i3, i32, i15, i14> -> i15
                    hcl.print(%265) {format = "msyncc cinstqaddr=%d", signedness = "u"} : i15
                    hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                  }
                } else {
                  %255 = affine.load %218[0] {from = "inst_id", unsigned} : memref<1xi16>
                  %c3_i32 = arith.constant 3 : i32
                  %256 = arith.extui %255 : i16 to i32
                  %257 = arith.cmpi eq, %256, %c3_i32 : i32
                  scf.if %257 {
                    %258 = memref.alloc() {name = "exe_inst_ce0.mf.UC_mexit"} : memref<1x!hcl.struct<i3, i61>>
                    %259 = affine.load %238[0] {from = "execute_inst", unsigned} : memref<1xi64>
                    %260 = hcl.int_to_struct(%259) {unsigned} : i64 -> <i3, i61>
                    affine.store %260, %258[%c0] {to = "exe_inst_ce0.mf.UC_mexit"} : memref<1x!hcl.struct<i3, i61>>
                    hcl.print(%c0_i32) {format = "                    ce0.mf.UC ", signedness = "_"} : i32
                    %261 = affine.load %151[0] {from = "_cur_address", unsigned} : memref<1xi32>
                    hcl.print(%261) {format = "ip=%d ", signedness = "u"} : i32
                    hcl.print(%c0_i32) {format = "mexit", signedness = "_"} : i32
                    hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                    %262 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                    affine.store %262, %5[0] {to = "flags_halt", unsigned} : memref<1xi1>
                    affine.store %3, %4[0] {to = "flags_active", unsigned} : memref<1xi1>
                    affine.store %262, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
                  } else {
                    hcl.print(%c0_i32) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                    %258 = affine.load %238[0] {from = "execute_inst", unsigned} : memref<1xi64>
                    %259 = hcl.get_slice(%258 : i64, %c63, %c32) -> i32
                    hcl.print(%259) {format = "%d:", signedness = "u"} : i32
                    %260 = affine.load %238[0] {from = "execute_inst", unsigned} : memref<1xi64>
                    %261 = hcl.get_slice(%260 : i64, %c31, %c0_0) -> i32
                    hcl.print(%261) {format = "%d:", signedness = "u"} : i32
                    hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                    %262 = memref.alloc() {name = "assert_cond_144"} : memref<1xi1>
                    affine.store %3, %262[%c0] {to = "assert_cond_144", unsigned} : memref<1xi1>
                    %263 = affine.load %262[0] {from = "assert_cond_144", unsigned} : memref<1xi1>
                    %264 = arith.extui %263 : i1 to i32
                    %265 = arith.cmpi eq, %264, %c0_i32 : i32
                    scf.if %265 {
                      hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ce0.mf.UC.decode Invalid instruction\0A\0A", signedness = "_"} : i32
                      scf.while : () -> () {
                        %266 = affine.load %262[0] {from = "assert_cond_144", unsigned} : memref<1xi1>
                        %267 = arith.extui %266 : i1 to i32
                        %268 = arith.cmpi ne, %267, %c1_i32 : i32
                        scf.condition(%268)
                      } do {
                        affine.store %3, %262[0] {to = "assert_cond_144", unsigned} : memref<1xi1>
                        scf.yield
                      }
                    }
                  }
                }
              }
            }
            affine.store %3, %14[0] {to = "latstalled", unsigned} : memref<1xi1>
            %243 = affine.load %215[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %244 = arith.extui %243 : i32 to i33
            %245 = arith.cmpi ne, %244, %140 : i33
            scf.if %245 {
              %249 = arith.trunci %c1_i32 {unsigned} : i32 to i1
              affine.store %249, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
            }
            %246 = affine.load %6[0] {from = "flags_stall", unsigned} : memref<1xi1>
            %247 = arith.extui %246 : i1 to i32
            %248 = arith.cmpi eq, %247, %c0_i32 : i32
            scf.if %248 {
              %249 = affine.load %15[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
              %250 = arith.extui %249 : i32 to i34
              %251 = arith.addi %250, %190 : i34
              %252 = arith.trunci %251 {unsigned} : i34 to i32
              affine.store %252, %15[0] {to = "tele_inst_count", unsigned} : memref<1xi32>
              %253 = affine.load %12[0] {from = "inst_naddr", unsigned} : memref<1xi32>
              affine.store %253, %11[0] {to = "inst_addr", unsigned} : memref<1xi32>
              affine.store %3, %7[0] {to = "flags_stalled", unsigned} : memref<1xi1>
            }
          } else {
            %238 = affine.load %215[0] {from = "inst_lat", unsigned} : memref<1xi32>
            %239 = arith.extui %238 : i32 to i34
            %240 = arith.subi %239, %155 : i34
            %241 = arith.trunci %240 {unsigned} : i34 to i32
            affine.store %241, %13[0] {to = "latency_count", unsigned} : memref<1xi32>
            %242 = affine.load %17[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
            %243 = arith.extui %242 : i32 to i34
            %244 = arith.addi %243, %190 : i34
            %245 = arith.trunci %244 {unsigned} : i34 to i32
            affine.store %245, %17[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
            %246 = arith.trunci %c1_i32 {unsigned} : i32 to i1
            affine.store %246, %14[0] {to = "latstalled", unsigned} : memref<1xi1>
            affine.store %246, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
          }
        } else {
          %151 = memref.alloc() {name = "assert_cond_145"} : memref<1xi1>
          %152 = affine.load %14[0] {from = "latstalled", unsigned} : memref<1xi1>
          %153 = arith.extui %152 : i1 to i32
          %154 = arith.cmpi eq, %153, %c1_i32 : i32
          affine.store %154, %151[%c0] {to = "assert_cond_145", unsigned} : memref<1xi1>
          %155 = affine.load %151[0] {from = "assert_cond_145", unsigned} : memref<1xi1>
          %156 = arith.extui %155 : i1 to i32
          %157 = arith.cmpi eq, %156, %c0_i32 : i32
          scf.if %157 {
            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: latency countdown but not latstalled?\0A\0A", signedness = "_"} : i32
            scf.while : () -> () {
              %168 = affine.load %151[0] {from = "assert_cond_145", unsigned} : memref<1xi1>
              %169 = arith.extui %168 : i1 to i32
              %170 = arith.cmpi ne, %169, %c1_i32 : i32
              scf.condition(%170)
            } do {
              affine.store %3, %151[0] {to = "assert_cond_145", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %158 = affine.load %13[0] {from = "latency_count", unsigned} : memref<1xi32>
          %159 = arith.extui %158 : i32 to i34
          %160 = arith.extsi %c1_i32 : i32 to i34
          %161 = arith.subi %159, %160 : i34
          %162 = arith.trunci %161 {unsigned} : i34 to i32
          affine.store %162, %13[0] {to = "latency_count", unsigned} : memref<1xi32>
          %163 = affine.load %17[0] {from = "tele_latstall_count", unsigned} : memref<1xi32>
          %164 = arith.extui %163 : i32 to i34
          %165 = arith.addi %164, %160 : i34
          %166 = arith.trunci %165 {unsigned} : i34 to i32
          affine.store %166, %17[0] {to = "tele_latstall_count", unsigned} : memref<1xi32>
          %167 = arith.trunci %c1_i32 {unsigned} : i32 to i1
          affine.store %167, %14[0] {to = "latstalled", unsigned} : memref<1xi1>
          affine.store %167, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
        }
        scf.yield
      }
      affine.store %3, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
      affine.store %3, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
      affine.store %3, %32[0] {to = "count_stop_26", unsigned} : memref<1xi1>
      affine.store %3, %33[0] {to = "addr_stop_27", unsigned} : memref<1xi1>
      scf.while : () -> () {
        %true = arith.constant {unsigned} true
        %133 = affine.load %27[0] {from = "flags_active_21", unsigned} : memref<1xi1>
        %134 = arith.extui %133 : i1 to i32
        %135 = arith.cmpi ne, %134, %c0_i32 : i32
        %136 = arith.andi %true, %135 {unsigned} : i1
        %137 = affine.load %31[0] {from = "flags_break_25", unsigned} : memref<1xi1>
        %138 = arith.extui %137 : i1 to i32
        %139 = arith.cmpi eq, %138, %c0_i32 : i32
        %140 = arith.andi %136, %139 {unsigned} : i1
        scf.condition(%140)
      } do {
        %133 = memref.alloc() {name = "assert_cond_146"} : memref<1xi1>
        %134 = affine.load %37[0] {from = "latstalled_31", unsigned} : memref<1xi1>
        %135 = arith.extui %134 : i1 to i32
        %136 = arith.cmpi eq, %135, %c1_i32 : i32
        %137 = arith.ori %false, %136 {unsigned} : i1
        %138 = affine.load %36[0] {from = "latency_count_30", unsigned} : memref<1xi32>
        %139 = arith.extui %138 : i32 to i33
        %140 = arith.extsi %c0_i32 : i32 to i33
        %141 = arith.cmpi eq, %139, %140 : i33
        %142 = arith.ori %137, %141 {unsigned} : i1
        %143 = arith.extui %142 : i1 to i32
        %144 = arith.cmpi ne, %143, %c0_i32 : i32
        affine.store %144, %133[%c0] {to = "assert_cond_146", unsigned} : memref<1xi1>
        %145 = affine.load %133[0] {from = "assert_cond_146", unsigned} : memref<1xi1>
        %146 = arith.extui %145 : i1 to i32
        %147 = arith.cmpi eq, %146, %c0_i32 : i32
        scf.if %147 {
          hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: \0A\0A", signedness = "_"} : i32
          scf.while : () -> () {
            %151 = affine.load %133[0] {from = "assert_cond_146", unsigned} : memref<1xi1>
            %152 = arith.extui %151 : i1 to i32
            %153 = arith.cmpi ne, %152, %c1_i32 : i32
            scf.condition(%153)
          } do {
            affine.store %3, %133[0] {to = "assert_cond_146", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %148 = affine.load %36[0] {from = "latency_count_30", unsigned} : memref<1xi32>
        %149 = arith.extui %148 : i32 to i33
        %150 = arith.cmpi eq, %149, %140 : i33
        scf.if %150 {
          %151 = memref.alloc() {name = "_cur_address_147"} : memref<1xi32>
          %152 = affine.load %34[0] {from = "inst_addr_28", unsigned} : memref<1xi32>
          affine.store %152, %151[%c0] {to = "_cur_address_147", unsigned} : memref<1xi32>
          %153 = affine.load %34[0] {from = "inst_addr_28", unsigned} : memref<1xi32>
          %c2_i32 = arith.constant 2 : i32
          %154 = arith.extui %153 : i32 to i34
          %155 = arith.extsi %c2_i32 : i32 to i34
          %156 = arith.addi %154, %155 : i34
          %157 = arith.trunci %156 {unsigned} : i34 to i32
          affine.store %157, %35[0] {to = "inst_naddr_29", unsigned} : memref<1xi32>
          %158 = memref.alloc() {name = "inst_148"} : memref<1xi64>
          %159 = arith.extsi %c0_i32 {unsigned} : i32 to i64
          affine.store %159, %158[%c0] {to = "inst_148", unsigned} : memref<1xi64>
          %160 = memref.alloc() {name = "read_addr_149"} : memref<1xi34>
          %161 = affine.load %34[0] {from = "inst_addr_28", unsigned} : memref<1xi32>
          %162 = arith.extui %161 : i32 to i34
          %163 = arith.extsi %c0_i32 : i32 to i34
          %164 = arith.addi %162, %163 : i34
          affine.store %164, %160[%c0] {to = "read_addr_149"} : memref<1xi34>
          %165 = memref.alloc() {name = "_addr_150"} : memref<1xi34>
          %166 = affine.load %160[0] {from = "read_addr_149"} : memref<1xi34>
          affine.store %166, %165[%c0] {to = "_addr_150"} : memref<1xi34>
          %167 = memref.alloc() {name = "assert_cond_151"} : memref<1xi1>
          %168 = affine.load %165[0] {from = "_addr_150"} : memref<1xi34>
          %169 = arith.extsi %168 : i34 to i35
          %170 = arith.extsi %c1_i32 : i32 to i35
          %171 = arith.addi %169, %170 : i35
          %c33554432_i32 = arith.constant 33554432 : i32
          %172 = arith.extsi %c33554432_i32 : i32 to i35
          %173 = arith.cmpi sle, %171, %172 : i35
          affine.store %173, %167[%c0] {to = "assert_cond_151", unsigned} : memref<1xi1>
          %174 = affine.load %167[0] {from = "assert_cond_151", unsigned} : memref<1xi1>
          %175 = arith.extui %174 : i1 to i32
          %176 = arith.cmpi eq, %175, %c0_i32 : i32
          scf.if %176 {
            %245 = affine.load %165[0] {from = "_addr_150"} : memref<1xi34>
            %246 = arith.extsi %245 : i34 to i35
            %247 = arith.addi %246, %170 : i35
            hcl.print(%245, %247) {format = "\0A\0AAssertion failed {}: HBM Mem.read exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
            scf.while : () -> () {
              %248 = affine.load %167[0] {from = "assert_cond_151", unsigned} : memref<1xi1>
              %249 = arith.extui %248 : i1 to i32
              %250 = arith.cmpi ne, %249, %c1_i32 : i32
              scf.condition(%250)
            } do {
              affine.store %3, %167[0] {to = "assert_cond_151", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %177 = memref.alloc() {name = "Mem.read_c_30"} : memref<1xi32>
          %178 = affine.load %160[0] {from = "read_addr_149"} : memref<1xi34>
          %179 = arith.extsi %178 : i34 to i35
          %180 = arith.index_cast %c0 : index to i35
          %181 = arith.addi %179, %180 : i35
          %182 = arith.index_cast %181 {unsigned} : i35 to index
          %183 = memref.load %arg0[%182] {from = "hbm", unsigned} : memref<33554432xi32>
          affine.store %183, %177[%c0] {to = "Mem.read_c_30", unsigned} : memref<1xi32>
          %c32_i32 = arith.constant 32 : i32
          %c0_i64 = arith.constant {unsigned} 0 : i64
          %184 = affine.load %177[0] {from = "Mem.read_c_30", unsigned} : memref<1xi32>
          %185 = arith.extui %184 {unsigned} : i32 to i64
          %186 = arith.ori %c0_i64, %185 {unsigned} : i64
          affine.store %186, %158[0] {to = "inst_148", unsigned} : memref<1xi64>
          %187 = memref.alloc() {name = "read_addr_152"} : memref<1xi34>
          %188 = affine.load %34[0] {from = "inst_addr_28", unsigned} : memref<1xi32>
          %189 = arith.extui %188 : i32 to i34
          %190 = arith.extsi %c1_i32 : i32 to i34
          %191 = arith.addi %189, %190 : i34
          affine.store %191, %187[%c0] {to = "read_addr_152"} : memref<1xi34>
          %192 = memref.alloc() {name = "_addr_153"} : memref<1xi34>
          %193 = affine.load %187[0] {from = "read_addr_152"} : memref<1xi34>
          affine.store %193, %192[%c0] {to = "_addr_153"} : memref<1xi34>
          %194 = memref.alloc() {name = "assert_cond_154"} : memref<1xi1>
          %195 = affine.load %192[0] {from = "_addr_153"} : memref<1xi34>
          %196 = arith.extsi %195 : i34 to i35
          %197 = arith.addi %196, %170 : i35
          %198 = arith.cmpi sle, %197, %172 : i35
          affine.store %198, %194[%c0] {to = "assert_cond_154", unsigned} : memref<1xi1>
          %199 = affine.load %194[0] {from = "assert_cond_154", unsigned} : memref<1xi1>
          %200 = arith.extui %199 : i1 to i32
          %201 = arith.cmpi eq, %200, %c0_i32 : i32
          scf.if %201 {
            %245 = affine.load %192[0] {from = "_addr_153"} : memref<1xi34>
            %246 = arith.extsi %245 : i34 to i35
            %247 = arith.addi %246, %170 : i35
            hcl.print(%245, %247) {format = "\0A\0AAssertion failed {}: HBM Mem.read exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
            scf.while : () -> () {
              %248 = affine.load %194[0] {from = "assert_cond_154", unsigned} : memref<1xi1>
              %249 = arith.extui %248 : i1 to i32
              %250 = arith.cmpi ne, %249, %c1_i32 : i32
              scf.condition(%250)
            } do {
              affine.store %3, %194[0] {to = "assert_cond_154", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %202 = memref.alloc() {name = "Mem.read_c_31"} : memref<1xi32>
          %203 = affine.load %187[0] {from = "read_addr_152"} : memref<1xi34>
          %204 = arith.extsi %203 : i34 to i35
          %205 = arith.addi %204, %180 : i35
          %206 = arith.index_cast %205 {unsigned} : i35 to index
          %207 = memref.load %arg0[%206] {from = "hbm", unsigned} : memref<33554432xi32>
          affine.store %207, %202[%c0] {to = "Mem.read_c_31", unsigned} : memref<1xi32>
          %208 = affine.load %202[0] {from = "Mem.read_c_31", unsigned} : memref<1xi32>
          %209 = arith.extui %208 {unsigned} : i32 to i64
          %210 = arith.ori %c0_i64, %209 {unsigned} : i64
          affine.store %210, %158[0] {to = "inst_148", unsigned} : memref<1xi64>
          hcl.print(%c0_i32) {format = "FETCH ce0.cf.UC inst=0x", signedness = "_"} : i32
          %211 = affine.load %158[0] {from = "inst_148", unsigned} : memref<1xi64>
          %c32 = arith.constant {unsigned} 32 : index
          %c63 = arith.constant {unsigned} 63 : index
          %212 = hcl.get_slice(%211 : i64, %c63, %c32) -> i32
          hcl.print(%212) {format = "%d:", signedness = "u"} : i32
          %213 = affine.load %158[0] {from = "inst_148", unsigned} : memref<1xi64>
          %c0_0 = arith.constant {unsigned} 0 : index
          %c31 = arith.constant {unsigned} 31 : index
          %214 = hcl.get_slice(%213 : i64, %c31, %c0_0) -> i32
          hcl.print(%214) {format = "%d:", signedness = "u"} : i32
          hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
          %215 = memref.alloc() {name = "inst_lat_155"} : memref<1xi32>
          affine.store %c0_i32, %215[%c0] {to = "inst_lat_155", unsigned} : memref<1xi32>
          %216 = memref.alloc() {name = "decode_inst_156"} : memref<1xi64>
          %217 = affine.load %158[0] {from = "inst_148", unsigned} : memref<1xi64>
          affine.store %217, %216[%c0] {to = "decode_inst_156", unsigned} : memref<1xi64>
          %218 = memref.alloc() {name = "inst_id_157"} : memref<1xi16>
          %219 = arith.trunci %c0_i32 {unsigned} : i32 to i16
          affine.store %219, %218[%c0] {to = "inst_id_157", unsigned} : memref<1xi16>
          %220 = memref.alloc() {name = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
          %221 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
          %222 = hcl.int_to_struct(%221) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
          affine.store %222, %220[%c0] {to = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
          %true = arith.constant {unsigned} true
          %223 = affine.load %220[0] {from = "dec_inst_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
          %224 = hcl.struct_get %223[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
          %225 = arith.cmpi eq, %224, %3 {unsigned} : i1
          %226 = arith.andi %true, %225 {unsigned} : i1
          %227 = hcl.struct_get %223[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
          %228 = arith.cmpi eq, %227, %24 {unsigned} : i3
          %229 = arith.andi %226, %228 {unsigned} : i1
          %230 = hcl.struct_get %223[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
          %c3_i32 = arith.constant 3 : i32
          %231 = arith.trunci %c3_i32 {unsigned} : i32 to i2
          %232 = arith.cmpi eq, %230, %231 {unsigned} : i2
          %233 = arith.andi %229, %232 {unsigned} : i1
          scf.if %233 {
            affine.store %219, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
            affine.store %c1_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
          } else {
            %245 = memref.alloc() {name = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
            %246 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
            %247 = hcl.int_to_struct(%246) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
            affine.store %247, %245[%c0] {to = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
            %248 = affine.load %245[0] {from = "dec_inst_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
            %249 = hcl.struct_get %248[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
            %250 = arith.trunci %c1_i32 {unsigned} : i32 to i1
            %251 = arith.cmpi eq, %249, %250 {unsigned} : i1
            %252 = arith.andi %true, %251 {unsigned} : i1
            %253 = hcl.struct_get %248[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
            %254 = arith.cmpi eq, %253, %24 {unsigned} : i3
            %255 = arith.andi %252, %254 {unsigned} : i1
            %256 = hcl.struct_get %248[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
            %257 = arith.trunci %c1_i32 {unsigned} : i32 to i2
            %258 = arith.cmpi eq, %256, %257 {unsigned} : i2
            %259 = arith.andi %255, %258 {unsigned} : i1
            scf.if %259 {
              %260 = arith.trunci %c1_i32 {unsigned} : i32 to i16
              affine.store %260, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
              affine.store %c2_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
            } else {
              %260 = memref.alloc() {name = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
              %261 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
              %262 = hcl.int_to_struct(%261) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
              affine.store %262, %260[%c0] {to = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
              %263 = affine.load %260[0] {from = "dec_inst_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
              %264 = hcl.struct_get %263[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
              %265 = arith.cmpi eq, %264, %250 {unsigned} : i1
              %266 = arith.andi %true, %265 {unsigned} : i1
              %267 = hcl.struct_get %263[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
              %268 = arith.cmpi eq, %267, %24 {unsigned} : i3
              %269 = arith.andi %266, %268 {unsigned} : i1
              %270 = hcl.struct_get %263[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
              %271 = arith.trunci %c2_i32 {unsigned} : i32 to i2
              %272 = arith.cmpi eq, %270, %271 {unsigned} : i2
              %273 = arith.andi %269, %272 {unsigned} : i1
              scf.if %273 {
                %274 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %274, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                %c4_i32 = arith.constant 4 : i32
                affine.store %c4_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
              } else {
                %274 = memref.alloc() {name = "dec_inst_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                %275 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                %276 = hcl.int_to_struct(%275) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                affine.store %276, %274[%c0] {to = "dec_inst_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                %277 = affine.load %274[0] {from = "dec_inst_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                %278 = hcl.struct_get %277[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
                %279 = arith.cmpi eq, %278, %250 {unsigned} : i1
                %280 = arith.andi %true, %279 {unsigned} : i1
                %281 = hcl.struct_get %277[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
                %282 = arith.trunci %c1_i32 {unsigned} : i32 to i3
                %283 = arith.cmpi eq, %281, %282 {unsigned} : i3
                %284 = arith.andi %280, %283 {unsigned} : i1
                %285 = hcl.struct_get %277[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                %286 = arith.trunci %c0_i32 {unsigned} : i32 to i2
                %287 = arith.cmpi eq, %285, %286 {unsigned} : i2
                %288 = arith.andi %284, %287 {unsigned} : i1
                scf.if %288 {
                  %289 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                  affine.store %289, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                  %c4_i32 = arith.constant 4 : i32
                  affine.store %c4_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                } else {
                  %289 = memref.alloc() {name = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %290 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                  %291 = hcl.int_to_struct(%290) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                  affine.store %291, %289[%c0] {to = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %292 = affine.load %289[0] {from = "dec_inst_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %293 = hcl.struct_get %292[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
                  %294 = arith.cmpi eq, %293, %250 {unsigned} : i1
                  %295 = arith.andi %true, %294 {unsigned} : i1
                  %296 = hcl.struct_get %292[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
                  %297 = arith.cmpi eq, %296, %24 {unsigned} : i3
                  %298 = arith.andi %295, %297 {unsigned} : i1
                  %299 = hcl.struct_get %292[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                  %300 = arith.cmpi eq, %299, %286 {unsigned} : i2
                  %301 = arith.andi %298, %300 {unsigned} : i1
                  scf.if %301 {
                    %c4_i32 = arith.constant 4 : i32
                    %302 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                    affine.store %302, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                    %c5_i32 = arith.constant 5 : i32
                    affine.store %c5_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                  } else {
                    %302 = memref.alloc() {name = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %303 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                    %304 = hcl.int_to_struct(%303) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                    affine.store %304, %302[%c0] {to = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %305 = affine.load %302[0] {from = "dec_inst_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %306 = hcl.struct_get %305[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
                    %307 = arith.cmpi eq, %306, %3 {unsigned} : i1
                    %308 = arith.andi %true, %307 {unsigned} : i1
                    %309 = hcl.struct_get %305[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
                    %310 = arith.cmpi eq, %309, %282 {unsigned} : i3
                    %311 = arith.andi %308, %310 {unsigned} : i1
                    %312 = hcl.struct_get %305[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                    %313 = arith.cmpi eq, %312, %231 {unsigned} : i2
                    %314 = arith.andi %311, %313 {unsigned} : i1
                    scf.if %314 {
                      %c5_i32 = arith.constant 5 : i32
                      %315 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                      affine.store %315, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                      affine.store %c1_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                    } else {
                      %315 = memref.alloc() {name = "dec_inst_cexit"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %316 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                      %317 = hcl.int_to_struct(%316) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                      affine.store %317, %315[%c0] {to = "dec_inst_cexit"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %318 = affine.load %315[0] {from = "dec_inst_cexit"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %319 = hcl.struct_get %318[4] : <i9, i2, i2, i3, i1, i11, i36> -> i1
                      %320 = arith.cmpi eq, %319, %3 {unsigned} : i1
                      %321 = arith.andi %true, %320 {unsigned} : i1
                      %322 = hcl.struct_get %318[3] : <i9, i2, i2, i3, i1, i11, i36> -> i3
                      %323 = arith.trunci %c3_i32 {unsigned} : i32 to i3
                      %324 = arith.cmpi eq, %322, %323 {unsigned} : i3
                      %325 = arith.andi %321, %324 {unsigned} : i1
                      %326 = hcl.struct_get %318[2] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                      %327 = arith.cmpi eq, %326, %231 {unsigned} : i2
                      %328 = arith.andi %325, %327 {unsigned} : i1
                      scf.if %328 {
                        %c6_i32 = arith.constant 6 : i32
                        %329 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                        affine.store %329, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                        affine.store %c1_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                      } else {
                        %329 = memref.alloc() {name = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                        %330 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                        %331 = hcl.int_to_struct(%330) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i15, i21>
                        affine.store %331, %329[%c0] {to = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                        %332 = affine.load %329[0] {from = "dec_inst_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                        %333 = hcl.struct_get %332[4] : <i9, i2, i2, i3, i1, i11, i15, i21> -> i1
                        %334 = arith.cmpi eq, %333, %3 {unsigned} : i1
                        %335 = arith.andi %true, %334 {unsigned} : i1
                        %336 = hcl.struct_get %332[3] : <i9, i2, i2, i3, i1, i11, i15, i21> -> i3
                        %337 = arith.trunci %c2_i32 {unsigned} : i32 to i3
                        %338 = arith.cmpi eq, %336, %337 {unsigned} : i3
                        %339 = arith.andi %335, %338 {unsigned} : i1
                        %340 = hcl.struct_get %332[2] : <i9, i2, i2, i3, i1, i11, i15, i21> -> i2
                        %341 = arith.cmpi eq, %340, %231 {unsigned} : i2
                        %342 = arith.andi %339, %341 {unsigned} : i1
                        scf.if %342 {
                          %c7_i32 = arith.constant 7 : i32
                          %343 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                          affine.store %343, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                          affine.store %c1_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                        } else {
                          %343 = memref.alloc() {name = "dec_inst_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                          %344 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                          %345 = hcl.int_to_struct(%344) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i12, i21, i3>
                          affine.store %345, %343[%c0] {to = "dec_inst_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                          %346 = affine.load %343[0] {from = "dec_inst_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                          %347 = hcl.struct_get %346[4] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i1
                          %348 = arith.cmpi eq, %347, %3 {unsigned} : i1
                          %349 = arith.andi %true, %348 {unsigned} : i1
                          %350 = hcl.struct_get %346[3] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i3
                          %c4_i32 = arith.constant 4 : i32
                          %351 = arith.trunci %c4_i32 {unsigned} : i32 to i3
                          %352 = arith.cmpi eq, %350, %351 {unsigned} : i3
                          %353 = arith.andi %349, %352 {unsigned} : i1
                          %354 = hcl.struct_get %346[2] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i2
                          %355 = arith.cmpi eq, %354, %231 {unsigned} : i2
                          %356 = arith.andi %353, %355 {unsigned} : i1
                          scf.if %356 {
                            %c8_i32 = arith.constant 8 : i32
                            %357 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                            affine.store %357, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                            affine.store %c1_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                          } else {
                            %357 = memref.alloc() {name = "dec_inst_bsync"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i47>>
                            %358 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                            %359 = hcl.int_to_struct(%358) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i47>
                            affine.store %359, %357[%c0] {to = "dec_inst_bsync"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i47>>
                            %360 = affine.load %357[0] {from = "dec_inst_bsync"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i47>>
                            %361 = hcl.struct_get %360[4] : <i9, i2, i2, i3, i1, i47> -> i1
                            %362 = arith.cmpi eq, %361, %3 {unsigned} : i1
                            %363 = arith.andi %true, %362 {unsigned} : i1
                            %364 = hcl.struct_get %360[3] : <i9, i2, i2, i3, i1, i47> -> i3
                            %c5_i32 = arith.constant 5 : i32
                            %365 = arith.trunci %c5_i32 {unsigned} : i32 to i3
                            %366 = arith.cmpi eq, %364, %365 {unsigned} : i3
                            %367 = arith.andi %363, %366 {unsigned} : i1
                            %368 = hcl.struct_get %360[2] : <i9, i2, i2, i3, i1, i47> -> i2
                            %369 = arith.cmpi eq, %368, %231 {unsigned} : i2
                            %370 = arith.andi %367, %369 {unsigned} : i1
                            scf.if %370 {
                              %c9_i32 = arith.constant 9 : i32
                              %371 = arith.trunci %c9_i32 {unsigned} : i32 to i16
                              affine.store %371, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
                              affine.store %c1_i32, %215[0] {to = "inst_lat_155", unsigned} : memref<1xi32>
                            } else {
                              %371 = memref.alloc() {name = "assert_cond_168"} : memref<1xi1>
                              affine.store %3, %371[%c0] {to = "assert_cond_168", unsigned} : memref<1xi1>
                              %372 = affine.load %371[0] {from = "assert_cond_168", unsigned} : memref<1xi1>
                              %373 = arith.extui %372 : i1 to i32
                              %374 = arith.cmpi eq, %373, %c0_i32 : i32
                              scf.if %374 {
                                %376 = affine.load %216[0] {from = "decode_inst_156", unsigned} : memref<1xi64>
                                %377 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                                hcl.print(%376, %377) {format = "\0A\0AAssertion failed {}: \0A\0Ace0.cf.UC.decode Invalid instruction (%d) at address %d\0A\0A\0A", signedness = "uu"} : i64, i32
                                scf.while : () -> () {
                                  %378 = affine.load %371[0] {from = "assert_cond_168", unsigned} : memref<1xi1>
                                  %379 = arith.extui %378 : i1 to i32
                                  %380 = arith.cmpi ne, %379, %c1_i32 : i32
                                  scf.condition(%380)
                                } do {
                                  affine.store %3, %371[0] {to = "assert_cond_168", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %c10_i32 = arith.constant 10 : i32
                              %375 = arith.trunci %c10_i32 {unsigned} : i32 to i16
                              affine.store %375, %218[0] {to = "inst_id_157", unsigned} : memref<1xi16>
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
          %234 = affine.load %215[0] {from = "inst_lat_155", unsigned} : memref<1xi32>
          %235 = arith.extui %234 : i32 to i33
          %236 = arith.extsi %c1_i32 : i32 to i33
          %237 = arith.cmpi sle, %235, %236 : i33
          %238 = arith.ori %false, %237 {unsigned} : i1
          %239 = affine.load %37[0] {from = "latstalled_31", unsigned} : memref<1xi1>
          %240 = arith.extui %239 : i1 to i32
          %241 = arith.cmpi eq, %240, %c1_i32 : i32
          %242 = arith.ori %238, %241 {unsigned} : i1
          %243 = arith.extui %242 : i1 to i32
          %244 = arith.cmpi ne, %243, %c0_i32 : i32
          scf.if %244 {
            %245 = memref.alloc() {name = "execute_inst_169"} : memref<1xi64>
            %246 = affine.load %158[0] {from = "inst_148", unsigned} : memref<1xi64>
            affine.store %246, %245[%c0] {to = "execute_inst_169", unsigned} : memref<1xi64>
            %247 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
            %248 = arith.extui %247 : i16 to i32
            %249 = arith.cmpi eq, %248, %c0_i32 : i32
            scf.if %249 {
              %256 = memref.alloc() {name = "exe_inst_ce0.cf.UC_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
              %257 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
              %258 = hcl.int_to_struct(%257) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
              affine.store %258, %256[%c0] {to = "exe_inst_ce0.cf.UC_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
              %259 = affine.load %21[0] {from = "nop_count", unsigned} : memref<1xi32>
              %260 = affine.load %256[0] {from = "exe_inst_ce0.cf.UC_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
              %261 = hcl.struct_get %260[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
              %262 = arith.extui %261 {unsigned} : i11 to i32
              %263 = arith.cmpi ult, %259, %262 {unsigned} : i32
              scf.if %263 {
                %264 = affine.load %21[0] {from = "nop_count", unsigned} : memref<1xi32>
                %265 = arith.extui %264 : i32 to i34
                %266 = arith.addi %265, %190 : i34
                %267 = arith.trunci %266 {unsigned} : i34 to i32
                affine.store %267, %21[0] {to = "nop_count", unsigned} : memref<1xi32>
                %268 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
                %269 = arith.extui %268 : i32 to i34
                %270 = arith.addi %269, %190 : i34
                %271 = arith.trunci %270 {unsigned} : i34 to i32
                affine.store %271, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
                %272 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                affine.store %272, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                affine.store %272, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                affine.store %272, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                %273 = affine.load %30[0] {from = "flags_stalled_24", unsigned} : memref<1xi1>
                %274 = arith.extui %273 : i1 to i32
                %275 = arith.cmpi eq, %274, %c0_i32 : i32
                scf.if %275 {
                  hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %276 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                  hcl.print(%276) {format = "ip=%d ", signedness = "u"} : i32
                  %277 = affine.load %256[0] {from = "exe_inst_ce0.cf.UC_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %278 = hcl.struct_get %277[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                  hcl.print(%278) {format = "nop count=%d", signedness = "u"} : i11
                  hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                }
              } else {
                affine.store %c0_i32, %21[0] {to = "nop_count", unsigned} : memref<1xi32>
                %264 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                affine.store %264, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                %265 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                hcl.print(%265) {format = "ip=%d ", signedness = "u"} : i32
                %266 = affine.load %256[0] {from = "exe_inst_ce0.cf.UC_nop"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                %267 = hcl.struct_get %266[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                hcl.print(%267) {format = "nop count=%d", signedness = "u"} : i11
                hcl.print(%c0_i32) {format = "    <break>\0A", signedness = "_"} : i32
              }
            } else {
              %256 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
              %257 = arith.extui %256 : i16 to i32
              %258 = arith.cmpi eq, %257, %c1_i32 : i32
              scf.if %258 {
                %259 = memref.alloc() {name = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                %260 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                %261 = hcl.int_to_struct(%260) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                affine.store %261, %259[%c0] {to = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                %262 = memref.alloc() {name = "tiles_active"} : memref<1xi1>
                affine.store %3, %262[%c0] {to = "tiles_active", unsigned} : memref<1xi1>
                %263 = affine.load %65[0] {from = "flags_active_42", unsigned} : memref<1xi1>
                %264 = arith.extui %263 : i1 to i32
                %265 = arith.cmpi ne, %264, %c0_i32 : i32
                scf.if %265 {
                  %269 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                  affine.store %269, %262[0] {to = "tiles_active", unsigned} : memref<1xi1>
                }
                %266 = affine.load %262[0] {from = "tiles_active", unsigned} : memref<1xi1>
                %267 = arith.extui %266 : i1 to i32
                %268 = arith.cmpi ne, %267, %c0_i32 : i32
                scf.if %268 {
                  %269 = affine.load %30[0] {from = "flags_stalled_24", unsigned} : memref<1xi1>
                  %270 = arith.extui %269 : i1 to i32
                  %271 = arith.cmpi eq, %270, %c0_i32 : i32
                  scf.if %271 {
                    hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                    %277 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                    hcl.print(%277) {format = "ip=%d ", signedness = "u"} : i32
                    %278 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %279 = hcl.struct_get %278[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    hcl.print(%279) {format = "ifetch bundle=%d", signedness = "u"} : i11
                    hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                  }
                  %272 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
                  %273 = arith.extui %272 : i32 to i34
                  %274 = arith.addi %273, %190 : i34
                  %275 = arith.trunci %274 {unsigned} : i34 to i32
                  affine.store %275, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
                  %276 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                  affine.store %276, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                  affine.store %276, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                  affine.store %276, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                } else {
                  hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %269 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                  hcl.print(%269) {format = "ip=%d ", signedness = "u"} : i32
                  %270 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %271 = hcl.struct_get %270[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                  hcl.print(%271) {format = "ifetch bundle=%d", signedness = "u"} : i11
                  hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                  %c128_i32 = arith.constant 128 : i32
                  %c8_i32 = arith.constant 8 : i32
                  hcl.print(%c128_i32, %c8_i32) {format = "Mem.dump xinstq bitwidth=%d count=%d : IFETCH CFETCH XINTQ\0A", signedness = "__"} : i32, i32
                  affine.for %arg2 = 0 to 8 {
                    hcl.print(%c0_i32) {format = "  ", signedness = "_"} : i32
                    %296 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %297 = hcl.struct_get %296[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    %c16_i32_1 = arith.constant 16 : i32
                    %298 = arith.extui %297 : i11 to i43
                    %299 = arith.extsi %c16_i32_1 : i32 to i43
                    %300 = arith.muli %298, %299 : i43
                    %301 = arith.extsi %300 : i43 to i44
                    %302 = arith.index_cast %arg2 : index to i44
                    %303 = arith.addi %301, %302 : i44
                    hcl.print(%303) {format = "[%d] ", signedness = "_"} : i44
                    hcl.print(%c0_i32) {format = "0x", signedness = "_"} : i32
                    %304 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %305 = hcl.struct_get %304[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    %306 = arith.extui %305 : i11 to i43
                    %307 = arith.muli %306, %299 : i43
                    %308 = arith.extsi %307 : i43 to i44
                    %309 = arith.addi %308, %302 : i44
                    %310 = arith.index_cast %309 {unsigned} : i44 to index
                    %311 = memref.load %18[%310] {from = "xinstq.alloc_c", unsigned} : memref<32768xi128>
                    %c96 = arith.constant {unsigned} 96 : index
                    %c127 = arith.constant {unsigned} 127 : index
                    %312 = hcl.get_slice(%311 : i128, %c127, %c96) -> i32
                    hcl.print(%312) {format = "%d:", signedness = "u"} : i32
                    %313 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %314 = hcl.struct_get %313[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    %315 = arith.extui %314 : i11 to i43
                    %316 = arith.muli %315, %299 : i43
                    %317 = arith.extsi %316 : i43 to i44
                    %318 = arith.addi %317, %302 : i44
                    %319 = arith.index_cast %318 {unsigned} : i44 to index
                    %320 = memref.load %18[%319] {from = "xinstq.alloc_c", unsigned} : memref<32768xi128>
                    %c64 = arith.constant {unsigned} 64 : index
                    %c95 = arith.constant {unsigned} 95 : index
                    %321 = hcl.get_slice(%320 : i128, %c95, %c64) -> i32
                    hcl.print(%321) {format = "%d:", signedness = "u"} : i32
                    %322 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %323 = hcl.struct_get %322[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    %324 = arith.extui %323 : i11 to i43
                    %325 = arith.muli %324, %299 : i43
                    %326 = arith.extsi %325 : i43 to i44
                    %327 = arith.addi %326, %302 : i44
                    %328 = arith.index_cast %327 {unsigned} : i44 to index
                    %329 = memref.load %18[%328] {from = "xinstq.alloc_c", unsigned} : memref<32768xi128>
                    %330 = hcl.get_slice(%329 : i128, %c63, %c32) -> i32
                    hcl.print(%330) {format = "%d:", signedness = "u"} : i32
                    %331 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %332 = hcl.struct_get %331[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    %333 = arith.extui %332 : i11 to i43
                    %334 = arith.muli %333, %299 : i43
                    %335 = arith.extsi %334 : i43 to i44
                    %336 = arith.addi %335, %302 : i44
                    %337 = arith.index_cast %336 {unsigned} : i44 to index
                    %338 = memref.load %18[%337] {from = "xinstq.alloc_c", unsigned} : memref<32768xi128>
                    %339 = hcl.get_slice(%338 : i128, %c31, %c0_0) -> i32
                    hcl.print(%339) {format = "%d:", signedness = "u"} : i32
                    hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                  } {loop_name = "_i", op_name = "pr"}
                  hcl.print(%c128_i32, %c8_i32) {format = "Mem.dump instq bitwidth=%d count=%d : IFETCH TILE INSTQ BEFORE\0A", signedness = "__"} : i32, i32
                  affine.for %arg2 = 0 to 8 {
                    hcl.print(%c0_i32) {format = "  ", signedness = "_"} : i32
                    %296 = arith.index_cast %arg2 : index to i34
                    %297 = arith.addi %163, %296 : i34
                    hcl.print(%297) {format = "[%d] ", signedness = "_"} : i34
                    hcl.print(%c0_i32) {format = "0x", signedness = "_"} : i32
                    %298 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %c96 = arith.constant {unsigned} 96 : index
                    %c127 = arith.constant {unsigned} 127 : index
                    %299 = hcl.get_slice(%298 : i128, %c127, %c96) -> i32
                    hcl.print(%299) {format = "%d:", signedness = "u"} : i32
                    %300 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %c64 = arith.constant {unsigned} 64 : index
                    %c95 = arith.constant {unsigned} 95 : index
                    %301 = hcl.get_slice(%300 : i128, %c95, %c64) -> i32
                    hcl.print(%301) {format = "%d:", signedness = "u"} : i32
                    %302 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %303 = hcl.get_slice(%302 : i128, %c63, %c32) -> i32
                    hcl.print(%303) {format = "%d:", signedness = "u"} : i32
                    %304 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %305 = hcl.get_slice(%304 : i128, %c31, %c0_0) -> i32
                    hcl.print(%305) {format = "%d:", signedness = "u"} : i32
                    hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                  } {loop_name = "_i", op_name = "pr_33"}
                  %272 = memref.alloc() {name = "count_173"} : memref<1xi32>
                  %c16_i32 = arith.constant 16 : i32
                  affine.store %c16_i32, %272[%c0] {to = "count_173", unsigned} : memref<1xi32>
                  %273 = memref.alloc() {name = "src_addr_174"} : memref<1xi43>
                  %274 = affine.load %259[0] {from = "exe_inst_ce0.cf.UC_ifetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %275 = hcl.struct_get %274[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                  %276 = arith.extui %275 : i11 to i43
                  %277 = arith.extsi %c16_i32 : i32 to i43
                  %278 = arith.muli %276, %277 : i43
                  affine.store %278, %273[%c0] {to = "src_addr_174"} : memref<1xi43>
                  %279 = memref.alloc() {name = "dst_addr_175"} : memref<1xi32>
                  affine.store %c0_i32, %279[%c0] {to = "dst_addr_175", unsigned} : memref<1xi32>
                  %280 = memref.alloc() {name = "_addr_176"} : memref<1xi43>
                  %281 = affine.load %273[0] {from = "src_addr_174"} : memref<1xi43>
                  affine.store %281, %280[%c0] {to = "_addr_176"} : memref<1xi43>
                  %282 = memref.alloc() {name = "assert_cond_177"} : memref<1xi1>
                  %283 = affine.load %280[0] {from = "_addr_176"} : memref<1xi43>
                  %284 = affine.load %272[0] {from = "count_173", unsigned} : memref<1xi32>
                  %285 = arith.extsi %283 : i43 to i44
                  %286 = arith.extui %284 : i32 to i44
                  %287 = arith.addi %285, %286 : i44
                  %c32768_i32 = arith.constant 32768 : i32
                  %288 = arith.extsi %c32768_i32 : i32 to i44
                  %289 = arith.cmpi sle, %287, %288 : i44
                  affine.store %289, %282[%c0] {to = "assert_cond_177", unsigned} : memref<1xi1>
                  %290 = affine.load %282[0] {from = "assert_cond_177", unsigned} : memref<1xi1>
                  %291 = arith.extui %290 : i1 to i32
                  %292 = arith.cmpi eq, %291, %c0_i32 : i32
                  scf.if %292 {
                    %296 = affine.load %280[0] {from = "_addr_176"} : memref<1xi43>
                    %297 = affine.load %272[0] {from = "count_173", unsigned} : memref<1xi32>
                    %298 = arith.extsi %296 : i43 to i44
                    %299 = arith.extui %297 : i32 to i44
                    %300 = arith.addi %298, %299 : i44
                    hcl.print(%296, %300) {format = "\0A\0AAssertion failed {}: xinstq Mem.copyto exceeds memory size: addr=%d+size=%d > 32768\0A\0A", signedness = "__"} : i43, i44
                    scf.while : () -> () {
                      %301 = affine.load %282[0] {from = "assert_cond_177", unsigned} : memref<1xi1>
                      %302 = arith.extui %301 : i1 to i32
                      %303 = arith.cmpi ne, %302, %c1_i32 : i32
                      scf.condition(%303)
                    } do {
                      affine.store %3, %282[0] {to = "assert_cond_177", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %293 = affine.load %272[0] {from = "count_173", unsigned} : memref<1xi32>
                  %294 = arith.index_cast %293 {unsigned} : i32 to index
                  %c1 = arith.constant {unsigned} 1 : index
                  scf.for %arg2 = %c0_0 to %294 step %c1 {
                    %296 = affine.load %273[0] {from = "src_addr_174"} : memref<1xi43>
                    %297 = arith.extsi %296 : i43 to i44
                    %298 = arith.index_cast %arg2 : index to i44
                    %299 = arith.addi %297, %298 : i44
                    %300 = arith.index_cast %299 {unsigned} : i44 to index
                    %301 = memref.load %18[%300] {from = "xinstq.alloc_c", unsigned} : memref<32768xi128>
                    %302 = affine.load %279[0] {from = "dst_addr_175", unsigned} : memref<1xi32>
                    %303 = arith.extui %302 {unsigned} : i32 to i33
                    %304 = arith.index_cast %arg2 {unsigned} : index to i33
                    %305 = arith.addi %303, %304 {unsigned} : i33
                    %306 = arith.index_cast %305 {unsigned} : i33 to index
                    memref.store %301, %50[%306] {to = "instq.alloc_c", unsigned} : memref<16xi128>
                  } {loop_name = "i", op_name = "copyN_34"}
                  hcl.print(%c128_i32, %c8_i32) {format = "Mem.dump instq bitwidth=%d count=%d : IFETCH TILE INSTQ AFTER\0A", signedness = "__"} : i32, i32
                  affine.for %arg2 = 0 to 8 {
                    hcl.print(%c0_i32) {format = "  ", signedness = "_"} : i32
                    %296 = arith.index_cast %arg2 : index to i34
                    %297 = arith.addi %163, %296 : i34
                    hcl.print(%297) {format = "[%d] ", signedness = "_"} : i34
                    hcl.print(%c0_i32) {format = "0x", signedness = "_"} : i32
                    %298 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %c96 = arith.constant {unsigned} 96 : index
                    %c127 = arith.constant {unsigned} 127 : index
                    %299 = hcl.get_slice(%298 : i128, %c127, %c96) -> i32
                    hcl.print(%299) {format = "%d:", signedness = "u"} : i32
                    %300 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %c64 = arith.constant {unsigned} 64 : index
                    %c95 = arith.constant {unsigned} 95 : index
                    %301 = hcl.get_slice(%300 : i128, %c95, %c64) -> i32
                    hcl.print(%301) {format = "%d:", signedness = "u"} : i32
                    %302 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %303 = hcl.get_slice(%302 : i128, %c63, %c32) -> i32
                    hcl.print(%303) {format = "%d:", signedness = "u"} : i32
                    %304 = affine.load %50[%arg2] {from = "instq.alloc_c", unsigned} : memref<16xi128>
                    %305 = hcl.get_slice(%304 : i128, %c31, %c0_0) -> i32
                    hcl.print(%305) {format = "%d:", signedness = "u"} : i32
                    hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                  } {loop_name = "_i", op_name = "pr_35"}
                  %c5_i32 = arith.constant 5 : i32
                  %295 = arith.trunci %c5_i32 {unsigned} : i32 to i4
                  affine.store %295, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
                }
              } else {
                %259 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                %260 = arith.extui %259 : i16 to i32
                %261 = arith.cmpi eq, %260, %c2_i32 : i32
                scf.if %261 {
                  %262 = memref.alloc() {name = "exe_inst_ce0.cf.UC_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %263 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                  %264 = hcl.int_to_struct(%263) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                  affine.store %264, %262[%c0] {to = "exe_inst_ce0.cf.UC_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                  %265 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                  hcl.print(%265) {format = "ip=%d ", signedness = "u"} : i32
                  %266 = affine.load %262[0] {from = "exe_inst_ce0.cf.UC_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %267 = hcl.struct_get %266[0] : <i9, i2, i2, i3, i1, i11, i36> -> i9
                  %268 = hcl.struct_get %266[1] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                  %269 = hcl.struct_get %266[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                  hcl.print(%267, %268, %269) {format = "bload rfaddr=%d colnum=%d spadaddr=%d", signedness = "uuu"} : i9, i2, i11
                  hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                  %270 = memref.alloc() {name = "sa_179"} : memref<1xi32>
                  %271 = affine.load %262[0] {from = "exe_inst_ce0.cf.UC_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %272 = hcl.struct_get %271[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                  %273 = arith.extui %272 {unsigned} : i11 to i32
                  affine.store %273, %270[%c0] {to = "sa_179", unsigned} : memref<1xi32>
                  %c0_i32_1 = arith.constant {unsigned} 0 : i32
                  affine.store %c0_i32_1, %270[0] {to = "sa_179", unsigned} : memref<1xi32>
                  %274 = memref.alloc() {name = "count_180"} : memref<1xi32>
                  %c64_i32 = arith.constant 64 : i32
                  affine.store %c64_i32, %274[%c0] {to = "count_180", unsigned} : memref<1xi32>
                  %275 = memref.alloc() {name = "src_addr_181"} : memref<1xi35>
                  %276 = affine.load %270[0] {from = "sa_179", unsigned} : memref<1xi32>
                  %277 = affine.load %262[0] {from = "exe_inst_ce0.cf.UC_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                  %278 = hcl.struct_get %277[1] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                  %c512_i32 = arith.constant 512 : i32
                  %279 = arith.extui %278 : i2 to i34
                  %280 = arith.extsi %c512_i32 : i32 to i34
                  %281 = arith.muli %279, %280 : i34
                  %282 = arith.extui %276 : i32 to i35
                  %283 = arith.extsi %281 : i34 to i35
                  %284 = arith.addi %282, %283 : i35
                  affine.store %284, %275[%c0] {to = "src_addr_181"} : memref<1xi35>
                  %285 = memref.alloc() {name = "dst_addr_182"} : memref<1xi32>
                  affine.store %c0_i32, %285[%c0] {to = "dst_addr_182", unsigned} : memref<1xi32>
                  %286 = memref.alloc() {name = "_addr_183"} : memref<1xi35>
                  %287 = affine.load %275[0] {from = "src_addr_181"} : memref<1xi35>
                  affine.store %287, %286[%c0] {to = "_addr_183"} : memref<1xi35>
                  %288 = memref.alloc() {name = "assert_cond_184"} : memref<1xi1>
                  %289 = affine.load %286[0] {from = "_addr_183"} : memref<1xi35>
                  %290 = affine.load %274[0] {from = "count_180", unsigned} : memref<1xi32>
                  %291 = arith.extsi %289 : i35 to i36
                  %292 = arith.extui %290 : i32 to i36
                  %293 = arith.addi %291, %292 : i36
                  %294 = arith.extsi %c33554432_i32 : i32 to i36
                  %295 = arith.cmpi sle, %293, %294 : i36
                  affine.store %295, %288[%c0] {to = "assert_cond_184", unsigned} : memref<1xi1>
                  %296 = affine.load %288[0] {from = "assert_cond_184", unsigned} : memref<1xi1>
                  %297 = arith.extui %296 : i1 to i32
                  %298 = arith.cmpi eq, %297, %c0_i32 : i32
                  scf.if %298 {
                    %301 = affine.load %286[0] {from = "_addr_183"} : memref<1xi35>
                    %302 = affine.load %274[0] {from = "count_180", unsigned} : memref<1xi32>
                    %303 = arith.extsi %301 : i35 to i36
                    %304 = arith.extui %302 : i32 to i36
                    %305 = arith.addi %303, %304 : i36
                    hcl.print(%301, %305) {format = "\0A\0AAssertion failed {}: SPAD Mem.copyto exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i35, i36
                    scf.while : () -> () {
                      %306 = affine.load %288[0] {from = "assert_cond_184", unsigned} : memref<1xi1>
                      %307 = arith.extui %306 : i1 to i32
                      %308 = arith.cmpi ne, %307, %c1_i32 : i32
                      scf.condition(%308)
                    } do {
                      affine.store %3, %288[0] {to = "assert_cond_184", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %299 = affine.load %274[0] {from = "count_180", unsigned} : memref<1xi32>
                  %300 = arith.index_cast %299 {unsigned} : i32 to index
                  %c1 = arith.constant {unsigned} 1 : index
                  scf.for %arg2 = %c0_0 to %300 step %c1 {
                    %301 = affine.load %275[0] {from = "src_addr_181"} : memref<1xi35>
                    %302 = arith.extsi %301 : i35 to i36
                    %303 = arith.index_cast %arg2 : index to i36
                    %304 = arith.addi %302, %303 : i36
                    %305 = arith.index_cast %304 {unsigned} : i36 to index
                    %306 = memref.load %0[%305] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                    %307 = affine.load %262[0] {from = "exe_inst_ce0.cf.UC_bload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %308 = hcl.struct_get %307[0] : <i9, i2, i2, i3, i1, i11, i36> -> i9
                    %309 = arith.index_cast %308 {unsigned} : i9 to index
                    %310 = affine.load %285[0] {from = "dst_addr_182", unsigned} : memref<1xi32>
                    %311 = arith.extui %310 {unsigned} : i32 to i33
                    %312 = arith.index_cast %arg2 {unsigned} : index to i33
                    %313 = arith.addi %311, %312 {unsigned} : i33
                    %314 = arith.index_cast %313 {unsigned} : i33 to index
                    memref.store %306, %42[%309, %314] {to = "twpwrs.alloc_c", unsigned} : memref<32x64xi32>
                  } {loop_name = "i", op_name = "copyN_36"}
                } else {
                  %262 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                  %263 = arith.extui %262 : i16 to i32
                  %264 = arith.cmpi eq, %263, %c3_i32 : i32
                  scf.if %264 {
                    %265 = memref.alloc() {name = "exe_inst_ce0.cf.UC_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %266 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                    %267 = hcl.int_to_struct(%266) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                    affine.store %267, %265[%c0] {to = "exe_inst_ce0.cf.UC_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                    %268 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                    hcl.print(%268) {format = "ip=%d ", signedness = "u"} : i32
                    %269 = affine.load %265[0] {from = "exe_inst_ce0.cf.UC_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %270 = hcl.struct_get %269[1] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                    %271 = hcl.struct_get %269[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    hcl.print(%270, %271) {format = "bones colnum=%d spadaddr=%d", signedness = "uu"} : i2, i11
                    hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                    %272 = memref.alloc() {name = "sa_186"} : memref<1xi32>
                    %273 = affine.load %265[0] {from = "exe_inst_ce0.cf.UC_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %274 = hcl.struct_get %273[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                    %275 = arith.extui %274 {unsigned} : i11 to i32
                    affine.store %275, %272[%c0] {to = "sa_186", unsigned} : memref<1xi32>
                    %c0_i32_1 = arith.constant {unsigned} 0 : i32
                    affine.store %c0_i32_1, %272[0] {to = "sa_186", unsigned} : memref<1xi32>
                    %276 = memref.alloc() {name = "count_187"} : memref<1xi32>
                    %c64_i32 = arith.constant 64 : i32
                    affine.store %c64_i32, %276[%c0] {to = "count_187", unsigned} : memref<1xi32>
                    %277 = memref.alloc() {name = "src_addr_188"} : memref<1xi35>
                    %278 = affine.load %272[0] {from = "sa_186", unsigned} : memref<1xi32>
                    %279 = affine.load %265[0] {from = "exe_inst_ce0.cf.UC_bones"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                    %280 = hcl.struct_get %279[1] : <i9, i2, i2, i3, i1, i11, i36> -> i2
                    %c512_i32 = arith.constant 512 : i32
                    %281 = arith.extui %280 : i2 to i34
                    %282 = arith.extsi %c512_i32 : i32 to i34
                    %283 = arith.muli %281, %282 : i34
                    %284 = arith.extui %278 : i32 to i35
                    %285 = arith.extsi %283 : i34 to i35
                    %286 = arith.addi %284, %285 : i35
                    affine.store %286, %277[%c0] {to = "src_addr_188"} : memref<1xi35>
                    %287 = memref.alloc() {name = "dst_addr_189"} : memref<1xi32>
                    affine.store %c0_i32, %287[%c0] {to = "dst_addr_189", unsigned} : memref<1xi32>
                    %288 = memref.alloc() {name = "_addr_190"} : memref<1xi35>
                    %289 = affine.load %277[0] {from = "src_addr_188"} : memref<1xi35>
                    affine.store %289, %288[%c0] {to = "_addr_190"} : memref<1xi35>
                    %290 = memref.alloc() {name = "assert_cond_191"} : memref<1xi1>
                    %291 = affine.load %288[0] {from = "_addr_190"} : memref<1xi35>
                    %292 = affine.load %276[0] {from = "count_187", unsigned} : memref<1xi32>
                    %293 = arith.extsi %291 : i35 to i36
                    %294 = arith.extui %292 : i32 to i36
                    %295 = arith.addi %293, %294 : i36
                    %296 = arith.extsi %c33554432_i32 : i32 to i36
                    %297 = arith.cmpi sle, %295, %296 : i36
                    affine.store %297, %290[%c0] {to = "assert_cond_191", unsigned} : memref<1xi1>
                    %298 = affine.load %290[0] {from = "assert_cond_191", unsigned} : memref<1xi1>
                    %299 = arith.extui %298 : i1 to i32
                    %300 = arith.cmpi eq, %299, %c0_i32 : i32
                    scf.if %300 {
                      %303 = affine.load %288[0] {from = "_addr_190"} : memref<1xi35>
                      %304 = affine.load %276[0] {from = "count_187", unsigned} : memref<1xi32>
                      %305 = arith.extsi %303 : i35 to i36
                      %306 = arith.extui %304 : i32 to i36
                      %307 = arith.addi %305, %306 : i36
                      hcl.print(%303, %307) {format = "\0A\0AAssertion failed {}: SPAD Mem.copyto exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i35, i36
                      scf.while : () -> () {
                        %308 = affine.load %290[0] {from = "assert_cond_191", unsigned} : memref<1xi1>
                        %309 = arith.extui %308 : i1 to i32
                        %310 = arith.cmpi ne, %309, %c1_i32 : i32
                        scf.condition(%310)
                      } do {
                        affine.store %3, %290[0] {to = "assert_cond_191", unsigned} : memref<1xi1>
                        scf.yield
                      }
                    }
                    %301 = affine.load %276[0] {from = "count_187", unsigned} : memref<1xi32>
                    %302 = arith.index_cast %301 {unsigned} : i32 to index
                    %c1 = arith.constant {unsigned} 1 : index
                    scf.for %arg2 = %c0_0 to %302 step %c1 {
                      %303 = affine.load %277[0] {from = "src_addr_188"} : memref<1xi35>
                      %304 = arith.extsi %303 : i35 to i36
                      %305 = arith.index_cast %arg2 : index to i36
                      %306 = arith.addi %304, %305 : i36
                      %307 = arith.index_cast %306 {unsigned} : i36 to index
                      %308 = memref.load %0[%307] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                      %309 = affine.load %287[0] {from = "dst_addr_189", unsigned} : memref<1xi32>
                      %310 = arith.extui %309 {unsigned} : i32 to i33
                      %311 = arith.index_cast %arg2 {unsigned} : index to i33
                      %312 = arith.addi %310, %311 {unsigned} : i33
                      %313 = arith.index_cast %312 {unsigned} : i33 to index
                      memref.store %308, %43[%313] {to = "mone.alloc_c", unsigned} : memref<64xi32>
                    } {loop_name = "i", op_name = "copyN_37"}
                  } else {
                    %265 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                    %c4_i32 = arith.constant 4 : i32
                    %266 = arith.extui %265 : i16 to i32
                    %267 = arith.cmpi eq, %266, %c4_i32 : i32
                    scf.if %267 {
                      %268 = memref.alloc() {name = "exe_inst_ce0.cf.UC_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %269 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                      %270 = hcl.int_to_struct(%269) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                      affine.store %270, %268[%c0] {to = "exe_inst_ce0.cf.UC_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                      %271 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                      hcl.print(%271) {format = "ip=%d ", signedness = "u"} : i32
                      %272 = affine.load %268[0] {from = "exe_inst_ce0.cf.UC_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %273 = hcl.struct_get %272[0] : <i9, i2, i2, i3, i1, i11, i36> -> i9
                      %274 = hcl.struct_get %272[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                      hcl.print(%273, %274) {format = "cload rfaddr=%d spadaddr=%d", signedness = "uu"} : i9, i11
                      hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                      %275 = memref.alloc() {name = "sa_193"} : memref<1xi32>
                      %276 = affine.load %268[0] {from = "exe_inst_ce0.cf.UC_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %277 = hcl.struct_get %276[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                      %278 = arith.extui %277 {unsigned} : i11 to i32
                      affine.store %278, %275[%c0] {to = "sa_193", unsigned} : memref<1xi32>
                      %c0_i32_1 = arith.constant {unsigned} 0 : i32
                      affine.store %c0_i32_1, %275[0] {to = "sa_193", unsigned} : memref<1xi32>
                      %279 = memref.alloc() {name = "rfaddr_194"} : memref<1x!hcl.struct<i7, i2>>
                      %280 = affine.load %268[0] {from = "exe_inst_ce0.cf.UC_cload"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                      %281 = hcl.struct_get %280[0] : <i9, i2, i2, i3, i1, i11, i36> -> i9
                      %282 = hcl.int_to_struct(%281) {unsigned} : i9 -> <i7, i2>
                      affine.store %282, %279[%c0] {to = "rfaddr_194"} : memref<1x!hcl.struct<i7, i2>>
                      %283 = memref.alloc() {name = "bv_195"} : memref<1xi3>
                      %284 = affine.load %279[0] {from = "rfaddr_194"} : memref<1x!hcl.struct<i7, i2>>
                      %285 = hcl.struct_get %284[1] : <i7, i2> -> i2
                      %286 = arith.extui %285 {unsigned} : i2 to i3
                      affine.store %286, %283[%c0] {to = "bv_195", unsigned} : memref<1xi3>
                      %287 = memref.alloc() {name = "rv_196"} : memref<1xi8>
                      %288 = affine.load %279[0] {from = "rfaddr_194"} : memref<1x!hcl.struct<i7, i2>>
                      %289 = hcl.struct_get %288[0] : <i7, i2> -> i7
                      %290 = arith.extui %289 {unsigned} : i7 to i8
                      affine.store %290, %287[%c0] {to = "rv_196", unsigned} : memref<1xi8>
                      %291 = memref.alloc() {name = "count_197"} : memref<1xi32>
                      %c8192_i32 = arith.constant 8192 : i32
                      affine.store %c8192_i32, %291[%c0] {to = "count_197", unsigned} : memref<1xi32>
                      %292 = memref.alloc() {name = "src_addr_198"} : memref<1xi34>
                      %293 = affine.load %275[0] {from = "sa_193", unsigned} : memref<1xi32>
                      %294 = arith.extui %293 : i32 to i34
                      %295 = arith.addi %294, %163 : i34
                      affine.store %295, %292[%c0] {to = "src_addr_198"} : memref<1xi34>
                      %296 = memref.alloc() {name = "dst_addr_199"} : memref<1xi32>
                      affine.store %c0_i32, %296[%c0] {to = "dst_addr_199", unsigned} : memref<1xi32>
                      %297 = memref.alloc() {name = "_addr_200"} : memref<1xi34>
                      %298 = affine.load %292[0] {from = "src_addr_198"} : memref<1xi34>
                      affine.store %298, %297[%c0] {to = "_addr_200"} : memref<1xi34>
                      %299 = memref.alloc() {name = "assert_cond_201"} : memref<1xi1>
                      %300 = affine.load %297[0] {from = "_addr_200"} : memref<1xi34>
                      %301 = affine.load %291[0] {from = "count_197", unsigned} : memref<1xi32>
                      %302 = arith.extsi %300 : i34 to i35
                      %303 = arith.extui %301 : i32 to i35
                      %304 = arith.addi %302, %303 : i35
                      %305 = arith.cmpi sle, %304, %172 : i35
                      affine.store %305, %299[%c0] {to = "assert_cond_201", unsigned} : memref<1xi1>
                      %306 = affine.load %299[0] {from = "assert_cond_201", unsigned} : memref<1xi1>
                      %307 = arith.extui %306 : i1 to i32
                      %308 = arith.cmpi eq, %307, %c0_i32 : i32
                      scf.if %308 {
                        %311 = affine.load %297[0] {from = "_addr_200"} : memref<1xi34>
                        %312 = affine.load %291[0] {from = "count_197", unsigned} : memref<1xi32>
                        %313 = arith.extsi %311 : i34 to i35
                        %314 = arith.extui %312 : i32 to i35
                        %315 = arith.addi %313, %314 : i35
                        hcl.print(%311, %315) {format = "\0A\0AAssertion failed {}: SPAD Mem.copyto exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
                        scf.while : () -> () {
                          %316 = affine.load %299[0] {from = "assert_cond_201", unsigned} : memref<1xi1>
                          %317 = arith.extui %316 : i1 to i32
                          %318 = arith.cmpi ne, %317, %c1_i32 : i32
                          scf.condition(%318)
                        } do {
                          affine.store %3, %299[0] {to = "assert_cond_201", unsigned} : memref<1xi1>
                          scf.yield
                        }
                      }
                      %309 = affine.load %291[0] {from = "count_197", unsigned} : memref<1xi32>
                      %310 = arith.index_cast %309 {unsigned} : i32 to index
                      %c1 = arith.constant {unsigned} 1 : index
                      scf.for %arg2 = %c0_0 to %310 step %c1 {
                        %311 = affine.load %292[0] {from = "src_addr_198"} : memref<1xi34>
                        %312 = arith.extsi %311 : i34 to i35
                        %313 = arith.index_cast %arg2 : index to i35
                        %314 = arith.addi %312, %313 : i35
                        %315 = arith.index_cast %314 {unsigned} : i35 to index
                        %316 = memref.load %0[%315] {from = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                        %317 = affine.load %283[0] {from = "bv_195", unsigned} : memref<1xi3>
                        %318 = arith.index_cast %317 {unsigned} : i3 to index
                        %319 = affine.load %287[0] {from = "rv_196", unsigned} : memref<1xi8>
                        %320 = arith.index_cast %319 {unsigned} : i8 to index
                        %321 = affine.load %296[0] {from = "dst_addr_199", unsigned} : memref<1xi32>
                        %322 = arith.extui %321 {unsigned} : i32 to i33
                        %323 = arith.index_cast %arg2 {unsigned} : index to i33
                        %324 = arith.addi %322, %323 {unsigned} : i33
                        %325 = arith.index_cast %324 {unsigned} : i33 to index
                        memref.store %316, %41[%318, %320, %325] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "copyN_38"}
                    } else {
                      %268 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                      %c5_i32 = arith.constant 5 : i32
                      %269 = arith.extui %268 : i16 to i32
                      %270 = arith.cmpi eq, %269, %c5_i32 : i32
                      scf.if %270 {
                        %271 = memref.alloc() {name = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                        %272 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                        %273 = hcl.int_to_struct(%272) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                        affine.store %273, %271[%c0] {to = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                        %274 = affine.load %23[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                        %275 = arith.extui %274 : i3 to i32
                        %276 = arith.cmpi eq, %275, %c0_i32 : i32
                        scf.if %276 {
                          %277 = affine.load %30[0] {from = "flags_stalled_24", unsigned} : memref<1xi1>
                          %278 = arith.extui %277 : i1 to i32
                          %279 = arith.cmpi eq, %278, %c0_i32 : i32
                          scf.if %279 {
                            hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                            %291 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                            hcl.print(%291) {format = "ip=%d ", signedness = "u"} : i32
                            %292 = affine.load %271[0] {from = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                            %293 = hcl.struct_get %292[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                            hcl.print(%293) {format = "cstore spadaddr=%d", signedness = "u"} : i11
                            hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                          }
                          %280 = arith.trunci %c1_i32 {unsigned} : i32 to i3
                          affine.store %280, %23[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                          affine.store %3, %25[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                          %281 = memref.alloc() {name = "sa_203"} : memref<1xi32>
                          %282 = affine.load %271[0] {from = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                          %283 = hcl.struct_get %282[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                          %284 = arith.extui %283 {unsigned} : i11 to i32
                          affine.store %284, %281[%c0] {to = "sa_203", unsigned} : memref<1xi32>
                          %c0_i32_1 = arith.constant {unsigned} 0 : i32
                          affine.store %c0_i32_1, %281[0] {to = "sa_203", unsigned} : memref<1xi32>
                          %285 = affine.load %281[0] {from = "sa_203", unsigned} : memref<1xi32>
                          affine.store %285, %26[0] {to = "cstore_spadaddr", unsigned} : memref<1xi32>
                          %286 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
                          %287 = arith.extui %286 : i32 to i34
                          %288 = arith.addi %287, %190 : i34
                          %289 = arith.trunci %288 {unsigned} : i34 to i32
                          affine.store %289, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
                          %290 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                          affine.store %290, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                          affine.store %290, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                          affine.store %290, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                        } else {
                          %277 = affine.load %23[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                          %278 = arith.extui %277 : i3 to i32
                          %279 = arith.cmpi eq, %278, %c1_i32 : i32
                          scf.if %279 {
                            %280 = affine.load %30[0] {from = "flags_stalled_24", unsigned} : memref<1xi1>
                            %281 = arith.extui %280 : i1 to i32
                            %282 = arith.cmpi eq, %281, %c0_i32 : i32
                            scf.if %282 {
                              hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                              %291 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                              hcl.print(%291) {format = "ip=%d ", signedness = "u"} : i32
                              %292 = affine.load %271[0] {from = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                              %293 = hcl.struct_get %292[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                              hcl.print(%293) {format = "cstore spadaddr=%d", signedness = "u"} : i11
                              hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                            }
                            %283 = affine.load %25[0] {from = "cstore_valid", unsigned} : memref<1xi1>
                            %284 = arith.extui %283 : i1 to i32
                            %285 = arith.cmpi eq, %284, %c1_i32 : i32
                            scf.if %285 {
                              %291 = arith.trunci %c2_i32 {unsigned} : i32 to i3
                              affine.store %291, %23[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                            }
                            %286 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
                            %287 = arith.extui %286 : i32 to i34
                            %288 = arith.addi %287, %190 : i34
                            %289 = arith.trunci %288 {unsigned} : i34 to i32
                            affine.store %289, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
                            %290 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                            affine.store %290, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                            affine.store %290, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                            affine.store %290, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                          } else {
                            %280 = affine.load %23[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                            %281 = arith.extui %280 : i3 to i32
                            %282 = arith.cmpi ne, %281, %c3_i32 : i32
                            scf.if %282 {
                              %283 = affine.load %30[0] {from = "flags_stalled_24", unsigned} : memref<1xi1>
                              %284 = arith.extui %283 : i1 to i32
                              %285 = arith.cmpi eq, %284, %c0_i32 : i32
                              scf.if %285 {
                                hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                %295 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                                hcl.print(%295) {format = "ip=%d ", signedness = "u"} : i32
                                %296 = affine.load %271[0] {from = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                                %297 = hcl.struct_get %296[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                                hcl.print(%297) {format = "cstore spadaddr=%d", signedness = "u"} : i11
                                hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                              }
                              %286 = affine.load %23[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                              %287 = arith.extui %286 : i3 to i33
                              %288 = arith.addi %287, %236 : i33
                              %289 = arith.trunci %288 {unsigned} : i33 to i3
                              affine.store %289, %23[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                              %290 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
                              %291 = arith.extui %290 : i32 to i34
                              %292 = arith.addi %291, %190 : i34
                              %293 = arith.trunci %292 {unsigned} : i34 to i32
                              affine.store %293, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
                              %294 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                              affine.store %294, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                              affine.store %294, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                              affine.store %294, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                            } else {
                              hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                              %283 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                              hcl.print(%283) {format = "ip=%d ", signedness = "u"} : i32
                              %284 = affine.load %271[0] {from = "exe_inst_ce0.cf.UC_cstore"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                              %285 = hcl.struct_get %284[5] : <i9, i2, i2, i3, i1, i11, i36> -> i11
                              hcl.print(%285) {format = "cstore spadaddr=%d", signedness = "u"} : i11
                              hcl.print(%c0_i32) {format = "    <resume>\0A", signedness = "_"} : i32
                              affine.store %24, %23[0] {to = "cstore_cycle", unsigned} : memref<1xi3>
                              affine.store %3, %25[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                            }
                          }
                        }
                      } else {
                        %271 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                        %c6_i32 = arith.constant 6 : i32
                        %272 = arith.extui %271 : i16 to i32
                        %273 = arith.cmpi eq, %272, %c6_i32 : i32
                        scf.if %273 {
                          %274 = memref.alloc() {name = "exe_inst_ce0.cf.UC_cexit"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                          %275 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                          %276 = hcl.int_to_struct(%275) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i36>
                          affine.store %276, %274[%c0] {to = "exe_inst_ce0.cf.UC_cexit"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i36>>
                          hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                          %277 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                          hcl.print(%277) {format = "ip=%d ", signedness = "u"} : i32
                          hcl.print(%c0_i32) {format = "cexit", signedness = "_"} : i32
                          hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                          %278 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                          affine.store %278, %28[0] {to = "flags_halt_22", unsigned} : memref<1xi1>
                          affine.store %3, %27[0] {to = "flags_active_21", unsigned} : memref<1xi1>
                          affine.store %278, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                        } else {
                          %274 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                          %c7_i32 = arith.constant 7 : i32
                          %275 = arith.extui %274 : i16 to i32
                          %276 = arith.cmpi eq, %275, %c7_i32 : i32
                          scf.if %276 {
                            %277 = memref.alloc() {name = "exe_inst_ce0.cf.UC_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                            %278 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                            %279 = hcl.int_to_struct(%278) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i15, i21>
                            affine.store %279, %277[%c0] {to = "exe_inst_ce0.cf.UC_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                            %280 = affine.load %15[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
                            %281 = affine.load %277[0] {from = "exe_inst_ce0.cf.UC_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                            %282 = hcl.struct_get %281[6] : <i9, i2, i2, i3, i1, i11, i15, i21> -> i15
                            %283 = arith.extui %282 {unsigned} : i15 to i32
                            %284 = arith.cmpi ule, %280, %283 {unsigned} : i32
                            scf.if %284 {
                              %285 = affine.load %30[0] {from = "flags_stalled_24", unsigned} : memref<1xi1>
                              %286 = arith.extui %285 : i1 to i32
                              %287 = arith.cmpi eq, %286, %c0_i32 : i32
                              scf.if %287 {
                                hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                %293 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                                hcl.print(%293) {format = "ip=%d ", signedness = "u"} : i32
                                %294 = affine.load %277[0] {from = "exe_inst_ce0.cf.UC_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                                %295 = hcl.struct_get %294[6] : <i9, i2, i2, i3, i1, i11, i15, i21> -> i15
                                hcl.print(%295) {format = "csyncm minstqaddr=%d", signedness = "u"} : i15
                                hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                              }
                              %288 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
                              %289 = arith.extui %288 : i32 to i34
                              %290 = arith.addi %289, %190 : i34
                              %291 = arith.trunci %290 {unsigned} : i34 to i32
                              affine.store %291, %39[0] {to = "tele_stall_count_33", unsigned} : memref<1xi32>
                              %292 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                              affine.store %292, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                              affine.store %292, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                              affine.store %292, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                            } else {
                              hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                              %285 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                              hcl.print(%285) {format = "ip=%d ", signedness = "u"} : i32
                              %286 = affine.load %277[0] {from = "exe_inst_ce0.cf.UC_csyncm"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i15, i21>>
                              %287 = hcl.struct_get %286[6] : <i9, i2, i2, i3, i1, i11, i15, i21> -> i15
                              hcl.print(%287) {format = "csyncm minstqaddr=%d", signedness = "u"} : i15
                              hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                            }
                          } else {
                            %277 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                            %c8_i32 = arith.constant 8 : i32
                            %278 = arith.extui %277 : i16 to i32
                            %279 = arith.cmpi eq, %278, %c8_i32 : i32
                            scf.if %279 {
                              %280 = memref.alloc() {name = "exe_inst_ce0.cf.UC_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                              %281 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                              %282 = hcl.int_to_struct(%281) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i11, i12, i21, i3>
                              affine.store %282, %280[%c0] {to = "exe_inst_ce0.cf.UC_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                              hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                              %283 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                              hcl.print(%283) {format = "ip=%d ", signedness = "u"} : i32
                              %284 = affine.load %280[0] {from = "exe_inst_ce0.cf.UC_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                              %285 = hcl.struct_get %284[6] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i12
                              %286 = hcl.struct_get %284[7] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i21
                              hcl.print(%285, %286) {format = "xinstfetch xinstqaddr=%d hbmaddr=%d", signedness = "uu"} : i12, i21
                              hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                              %287 = memref.alloc() {name = "read_addr_207"} : memref<1xi32>
                              affine.store %c3_i32, %287[%c0] {to = "read_addr_207", unsigned} : memref<1xi32>
                              %288 = memref.alloc() {name = "_addr_208"} : memref<1xi32>
                              %289 = affine.load %287[0] {from = "read_addr_207", unsigned} : memref<1xi32>
                              affine.store %289, %288[%c0] {to = "_addr_208", unsigned} : memref<1xi32>
                              %290 = memref.alloc() {name = "assert_cond_209"} : memref<1xi1>
                              %291 = affine.load %288[0] {from = "_addr_208", unsigned} : memref<1xi32>
                              %292 = arith.extui %291 : i32 to i34
                              %293 = arith.addi %292, %190 : i34
                              %c10_i32 = arith.constant 10 : i32
                              %294 = arith.extsi %c10_i32 : i32 to i34
                              %295 = arith.cmpi sle, %293, %294 : i34
                              affine.store %295, %290[%c0] {to = "assert_cond_209", unsigned} : memref<1xi1>
                              %296 = affine.load %290[0] {from = "assert_cond_209", unsigned} : memref<1xi1>
                              %297 = arith.extui %296 : i1 to i32
                              %298 = arith.cmpi eq, %297, %c0_i32 : i32
                              scf.if %298 {
                                %367 = affine.load %288[0] {from = "_addr_208", unsigned} : memref<1xi32>
                                %368 = arith.extui %367 : i32 to i34
                                %369 = arith.addi %368, %190 : i34
                                hcl.print(%367, %369) {format = "\0A\0AAssertion failed {}: Sysreg Mem.read exceeds memory size: addr=%d+size=%d > 10\0A\0A", signedness = "u_"} : i32, i34
                                scf.while : () -> () {
                                  %370 = affine.load %290[0] {from = "assert_cond_209", unsigned} : memref<1xi1>
                                  %371 = arith.extui %370 : i1 to i32
                                  %372 = arith.cmpi ne, %371, %c1_i32 : i32
                                  scf.condition(%372)
                                } do {
                                  affine.store %3, %290[0] {to = "assert_cond_209", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %299 = memref.alloc() {name = "Mem.read_c_39"} : memref<1xi64>
                              %300 = affine.load %287[0] {from = "read_addr_207", unsigned} : memref<1xi32>
                              %301 = arith.extui %300 {unsigned} : i32 to i33
                              %302 = arith.index_cast %c0 {unsigned} : index to i33
                              %303 = arith.addi %301, %302 {unsigned} : i33
                              %304 = arith.index_cast %303 {unsigned} : i33 to index
                              %305 = memref.load %arg1[%304] {from = "sysreg", unsigned} : memref<10xi64>
                              affine.store %305, %299[%c0] {to = "Mem.read_c_39", unsigned} : memref<1xi64>
                              %306 = memref.alloc() {name = "count_210"} : memref<1xi32>
                              %c2048_i32 = arith.constant 2048 : i32
                              affine.store %c2048_i32, %306[%c0] {to = "count_210", unsigned} : memref<1xi32>
                              %307 = memref.alloc() {name = "src_addr_211"} : memref<1xi86>
                              %308 = affine.load %299[0] {from = "Mem.read_c_39", unsigned} : memref<1xi64>
                              %309 = affine.load %280[0] {from = "exe_inst_ce0.cf.UC_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                              %310 = hcl.struct_get %309[7] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i21
                              %311 = arith.extui %310 : i21 to i53
                              %312 = arith.extsi %c2048_i32 : i32 to i53
                              %313 = arith.muli %311, %312 : i53
                              %314 = arith.extsi %313 : i53 to i85
                              %315 = arith.extsi %c4_i32 : i32 to i85
                              %316 = arith.muli %314, %315 : i85
                              %317 = arith.extui %308 : i64 to i86
                              %318 = arith.extsi %316 : i85 to i86
                              %319 = arith.addi %317, %318 : i86
                              affine.store %319, %307[%c0] {to = "src_addr_211"} : memref<1xi86>
                              %320 = memref.alloc() {name = "dst_addr_212"} : memref<1xi44>
                              %321 = affine.load %280[0] {from = "exe_inst_ce0.cf.UC_xinstfetch"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i11, i12, i21, i3>>
                              %322 = hcl.struct_get %321[6] : <i9, i2, i2, i3, i1, i11, i12, i21, i3> -> i12
                              %323 = arith.extui %322 : i12 to i44
                              %324 = arith.extsi %c2048_i32 : i32 to i44
                              %325 = arith.muli %323, %324 : i44
                              affine.store %325, %320[%c0] {to = "dst_addr_212"} : memref<1xi44>
                              %326 = memref.alloc() {name = "_addr_213"} : memref<1xi44>
                              %327 = affine.load %320[0] {from = "dst_addr_212"} : memref<1xi44>
                              affine.store %327, %326[%c0] {to = "_addr_213"} : memref<1xi44>
                              %328 = memref.alloc() {name = "assert_cond_214"} : memref<1xi1>
                              %329 = affine.load %326[0] {from = "_addr_213"} : memref<1xi44>
                              %330 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                              %331 = arith.extsi %329 : i44 to i45
                              %332 = arith.extui %330 : i32 to i45
                              %333 = arith.addi %331, %332 : i45
                              %c32768_i32 = arith.constant 32768 : i32
                              %334 = arith.extsi %c32768_i32 : i32 to i45
                              %335 = arith.cmpi sle, %333, %334 : i45
                              affine.store %335, %328[%c0] {to = "assert_cond_214", unsigned} : memref<1xi1>
                              %336 = affine.load %328[0] {from = "assert_cond_214", unsigned} : memref<1xi1>
                              %337 = arith.extui %336 : i1 to i32
                              %338 = arith.cmpi eq, %337, %c0_i32 : i32
                              scf.if %338 {
                                %367 = affine.load %326[0] {from = "_addr_213"} : memref<1xi44>
                                %368 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                                %369 = arith.extsi %367 : i44 to i45
                                %370 = arith.extui %368 : i32 to i45
                                %371 = arith.addi %369, %370 : i45
                                hcl.print(%367, %371) {format = "\0A\0AAssertion failed {}: xinstq Mem.copyto exceeds memory size: addr=%d+size=%d > 32768\0A\0A", signedness = "__"} : i44, i45
                                scf.while : () -> () {
                                  %372 = affine.load %328[0] {from = "assert_cond_214", unsigned} : memref<1xi1>
                                  %373 = arith.extui %372 : i1 to i32
                                  %374 = arith.cmpi ne, %373, %c1_i32 : i32
                                  scf.condition(%374)
                                } do {
                                  affine.store %3, %328[0] {to = "assert_cond_214", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %339 = memref.alloc() {name = "tmp"} : memref<1xi128>
                              %340 = arith.extsi %c0_i32 {unsigned} : i32 to i128
                              affine.store %340, %339[%c0] {to = "tmp", unsigned} : memref<1xi128>
                              %341 = memref.alloc() {name = "assert_cond_216"} : memref<1xi1>
                              %342 = affine.load %307[0] {from = "src_addr_211"} : memref<1xi86>
                              %343 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                              %344 = arith.extui %343 : i32 to i64
                              %345 = arith.extsi %c4_i32 : i32 to i64
                              %346 = arith.muli %344, %345 : i64
                              %347 = arith.extsi %342 : i86 to i87
                              %348 = arith.extsi %346 : i64 to i87
                              %349 = arith.addi %347, %348 : i87
                              %350 = arith.extsi %c33554432_i32 : i32 to i87
                              %351 = arith.cmpi sle, %349, %350 : i87
                              affine.store %351, %341[%c0] {to = "assert_cond_216", unsigned} : memref<1xi1>
                              %352 = affine.load %341[0] {from = "assert_cond_216", unsigned} : memref<1xi1>
                              %353 = arith.extui %352 : i1 to i32
                              %354 = arith.cmpi eq, %353, %c0_i32 : i32
                              scf.if %354 {
                                %367 = affine.load %307[0] {from = "src_addr_211"} : memref<1xi86>
                                %368 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                                %369 = arith.extui %368 : i32 to i64
                                %370 = arith.muli %369, %345 : i64
                                %371 = arith.extsi %367 : i86 to i87
                                %372 = arith.extsi %370 : i64 to i87
                                %373 = arith.addi %371, %372 : i87
                                hcl.print(%373) {format = "\0A\0AAssertion failed {}: copyN: hbm index (%d) > size (33554432)\0A\0A\0A", signedness = "_"} : i87
                                scf.while : () -> () {
                                  %374 = affine.load %341[0] {from = "assert_cond_216", unsigned} : memref<1xi1>
                                  %375 = arith.extui %374 : i1 to i32
                                  %376 = arith.cmpi ne, %375, %c1_i32 : i32
                                  scf.condition(%376)
                                } do {
                                  affine.store %3, %341[0] {to = "assert_cond_216", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %355 = memref.alloc() {name = "assert_cond_217"} : memref<1xi1>
                              %356 = affine.load %320[0] {from = "dst_addr_212"} : memref<1xi44>
                              %357 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                              %358 = arith.extsi %356 : i44 to i45
                              %359 = arith.extui %357 : i32 to i45
                              %360 = arith.addi %358, %359 : i45
                              %361 = arith.cmpi sle, %360, %334 : i45
                              affine.store %361, %355[%c0] {to = "assert_cond_217", unsigned} : memref<1xi1>
                              %362 = affine.load %355[0] {from = "assert_cond_217", unsigned} : memref<1xi1>
                              %363 = arith.extui %362 : i1 to i32
                              %364 = arith.cmpi eq, %363, %c0_i32 : i32
                              scf.if %364 {
                                %367 = affine.load %320[0] {from = "dst_addr_212"} : memref<1xi44>
                                %368 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                                %369 = arith.extsi %367 : i44 to i45
                                %370 = arith.extui %368 : i32 to i45
                                %371 = arith.addi %369, %370 : i45
                                hcl.print(%371) {format = "\0A\0AAssertion failed {}: copyN: xinstq.alloc_c index (%d) > size (32768)\0A\0A\0A", signedness = "_"} : i45
                                scf.while : () -> () {
                                  %372 = affine.load %355[0] {from = "assert_cond_217", unsigned} : memref<1xi1>
                                  %373 = arith.extui %372 : i1 to i32
                                  %374 = arith.cmpi ne, %373, %c1_i32 : i32
                                  scf.condition(%374)
                                } do {
                                  affine.store %3, %355[0] {to = "assert_cond_217", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %365 = affine.load %306[0] {from = "count_210", unsigned} : memref<1xi32>
                              %366 = arith.index_cast %365 {unsigned} : i32 to index
                              %c1 = arith.constant {unsigned} 1 : index
                              scf.for %arg2 = %c0_0 to %366 step %c1 {
                                affine.store %340, %339[0] {to = "tmp", unsigned} : memref<1xi128>
                                %c0_i128 = arith.constant {unsigned} 0 : i128
                                %367 = affine.load %307[0] {from = "src_addr_211"} : memref<1xi86>
                                %368 = arith.index_cast %arg2 : index to i64
                                %369 = arith.muli %368, %345 : i64
                                %370 = arith.extsi %367 : i86 to i87
                                %371 = arith.extsi %369 : i64 to i87
                                %372 = arith.addi %370, %371 : i87
                                %373 = arith.extsi %372 : i87 to i88
                                %374 = arith.extsi %c0_i32 : i32 to i88
                                %375 = arith.addi %373, %374 : i88
                                %376 = arith.index_cast %375 {unsigned} : i88 to index
                                %377 = memref.load %arg0[%376] {from = "hbm", unsigned} : memref<33554432xi32>
                                %378 = arith.extui %377 {unsigned} : i32 to i128
                                %379 = arith.ori %c0_i128, %378 {unsigned} : i128
                                affine.store %379, %339[0] {to = "tmp", unsigned} : memref<1xi128>
                                %380 = affine.load %307[0] {from = "src_addr_211"} : memref<1xi86>
                                %381 = arith.extsi %380 : i86 to i87
                                %382 = arith.addi %381, %371 : i87
                                %383 = arith.extsi %382 : i87 to i88
                                %384 = arith.extsi %c1_i32 : i32 to i88
                                %385 = arith.addi %383, %384 : i88
                                %386 = arith.index_cast %385 {unsigned} : i88 to index
                                %387 = memref.load %arg0[%386] {from = "hbm", unsigned} : memref<33554432xi32>
                                %388 = arith.extui %387 {unsigned} : i32 to i128
                                %389 = arith.ori %c0_i128, %388 {unsigned} : i128
                                affine.store %389, %339[0] {to = "tmp", unsigned} : memref<1xi128>
                                %390 = affine.load %307[0] {from = "src_addr_211"} : memref<1xi86>
                                %391 = arith.extsi %390 : i86 to i87
                                %392 = arith.addi %391, %371 : i87
                                %393 = arith.extsi %392 : i87 to i88
                                %394 = arith.extsi %c2_i32 : i32 to i88
                                %395 = arith.addi %393, %394 : i88
                                %396 = arith.index_cast %395 {unsigned} : i88 to index
                                %397 = memref.load %arg0[%396] {from = "hbm", unsigned} : memref<33554432xi32>
                                %398 = arith.extui %397 {unsigned} : i32 to i128
                                %399 = arith.ori %c0_i128, %398 {unsigned} : i128
                                affine.store %399, %339[0] {to = "tmp", unsigned} : memref<1xi128>
                                %400 = affine.load %307[0] {from = "src_addr_211"} : memref<1xi86>
                                %401 = arith.extsi %400 : i86 to i87
                                %402 = arith.addi %401, %371 : i87
                                %403 = arith.extsi %402 : i87 to i88
                                %404 = arith.extsi %c3_i32 : i32 to i88
                                %405 = arith.addi %403, %404 : i88
                                %406 = arith.index_cast %405 {unsigned} : i88 to index
                                %407 = memref.load %arg0[%406] {from = "hbm", unsigned} : memref<33554432xi32>
                                %408 = arith.extui %407 {unsigned} : i32 to i128
                                %409 = arith.ori %c0_i128, %408 {unsigned} : i128
                                affine.store %409, %339[0] {to = "tmp", unsigned} : memref<1xi128>
                                %410 = affine.load %339[0] {from = "tmp", unsigned} : memref<1xi128>
                                %411 = affine.load %320[0] {from = "dst_addr_212"} : memref<1xi44>
                                %412 = arith.extsi %411 : i44 to i45
                                %413 = arith.index_cast %arg2 : index to i45
                                %414 = arith.addi %412, %413 : i45
                                %415 = arith.index_cast %414 {unsigned} : i45 to index
                                memref.store %410, %18[%415] {to = "xinstq.alloc_c", unsigned} : memref<32768xi128>
                              } {loop_name = "i", op_name = "copyN_40"}
                            } else {
                              %280 = affine.load %218[0] {from = "inst_id_157", unsigned} : memref<1xi16>
                              %c9_i32 = arith.constant 9 : i32
                              %281 = arith.extui %280 : i16 to i32
                              %282 = arith.cmpi eq, %281, %c9_i32 : i32
                              scf.if %282 {
                                %283 = memref.alloc() {name = "exe_inst_ce0.cf.UC_bsync"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i47>>
                                %284 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                                %285 = hcl.int_to_struct(%284) {unsigned} : i64 -> <i9, i2, i2, i3, i1, i47>
                                affine.store %285, %283[%c0] {to = "exe_inst_ce0.cf.UC_bsync"} : memref<1x!hcl.struct<i9, i2, i2, i3, i1, i47>>
                                hcl.print(%c0_i32) {format = "                                        ce0.cf.UC ", signedness = "_"} : i32
                                %286 = affine.load %151[0] {from = "_cur_address_147", unsigned} : memref<1xi32>
                                hcl.print(%286) {format = "ip=%d ", signedness = "u"} : i32
                                hcl.print(%c0_i32) {format = "bsync", signedness = "_"} : i32
                                hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                              } else {
                                hcl.print(%c0_i32) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                %283 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                                %284 = hcl.get_slice(%283 : i64, %c63, %c32) -> i32
                                hcl.print(%284) {format = "%d:", signedness = "u"} : i32
                                %285 = affine.load %245[0] {from = "execute_inst_169", unsigned} : memref<1xi64>
                                %286 = hcl.get_slice(%285 : i64, %c31, %c0_0) -> i32
                                hcl.print(%286) {format = "%d:", signedness = "u"} : i32
                                hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                                %287 = memref.alloc() {name = "assert_cond_219"} : memref<1xi1>
                                affine.store %3, %287[%c0] {to = "assert_cond_219", unsigned} : memref<1xi1>
                                %288 = affine.load %287[0] {from = "assert_cond_219", unsigned} : memref<1xi1>
                                %289 = arith.extui %288 : i1 to i32
                                %290 = arith.cmpi eq, %289, %c0_i32 : i32
                                scf.if %290 {
                                  hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ce0.cf.UC.decode Invalid instruction\0A\0A", signedness = "_"} : i32
                                  scf.while : () -> () {
                                    %291 = affine.load %287[0] {from = "assert_cond_219", unsigned} : memref<1xi1>
                                    %292 = arith.extui %291 : i1 to i32
                                    %293 = arith.cmpi ne, %292, %c1_i32 : i32
                                    scf.condition(%293)
                                  } do {
                                    affine.store %3, %287[0] {to = "assert_cond_219", unsigned} : memref<1xi1>
                                    scf.yield
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
            }
            affine.store %3, %37[0] {to = "latstalled_31", unsigned} : memref<1xi1>
            %250 = affine.load %215[0] {from = "inst_lat_155", unsigned} : memref<1xi32>
            %251 = arith.extui %250 : i32 to i33
            %252 = arith.cmpi ne, %251, %140 : i33
            scf.if %252 {
              %256 = arith.trunci %c1_i32 {unsigned} : i32 to i1
              affine.store %256, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
            }
            %253 = affine.load %29[0] {from = "flags_stall_23", unsigned} : memref<1xi1>
            %254 = arith.extui %253 : i1 to i32
            %255 = arith.cmpi eq, %254, %c0_i32 : i32
            scf.if %255 {
              %256 = affine.load %38[0] {from = "tele_inst_count_32", unsigned} : memref<1xi32>
              %257 = arith.extui %256 : i32 to i34
              %258 = arith.addi %257, %190 : i34
              %259 = arith.trunci %258 {unsigned} : i34 to i32
              affine.store %259, %38[0] {to = "tele_inst_count_32", unsigned} : memref<1xi32>
              %260 = affine.load %35[0] {from = "inst_naddr_29", unsigned} : memref<1xi32>
              affine.store %260, %34[0] {to = "inst_addr_28", unsigned} : memref<1xi32>
              affine.store %3, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
            }
          } else {
            %245 = affine.load %215[0] {from = "inst_lat_155", unsigned} : memref<1xi32>
            %246 = arith.extui %245 : i32 to i34
            %247 = arith.subi %246, %155 : i34
            %248 = arith.trunci %247 {unsigned} : i34 to i32
            affine.store %248, %36[0] {to = "latency_count_30", unsigned} : memref<1xi32>
            %249 = affine.load %40[0] {from = "tele_latstall_count_34", unsigned} : memref<1xi32>
            %250 = arith.extui %249 : i32 to i34
            %251 = arith.addi %250, %190 : i34
            %252 = arith.trunci %251 {unsigned} : i34 to i32
            affine.store %252, %40[0] {to = "tele_latstall_count_34", unsigned} : memref<1xi32>
            %253 = arith.trunci %c1_i32 {unsigned} : i32 to i1
            affine.store %253, %37[0] {to = "latstalled_31", unsigned} : memref<1xi1>
            affine.store %253, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
          }
        } else {
          %151 = memref.alloc() {name = "assert_cond_220"} : memref<1xi1>
          %152 = affine.load %37[0] {from = "latstalled_31", unsigned} : memref<1xi1>
          %153 = arith.extui %152 : i1 to i32
          %154 = arith.cmpi eq, %153, %c1_i32 : i32
          affine.store %154, %151[%c0] {to = "assert_cond_220", unsigned} : memref<1xi1>
          %155 = affine.load %151[0] {from = "assert_cond_220", unsigned} : memref<1xi1>
          %156 = arith.extui %155 : i1 to i32
          %157 = arith.cmpi eq, %156, %c0_i32 : i32
          scf.if %157 {
            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: latency countdown but not latstalled?\0A\0A", signedness = "_"} : i32
            scf.while : () -> () {
              %168 = affine.load %151[0] {from = "assert_cond_220", unsigned} : memref<1xi1>
              %169 = arith.extui %168 : i1 to i32
              %170 = arith.cmpi ne, %169, %c1_i32 : i32
              scf.condition(%170)
            } do {
              affine.store %3, %151[0] {to = "assert_cond_220", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %158 = affine.load %36[0] {from = "latency_count_30", unsigned} : memref<1xi32>
          %159 = arith.extui %158 : i32 to i34
          %160 = arith.extsi %c1_i32 : i32 to i34
          %161 = arith.subi %159, %160 : i34
          %162 = arith.trunci %161 {unsigned} : i34 to i32
          affine.store %162, %36[0] {to = "latency_count_30", unsigned} : memref<1xi32>
          %163 = affine.load %40[0] {from = "tele_latstall_count_34", unsigned} : memref<1xi32>
          %164 = arith.extui %163 : i32 to i34
          %165 = arith.addi %164, %160 : i34
          %166 = arith.trunci %165 {unsigned} : i34 to i32
          affine.store %166, %40[0] {to = "tele_latstall_count_34", unsigned} : memref<1xi32>
          %167 = arith.trunci %c1_i32 {unsigned} : i32 to i1
          affine.store %167, %37[0] {to = "latstalled_31", unsigned} : memref<1xi1>
          affine.store %167, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
        }
        scf.yield
      }
      %122 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
      %123 = arith.extui %122 : i4 to i32
      %124 = arith.cmpi eq, %123, %c0_i32 : i32
      scf.if %124 {
        %133 = memref.alloc() {name = "addr_top"} : memref<1xi5>
        %c16_i32 = arith.constant 16 : i32
        %134 = arith.trunci %c16_i32 {unsigned} : i32 to i5
        affine.store %134, %133[%c0] {to = "addr_top", unsigned} : memref<1xi5>
        affine.store %3, %67[0] {to = "flags_stall_44", unsigned} : memref<1xi1>
        affine.store %3, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
        affine.store %3, %70[0] {to = "count_stop_47", unsigned} : memref<1xi1>
        affine.store %3, %71[0] {to = "addr_stop_48", unsigned} : memref<1xi1>
        scf.while : () -> () {
          %true = arith.constant {unsigned} true
          %138 = affine.load %65[0] {from = "flags_active_42", unsigned} : memref<1xi1>
          %139 = arith.extui %138 : i1 to i32
          %140 = arith.cmpi ne, %139, %c0_i32 : i32
          %141 = arith.andi %true, %140 {unsigned} : i1
          %142 = affine.load %69[0] {from = "flags_break_46", unsigned} : memref<1xi1>
          %143 = arith.extui %142 : i1 to i32
          %144 = arith.cmpi eq, %143, %c0_i32 : i32
          %145 = arith.andi %141, %144 {unsigned} : i1
          scf.condition(%145)
        } do {
          %138 = memref.alloc() {name = "assert_cond_222"} : memref<1xi1>
          %139 = affine.load %76[0] {from = "latstalled_52", unsigned} : memref<1xi1>
          %140 = arith.extui %139 : i1 to i32
          %141 = arith.cmpi eq, %140, %c1_i32 : i32
          %142 = arith.ori %false, %141 {unsigned} : i1
          %143 = affine.load %75[0] {from = "latency_count_51", unsigned} : memref<1xi32>
          %144 = arith.extui %143 : i32 to i33
          %145 = arith.extsi %c0_i32 : i32 to i33
          %146 = arith.cmpi eq, %144, %145 : i33
          %147 = arith.ori %142, %146 {unsigned} : i1
          %148 = arith.extui %147 : i1 to i32
          %149 = arith.cmpi ne, %148, %c0_i32 : i32
          affine.store %149, %138[%c0] {to = "assert_cond_222", unsigned} : memref<1xi1>
          %150 = affine.load %138[0] {from = "assert_cond_222", unsigned} : memref<1xi1>
          %151 = arith.extui %150 : i1 to i32
          %152 = arith.cmpi eq, %151, %c0_i32 : i32
          scf.if %152 {
            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: \0A\0A", signedness = "_"} : i32
            scf.while : () -> () {
              %156 = affine.load %138[0] {from = "assert_cond_222", unsigned} : memref<1xi1>
              %157 = arith.extui %156 : i1 to i32
              %158 = arith.cmpi ne, %157, %c1_i32 : i32
              scf.condition(%158)
            } do {
              affine.store %3, %138[0] {to = "assert_cond_222", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %153 = affine.load %75[0] {from = "latency_count_51", unsigned} : memref<1xi32>
          %154 = arith.extui %153 : i32 to i33
          %155 = arith.cmpi eq, %154, %145 : i33
          scf.if %155 {
            %156 = memref.alloc() {name = "_cur_address_223"} : memref<1xi5>
            %157 = affine.load %72[0] {from = "inst_addr_49", unsigned} : memref<1xi5>
            affine.store %157, %156[%c0] {to = "_cur_address_223", unsigned} : memref<1xi5>
            %158 = affine.load %72[0] {from = "inst_addr_49", unsigned} : memref<1xi5>
            %159 = arith.extui %158 : i5 to i33
            %160 = arith.extsi %c1_i32 : i32 to i33
            %161 = arith.addi %159, %160 : i33
            %162 = arith.trunci %161 {unsigned} : i33 to i5
            affine.store %162, %74[0] {to = "inst_naddr_50", unsigned} : memref<1xi5>
            %163 = memref.alloc() {name = "inst_224"} : memref<1xi128>
            %164 = arith.extsi %c0_i32 {unsigned} : i32 to i128
            affine.store %164, %163[%c0] {to = "inst_224", unsigned} : memref<1xi128>
            hcl.print(%c0_i32) {format = "FETCH ce0.cetiles.Mtile.UC factor=1\0A", signedness = "_"} : i32
            %165 = memref.alloc() {name = "read_addr_225"} : memref<1xi33>
            %166 = affine.load %72[0] {from = "inst_addr_49", unsigned} : memref<1xi5>
            %167 = arith.extui %166 : i5 to i33
            %168 = arith.addi %167, %145 : i33
            affine.store %168, %165[%c0] {to = "read_addr_225"} : memref<1xi33>
            %169 = memref.alloc() {name = "_addr_226"} : memref<1xi33>
            %170 = affine.load %165[0] {from = "read_addr_225"} : memref<1xi33>
            affine.store %170, %169[%c0] {to = "_addr_226"} : memref<1xi33>
            %171 = memref.alloc() {name = "assert_cond_227"} : memref<1xi1>
            %172 = affine.load %169[0] {from = "_addr_226"} : memref<1xi33>
            %173 = arith.extsi %172 : i33 to i34
            %174 = arith.extsi %c1_i32 : i32 to i34
            %175 = arith.addi %173, %174 : i34
            %176 = arith.extsi %c16_i32 : i32 to i34
            %177 = arith.cmpi sle, %175, %176 : i34
            affine.store %177, %171[%c0] {to = "assert_cond_227", unsigned} : memref<1xi1>
            %178 = affine.load %171[0] {from = "assert_cond_227", unsigned} : memref<1xi1>
            %179 = arith.extui %178 : i1 to i32
            %180 = arith.cmpi eq, %179, %c0_i32 : i32
            scf.if %180 {
              %221 = affine.load %169[0] {from = "_addr_226"} : memref<1xi33>
              %222 = arith.extsi %221 : i33 to i34
              %223 = arith.addi %222, %174 : i34
              hcl.print(%221, %223) {format = "\0A\0AAssertion failed {}: instq Mem.read exceeds memory size: addr=%d+size=%d > 16\0A\0A", signedness = "__"} : i33, i34
              scf.while : () -> () {
                %224 = affine.load %171[0] {from = "assert_cond_227", unsigned} : memref<1xi1>
                %225 = arith.extui %224 : i1 to i32
                %226 = arith.cmpi ne, %225, %c1_i32 : i32
                scf.condition(%226)
              } do {
                affine.store %3, %171[0] {to = "assert_cond_227", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %181 = memref.alloc() {name = "Mem.read_c_41"} : memref<1xi128>
            %182 = affine.load %165[0] {from = "read_addr_225"} : memref<1xi33>
            %183 = arith.extsi %182 : i33 to i34
            %184 = arith.index_cast %c0 : index to i34
            %185 = arith.addi %183, %184 : i34
            %186 = arith.index_cast %185 {unsigned} : i34 to index
            %187 = memref.load %50[%186] {from = "instq.alloc_c", unsigned} : memref<16xi128>
            affine.store %187, %181[%c0] {to = "Mem.read_c_41", unsigned} : memref<1xi128>
            %c128_i32 = arith.constant 128 : i32
            %c0_i128 = arith.constant {unsigned} 0 : i128
            %188 = affine.load %181[0] {from = "Mem.read_c_41", unsigned} : memref<1xi128>
            %189 = arith.ori %c0_i128, %188 {unsigned} : i128
            affine.store %189, %163[0] {to = "inst_224", unsigned} : memref<1xi128>
            hcl.print(%c0_i32) {format = "FETCH ce0.cetiles.Mtile.UC inst=0x", signedness = "_"} : i32
            %190 = affine.load %163[0] {from = "inst_224", unsigned} : memref<1xi128>
            %c96 = arith.constant {unsigned} 96 : index
            %c127 = arith.constant {unsigned} 127 : index
            %191 = hcl.get_slice(%190 : i128, %c127, %c96) -> i32
            hcl.print(%191) {format = "%d:", signedness = "u"} : i32
            %192 = affine.load %163[0] {from = "inst_224", unsigned} : memref<1xi128>
            %c64 = arith.constant {unsigned} 64 : index
            %c95 = arith.constant {unsigned} 95 : index
            %193 = hcl.get_slice(%192 : i128, %c95, %c64) -> i32
            hcl.print(%193) {format = "%d:", signedness = "u"} : i32
            %194 = affine.load %163[0] {from = "inst_224", unsigned} : memref<1xi128>
            %c32 = arith.constant {unsigned} 32 : index
            %c63 = arith.constant {unsigned} 63 : index
            %195 = hcl.get_slice(%194 : i128, %c63, %c32) -> i32
            hcl.print(%195) {format = "%d:", signedness = "u"} : i32
            %196 = affine.load %163[0] {from = "inst_224", unsigned} : memref<1xi128>
            %c0_0 = arith.constant {unsigned} 0 : index
            %c31 = arith.constant {unsigned} 31 : index
            %197 = hcl.get_slice(%196 : i128, %c31, %c0_0) -> i32
            hcl.print(%197) {format = "%d:", signedness = "u"} : i32
            hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
            %198 = memref.alloc() {name = "inst_lat_228"} : memref<1xi32>
            affine.store %c0_i32, %198[%c0] {to = "inst_lat_228", unsigned} : memref<1xi32>
            %199 = memref.alloc() {name = "decode_inst_229"} : memref<1xi128>
            %200 = affine.load %163[0] {from = "inst_224", unsigned} : memref<1xi128>
            affine.store %200, %199[%c0] {to = "decode_inst_229", unsigned} : memref<1xi128>
            %201 = memref.alloc() {name = "inst_id_230"} : memref<1xi16>
            %202 = arith.trunci %c0_i32 {unsigned} : i32 to i16
            affine.store %202, %201[%c0] {to = "inst_id_230", unsigned} : memref<1xi16>
            %203 = memref.alloc() {name = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
            %204 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
            %205 = hcl.int_to_struct(%204) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
            affine.store %205, %203[%c0] {to = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
            %true = arith.constant {unsigned} true
            %206 = affine.load %203[0] {from = "dec_inst_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
            %207 = hcl.struct_get %206[0] : <i6, i1, i9, i9, i9, i32, i62> -> i6
            %c4_i32 = arith.constant 4 : i32
            %208 = arith.trunci %c4_i32 {unsigned} : i32 to i6
            %209 = arith.cmpi eq, %207, %208 {unsigned} : i6
            %210 = arith.andi %true, %209 {unsigned} : i1
            scf.if %210 {
              affine.store %202, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
              affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
            } else {
              %221 = memref.alloc() {name = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
              %222 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
              %223 = hcl.int_to_struct(%222) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
              affine.store %223, %221[%c0] {to = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
              %224 = affine.load %221[0] {from = "dec_inst_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
              %225 = hcl.struct_get %224[0] : <i6, i1, i9, i9, i9, i32, i62> -> i6
              %c5_i32 = arith.constant 5 : i32
              %226 = arith.trunci %c5_i32 {unsigned} : i32 to i6
              %227 = arith.cmpi eq, %225, %226 {unsigned} : i6
              %228 = arith.andi %true, %227 {unsigned} : i1
              scf.if %228 {
                %229 = arith.trunci %c1_i32 {unsigned} : i32 to i16
                affine.store %229, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
              } else {
                %229 = memref.alloc() {name = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                %230 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                %231 = hcl.int_to_struct(%230) {unsigned} : i128 -> <i6, i1, i9, i9, i32, i32, i39>
                affine.store %231, %229[%c0] {to = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                %232 = affine.load %229[0] {from = "dec_inst_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                %233 = hcl.struct_get %232[0] : <i6, i1, i9, i9, i32, i32, i39> -> i6
                %c21_i32 = arith.constant 21 : i32
                %234 = arith.trunci %c21_i32 {unsigned} : i32 to i6
                %235 = arith.cmpi eq, %233, %234 {unsigned} : i6
                %236 = arith.andi %true, %235 {unsigned} : i1
                scf.if %236 {
                  %c2_i32 = arith.constant 2 : i32
                  %237 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                  affine.store %237, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                  affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                } else {
                  %237 = memref.alloc() {name = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %238 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                  %239 = hcl.int_to_struct(%238) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
                  affine.store %239, %237[%c0] {to = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %240 = affine.load %237[0] {from = "dec_inst_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %241 = hcl.struct_get %240[0] : <i6, i1, i9, i9, i9, i32, i62> -> i6
                  %c6_i32 = arith.constant 6 : i32
                  %242 = arith.trunci %c6_i32 {unsigned} : i32 to i6
                  %243 = arith.cmpi eq, %241, %242 {unsigned} : i6
                  %244 = arith.andi %true, %243 {unsigned} : i1
                  scf.if %244 {
                    %c3_i32 = arith.constant 3 : i32
                    %245 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                    affine.store %245, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                    affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                  } else {
                    %245 = memref.alloc() {name = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %246 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                    %247 = hcl.int_to_struct(%246) {unsigned} : i128 -> <i6, i1, i9, i9, i32, i32, i39>
                    affine.store %247, %245[%c0] {to = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %248 = affine.load %245[0] {from = "dec_inst_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %249 = hcl.struct_get %248[0] : <i6, i1, i9, i9, i32, i32, i39> -> i6
                    %c22_i32 = arith.constant 22 : i32
                    %250 = arith.trunci %c22_i32 {unsigned} : i32 to i6
                    %251 = arith.cmpi eq, %249, %250 {unsigned} : i6
                    %252 = arith.andi %true, %251 {unsigned} : i1
                    scf.if %252 {
                      %253 = arith.trunci %c4_i32 {unsigned} : i32 to i16
                      affine.store %253, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                      affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                    } else {
                      %253 = memref.alloc() {name = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                      %254 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                      %255 = hcl.int_to_struct(%254) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>
                      affine.store %255, %253[%c0] {to = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                      %256 = affine.load %253[0] {from = "dec_inst_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                      %257 = hcl.struct_get %256[0] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                      %c7_i32 = arith.constant 7 : i32
                      %258 = arith.trunci %c7_i32 {unsigned} : i32 to i6
                      %259 = arith.cmpi eq, %257, %258 {unsigned} : i6
                      %260 = arith.andi %true, %259 {unsigned} : i1
                      scf.if %260 {
                        %261 = arith.trunci %c5_i32 {unsigned} : i32 to i16
                        affine.store %261, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                        affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                      } else {
                        %261 = memref.alloc() {name = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                        %262 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                        %263 = hcl.int_to_struct(%262) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>
                        affine.store %263, %261[%c0] {to = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                        %264 = affine.load %261[0] {from = "dec_inst_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                        %265 = hcl.struct_get %264[0] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                        %c15_i32 = arith.constant 15 : i32
                        %266 = arith.trunci %c15_i32 {unsigned} : i32 to i6
                        %267 = arith.cmpi eq, %265, %266 {unsigned} : i6
                        %268 = arith.andi %true, %267 {unsigned} : i1
                        scf.if %268 {
                          %269 = arith.trunci %c6_i32 {unsigned} : i32 to i16
                          affine.store %269, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                          affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                        } else {
                          %269 = memref.alloc() {name = "dec_inst_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %270 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                          %271 = hcl.int_to_struct(%270) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>
                          affine.store %271, %269[%c0] {to = "dec_inst_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %272 = affine.load %269[0] {from = "dec_inst_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %273 = hcl.struct_get %272[0] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                          %274 = arith.trunci %c16_i32 {unsigned} : i32 to i6
                          %275 = arith.cmpi eq, %273, %274 {unsigned} : i6
                          %276 = arith.andi %true, %275 {unsigned} : i1
                          scf.if %276 {
                            %277 = arith.trunci %c7_i32 {unsigned} : i32 to i16
                            affine.store %277, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                            affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                          } else {
                            %277 = memref.alloc() {name = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                            %278 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                            %279 = hcl.int_to_struct(%278) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
                            affine.store %279, %277[%c0] {to = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                            %280 = affine.load %277[0] {from = "dec_inst_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                            %281 = hcl.struct_get %280[0] : <i6, i1, i9, i9, i9, i32, i62> -> i6
                            %282 = arith.cmpi eq, %281, %208 {unsigned} : i6
                            %283 = arith.andi %true, %282 {unsigned} : i1
                            scf.if %283 {
                              %c8_i32 = arith.constant 8 : i32
                              %284 = arith.trunci %c8_i32 {unsigned} : i32 to i16
                              affine.store %284, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                              affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                            } else {
                              %284 = memref.alloc() {name = "dec_inst_nop_240"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                              %285 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                              %286 = hcl.int_to_struct(%285) {unsigned} : i128 -> <i6, i1, i10, i111>
                              affine.store %286, %284[%c0] {to = "dec_inst_nop_240"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                              %287 = affine.load %284[0] {from = "dec_inst_nop_240"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                              %288 = hcl.struct_get %287[0] : <i6, i1, i10, i111> -> i6
                              %289 = arith.trunci %c0_i32 {unsigned} : i32 to i6
                              %290 = arith.cmpi eq, %288, %289 {unsigned} : i6
                              %291 = arith.andi %true, %290 {unsigned} : i1
                              scf.if %291 {
                                %c9_i32 = arith.constant 9 : i32
                                %292 = arith.trunci %c9_i32 {unsigned} : i32 to i16
                                affine.store %292, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                                affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                              } else {
                                %292 = memref.alloc() {name = "dec_inst_cstore_241"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                %293 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                                %294 = hcl.int_to_struct(%293) {unsigned} : i128 -> <i6, i33, i9, i80>
                                affine.store %294, %292[%c0] {to = "dec_inst_cstore_241"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                %295 = affine.load %292[0] {from = "dec_inst_cstore_241"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                %296 = hcl.struct_get %295[0] : <i6, i33, i9, i80> -> i6
                                %c9_i32 = arith.constant 9 : i32
                                %297 = arith.trunci %c9_i32 {unsigned} : i32 to i6
                                %298 = arith.cmpi eq, %296, %297 {unsigned} : i6
                                %299 = arith.andi %true, %298 {unsigned} : i1
                                scf.if %299 {
                                  %c10_i32 = arith.constant 10 : i32
                                  %300 = arith.trunci %c10_i32 {unsigned} : i32 to i16
                                  affine.store %300, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                                  affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                                } else {
                                  %300 = memref.alloc() {name = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                  %301 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                                  %302 = hcl.int_to_struct(%301) {unsigned} : i128 -> <i6, i1, i9, i9, i103>
                                  affine.store %302, %300[%c0] {to = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                  %303 = affine.load %300[0] {from = "dec_inst_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                  %304 = hcl.struct_get %303[0] : <i6, i1, i9, i9, i103> -> i6
                                  %c10_i32 = arith.constant 10 : i32
                                  %305 = arith.trunci %c10_i32 {unsigned} : i32 to i6
                                  %306 = arith.cmpi eq, %304, %305 {unsigned} : i6
                                  %307 = arith.andi %true, %306 {unsigned} : i1
                                  scf.if %307 {
                                    %c11_i32 = arith.constant 11 : i32
                                    %308 = arith.trunci %c11_i32 {unsigned} : i32 to i16
                                    affine.store %308, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
                                    affine.store %c1_i32, %198[0] {to = "inst_lat_228", unsigned} : memref<1xi32>
                                  } else {
                                    %308 = memref.alloc() {name = "assert_cond_243"} : memref<1xi1>
                                    affine.store %3, %308[%c0] {to = "assert_cond_243", unsigned} : memref<1xi1>
                                    %309 = affine.load %308[0] {from = "assert_cond_243", unsigned} : memref<1xi1>
                                    %310 = arith.extui %309 : i1 to i32
                                    %311 = arith.cmpi eq, %310, %c0_i32 : i32
                                    scf.if %311 {
                                      %313 = affine.load %199[0] {from = "decode_inst_229", unsigned} : memref<1xi128>
                                      %314 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                      hcl.print(%313, %314) {format = "\0A\0AAssertion failed {}: \0A\0Ace0.cetiles.Mtile.UC.decode Invalid instruction (%d) at address %d\0A\0A\0A", signedness = "uu"} : i128, i5
                                      scf.while : () -> () {
                                        %315 = affine.load %308[0] {from = "assert_cond_243", unsigned} : memref<1xi1>
                                        %316 = arith.extui %315 : i1 to i32
                                        %317 = arith.cmpi ne, %316, %c1_i32 : i32
                                        scf.condition(%317)
                                      } do {
                                        affine.store %3, %308[0] {to = "assert_cond_243", unsigned} : memref<1xi1>
                                        scf.yield
                                      }
                                    }
                                    %c12_i32 = arith.constant 12 : i32
                                    %312 = arith.trunci %c12_i32 {unsigned} : i32 to i16
                                    affine.store %312, %201[0] {to = "inst_id_230", unsigned} : memref<1xi16>
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
            }
            %211 = affine.load %198[0] {from = "inst_lat_228", unsigned} : memref<1xi32>
            %212 = arith.extui %211 : i32 to i33
            %213 = arith.cmpi sle, %212, %160 : i33
            %214 = arith.ori %false, %213 {unsigned} : i1
            %215 = affine.load %76[0] {from = "latstalled_52", unsigned} : memref<1xi1>
            %216 = arith.extui %215 : i1 to i32
            %217 = arith.cmpi eq, %216, %c1_i32 : i32
            %218 = arith.ori %214, %217 {unsigned} : i1
            %219 = arith.extui %218 : i1 to i32
            %220 = arith.cmpi ne, %219, %c0_i32 : i32
            scf.if %220 {
              %221 = memref.alloc() {name = "execute_inst_244"} : memref<1xi128>
              %222 = affine.load %163[0] {from = "inst_224", unsigned} : memref<1xi128>
              affine.store %222, %221[%c0] {to = "execute_inst_244", unsigned} : memref<1xi128>
              %223 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
              %224 = arith.extui %223 : i16 to i32
              %225 = arith.cmpi eq, %224, %c0_i32 : i32
              scf.if %225 {
                %235 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %236 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                %237 = hcl.int_to_struct(%236) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
                affine.store %237, %235[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                %238 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                hcl.print(%238) {format = "ip=%d ", signedness = "u"} : i5
                %239 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %240 = hcl.struct_get %239[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %241 = hcl.struct_get %239[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %242 = hcl.struct_get %239[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %243 = hcl.struct_get %239[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                hcl.print(%240, %241, %242, %243) {format = "padd res=%d a=%d b=%d q=%d", signedness = "uuuu"} : i9, i9, i9, i32
                hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                %244 = memref.alloc() {name = "rfaddr_246"} : memref<1x!hcl.struct<i7, i2>>
                %245 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %246 = hcl.struct_get %245[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %247 = hcl.int_to_struct(%246) {unsigned} : i9 -> <i7, i2>
                affine.store %247, %244[%c0] {to = "rfaddr_246"} : memref<1x!hcl.struct<i7, i2>>
                %248 = memref.alloc() {name = "bv_247"} : memref<1xi3>
                %249 = affine.load %244[0] {from = "rfaddr_246"} : memref<1x!hcl.struct<i7, i2>>
                %250 = hcl.struct_get %249[1] : <i7, i2> -> i2
                %251 = arith.extui %250 {unsigned} : i2 to i3
                affine.store %251, %248[%c0] {to = "bv_247", unsigned} : memref<1xi3>
                %252 = memref.alloc() {name = "rv_248"} : memref<1xi8>
                %253 = affine.load %244[0] {from = "rfaddr_246"} : memref<1x!hcl.struct<i7, i2>>
                %254 = hcl.struct_get %253[0] : <i7, i2> -> i7
                %255 = arith.extui %254 {unsigned} : i7 to i8
                affine.store %255, %252[%c0] {to = "rv_248", unsigned} : memref<1xi8>
                %256 = memref.alloc() {name = "rfaddr_249"} : memref<1x!hcl.struct<i7, i2>>
                %257 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %258 = hcl.struct_get %257[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %259 = hcl.int_to_struct(%258) {unsigned} : i9 -> <i7, i2>
                affine.store %259, %256[%c0] {to = "rfaddr_249"} : memref<1x!hcl.struct<i7, i2>>
                %260 = memref.alloc() {name = "bv_250"} : memref<1xi3>
                %261 = affine.load %256[0] {from = "rfaddr_249"} : memref<1x!hcl.struct<i7, i2>>
                %262 = hcl.struct_get %261[1] : <i7, i2> -> i2
                %263 = arith.extui %262 {unsigned} : i2 to i3
                affine.store %263, %260[%c0] {to = "bv_250", unsigned} : memref<1xi3>
                %264 = memref.alloc() {name = "rv_251"} : memref<1xi8>
                %265 = affine.load %256[0] {from = "rfaddr_249"} : memref<1x!hcl.struct<i7, i2>>
                %266 = hcl.struct_get %265[0] : <i7, i2> -> i7
                %267 = arith.extui %266 {unsigned} : i7 to i8
                affine.store %267, %264[%c0] {to = "rv_251", unsigned} : memref<1xi8>
                %268 = memref.alloc() {name = "assert_cond_252"} : memref<1xi1>
                %269 = affine.load %248[0] {from = "bv_247", unsigned} : memref<1xi3>
                %270 = affine.load %260[0] {from = "bv_250", unsigned} : memref<1xi3>
                %271 = arith.cmpi ne, %269, %270 {unsigned} : i3
                affine.store %271, %268[%c0] {to = "assert_cond_252", unsigned} : memref<1xi1>
                %272 = affine.load %268[0] {from = "assert_cond_252", unsigned} : memref<1xi1>
                %273 = arith.extui %272 : i1 to i32
                %274 = arith.cmpi eq, %273, %c0_i32 : i32
                scf.if %274 {
                  hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: padd read bank conflict\0A\0A", signedness = "_"} : i32
                  scf.while : () -> () {
                    %311 = affine.load %268[0] {from = "assert_cond_252", unsigned} : memref<1xi1>
                    %312 = arith.extui %311 : i1 to i32
                    %313 = arith.cmpi ne, %312, %c1_i32 : i32
                    scf.condition(%313)
                  } do {
                    affine.store %3, %268[0] {to = "assert_cond_252", unsigned} : memref<1xi1>
                    scf.yield
                  }
                }
                %275 = memref.alloc() {name = "rfaddr_253"} : memref<1x!hcl.struct<i7, i2>>
                %276 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %277 = hcl.struct_get %276[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %278 = hcl.int_to_struct(%277) {unsigned} : i9 -> <i7, i2>
                affine.store %278, %275[%c0] {to = "rfaddr_253"} : memref<1x!hcl.struct<i7, i2>>
                %279 = memref.alloc() {name = "bv_254"} : memref<1xi3>
                %280 = affine.load %275[0] {from = "rfaddr_253"} : memref<1x!hcl.struct<i7, i2>>
                %281 = hcl.struct_get %280[1] : <i7, i2> -> i2
                %282 = arith.extui %281 {unsigned} : i2 to i3
                affine.store %282, %279[%c0] {to = "bv_254", unsigned} : memref<1xi3>
                %283 = memref.alloc() {name = "rv_255"} : memref<1xi8>
                %284 = affine.load %275[0] {from = "rfaddr_253"} : memref<1x!hcl.struct<i7, i2>>
                %285 = hcl.struct_get %284[0] : <i7, i2> -> i7
                %286 = arith.extui %285 {unsigned} : i7 to i8
                affine.store %286, %283[%c0] {to = "rv_255", unsigned} : memref<1xi8>
                %287 = memref.alloc() {name = "rfaddr_256"} : memref<1x!hcl.struct<i7, i2>>
                %288 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %289 = hcl.struct_get %288[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %290 = hcl.int_to_struct(%289) {unsigned} : i9 -> <i7, i2>
                affine.store %290, %287[%c0] {to = "rfaddr_256"} : memref<1x!hcl.struct<i7, i2>>
                %291 = memref.alloc() {name = "bv_257"} : memref<1xi3>
                %292 = affine.load %287[0] {from = "rfaddr_256"} : memref<1x!hcl.struct<i7, i2>>
                %293 = hcl.struct_get %292[1] : <i7, i2> -> i2
                %294 = arith.extui %293 {unsigned} : i2 to i3
                affine.store %294, %291[%c0] {to = "bv_257", unsigned} : memref<1xi3>
                %295 = memref.alloc() {name = "rv_258"} : memref<1xi8>
                %296 = affine.load %287[0] {from = "rfaddr_256"} : memref<1x!hcl.struct<i7, i2>>
                %297 = hcl.struct_get %296[0] : <i7, i2> -> i7
                %298 = arith.extui %297 {unsigned} : i7 to i8
                affine.store %298, %295[%c0] {to = "rv_258", unsigned} : memref<1xi8>
                %299 = memref.alloc() {name = "rfaddr_259"} : memref<1x!hcl.struct<i7, i2>>
                %300 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                %301 = hcl.struct_get %300[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                %302 = hcl.int_to_struct(%301) {unsigned} : i9 -> <i7, i2>
                affine.store %302, %299[%c0] {to = "rfaddr_259"} : memref<1x!hcl.struct<i7, i2>>
                %303 = memref.alloc() {name = "bv_260"} : memref<1xi3>
                %304 = affine.load %299[0] {from = "rfaddr_259"} : memref<1x!hcl.struct<i7, i2>>
                %305 = hcl.struct_get %304[1] : <i7, i2> -> i2
                %306 = arith.extui %305 {unsigned} : i2 to i3
                affine.store %306, %303[%c0] {to = "bv_260", unsigned} : memref<1xi3>
                %307 = memref.alloc() {name = "rv_261"} : memref<1xi8>
                %308 = affine.load %299[0] {from = "rfaddr_259"} : memref<1x!hcl.struct<i7, i2>>
                %309 = hcl.struct_get %308[0] : <i7, i2> -> i7
                %310 = arith.extui %309 {unsigned} : i7 to i8
                affine.store %310, %307[%c0] {to = "rv_261", unsigned} : memref<1xi8>
                affine.for %arg2 = 0 to 8192 {
                  %311 = memref.alloc() {name = "_a"} : memref<1xi64>
                  %312 = affine.load %291[0] {from = "bv_257", unsigned} : memref<1xi3>
                  %313 = arith.index_cast %312 {unsigned} : i3 to index
                  %314 = affine.load %295[0] {from = "rv_258", unsigned} : memref<1xi8>
                  %315 = arith.index_cast %314 {unsigned} : i8 to index
                  %316 = memref.load %41[%313, %315, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %317 = arith.extui %316 {unsigned} : i32 to i64
                  affine.store %317, %311[%c0] {to = "_a", unsigned} : memref<1xi64>
                  %318 = memref.alloc() {name = "_b"} : memref<1xi64>
                  %319 = affine.load %303[0] {from = "bv_260", unsigned} : memref<1xi3>
                  %320 = arith.index_cast %319 {unsigned} : i3 to index
                  %321 = affine.load %307[0] {from = "rv_261", unsigned} : memref<1xi8>
                  %322 = arith.index_cast %321 {unsigned} : i8 to index
                  %323 = memref.load %41[%320, %322, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                  %324 = arith.extui %323 {unsigned} : i32 to i64
                  affine.store %324, %318[%c0] {to = "_b", unsigned} : memref<1xi64>
                  %325 = memref.alloc() {name = "_w"} : memref<1xi64>
                  %326 = arith.extsi %c0_i32 {unsigned} : i32 to i64
                  affine.store %326, %325[%c0] {to = "_w", unsigned} : memref<1xi64>
                  %327 = memref.alloc() {name = "_q"} : memref<1xi64>
                  %328 = affine.load %235[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_padd"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %329 = hcl.struct_get %328[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                  %330 = arith.extui %329 {unsigned} : i32 to i64
                  affine.store %330, %327[%c0] {to = "_q", unsigned} : memref<1xi64>
                  %331 = affine.load %311[0] {from = "_a", unsigned} : memref<1xi64>
                  %332 = affine.load %318[0] {from = "_b", unsigned} : memref<1xi64>
                  %333 = arith.extui %331 {unsigned} : i64 to i65
                  %334 = arith.extui %332 {unsigned} : i64 to i65
                  %335 = arith.addi %333, %334 {unsigned} : i65
                  %336 = affine.load %327[0] {from = "_q", unsigned} : memref<1xi64>
                  %337 = arith.extui %336 {unsigned} : i64 to i65
                  %338 = arith.remui %335, %337 {unsigned} : i65
                  %339 = arith.trunci %338 {unsigned} : i65 to i32
                  %340 = affine.load %279[0] {from = "bv_254", unsigned} : memref<1xi3>
                  %341 = arith.index_cast %340 {unsigned} : i3 to index
                  %342 = affine.load %283[0] {from = "rv_255", unsigned} : memref<1xi8>
                  %343 = arith.index_cast %342 {unsigned} : i8 to index
                  memref.store %339, %41[%341, %343, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                } {loop_name = "i", op_name = "bflyfn"}
              } else {
                %235 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                %236 = arith.extui %235 : i16 to i32
                %237 = arith.cmpi eq, %236, %c1_i32 : i32
                scf.if %237 {
                  %238 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %239 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                  %240 = hcl.int_to_struct(%239) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
                  affine.store %240, %238[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                  %241 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                  hcl.print(%241) {format = "ip=%d ", signedness = "u"} : i5
                  %242 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %243 = hcl.struct_get %242[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %244 = hcl.struct_get %242[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %245 = hcl.struct_get %242[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %246 = hcl.struct_get %242[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                  hcl.print(%243, %244, %245, %246) {format = "pmul res=%d w=%d b=%d q=%d", signedness = "uuuu"} : i9, i9, i9, i32
                  hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                  %247 = memref.alloc() {name = "rfaddr_267"} : memref<1x!hcl.struct<i7, i2>>
                  %248 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %249 = hcl.struct_get %248[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %250 = hcl.int_to_struct(%249) {unsigned} : i9 -> <i7, i2>
                  affine.store %250, %247[%c0] {to = "rfaddr_267"} : memref<1x!hcl.struct<i7, i2>>
                  %251 = memref.alloc() {name = "bv_268"} : memref<1xi3>
                  %252 = affine.load %247[0] {from = "rfaddr_267"} : memref<1x!hcl.struct<i7, i2>>
                  %253 = hcl.struct_get %252[1] : <i7, i2> -> i2
                  %254 = arith.extui %253 {unsigned} : i2 to i3
                  affine.store %254, %251[%c0] {to = "bv_268", unsigned} : memref<1xi3>
                  %255 = memref.alloc() {name = "rv_269"} : memref<1xi8>
                  %256 = affine.load %247[0] {from = "rfaddr_267"} : memref<1x!hcl.struct<i7, i2>>
                  %257 = hcl.struct_get %256[0] : <i7, i2> -> i7
                  %258 = arith.extui %257 {unsigned} : i7 to i8
                  affine.store %258, %255[%c0] {to = "rv_269", unsigned} : memref<1xi8>
                  %259 = memref.alloc() {name = "rfaddr_270"} : memref<1x!hcl.struct<i7, i2>>
                  %260 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %261 = hcl.struct_get %260[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %262 = hcl.int_to_struct(%261) {unsigned} : i9 -> <i7, i2>
                  affine.store %262, %259[%c0] {to = "rfaddr_270"} : memref<1x!hcl.struct<i7, i2>>
                  %263 = memref.alloc() {name = "bv_271"} : memref<1xi3>
                  %264 = affine.load %259[0] {from = "rfaddr_270"} : memref<1x!hcl.struct<i7, i2>>
                  %265 = hcl.struct_get %264[1] : <i7, i2> -> i2
                  %266 = arith.extui %265 {unsigned} : i2 to i3
                  affine.store %266, %263[%c0] {to = "bv_271", unsigned} : memref<1xi3>
                  %267 = memref.alloc() {name = "rv_272"} : memref<1xi8>
                  %268 = affine.load %259[0] {from = "rfaddr_270"} : memref<1x!hcl.struct<i7, i2>>
                  %269 = hcl.struct_get %268[0] : <i7, i2> -> i7
                  %270 = arith.extui %269 {unsigned} : i7 to i8
                  affine.store %270, %267[%c0] {to = "rv_272", unsigned} : memref<1xi8>
                  %271 = memref.alloc() {name = "assert_cond_273"} : memref<1xi1>
                  %272 = affine.load %251[0] {from = "bv_268", unsigned} : memref<1xi3>
                  %273 = affine.load %263[0] {from = "bv_271", unsigned} : memref<1xi3>
                  %274 = arith.cmpi ne, %272, %273 {unsigned} : i3
                  affine.store %274, %271[%c0] {to = "assert_cond_273", unsigned} : memref<1xi1>
                  %275 = affine.load %271[0] {from = "assert_cond_273", unsigned} : memref<1xi1>
                  %276 = arith.extui %275 : i1 to i32
                  %277 = arith.cmpi eq, %276, %c0_i32 : i32
                  scf.if %277 {
                    hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: pmul read bank conflict\0A\0A", signedness = "_"} : i32
                    scf.while : () -> () {
                      %314 = affine.load %271[0] {from = "assert_cond_273", unsigned} : memref<1xi1>
                      %315 = arith.extui %314 : i1 to i32
                      %316 = arith.cmpi ne, %315, %c1_i32 : i32
                      scf.condition(%316)
                    } do {
                      affine.store %3, %271[0] {to = "assert_cond_273", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %278 = memref.alloc() {name = "rfaddr_274"} : memref<1x!hcl.struct<i7, i2>>
                  %279 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %280 = hcl.struct_get %279[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %281 = hcl.int_to_struct(%280) {unsigned} : i9 -> <i7, i2>
                  affine.store %281, %278[%c0] {to = "rfaddr_274"} : memref<1x!hcl.struct<i7, i2>>
                  %282 = memref.alloc() {name = "bv_275"} : memref<1xi3>
                  %283 = affine.load %278[0] {from = "rfaddr_274"} : memref<1x!hcl.struct<i7, i2>>
                  %284 = hcl.struct_get %283[1] : <i7, i2> -> i2
                  %285 = arith.extui %284 {unsigned} : i2 to i3
                  affine.store %285, %282[%c0] {to = "bv_275", unsigned} : memref<1xi3>
                  %286 = memref.alloc() {name = "rv_276"} : memref<1xi8>
                  %287 = affine.load %278[0] {from = "rfaddr_274"} : memref<1x!hcl.struct<i7, i2>>
                  %288 = hcl.struct_get %287[0] : <i7, i2> -> i7
                  %289 = arith.extui %288 {unsigned} : i7 to i8
                  affine.store %289, %286[%c0] {to = "rv_276", unsigned} : memref<1xi8>
                  %290 = memref.alloc() {name = "rfaddr_277"} : memref<1x!hcl.struct<i7, i2>>
                  %291 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %292 = hcl.struct_get %291[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %293 = hcl.int_to_struct(%292) {unsigned} : i9 -> <i7, i2>
                  affine.store %293, %290[%c0] {to = "rfaddr_277"} : memref<1x!hcl.struct<i7, i2>>
                  %294 = memref.alloc() {name = "bv_278"} : memref<1xi3>
                  %295 = affine.load %290[0] {from = "rfaddr_277"} : memref<1x!hcl.struct<i7, i2>>
                  %296 = hcl.struct_get %295[1] : <i7, i2> -> i2
                  %297 = arith.extui %296 {unsigned} : i2 to i3
                  affine.store %297, %294[%c0] {to = "bv_278", unsigned} : memref<1xi3>
                  %298 = memref.alloc() {name = "rv_279"} : memref<1xi8>
                  %299 = affine.load %290[0] {from = "rfaddr_277"} : memref<1x!hcl.struct<i7, i2>>
                  %300 = hcl.struct_get %299[0] : <i7, i2> -> i7
                  %301 = arith.extui %300 {unsigned} : i7 to i8
                  affine.store %301, %298[%c0] {to = "rv_279", unsigned} : memref<1xi8>
                  %302 = memref.alloc() {name = "rfaddr_280"} : memref<1x!hcl.struct<i7, i2>>
                  %303 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                  %304 = hcl.struct_get %303[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                  %305 = hcl.int_to_struct(%304) {unsigned} : i9 -> <i7, i2>
                  affine.store %305, %302[%c0] {to = "rfaddr_280"} : memref<1x!hcl.struct<i7, i2>>
                  %306 = memref.alloc() {name = "bv_281"} : memref<1xi3>
                  %307 = affine.load %302[0] {from = "rfaddr_280"} : memref<1x!hcl.struct<i7, i2>>
                  %308 = hcl.struct_get %307[1] : <i7, i2> -> i2
                  %309 = arith.extui %308 {unsigned} : i2 to i3
                  affine.store %309, %306[%c0] {to = "bv_281", unsigned} : memref<1xi3>
                  %310 = memref.alloc() {name = "rv_282"} : memref<1xi8>
                  %311 = affine.load %302[0] {from = "rfaddr_280"} : memref<1x!hcl.struct<i7, i2>>
                  %312 = hcl.struct_get %311[0] : <i7, i2> -> i7
                  %313 = arith.extui %312 {unsigned} : i7 to i8
                  affine.store %313, %310[%c0] {to = "rv_282", unsigned} : memref<1xi8>
                  affine.for %arg2 = 0 to 8192 {
                    %314 = memref.alloc() {name = "_a_283"} : memref<1xi64>
                    %315 = arith.extsi %c0_i32 {unsigned} : i32 to i64
                    affine.store %315, %314[%c0] {to = "_a_283", unsigned} : memref<1xi64>
                    %316 = memref.alloc() {name = "_b_284"} : memref<1xi64>
                    %317 = affine.load %306[0] {from = "bv_281", unsigned} : memref<1xi3>
                    %318 = arith.index_cast %317 {unsigned} : i3 to index
                    %319 = affine.load %310[0] {from = "rv_282", unsigned} : memref<1xi8>
                    %320 = arith.index_cast %319 {unsigned} : i8 to index
                    %321 = memref.load %41[%318, %320, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %322 = arith.extui %321 {unsigned} : i32 to i64
                    affine.store %322, %316[%c0] {to = "_b_284", unsigned} : memref<1xi64>
                    %323 = memref.alloc() {name = "_w_285"} : memref<1xi64>
                    %324 = affine.load %294[0] {from = "bv_278", unsigned} : memref<1xi3>
                    %325 = arith.index_cast %324 {unsigned} : i3 to index
                    %326 = affine.load %298[0] {from = "rv_279", unsigned} : memref<1xi8>
                    %327 = arith.index_cast %326 {unsigned} : i8 to index
                    %328 = memref.load %41[%325, %327, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                    %329 = arith.extui %328 {unsigned} : i32 to i64
                    affine.store %329, %323[%c0] {to = "_w_285", unsigned} : memref<1xi64>
                    %330 = memref.alloc() {name = "_q_286"} : memref<1xi64>
                    %331 = affine.load %238[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmul"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                    %332 = hcl.struct_get %331[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                    %333 = arith.extui %332 {unsigned} : i32 to i64
                    affine.store %333, %330[%c0] {to = "_q_286", unsigned} : memref<1xi64>
                    %334 = memref.alloc() {name = "assert_cond_287"} : memref<1xi1>
                    %335 = affine.load %330[0] {from = "_q_286", unsigned} : memref<1xi64>
                    %c4294967295_i64 = arith.constant 4294967295 : i64
                    %336 = arith.andi %335, %c4294967295_i64 : i64
                    %337 = arith.extsi %c1_i32 : i32 to i64
                    %338 = arith.cmpi eq, %336, %337 : i64
                    affine.store %338, %334[%c0] {to = "assert_cond_287", unsigned} : memref<1xi1>
                    %339 = affine.load %334[0] {from = "assert_cond_287", unsigned} : memref<1xi1>
                    %340 = arith.extui %339 : i1 to i32
                    %341 = arith.cmpi eq, %340, %c0_i32 : i32
                    scf.if %341 {
                      %389 = affine.load %330[0] {from = "_q_286", unsigned} : memref<1xi64>
                      hcl.print(%389) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                      scf.while : () -> () {
                        %390 = affine.load %334[0] {from = "assert_cond_287", unsigned} : memref<1xi1>
                        %391 = arith.extui %390 : i1 to i32
                        %392 = arith.cmpi ne, %391, %c1_i32 : i32
                        scf.condition(%392)
                      } do {
                        affine.store %3, %334[0] {to = "assert_cond_287", unsigned} : memref<1xi1>
                        scf.yield
                      }
                    }
                    %342 = memref.alloc() {name = "mont_redc"} : memref<1xi128>
                    %343 = affine.load %323[0] {from = "_w_285", unsigned} : memref<1xi64>
                    %344 = affine.load %316[0] {from = "_b_284", unsigned} : memref<1xi64>
                    %345 = arith.extui %343 {unsigned} : i64 to i128
                    %346 = arith.extui %344 {unsigned} : i64 to i128
                    %347 = arith.muli %345, %346 {unsigned} : i128
                    %c-1_i32 = arith.constant -1 : i32
                    %348 = arith.extui %347 : i128 to i160
                    %349 = arith.extsi %c-1_i32 : i32 to i160
                    %350 = arith.muli %348, %349 : i160
                    %351 = arith.trunci %350 {unsigned} : i160 to i128
                    %352 = arith.extsi %c4294967295_i64 : i64 to i128
                    %353 = arith.andi %351, %352 : i128
                    %354 = affine.load %330[0] {from = "_q_286", unsigned} : memref<1xi64>
                    %355 = arith.extsi %353 : i128 to i192
                    %356 = arith.extui %354 : i64 to i192
                    %357 = arith.muli %355, %356 : i192
                    %358 = arith.extui %347 : i128 to i193
                    %359 = arith.extsi %357 : i192 to i193
                    %360 = arith.addi %358, %359 : i193
                    %c32_i32 = arith.constant 32 : i32
                    %361 = arith.extsi %c32_i32 : i32 to i193
                    %362 = arith.shrsi %360, %361 : i193
                    %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                    %363 = arith.muli %362, %c18446744073709551615_i193 : i193
                    %364 = arith.extsi %c4294967295_i64 : i64 to i193
                    %365 = arith.andi %363, %364 : i193
                    %366 = arith.extsi %365 : i193 to i257
                    %367 = arith.extui %354 : i64 to i257
                    %368 = arith.muli %366, %367 : i257
                    %369 = arith.extsi %362 : i193 to i258
                    %370 = arith.extsi %368 : i257 to i258
                    %371 = arith.addi %369, %370 : i258
                    %372 = arith.extsi %c32_i32 : i32 to i258
                    %373 = arith.shrsi %371, %372 : i258
                    %374 = arith.extui %354 : i64 to i258
                    %375 = arith.cmpi slt, %373, %374 : i258
                    %376 = arith.extsi %373 : i258 to i259
                    %377 = arith.extui %354 : i64 to i259
                    %378 = arith.subi %376, %377 : i259
                    %379 = arith.extsi %373 : i258 to i260
                    %380 = arith.extsi %378 : i259 to i260
                    %381 = arith.select %375, %379, %380 : i260
                    %382 = arith.trunci %381 {unsigned} : i260 to i128
                    affine.store %382, %342[%c0] {to = "mont_redc", unsigned} : memref<1xi128>
                    %383 = affine.load %342[0] {from = "mont_redc", unsigned} : memref<1xi128>
                    %384 = arith.trunci %383 {unsigned} : i128 to i32
                    %385 = affine.load %282[0] {from = "bv_275", unsigned} : memref<1xi3>
                    %386 = arith.index_cast %385 {unsigned} : i3 to index
                    %387 = affine.load %286[0] {from = "rv_276", unsigned} : memref<1xi8>
                    %388 = arith.index_cast %387 {unsigned} : i8 to index
                    memref.store %384, %41[%386, %388, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                  } {loop_name = "i", op_name = "bflyfn_43"}
                } else {
                  %238 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                  %c2_i32 = arith.constant 2 : i32
                  %239 = arith.extui %238 : i16 to i32
                  %240 = arith.cmpi eq, %239, %c2_i32 : i32
                  scf.if %240 {
                    %241 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %242 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                    %243 = hcl.int_to_struct(%242) {unsigned} : i128 -> <i6, i1, i9, i9, i32, i32, i39>
                    affine.store %243, %241[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                    %244 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                    hcl.print(%244) {format = "ip=%d ", signedness = "u"} : i5
                    %245 = affine.load %241[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %246 = hcl.struct_get %245[2] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                    %247 = hcl.struct_get %245[3] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                    %248 = hcl.struct_get %245[4] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                    %249 = hcl.struct_get %245[5] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                    hcl.print(%246, %247, %248, %249) {format = "pmuli res=%d w=%d imm=%d q=%d", signedness = "uuuu"} : i9, i9, i32, i32
                    hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                    %250 = memref.alloc() {name = "rfaddr_290"} : memref<1x!hcl.struct<i7, i2>>
                    %251 = affine.load %241[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %252 = hcl.struct_get %251[2] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                    %253 = hcl.int_to_struct(%252) {unsigned} : i9 -> <i7, i2>
                    affine.store %253, %250[%c0] {to = "rfaddr_290"} : memref<1x!hcl.struct<i7, i2>>
                    %254 = memref.alloc() {name = "bv_291"} : memref<1xi3>
                    %255 = affine.load %250[0] {from = "rfaddr_290"} : memref<1x!hcl.struct<i7, i2>>
                    %256 = hcl.struct_get %255[1] : <i7, i2> -> i2
                    %257 = arith.extui %256 {unsigned} : i2 to i3
                    affine.store %257, %254[%c0] {to = "bv_291", unsigned} : memref<1xi3>
                    %258 = memref.alloc() {name = "rv_292"} : memref<1xi8>
                    %259 = affine.load %250[0] {from = "rfaddr_290"} : memref<1x!hcl.struct<i7, i2>>
                    %260 = hcl.struct_get %259[0] : <i7, i2> -> i7
                    %261 = arith.extui %260 {unsigned} : i7 to i8
                    affine.store %261, %258[%c0] {to = "rv_292", unsigned} : memref<1xi8>
                    %262 = memref.alloc() {name = "rfaddr_293"} : memref<1x!hcl.struct<i7, i2>>
                    %263 = affine.load %241[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                    %264 = hcl.struct_get %263[3] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                    %265 = hcl.int_to_struct(%264) {unsigned} : i9 -> <i7, i2>
                    affine.store %265, %262[%c0] {to = "rfaddr_293"} : memref<1x!hcl.struct<i7, i2>>
                    %266 = memref.alloc() {name = "bv_294"} : memref<1xi3>
                    %267 = affine.load %262[0] {from = "rfaddr_293"} : memref<1x!hcl.struct<i7, i2>>
                    %268 = hcl.struct_get %267[1] : <i7, i2> -> i2
                    %269 = arith.extui %268 {unsigned} : i2 to i3
                    affine.store %269, %266[%c0] {to = "bv_294", unsigned} : memref<1xi3>
                    %270 = memref.alloc() {name = "rv_295"} : memref<1xi8>
                    %271 = affine.load %262[0] {from = "rfaddr_293"} : memref<1x!hcl.struct<i7, i2>>
                    %272 = hcl.struct_get %271[0] : <i7, i2> -> i7
                    %273 = arith.extui %272 {unsigned} : i7 to i8
                    affine.store %273, %270[%c0] {to = "rv_295", unsigned} : memref<1xi8>
                    affine.for %arg2 = 0 to 8192 {
                      %274 = memref.alloc() {name = "_a_296"} : memref<1xi64>
                      %275 = arith.extsi %c0_i32 {unsigned} : i32 to i64
                      affine.store %275, %274[%c0] {to = "_a_296", unsigned} : memref<1xi64>
                      %276 = memref.alloc() {name = "_b_297"} : memref<1xi64>
                      %277 = affine.load %241[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                      %278 = hcl.struct_get %277[4] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                      %279 = arith.extui %278 {unsigned} : i32 to i64
                      affine.store %279, %276[%c0] {to = "_b_297", unsigned} : memref<1xi64>
                      %280 = memref.alloc() {name = "_w_298"} : memref<1xi64>
                      %281 = affine.load %266[0] {from = "bv_294", unsigned} : memref<1xi3>
                      %282 = arith.index_cast %281 {unsigned} : i3 to index
                      %283 = affine.load %270[0] {from = "rv_295", unsigned} : memref<1xi8>
                      %284 = arith.index_cast %283 {unsigned} : i8 to index
                      %285 = memref.load %41[%282, %284, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                      %286 = arith.extui %285 {unsigned} : i32 to i64
                      affine.store %286, %280[%c0] {to = "_w_298", unsigned} : memref<1xi64>
                      %287 = memref.alloc() {name = "_q_299"} : memref<1xi64>
                      %288 = affine.load %241[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmuli"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                      %289 = hcl.struct_get %288[5] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                      %290 = arith.extui %289 {unsigned} : i32 to i64
                      affine.store %290, %287[%c0] {to = "_q_299", unsigned} : memref<1xi64>
                      %291 = memref.alloc() {name = "assert_cond_300"} : memref<1xi1>
                      %292 = affine.load %287[0] {from = "_q_299", unsigned} : memref<1xi64>
                      %c4294967295_i64 = arith.constant 4294967295 : i64
                      %293 = arith.andi %292, %c4294967295_i64 : i64
                      %294 = arith.extsi %c1_i32 : i32 to i64
                      %295 = arith.cmpi eq, %293, %294 : i64
                      affine.store %295, %291[%c0] {to = "assert_cond_300", unsigned} : memref<1xi1>
                      %296 = affine.load %291[0] {from = "assert_cond_300", unsigned} : memref<1xi1>
                      %297 = arith.extui %296 : i1 to i32
                      %298 = arith.cmpi eq, %297, %c0_i32 : i32
                      scf.if %298 {
                        %346 = affine.load %287[0] {from = "_q_299", unsigned} : memref<1xi64>
                        hcl.print(%346) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                        scf.while : () -> () {
                          %347 = affine.load %291[0] {from = "assert_cond_300", unsigned} : memref<1xi1>
                          %348 = arith.extui %347 : i1 to i32
                          %349 = arith.cmpi ne, %348, %c1_i32 : i32
                          scf.condition(%349)
                        } do {
                          affine.store %3, %291[0] {to = "assert_cond_300", unsigned} : memref<1xi1>
                          scf.yield
                        }
                      }
                      %299 = memref.alloc() {name = "mont_redc_301"} : memref<1xi128>
                      %300 = affine.load %280[0] {from = "_w_298", unsigned} : memref<1xi64>
                      %301 = affine.load %276[0] {from = "_b_297", unsigned} : memref<1xi64>
                      %302 = arith.extui %300 {unsigned} : i64 to i128
                      %303 = arith.extui %301 {unsigned} : i64 to i128
                      %304 = arith.muli %302, %303 {unsigned} : i128
                      %c-1_i32 = arith.constant -1 : i32
                      %305 = arith.extui %304 : i128 to i160
                      %306 = arith.extsi %c-1_i32 : i32 to i160
                      %307 = arith.muli %305, %306 : i160
                      %308 = arith.trunci %307 {unsigned} : i160 to i128
                      %309 = arith.extsi %c4294967295_i64 : i64 to i128
                      %310 = arith.andi %308, %309 : i128
                      %311 = affine.load %287[0] {from = "_q_299", unsigned} : memref<1xi64>
                      %312 = arith.extsi %310 : i128 to i192
                      %313 = arith.extui %311 : i64 to i192
                      %314 = arith.muli %312, %313 : i192
                      %315 = arith.extui %304 : i128 to i193
                      %316 = arith.extsi %314 : i192 to i193
                      %317 = arith.addi %315, %316 : i193
                      %c32_i32 = arith.constant 32 : i32
                      %318 = arith.extsi %c32_i32 : i32 to i193
                      %319 = arith.shrsi %317, %318 : i193
                      %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                      %320 = arith.muli %319, %c18446744073709551615_i193 : i193
                      %321 = arith.extsi %c4294967295_i64 : i64 to i193
                      %322 = arith.andi %320, %321 : i193
                      %323 = arith.extsi %322 : i193 to i257
                      %324 = arith.extui %311 : i64 to i257
                      %325 = arith.muli %323, %324 : i257
                      %326 = arith.extsi %319 : i193 to i258
                      %327 = arith.extsi %325 : i257 to i258
                      %328 = arith.addi %326, %327 : i258
                      %329 = arith.extsi %c32_i32 : i32 to i258
                      %330 = arith.shrsi %328, %329 : i258
                      %331 = arith.extui %311 : i64 to i258
                      %332 = arith.cmpi slt, %330, %331 : i258
                      %333 = arith.extsi %330 : i258 to i259
                      %334 = arith.extui %311 : i64 to i259
                      %335 = arith.subi %333, %334 : i259
                      %336 = arith.extsi %330 : i258 to i260
                      %337 = arith.extsi %335 : i259 to i260
                      %338 = arith.select %332, %336, %337 : i260
                      %339 = arith.trunci %338 {unsigned} : i260 to i128
                      affine.store %339, %299[%c0] {to = "mont_redc_301", unsigned} : memref<1xi128>
                      %340 = affine.load %299[0] {from = "mont_redc_301", unsigned} : memref<1xi128>
                      %341 = arith.trunci %340 {unsigned} : i128 to i32
                      %342 = affine.load %254[0] {from = "bv_291", unsigned} : memref<1xi3>
                      %343 = arith.index_cast %342 {unsigned} : i3 to index
                      %344 = affine.load %258[0] {from = "rv_292", unsigned} : memref<1xi8>
                      %345 = arith.index_cast %344 {unsigned} : i8 to index
                      memref.store %341, %41[%343, %345, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                    } {loop_name = "i", op_name = "bflyfn_44"}
                  } else {
                    %241 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                    %c3_i32 = arith.constant 3 : i32
                    %242 = arith.extui %241 : i16 to i32
                    %243 = arith.cmpi eq, %242, %c3_i32 : i32
                    scf.if %243 {
                      %244 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %245 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                      %246 = hcl.int_to_struct(%245) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
                      affine.store %246, %244[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                      %247 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                      hcl.print(%247) {format = "ip=%d ", signedness = "u"} : i5
                      %248 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %249 = hcl.struct_get %248[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %250 = hcl.struct_get %248[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %251 = hcl.struct_get %248[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %252 = hcl.struct_get %248[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                      hcl.print(%249, %250, %251, %252) {format = "pmac res=%d w=%d b=%d q=%d", signedness = "uuuu"} : i9, i9, i9, i32
                      hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                      %253 = memref.alloc() {name = "rfaddr_303"} : memref<1x!hcl.struct<i7, i2>>
                      %254 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %255 = hcl.struct_get %254[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %256 = hcl.int_to_struct(%255) {unsigned} : i9 -> <i7, i2>
                      affine.store %256, %253[%c0] {to = "rfaddr_303"} : memref<1x!hcl.struct<i7, i2>>
                      %257 = memref.alloc() {name = "bv_304"} : memref<1xi3>
                      %258 = affine.load %253[0] {from = "rfaddr_303"} : memref<1x!hcl.struct<i7, i2>>
                      %259 = hcl.struct_get %258[1] : <i7, i2> -> i2
                      %260 = arith.extui %259 {unsigned} : i2 to i3
                      affine.store %260, %257[%c0] {to = "bv_304", unsigned} : memref<1xi3>
                      %261 = memref.alloc() {name = "rv_305"} : memref<1xi8>
                      %262 = affine.load %253[0] {from = "rfaddr_303"} : memref<1x!hcl.struct<i7, i2>>
                      %263 = hcl.struct_get %262[0] : <i7, i2> -> i7
                      %264 = arith.extui %263 {unsigned} : i7 to i8
                      affine.store %264, %261[%c0] {to = "rv_305", unsigned} : memref<1xi8>
                      %265 = memref.alloc() {name = "rfaddr_306"} : memref<1x!hcl.struct<i7, i2>>
                      %266 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %267 = hcl.struct_get %266[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %268 = hcl.int_to_struct(%267) {unsigned} : i9 -> <i7, i2>
                      affine.store %268, %265[%c0] {to = "rfaddr_306"} : memref<1x!hcl.struct<i7, i2>>
                      %269 = memref.alloc() {name = "bv_307"} : memref<1xi3>
                      %270 = affine.load %265[0] {from = "rfaddr_306"} : memref<1x!hcl.struct<i7, i2>>
                      %271 = hcl.struct_get %270[1] : <i7, i2> -> i2
                      %272 = arith.extui %271 {unsigned} : i2 to i3
                      affine.store %272, %269[%c0] {to = "bv_307", unsigned} : memref<1xi3>
                      %273 = memref.alloc() {name = "rv_308"} : memref<1xi8>
                      %274 = affine.load %265[0] {from = "rfaddr_306"} : memref<1x!hcl.struct<i7, i2>>
                      %275 = hcl.struct_get %274[0] : <i7, i2> -> i7
                      %276 = arith.extui %275 {unsigned} : i7 to i8
                      affine.store %276, %273[%c0] {to = "rv_308", unsigned} : memref<1xi8>
                      %277 = memref.alloc() {name = "assert_cond_309"} : memref<1xi1>
                      %278 = affine.load %257[0] {from = "bv_304", unsigned} : memref<1xi3>
                      %279 = affine.load %269[0] {from = "bv_307", unsigned} : memref<1xi3>
                      %280 = arith.cmpi ne, %278, %279 {unsigned} : i3
                      affine.store %280, %277[%c0] {to = "assert_cond_309", unsigned} : memref<1xi1>
                      %281 = affine.load %277[0] {from = "assert_cond_309", unsigned} : memref<1xi1>
                      %282 = arith.extui %281 : i1 to i32
                      %283 = arith.cmpi eq, %282, %c0_i32 : i32
                      scf.if %283 {
                        hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: pmac read bank conflict\0A\0A", signedness = "_"} : i32
                        scf.while : () -> () {
                          %359 = affine.load %277[0] {from = "assert_cond_309", unsigned} : memref<1xi1>
                          %360 = arith.extui %359 : i1 to i32
                          %361 = arith.cmpi ne, %360, %c1_i32 : i32
                          scf.condition(%361)
                        } do {
                          affine.store %3, %277[0] {to = "assert_cond_309", unsigned} : memref<1xi1>
                          scf.yield
                        }
                      }
                      %284 = memref.alloc() {name = "rfaddr_310"} : memref<1x!hcl.struct<i7, i2>>
                      %285 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %286 = hcl.struct_get %285[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %287 = hcl.int_to_struct(%286) {unsigned} : i9 -> <i7, i2>
                      affine.store %287, %284[%c0] {to = "rfaddr_310"} : memref<1x!hcl.struct<i7, i2>>
                      %288 = memref.alloc() {name = "bv_311"} : memref<1xi3>
                      %289 = affine.load %284[0] {from = "rfaddr_310"} : memref<1x!hcl.struct<i7, i2>>
                      %290 = hcl.struct_get %289[1] : <i7, i2> -> i2
                      %291 = arith.extui %290 {unsigned} : i2 to i3
                      affine.store %291, %288[%c0] {to = "bv_311", unsigned} : memref<1xi3>
                      %292 = memref.alloc() {name = "rv_312"} : memref<1xi8>
                      %293 = affine.load %284[0] {from = "rfaddr_310"} : memref<1x!hcl.struct<i7, i2>>
                      %294 = hcl.struct_get %293[0] : <i7, i2> -> i7
                      %295 = arith.extui %294 {unsigned} : i7 to i8
                      affine.store %295, %292[%c0] {to = "rv_312", unsigned} : memref<1xi8>
                      %296 = memref.alloc() {name = "tmp_assert"} : memref<1xi1>
                      %297 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                      affine.store %297, %296[%c0] {to = "tmp_assert", unsigned} : memref<1xi1>
                      %298 = memref.alloc() {name = "assert_cond_314"} : memref<1xi1>
                      %299 = affine.load %288[0] {from = "bv_311", unsigned} : memref<1xi3>
                      %300 = affine.load %257[0] {from = "bv_304", unsigned} : memref<1xi3>
                      %301 = arith.cmpi ne, %299, %300 {unsigned} : i3
                      %302 = arith.andi %true, %301 {unsigned} : i1
                      %303 = affine.load %269[0] {from = "bv_307", unsigned} : memref<1xi3>
                      %304 = arith.cmpi ne, %299, %303 {unsigned} : i3
                      %305 = arith.andi %302, %304 {unsigned} : i1
                      %306 = arith.extui %305 : i1 to i32
                      %307 = arith.cmpi eq, %306, %c1_i32 : i32
                      affine.store %307, %298[%c0] {to = "assert_cond_314", unsigned} : memref<1xi1>
                      %308 = affine.load %298[0] {from = "assert_cond_314", unsigned} : memref<1xi1>
                      %309 = arith.extui %308 : i1 to i32
                      %310 = arith.cmpi eq, %309, %c0_i32 : i32
                      scf.if %310 {
                        hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: pmac input bank conflict\0A\0A", signedness = "_"} : i32
                        scf.while : () -> () {
                          %359 = affine.load %298[0] {from = "assert_cond_314", unsigned} : memref<1xi1>
                          %360 = arith.extui %359 : i1 to i32
                          %361 = arith.cmpi ne, %360, %c1_i32 : i32
                          scf.condition(%361)
                        } do {
                          affine.store %3, %298[0] {to = "assert_cond_314", unsigned} : memref<1xi1>
                          scf.yield
                        }
                      }
                      %311 = memref.alloc() {name = "rfaddr_315"} : memref<1x!hcl.struct<i7, i2>>
                      %312 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %313 = hcl.struct_get %312[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %314 = hcl.int_to_struct(%313) {unsigned} : i9 -> <i7, i2>
                      affine.store %314, %311[%c0] {to = "rfaddr_315"} : memref<1x!hcl.struct<i7, i2>>
                      %315 = memref.alloc() {name = "bv_316"} : memref<1xi3>
                      %316 = affine.load %311[0] {from = "rfaddr_315"} : memref<1x!hcl.struct<i7, i2>>
                      %317 = hcl.struct_get %316[1] : <i7, i2> -> i2
                      %318 = arith.extui %317 {unsigned} : i2 to i3
                      affine.store %318, %315[%c0] {to = "bv_316", unsigned} : memref<1xi3>
                      %319 = memref.alloc() {name = "rv_317"} : memref<1xi8>
                      %320 = affine.load %311[0] {from = "rfaddr_315"} : memref<1x!hcl.struct<i7, i2>>
                      %321 = hcl.struct_get %320[0] : <i7, i2> -> i7
                      %322 = arith.extui %321 {unsigned} : i7 to i8
                      affine.store %322, %319[%c0] {to = "rv_317", unsigned} : memref<1xi8>
                      %323 = memref.alloc() {name = "rfaddr_318"} : memref<1x!hcl.struct<i7, i2>>
                      %324 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %325 = hcl.struct_get %324[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %326 = hcl.int_to_struct(%325) {unsigned} : i9 -> <i7, i2>
                      affine.store %326, %323[%c0] {to = "rfaddr_318"} : memref<1x!hcl.struct<i7, i2>>
                      %327 = memref.alloc() {name = "bv_319"} : memref<1xi3>
                      %328 = affine.load %323[0] {from = "rfaddr_318"} : memref<1x!hcl.struct<i7, i2>>
                      %329 = hcl.struct_get %328[1] : <i7, i2> -> i2
                      %330 = arith.extui %329 {unsigned} : i2 to i3
                      affine.store %330, %327[%c0] {to = "bv_319", unsigned} : memref<1xi3>
                      %331 = memref.alloc() {name = "rv_320"} : memref<1xi8>
                      %332 = affine.load %323[0] {from = "rfaddr_318"} : memref<1x!hcl.struct<i7, i2>>
                      %333 = hcl.struct_get %332[0] : <i7, i2> -> i7
                      %334 = arith.extui %333 {unsigned} : i7 to i8
                      affine.store %334, %331[%c0] {to = "rv_320", unsigned} : memref<1xi8>
                      %335 = memref.alloc() {name = "rfaddr_321"} : memref<1x!hcl.struct<i7, i2>>
                      %336 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %337 = hcl.struct_get %336[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %338 = hcl.int_to_struct(%337) {unsigned} : i9 -> <i7, i2>
                      affine.store %338, %335[%c0] {to = "rfaddr_321"} : memref<1x!hcl.struct<i7, i2>>
                      %339 = memref.alloc() {name = "bv_322"} : memref<1xi3>
                      %340 = affine.load %335[0] {from = "rfaddr_321"} : memref<1x!hcl.struct<i7, i2>>
                      %341 = hcl.struct_get %340[1] : <i7, i2> -> i2
                      %342 = arith.extui %341 {unsigned} : i2 to i3
                      affine.store %342, %339[%c0] {to = "bv_322", unsigned} : memref<1xi3>
                      %343 = memref.alloc() {name = "rv_323"} : memref<1xi8>
                      %344 = affine.load %335[0] {from = "rfaddr_321"} : memref<1x!hcl.struct<i7, i2>>
                      %345 = hcl.struct_get %344[0] : <i7, i2> -> i7
                      %346 = arith.extui %345 {unsigned} : i7 to i8
                      affine.store %346, %343[%c0] {to = "rv_323", unsigned} : memref<1xi8>
                      %347 = memref.alloc() {name = "rfaddr_324"} : memref<1x!hcl.struct<i7, i2>>
                      %348 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                      %349 = hcl.struct_get %348[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                      %350 = hcl.int_to_struct(%349) {unsigned} : i9 -> <i7, i2>
                      affine.store %350, %347[%c0] {to = "rfaddr_324"} : memref<1x!hcl.struct<i7, i2>>
                      %351 = memref.alloc() {name = "bv_325"} : memref<1xi3>
                      %352 = affine.load %347[0] {from = "rfaddr_324"} : memref<1x!hcl.struct<i7, i2>>
                      %353 = hcl.struct_get %352[1] : <i7, i2> -> i2
                      %354 = arith.extui %353 {unsigned} : i2 to i3
                      affine.store %354, %351[%c0] {to = "bv_325", unsigned} : memref<1xi3>
                      %355 = memref.alloc() {name = "rv_326"} : memref<1xi8>
                      %356 = affine.load %347[0] {from = "rfaddr_324"} : memref<1x!hcl.struct<i7, i2>>
                      %357 = hcl.struct_get %356[0] : <i7, i2> -> i7
                      %358 = arith.extui %357 {unsigned} : i7 to i8
                      affine.store %358, %355[%c0] {to = "rv_326", unsigned} : memref<1xi8>
                      affine.for %arg2 = 0 to 8192 {
                        %359 = memref.alloc() {name = "_a_327"} : memref<1xi64>
                        %360 = affine.load %327[0] {from = "bv_319", unsigned} : memref<1xi3>
                        %361 = arith.index_cast %360 {unsigned} : i3 to index
                        %362 = affine.load %331[0] {from = "rv_320", unsigned} : memref<1xi8>
                        %363 = arith.index_cast %362 {unsigned} : i8 to index
                        %364 = memref.load %41[%361, %363, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %365 = arith.extui %364 {unsigned} : i32 to i64
                        affine.store %365, %359[%c0] {to = "_a_327", unsigned} : memref<1xi64>
                        %366 = memref.alloc() {name = "_b_328"} : memref<1xi64>
                        %367 = affine.load %351[0] {from = "bv_325", unsigned} : memref<1xi3>
                        %368 = arith.index_cast %367 {unsigned} : i3 to index
                        %369 = affine.load %355[0] {from = "rv_326", unsigned} : memref<1xi8>
                        %370 = arith.index_cast %369 {unsigned} : i8 to index
                        %371 = memref.load %41[%368, %370, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %372 = arith.extui %371 {unsigned} : i32 to i64
                        affine.store %372, %366[%c0] {to = "_b_328", unsigned} : memref<1xi64>
                        %373 = memref.alloc() {name = "_w_329"} : memref<1xi64>
                        %374 = affine.load %339[0] {from = "bv_322", unsigned} : memref<1xi3>
                        %375 = arith.index_cast %374 {unsigned} : i3 to index
                        %376 = affine.load %343[0] {from = "rv_323", unsigned} : memref<1xi8>
                        %377 = arith.index_cast %376 {unsigned} : i8 to index
                        %378 = memref.load %41[%375, %377, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                        %379 = arith.extui %378 {unsigned} : i32 to i64
                        affine.store %379, %373[%c0] {to = "_w_329", unsigned} : memref<1xi64>
                        %380 = memref.alloc() {name = "_q_330"} : memref<1xi64>
                        %381 = affine.load %244[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmac"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                        %382 = hcl.struct_get %381[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                        %383 = arith.extui %382 {unsigned} : i32 to i64
                        affine.store %383, %380[%c0] {to = "_q_330", unsigned} : memref<1xi64>
                        %384 = memref.alloc() {name = "assert_cond_331"} : memref<1xi1>
                        %385 = affine.load %380[0] {from = "_q_330", unsigned} : memref<1xi64>
                        %c4294967295_i64 = arith.constant 4294967295 : i64
                        %386 = arith.andi %385, %c4294967295_i64 : i64
                        %387 = arith.extsi %c1_i32 : i32 to i64
                        %388 = arith.cmpi eq, %386, %387 : i64
                        affine.store %388, %384[%c0] {to = "assert_cond_331", unsigned} : memref<1xi1>
                        %389 = affine.load %384[0] {from = "assert_cond_331", unsigned} : memref<1xi1>
                        %390 = arith.extui %389 : i1 to i32
                        %391 = arith.cmpi eq, %390, %c0_i32 : i32
                        scf.if %391 {
                          %446 = affine.load %380[0] {from = "_q_330", unsigned} : memref<1xi64>
                          hcl.print(%446) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                          scf.while : () -> () {
                            %447 = affine.load %384[0] {from = "assert_cond_331", unsigned} : memref<1xi1>
                            %448 = arith.extui %447 : i1 to i32
                            %449 = arith.cmpi ne, %448, %c1_i32 : i32
                            scf.condition(%449)
                          } do {
                            affine.store %3, %384[0] {to = "assert_cond_331", unsigned} : memref<1xi1>
                            scf.yield
                          }
                        }
                        %392 = memref.alloc() {name = "mont_redc_332"} : memref<1xi128>
                        %393 = affine.load %373[0] {from = "_w_329", unsigned} : memref<1xi64>
                        %394 = affine.load %366[0] {from = "_b_328", unsigned} : memref<1xi64>
                        %395 = arith.extui %393 {unsigned} : i64 to i128
                        %396 = arith.extui %394 {unsigned} : i64 to i128
                        %397 = arith.muli %395, %396 {unsigned} : i128
                        %c-1_i32 = arith.constant -1 : i32
                        %398 = arith.extui %397 : i128 to i160
                        %399 = arith.extsi %c-1_i32 : i32 to i160
                        %400 = arith.muli %398, %399 : i160
                        %401 = arith.trunci %400 {unsigned} : i160 to i128
                        %402 = arith.extsi %c4294967295_i64 : i64 to i128
                        %403 = arith.andi %401, %402 : i128
                        %404 = affine.load %380[0] {from = "_q_330", unsigned} : memref<1xi64>
                        %405 = arith.extsi %403 : i128 to i192
                        %406 = arith.extui %404 : i64 to i192
                        %407 = arith.muli %405, %406 : i192
                        %408 = arith.extui %397 : i128 to i193
                        %409 = arith.extsi %407 : i192 to i193
                        %410 = arith.addi %408, %409 : i193
                        %c32_i32 = arith.constant 32 : i32
                        %411 = arith.extsi %c32_i32 : i32 to i193
                        %412 = arith.shrsi %410, %411 : i193
                        %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                        %413 = arith.muli %412, %c18446744073709551615_i193 : i193
                        %414 = arith.extsi %c4294967295_i64 : i64 to i193
                        %415 = arith.andi %413, %414 : i193
                        %416 = arith.extsi %415 : i193 to i257
                        %417 = arith.extui %404 : i64 to i257
                        %418 = arith.muli %416, %417 : i257
                        %419 = arith.extsi %412 : i193 to i258
                        %420 = arith.extsi %418 : i257 to i258
                        %421 = arith.addi %419, %420 : i258
                        %422 = arith.extsi %c32_i32 : i32 to i258
                        %423 = arith.shrsi %421, %422 : i258
                        %424 = arith.extui %404 : i64 to i258
                        %425 = arith.cmpi slt, %423, %424 : i258
                        %426 = arith.extsi %423 : i258 to i259
                        %427 = arith.extui %404 : i64 to i259
                        %428 = arith.subi %426, %427 : i259
                        %429 = arith.extsi %423 : i258 to i260
                        %430 = arith.extsi %428 : i259 to i260
                        %431 = arith.select %425, %429, %430 : i260
                        %432 = arith.trunci %431 {unsigned} : i260 to i128
                        affine.store %432, %392[%c0] {to = "mont_redc_332", unsigned} : memref<1xi128>
                        %433 = affine.load %359[0] {from = "_a_327", unsigned} : memref<1xi64>
                        %434 = affine.load %392[0] {from = "mont_redc_332", unsigned} : memref<1xi128>
                        %435 = arith.extui %433 {unsigned} : i64 to i129
                        %436 = arith.extui %434 {unsigned} : i128 to i129
                        %437 = arith.addi %435, %436 {unsigned} : i129
                        %438 = affine.load %380[0] {from = "_q_330", unsigned} : memref<1xi64>
                        %439 = arith.extui %438 {unsigned} : i64 to i129
                        %440 = arith.remui %437, %439 {unsigned} : i129
                        %441 = arith.trunci %440 {unsigned} : i129 to i32
                        %442 = affine.load %315[0] {from = "bv_316", unsigned} : memref<1xi3>
                        %443 = arith.index_cast %442 {unsigned} : i3 to index
                        %444 = affine.load %319[0] {from = "rv_317", unsigned} : memref<1xi8>
                        %445 = arith.index_cast %444 {unsigned} : i8 to index
                        memref.store %441, %41[%443, %445, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                      } {loop_name = "i", op_name = "bflyfn_45"}
                    } else {
                      %244 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                      %245 = arith.extui %244 : i16 to i32
                      %246 = arith.cmpi eq, %245, %c4_i32 : i32
                      scf.if %246 {
                        %247 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %248 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                        %249 = hcl.int_to_struct(%248) {unsigned} : i128 -> <i6, i1, i9, i9, i32, i32, i39>
                        affine.store %249, %247[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                        %250 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                        hcl.print(%250) {format = "ip=%d ", signedness = "u"} : i5
                        %251 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %252 = hcl.struct_get %251[2] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %253 = hcl.struct_get %251[3] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %254 = hcl.struct_get %251[4] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                        %255 = hcl.struct_get %251[5] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                        hcl.print(%252, %253, %254, %255) {format = "pmaci res=%d w=%d imm=%d q=%d", signedness = "uuuu"} : i9, i9, i32, i32
                        hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                        %256 = memref.alloc() {name = "rfaddr_334"} : memref<1x!hcl.struct<i7, i2>>
                        %257 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %258 = hcl.struct_get %257[2] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %259 = hcl.int_to_struct(%258) {unsigned} : i9 -> <i7, i2>
                        affine.store %259, %256[%c0] {to = "rfaddr_334"} : memref<1x!hcl.struct<i7, i2>>
                        %260 = memref.alloc() {name = "bv_335"} : memref<1xi3>
                        %261 = affine.load %256[0] {from = "rfaddr_334"} : memref<1x!hcl.struct<i7, i2>>
                        %262 = hcl.struct_get %261[1] : <i7, i2> -> i2
                        %263 = arith.extui %262 {unsigned} : i2 to i3
                        affine.store %263, %260[%c0] {to = "bv_335", unsigned} : memref<1xi3>
                        %264 = memref.alloc() {name = "rv_336"} : memref<1xi8>
                        %265 = affine.load %256[0] {from = "rfaddr_334"} : memref<1x!hcl.struct<i7, i2>>
                        %266 = hcl.struct_get %265[0] : <i7, i2> -> i7
                        %267 = arith.extui %266 {unsigned} : i7 to i8
                        affine.store %267, %264[%c0] {to = "rv_336", unsigned} : memref<1xi8>
                        %268 = memref.alloc() {name = "rfaddr_337"} : memref<1x!hcl.struct<i7, i2>>
                        %269 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %270 = hcl.struct_get %269[3] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %271 = hcl.int_to_struct(%270) {unsigned} : i9 -> <i7, i2>
                        affine.store %271, %268[%c0] {to = "rfaddr_337"} : memref<1x!hcl.struct<i7, i2>>
                        %272 = memref.alloc() {name = "bv_338"} : memref<1xi3>
                        %273 = affine.load %268[0] {from = "rfaddr_337"} : memref<1x!hcl.struct<i7, i2>>
                        %274 = hcl.struct_get %273[1] : <i7, i2> -> i2
                        %275 = arith.extui %274 {unsigned} : i2 to i3
                        affine.store %275, %272[%c0] {to = "bv_338", unsigned} : memref<1xi3>
                        %276 = memref.alloc() {name = "rv_339"} : memref<1xi8>
                        %277 = affine.load %268[0] {from = "rfaddr_337"} : memref<1x!hcl.struct<i7, i2>>
                        %278 = hcl.struct_get %277[0] : <i7, i2> -> i7
                        %279 = arith.extui %278 {unsigned} : i7 to i8
                        affine.store %279, %276[%c0] {to = "rv_339", unsigned} : memref<1xi8>
                        %280 = memref.alloc() {name = "assert_cond_340"} : memref<1xi1>
                        %281 = affine.load %260[0] {from = "bv_335", unsigned} : memref<1xi3>
                        %282 = affine.load %272[0] {from = "bv_338", unsigned} : memref<1xi3>
                        %283 = arith.cmpi ne, %281, %282 {unsigned} : i3
                        affine.store %283, %280[%c0] {to = "assert_cond_340", unsigned} : memref<1xi1>
                        %284 = affine.load %280[0] {from = "assert_cond_340", unsigned} : memref<1xi1>
                        %285 = arith.extui %284 : i1 to i32
                        %286 = arith.cmpi eq, %285, %c0_i32 : i32
                        scf.if %286 {
                          hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: pmaci read bank conflict\0A\0A", signedness = "_"} : i32
                          scf.while : () -> () {
                            %323 = affine.load %280[0] {from = "assert_cond_340", unsigned} : memref<1xi1>
                            %324 = arith.extui %323 : i1 to i32
                            %325 = arith.cmpi ne, %324, %c1_i32 : i32
                            scf.condition(%325)
                          } do {
                            affine.store %3, %280[0] {to = "assert_cond_340", unsigned} : memref<1xi1>
                            scf.yield
                          }
                        }
                        %287 = memref.alloc() {name = "rfaddr_341"} : memref<1x!hcl.struct<i7, i2>>
                        %288 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %289 = hcl.struct_get %288[2] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %290 = hcl.int_to_struct(%289) {unsigned} : i9 -> <i7, i2>
                        affine.store %290, %287[%c0] {to = "rfaddr_341"} : memref<1x!hcl.struct<i7, i2>>
                        %291 = memref.alloc() {name = "bv_342"} : memref<1xi3>
                        %292 = affine.load %287[0] {from = "rfaddr_341"} : memref<1x!hcl.struct<i7, i2>>
                        %293 = hcl.struct_get %292[1] : <i7, i2> -> i2
                        %294 = arith.extui %293 {unsigned} : i2 to i3
                        affine.store %294, %291[%c0] {to = "bv_342", unsigned} : memref<1xi3>
                        %295 = memref.alloc() {name = "rv_343"} : memref<1xi8>
                        %296 = affine.load %287[0] {from = "rfaddr_341"} : memref<1x!hcl.struct<i7, i2>>
                        %297 = hcl.struct_get %296[0] : <i7, i2> -> i7
                        %298 = arith.extui %297 {unsigned} : i7 to i8
                        affine.store %298, %295[%c0] {to = "rv_343", unsigned} : memref<1xi8>
                        %299 = memref.alloc() {name = "rfaddr_344"} : memref<1x!hcl.struct<i7, i2>>
                        %300 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %301 = hcl.struct_get %300[2] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %302 = hcl.int_to_struct(%301) {unsigned} : i9 -> <i7, i2>
                        affine.store %302, %299[%c0] {to = "rfaddr_344"} : memref<1x!hcl.struct<i7, i2>>
                        %303 = memref.alloc() {name = "bv_345"} : memref<1xi3>
                        %304 = affine.load %299[0] {from = "rfaddr_344"} : memref<1x!hcl.struct<i7, i2>>
                        %305 = hcl.struct_get %304[1] : <i7, i2> -> i2
                        %306 = arith.extui %305 {unsigned} : i2 to i3
                        affine.store %306, %303[%c0] {to = "bv_345", unsigned} : memref<1xi3>
                        %307 = memref.alloc() {name = "rv_346"} : memref<1xi8>
                        %308 = affine.load %299[0] {from = "rfaddr_344"} : memref<1x!hcl.struct<i7, i2>>
                        %309 = hcl.struct_get %308[0] : <i7, i2> -> i7
                        %310 = arith.extui %309 {unsigned} : i7 to i8
                        affine.store %310, %307[%c0] {to = "rv_346", unsigned} : memref<1xi8>
                        %311 = memref.alloc() {name = "rfaddr_347"} : memref<1x!hcl.struct<i7, i2>>
                        %312 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                        %313 = hcl.struct_get %312[3] : <i6, i1, i9, i9, i32, i32, i39> -> i9
                        %314 = hcl.int_to_struct(%313) {unsigned} : i9 -> <i7, i2>
                        affine.store %314, %311[%c0] {to = "rfaddr_347"} : memref<1x!hcl.struct<i7, i2>>
                        %315 = memref.alloc() {name = "bv_348"} : memref<1xi3>
                        %316 = affine.load %311[0] {from = "rfaddr_347"} : memref<1x!hcl.struct<i7, i2>>
                        %317 = hcl.struct_get %316[1] : <i7, i2> -> i2
                        %318 = arith.extui %317 {unsigned} : i2 to i3
                        affine.store %318, %315[%c0] {to = "bv_348", unsigned} : memref<1xi3>
                        %319 = memref.alloc() {name = "rv_349"} : memref<1xi8>
                        %320 = affine.load %311[0] {from = "rfaddr_347"} : memref<1x!hcl.struct<i7, i2>>
                        %321 = hcl.struct_get %320[0] : <i7, i2> -> i7
                        %322 = arith.extui %321 {unsigned} : i7 to i8
                        affine.store %322, %319[%c0] {to = "rv_349", unsigned} : memref<1xi8>
                        affine.for %arg2 = 0 to 8192 {
                          %323 = memref.alloc() {name = "_a_350"} : memref<1xi64>
                          %324 = affine.load %303[0] {from = "bv_345", unsigned} : memref<1xi3>
                          %325 = arith.index_cast %324 {unsigned} : i3 to index
                          %326 = affine.load %307[0] {from = "rv_346", unsigned} : memref<1xi8>
                          %327 = arith.index_cast %326 {unsigned} : i8 to index
                          %328 = memref.load %41[%325, %327, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %329 = arith.extui %328 {unsigned} : i32 to i64
                          affine.store %329, %323[%c0] {to = "_a_350", unsigned} : memref<1xi64>
                          %330 = memref.alloc() {name = "_b_351"} : memref<1xi64>
                          %331 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                          %332 = hcl.struct_get %331[4] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                          %333 = arith.extui %332 {unsigned} : i32 to i64
                          affine.store %333, %330[%c0] {to = "_b_351", unsigned} : memref<1xi64>
                          %334 = memref.alloc() {name = "_w_352"} : memref<1xi64>
                          %335 = affine.load %315[0] {from = "bv_348", unsigned} : memref<1xi3>
                          %336 = arith.index_cast %335 {unsigned} : i3 to index
                          %337 = affine.load %319[0] {from = "rv_349", unsigned} : memref<1xi8>
                          %338 = arith.index_cast %337 {unsigned} : i8 to index
                          %339 = memref.load %41[%336, %338, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                          %340 = arith.extui %339 {unsigned} : i32 to i64
                          affine.store %340, %334[%c0] {to = "_w_352", unsigned} : memref<1xi64>
                          %341 = memref.alloc() {name = "_q_353"} : memref<1xi64>
                          %342 = affine.load %247[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_pmaci"} : memref<1x!hcl.struct<i6, i1, i9, i9, i32, i32, i39>>
                          %343 = hcl.struct_get %342[5] : <i6, i1, i9, i9, i32, i32, i39> -> i32
                          %344 = arith.extui %343 {unsigned} : i32 to i64
                          affine.store %344, %341[%c0] {to = "_q_353", unsigned} : memref<1xi64>
                          %345 = memref.alloc() {name = "assert_cond_354"} : memref<1xi1>
                          %346 = affine.load %341[0] {from = "_q_353", unsigned} : memref<1xi64>
                          %c4294967295_i64 = arith.constant 4294967295 : i64
                          %347 = arith.andi %346, %c4294967295_i64 : i64
                          %348 = arith.extsi %c1_i32 : i32 to i64
                          %349 = arith.cmpi eq, %347, %348 : i64
                          affine.store %349, %345[%c0] {to = "assert_cond_354", unsigned} : memref<1xi1>
                          %350 = affine.load %345[0] {from = "assert_cond_354", unsigned} : memref<1xi1>
                          %351 = arith.extui %350 : i1 to i32
                          %352 = arith.cmpi eq, %351, %c0_i32 : i32
                          scf.if %352 {
                            %407 = affine.load %341[0] {from = "_q_353", unsigned} : memref<1xi64>
                            hcl.print(%407) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                            scf.while : () -> () {
                              %408 = affine.load %345[0] {from = "assert_cond_354", unsigned} : memref<1xi1>
                              %409 = arith.extui %408 : i1 to i32
                              %410 = arith.cmpi ne, %409, %c1_i32 : i32
                              scf.condition(%410)
                            } do {
                              affine.store %3, %345[0] {to = "assert_cond_354", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %353 = memref.alloc() {name = "mont_redc_355"} : memref<1xi128>
                          %354 = affine.load %334[0] {from = "_w_352", unsigned} : memref<1xi64>
                          %355 = affine.load %330[0] {from = "_b_351", unsigned} : memref<1xi64>
                          %356 = arith.extui %354 {unsigned} : i64 to i128
                          %357 = arith.extui %355 {unsigned} : i64 to i128
                          %358 = arith.muli %356, %357 {unsigned} : i128
                          %c-1_i32 = arith.constant -1 : i32
                          %359 = arith.extui %358 : i128 to i160
                          %360 = arith.extsi %c-1_i32 : i32 to i160
                          %361 = arith.muli %359, %360 : i160
                          %362 = arith.trunci %361 {unsigned} : i160 to i128
                          %363 = arith.extsi %c4294967295_i64 : i64 to i128
                          %364 = arith.andi %362, %363 : i128
                          %365 = affine.load %341[0] {from = "_q_353", unsigned} : memref<1xi64>
                          %366 = arith.extsi %364 : i128 to i192
                          %367 = arith.extui %365 : i64 to i192
                          %368 = arith.muli %366, %367 : i192
                          %369 = arith.extui %358 : i128 to i193
                          %370 = arith.extsi %368 : i192 to i193
                          %371 = arith.addi %369, %370 : i193
                          %c32_i32 = arith.constant 32 : i32
                          %372 = arith.extsi %c32_i32 : i32 to i193
                          %373 = arith.shrsi %371, %372 : i193
                          %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                          %374 = arith.muli %373, %c18446744073709551615_i193 : i193
                          %375 = arith.extsi %c4294967295_i64 : i64 to i193
                          %376 = arith.andi %374, %375 : i193
                          %377 = arith.extsi %376 : i193 to i257
                          %378 = arith.extui %365 : i64 to i257
                          %379 = arith.muli %377, %378 : i257
                          %380 = arith.extsi %373 : i193 to i258
                          %381 = arith.extsi %379 : i257 to i258
                          %382 = arith.addi %380, %381 : i258
                          %383 = arith.extsi %c32_i32 : i32 to i258
                          %384 = arith.shrsi %382, %383 : i258
                          %385 = arith.extui %365 : i64 to i258
                          %386 = arith.cmpi slt, %384, %385 : i258
                          %387 = arith.extsi %384 : i258 to i259
                          %388 = arith.extui %365 : i64 to i259
                          %389 = arith.subi %387, %388 : i259
                          %390 = arith.extsi %384 : i258 to i260
                          %391 = arith.extsi %389 : i259 to i260
                          %392 = arith.select %386, %390, %391 : i260
                          %393 = arith.trunci %392 {unsigned} : i260 to i128
                          affine.store %393, %353[%c0] {to = "mont_redc_355", unsigned} : memref<1xi128>
                          %394 = affine.load %323[0] {from = "_a_350", unsigned} : memref<1xi64>
                          %395 = affine.load %353[0] {from = "mont_redc_355", unsigned} : memref<1xi128>
                          %396 = arith.extui %394 {unsigned} : i64 to i129
                          %397 = arith.extui %395 {unsigned} : i128 to i129
                          %398 = arith.addi %396, %397 {unsigned} : i129
                          %399 = affine.load %341[0] {from = "_q_353", unsigned} : memref<1xi64>
                          %400 = arith.extui %399 {unsigned} : i64 to i129
                          %401 = arith.remui %398, %400 {unsigned} : i129
                          %402 = arith.trunci %401 {unsigned} : i129 to i32
                          %403 = affine.load %291[0] {from = "bv_342", unsigned} : memref<1xi3>
                          %404 = arith.index_cast %403 {unsigned} : i3 to index
                          %405 = affine.load %295[0] {from = "rv_343", unsigned} : memref<1xi8>
                          %406 = arith.index_cast %405 {unsigned} : i8 to index
                          memref.store %402, %41[%404, %406, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                        } {loop_name = "i", op_name = "bflyfn_46"}
                      } else {
                        %247 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                        %c5_i32 = arith.constant 5 : i32
                        %248 = arith.extui %247 : i16 to i32
                        %249 = arith.cmpi eq, %248, %c5_i32 : i32
                        scf.if %249 {
                          %250 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %251 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                          %252 = hcl.int_to_struct(%251) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>
                          affine.store %252, %250[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                          %253 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                          hcl.print(%253) {format = "ip=%d ", signedness = "u"} : i5
                          %254 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %255 = hcl.struct_get %254[1] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i1
                          %256 = hcl.struct_get %254[2] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %257 = hcl.struct_get %254[3] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %258 = hcl.struct_get %254[4] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %259 = hcl.struct_get %254[5] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %260 = hcl.struct_get %254[6] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                          %261 = hcl.struct_get %254[7] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                          %262 = hcl.struct_get %254[8] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                          %263 = hcl.struct_get %254[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                          %264 = hcl.struct_get %254[10] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %265 = hcl.struct_get %254[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %266 = hcl.struct_get %254[12] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %267 = hcl.struct_get %254[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                          %268 = hcl.struct_get %254[14] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                          %269 = hcl.struct_get %254[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                          %270 = hcl.struct_get %254[16] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                          hcl.print(%255, %256, %257, %258, %259, %260, %261, %262, %263, %264, %265, %266, %267, %268, %269, %270) {format = "ntt twmetadataMemRdDataSel_0=%d dsttop=%d dstbot=%d srctop=%d srcbot=%d twrfmodsel=%d twrfrdaddr=%d twmetadataMemRdDataSel_3_1=%d q=%d dsttw=%d srctw=%d srcfinalstagetw=%d stagenum=%d blocknum=%d polyblocknum=%d twmetadataMemRdDataSel_5_4=%d", signedness = "uuuuuuuuuuuuuuuu"} : i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2
                          hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                          %271 = memref.alloc() {name = "assert_cond_357"} : memref<1xi1>
                          %272 = affine.load %45[0] {from = "flag_ntt", unsigned} : memref<1xi1>
                          %273 = arith.extui %272 : i1 to i32
                          %274 = arith.cmpi eq, %273, %c0_i32 : i32
                          affine.store %274, %271[%c0] {to = "assert_cond_357", unsigned} : memref<1xi1>
                          %275 = affine.load %271[0] {from = "assert_cond_357", unsigned} : memref<1xi1>
                          %276 = arith.extui %275 : i1 to i32
                          %277 = arith.cmpi eq, %276, %c0_i32 : i32
                          scf.if %277 {
                            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: NTT flag already set?\0A\0A", signedness = "_"} : i32
                            scf.while : () -> () {
                              %481 = affine.load %271[0] {from = "assert_cond_357", unsigned} : memref<1xi1>
                              %482 = arith.extui %481 : i1 to i32
                              %483 = arith.cmpi ne, %482, %c1_i32 : i32
                              scf.condition(%483)
                            } do {
                              affine.store %3, %271[0] {to = "assert_cond_357", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %278 = memref.alloc() {name = "rfaddr_358"} : memref<1x!hcl.struct<i7, i2>>
                          %279 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %280 = hcl.struct_get %279[4] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %281 = hcl.int_to_struct(%280) {unsigned} : i9 -> <i7, i2>
                          affine.store %281, %278[%c0] {to = "rfaddr_358"} : memref<1x!hcl.struct<i7, i2>>
                          %282 = memref.alloc() {name = "bv_359"} : memref<1xi3>
                          %283 = affine.load %278[0] {from = "rfaddr_358"} : memref<1x!hcl.struct<i7, i2>>
                          %284 = hcl.struct_get %283[1] : <i7, i2> -> i2
                          %285 = arith.extui %284 {unsigned} : i2 to i3
                          affine.store %285, %282[%c0] {to = "bv_359", unsigned} : memref<1xi3>
                          %286 = memref.alloc() {name = "rv_360"} : memref<1xi8>
                          %287 = affine.load %278[0] {from = "rfaddr_358"} : memref<1x!hcl.struct<i7, i2>>
                          %288 = hcl.struct_get %287[0] : <i7, i2> -> i7
                          %289 = arith.extui %288 {unsigned} : i7 to i8
                          affine.store %289, %286[%c0] {to = "rv_360", unsigned} : memref<1xi8>
                          %290 = memref.alloc() {name = "rfaddr_361"} : memref<1x!hcl.struct<i7, i2>>
                          %291 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %292 = hcl.struct_get %291[5] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %293 = hcl.int_to_struct(%292) {unsigned} : i9 -> <i7, i2>
                          affine.store %293, %290[%c0] {to = "rfaddr_361"} : memref<1x!hcl.struct<i7, i2>>
                          %294 = memref.alloc() {name = "bv_362"} : memref<1xi3>
                          %295 = affine.load %290[0] {from = "rfaddr_361"} : memref<1x!hcl.struct<i7, i2>>
                          %296 = hcl.struct_get %295[1] : <i7, i2> -> i2
                          %297 = arith.extui %296 {unsigned} : i2 to i3
                          affine.store %297, %294[%c0] {to = "bv_362", unsigned} : memref<1xi3>
                          %298 = memref.alloc() {name = "rv_363"} : memref<1xi8>
                          %299 = affine.load %290[0] {from = "rfaddr_361"} : memref<1x!hcl.struct<i7, i2>>
                          %300 = hcl.struct_get %299[0] : <i7, i2> -> i7
                          %301 = arith.extui %300 {unsigned} : i7 to i8
                          affine.store %301, %298[%c0] {to = "rv_363", unsigned} : memref<1xi8>
                          %302 = memref.alloc() {name = "assert_cond_364"} : memref<1xi1>
                          %303 = affine.load %282[0] {from = "bv_359", unsigned} : memref<1xi3>
                          %304 = affine.load %294[0] {from = "bv_362", unsigned} : memref<1xi3>
                          %305 = arith.cmpi ne, %303, %304 {unsigned} : i3
                          affine.store %305, %302[%c0] {to = "assert_cond_364", unsigned} : memref<1xi1>
                          %306 = affine.load %302[0] {from = "assert_cond_364", unsigned} : memref<1xi1>
                          %307 = arith.extui %306 : i1 to i32
                          %308 = arith.cmpi eq, %307, %c0_i32 : i32
                          scf.if %308 {
                            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ntt read bank conflict\0A\0A", signedness = "_"} : i32
                            scf.while : () -> () {
                              %481 = affine.load %302[0] {from = "assert_cond_364", unsigned} : memref<1xi1>
                              %482 = arith.extui %481 : i1 to i32
                              %483 = arith.cmpi ne, %482, %c1_i32 : i32
                              scf.condition(%483)
                            } do {
                              affine.store %3, %302[0] {to = "assert_cond_364", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %309 = memref.alloc() {name = "rfaddr_365"} : memref<1x!hcl.struct<i7, i2>>
                          %310 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %311 = hcl.struct_get %310[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %312 = hcl.int_to_struct(%311) {unsigned} : i9 -> <i7, i2>
                          affine.store %312, %309[%c0] {to = "rfaddr_365"} : memref<1x!hcl.struct<i7, i2>>
                          %313 = memref.alloc() {name = "bv_366"} : memref<1xi3>
                          %314 = affine.load %309[0] {from = "rfaddr_365"} : memref<1x!hcl.struct<i7, i2>>
                          %315 = hcl.struct_get %314[1] : <i7, i2> -> i2
                          %316 = arith.extui %315 {unsigned} : i2 to i3
                          affine.store %316, %313[%c0] {to = "bv_366", unsigned} : memref<1xi3>
                          %317 = memref.alloc() {name = "rv_367"} : memref<1xi8>
                          %318 = affine.load %309[0] {from = "rfaddr_365"} : memref<1x!hcl.struct<i7, i2>>
                          %319 = hcl.struct_get %318[0] : <i7, i2> -> i7
                          %320 = arith.extui %319 {unsigned} : i7 to i8
                          affine.store %320, %317[%c0] {to = "rv_367", unsigned} : memref<1xi8>
                          %321 = memref.alloc() {name = "tmp_assert_368"} : memref<1xi1>
                          %322 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                          affine.store %322, %321[%c0] {to = "tmp_assert_368", unsigned} : memref<1xi1>
                          %323 = memref.alloc() {name = "assert_cond_369"} : memref<1xi1>
                          %324 = affine.load %313[0] {from = "bv_366", unsigned} : memref<1xi3>
                          %325 = affine.load %282[0] {from = "bv_359", unsigned} : memref<1xi3>
                          %326 = arith.cmpi ne, %324, %325 {unsigned} : i3
                          %327 = arith.andi %true, %326 {unsigned} : i1
                          %328 = affine.load %294[0] {from = "bv_362", unsigned} : memref<1xi3>
                          %329 = arith.cmpi ne, %324, %328 {unsigned} : i3
                          %330 = arith.andi %327, %329 {unsigned} : i1
                          %331 = arith.extui %330 : i1 to i32
                          %332 = arith.cmpi eq, %331, %c1_i32 : i32
                          affine.store %332, %323[%c0] {to = "assert_cond_369", unsigned} : memref<1xi1>
                          %333 = affine.load %323[0] {from = "assert_cond_369", unsigned} : memref<1xi1>
                          %334 = arith.extui %333 : i1 to i32
                          %335 = arith.cmpi eq, %334, %c0_i32 : i32
                          scf.if %335 {
                            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ntt input bank conflict\0A\0A", signedness = "_"} : i32
                            scf.while : () -> () {
                              %481 = affine.load %323[0] {from = "assert_cond_369", unsigned} : memref<1xi1>
                              %482 = arith.extui %481 : i1 to i32
                              %483 = arith.cmpi ne, %482, %c1_i32 : i32
                              scf.condition(%483)
                            } do {
                              affine.store %3, %323[0] {to = "assert_cond_369", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %336 = memref.alloc() {name = "rfaddr_370"} : memref<1x!hcl.struct<i7, i2>>
                          %337 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %338 = hcl.struct_get %337[2] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %339 = hcl.int_to_struct(%338) {unsigned} : i9 -> <i7, i2>
                          affine.store %339, %336[%c0] {to = "rfaddr_370"} : memref<1x!hcl.struct<i7, i2>>
                          %340 = memref.alloc() {name = "bv_371"} : memref<1xi3>
                          %341 = affine.load %336[0] {from = "rfaddr_370"} : memref<1x!hcl.struct<i7, i2>>
                          %342 = hcl.struct_get %341[1] : <i7, i2> -> i2
                          %343 = arith.extui %342 {unsigned} : i2 to i3
                          affine.store %343, %340[%c0] {to = "bv_371", unsigned} : memref<1xi3>
                          %344 = memref.alloc() {name = "rv_372"} : memref<1xi8>
                          %345 = affine.load %336[0] {from = "rfaddr_370"} : memref<1x!hcl.struct<i7, i2>>
                          %346 = hcl.struct_get %345[0] : <i7, i2> -> i7
                          %347 = arith.extui %346 {unsigned} : i7 to i8
                          affine.store %347, %344[%c0] {to = "rv_372", unsigned} : memref<1xi8>
                          %348 = memref.alloc() {name = "rfaddr_373"} : memref<1x!hcl.struct<i7, i2>>
                          %349 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %350 = hcl.struct_get %349[3] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %351 = hcl.int_to_struct(%350) {unsigned} : i9 -> <i7, i2>
                          affine.store %351, %348[%c0] {to = "rfaddr_373"} : memref<1x!hcl.struct<i7, i2>>
                          %352 = memref.alloc() {name = "bv_374"} : memref<1xi3>
                          %353 = affine.load %348[0] {from = "rfaddr_373"} : memref<1x!hcl.struct<i7, i2>>
                          %354 = hcl.struct_get %353[1] : <i7, i2> -> i2
                          %355 = arith.extui %354 {unsigned} : i2 to i3
                          affine.store %355, %352[%c0] {to = "bv_374", unsigned} : memref<1xi3>
                          %356 = memref.alloc() {name = "rv_375"} : memref<1xi8>
                          %357 = affine.load %348[0] {from = "rfaddr_373"} : memref<1x!hcl.struct<i7, i2>>
                          %358 = hcl.struct_get %357[0] : <i7, i2> -> i7
                          %359 = arith.extui %358 {unsigned} : i7 to i8
                          affine.store %359, %356[%c0] {to = "rv_375", unsigned} : memref<1xi8>
                          %360 = memref.alloc() {name = "assert_cond_376"} : memref<1xi1>
                          %361 = affine.load %340[0] {from = "bv_371", unsigned} : memref<1xi3>
                          %362 = affine.load %352[0] {from = "bv_374", unsigned} : memref<1xi3>
                          %363 = arith.cmpi ne, %361, %362 {unsigned} : i3
                          affine.store %363, %360[%c0] {to = "assert_cond_376", unsigned} : memref<1xi1>
                          %364 = affine.load %360[0] {from = "assert_cond_376", unsigned} : memref<1xi1>
                          %365 = arith.extui %364 : i1 to i32
                          %366 = arith.cmpi eq, %365, %c0_i32 : i32
                          scf.if %366 {
                            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ntt write bank conflict\0A\0A", signedness = "_"} : i32
                            scf.while : () -> () {
                              %481 = affine.load %360[0] {from = "assert_cond_376", unsigned} : memref<1xi1>
                              %482 = arith.extui %481 : i1 to i32
                              %483 = arith.cmpi ne, %482, %c1_i32 : i32
                              scf.condition(%483)
                            } do {
                              affine.store %3, %360[0] {to = "assert_cond_376", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %367 = memref.alloc() {name = "rfaddr_377"} : memref<1x!hcl.struct<i7, i2>>
                          %368 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %369 = hcl.struct_get %368[4] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %370 = hcl.int_to_struct(%369) {unsigned} : i9 -> <i7, i2>
                          affine.store %370, %367[%c0] {to = "rfaddr_377"} : memref<1x!hcl.struct<i7, i2>>
                          %371 = memref.alloc() {name = "bv_378"} : memref<1xi3>
                          %372 = affine.load %367[0] {from = "rfaddr_377"} : memref<1x!hcl.struct<i7, i2>>
                          %373 = hcl.struct_get %372[1] : <i7, i2> -> i2
                          %374 = arith.extui %373 {unsigned} : i2 to i3
                          affine.store %374, %371[%c0] {to = "bv_378", unsigned} : memref<1xi3>
                          %375 = memref.alloc() {name = "rv_379"} : memref<1xi8>
                          %376 = affine.load %367[0] {from = "rfaddr_377"} : memref<1x!hcl.struct<i7, i2>>
                          %377 = hcl.struct_get %376[0] : <i7, i2> -> i7
                          %378 = arith.extui %377 {unsigned} : i7 to i8
                          affine.store %378, %375[%c0] {to = "rv_379", unsigned} : memref<1xi8>
                          %379 = memref.alloc() {name = "rfaddr_380"} : memref<1x!hcl.struct<i7, i2>>
                          %380 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %381 = hcl.struct_get %380[5] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %382 = hcl.int_to_struct(%381) {unsigned} : i9 -> <i7, i2>
                          affine.store %382, %379[%c0] {to = "rfaddr_380"} : memref<1x!hcl.struct<i7, i2>>
                          %383 = memref.alloc() {name = "bv_381"} : memref<1xi3>
                          %384 = affine.load %379[0] {from = "rfaddr_380"} : memref<1x!hcl.struct<i7, i2>>
                          %385 = hcl.struct_get %384[1] : <i7, i2> -> i2
                          %386 = arith.extui %385 {unsigned} : i2 to i3
                          affine.store %386, %383[%c0] {to = "bv_381", unsigned} : memref<1xi3>
                          %387 = memref.alloc() {name = "rv_382"} : memref<1xi8>
                          %388 = affine.load %379[0] {from = "rfaddr_380"} : memref<1x!hcl.struct<i7, i2>>
                          %389 = hcl.struct_get %388[0] : <i7, i2> -> i7
                          %390 = arith.extui %389 {unsigned} : i7 to i8
                          affine.store %390, %387[%c0] {to = "rv_382", unsigned} : memref<1xi8>
                          affine.for %arg2 = 0 to 128 {
                            affine.for %arg3 = 0 to 32 {
                              %481 = memref.alloc() {name = "write_addr"} : memref<1xi66>
                              %c64_i32_1 = arith.constant 64 : i32
                              %482 = arith.index_cast %arg2 : index to i64
                              %483 = arith.extsi %c64_i32_1 : i32 to i64
                              %484 = arith.muli %482, %483 : i64
                              %485 = arith.extsi %484 : i64 to i65
                              %486 = arith.extsi %c0_i32 : i32 to i65
                              %487 = arith.addi %485, %486 : i65
                              %488 = arith.extsi %487 : i65 to i66
                              %489 = arith.index_cast %arg3 : index to i66
                              %490 = arith.addi %488, %489 : i66
                              affine.store %490, %481[%c0] {to = "write_addr"} : memref<1xi66>
                              %491 = memref.alloc() {name = "_addr_384"} : memref<1xi66>
                              %492 = affine.load %481[0] {from = "write_addr"} : memref<1xi66>
                              affine.store %492, %491[%c0] {to = "_addr_384"} : memref<1xi66>
                              %493 = memref.alloc() {name = "assert_cond_385"} : memref<1xi1>
                              %494 = affine.load %491[0] {from = "_addr_384"} : memref<1xi66>
                              %495 = arith.extsi %494 : i66 to i67
                              %496 = arith.extsi %c1_i32 : i32 to i67
                              %497 = arith.addi %495, %496 : i67
                              %c8192_i32 = arith.constant 8192 : i32
                              %498 = arith.extsi %c8192_i32 : i32 to i67
                              %499 = arith.cmpi sle, %497, %498 : i67
                              affine.store %499, %493[%c0] {to = "assert_cond_385", unsigned} : memref<1xi1>
                              %500 = affine.load %493[0] {from = "assert_cond_385", unsigned} : memref<1xi1>
                              %501 = arith.extui %500 : i1 to i32
                              %502 = arith.cmpi eq, %501, %c0_i32 : i32
                              scf.if %502 {
                                %538 = affine.load %491[0] {from = "_addr_384"} : memref<1xi66>
                                %539 = arith.extsi %538 : i66 to i67
                                %540 = arith.addi %539, %496 : i67
                                hcl.print(%538, %540) {format = "\0A\0AAssertion failed {}: ntt_ain Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                scf.while : () -> () {
                                  %541 = affine.load %493[0] {from = "assert_cond_385", unsigned} : memref<1xi1>
                                  %542 = arith.extui %541 : i1 to i32
                                  %543 = arith.cmpi ne, %542, %c1_i32 : i32
                                  scf.condition(%543)
                                } do {
                                  affine.store %3, %493[0] {to = "assert_cond_385", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %503 = affine.load %371[0] {from = "bv_378", unsigned} : memref<1xi3>
                              %504 = arith.index_cast %503 {unsigned} : i3 to index
                              %505 = affine.load %375[0] {from = "rv_379", unsigned} : memref<1xi8>
                              %506 = arith.index_cast %505 {unsigned} : i8 to index
                              %507 = arith.extsi %c2_i32 : i32 to i64
                              %508 = arith.index_cast %arg3 : index to i64
                              %509 = arith.muli %507, %508 : i64
                              %510 = arith.extsi %509 : i64 to i65
                              %511 = arith.addi %485, %510 : i65
                              %512 = arith.index_cast %511 {unsigned} : i65 to index
                              %513 = memref.load %41[%504, %506, %512] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %514 = affine.load %481[0] {from = "write_addr"} : memref<1xi66>
                              %515 = arith.index_cast %514 {unsigned} : i66 to index
                              memref.store %513, %59[%515] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %516 = memref.alloc() {name = "write_addr_386"} : memref<1xi66>
                              affine.store %490, %516[%c0] {to = "write_addr_386"} : memref<1xi66>
                              %517 = memref.alloc() {name = "_addr_387"} : memref<1xi66>
                              %518 = affine.load %516[0] {from = "write_addr_386"} : memref<1xi66>
                              affine.store %518, %517[%c0] {to = "_addr_387"} : memref<1xi66>
                              %519 = memref.alloc() {name = "assert_cond_388"} : memref<1xi1>
                              %520 = affine.load %517[0] {from = "_addr_387"} : memref<1xi66>
                              %521 = arith.extsi %520 : i66 to i67
                              %522 = arith.addi %521, %496 : i67
                              %523 = arith.cmpi sle, %522, %498 : i67
                              affine.store %523, %519[%c0] {to = "assert_cond_388", unsigned} : memref<1xi1>
                              %524 = affine.load %519[0] {from = "assert_cond_388", unsigned} : memref<1xi1>
                              %525 = arith.extui %524 : i1 to i32
                              %526 = arith.cmpi eq, %525, %c0_i32 : i32
                              scf.if %526 {
                                %538 = affine.load %517[0] {from = "_addr_387"} : memref<1xi66>
                                %539 = arith.extsi %538 : i66 to i67
                                %540 = arith.addi %539, %496 : i67
                                hcl.print(%538, %540) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                scf.while : () -> () {
                                  %541 = affine.load %519[0] {from = "assert_cond_388", unsigned} : memref<1xi1>
                                  %542 = arith.extui %541 : i1 to i32
                                  %543 = arith.cmpi ne, %542, %c1_i32 : i32
                                  scf.condition(%543)
                                } do {
                                  affine.store %3, %519[0] {to = "assert_cond_388", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %527 = affine.load %371[0] {from = "bv_378", unsigned} : memref<1xi3>
                              %528 = arith.index_cast %527 {unsigned} : i3 to index
                              %529 = affine.load %375[0] {from = "rv_379", unsigned} : memref<1xi8>
                              %530 = arith.index_cast %529 {unsigned} : i8 to index
                              %531 = arith.extsi %511 : i65 to i66
                              %532 = arith.extsi %c1_i32 : i32 to i66
                              %533 = arith.addi %531, %532 : i66
                              %534 = arith.index_cast %533 {unsigned} : i66 to index
                              %535 = memref.load %41[%528, %530, %534] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %536 = affine.load %516[0] {from = "write_addr_386"} : memref<1xi66>
                              %537 = arith.index_cast %536 {unsigned} : i66 to index
                              memref.store %535, %60[%537] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_arf"}
                            affine.for %arg3 = 0 to 32 {
                              %481 = memref.alloc() {name = "write_addr_389"} : memref<1xi66>
                              %c64_i32_1 = arith.constant 64 : i32
                              %482 = arith.index_cast %arg2 : index to i64
                              %483 = arith.extsi %c64_i32_1 : i32 to i64
                              %484 = arith.muli %482, %483 : i64
                              %c32_i32 = arith.constant 32 : i32
                              %485 = arith.extsi %484 : i64 to i65
                              %486 = arith.extsi %c32_i32 : i32 to i65
                              %487 = arith.addi %485, %486 : i65
                              %488 = arith.extsi %487 : i65 to i66
                              %489 = arith.index_cast %arg3 : index to i66
                              %490 = arith.addi %488, %489 : i66
                              affine.store %490, %481[%c0] {to = "write_addr_389"} : memref<1xi66>
                              %491 = memref.alloc() {name = "_addr_390"} : memref<1xi66>
                              %492 = affine.load %481[0] {from = "write_addr_389"} : memref<1xi66>
                              affine.store %492, %491[%c0] {to = "_addr_390"} : memref<1xi66>
                              %493 = memref.alloc() {name = "assert_cond_391"} : memref<1xi1>
                              %494 = affine.load %491[0] {from = "_addr_390"} : memref<1xi66>
                              %495 = arith.extsi %494 : i66 to i67
                              %496 = arith.extsi %c1_i32 : i32 to i67
                              %497 = arith.addi %495, %496 : i67
                              %c8192_i32 = arith.constant 8192 : i32
                              %498 = arith.extsi %c8192_i32 : i32 to i67
                              %499 = arith.cmpi sle, %497, %498 : i67
                              affine.store %499, %493[%c0] {to = "assert_cond_391", unsigned} : memref<1xi1>
                              %500 = affine.load %493[0] {from = "assert_cond_391", unsigned} : memref<1xi1>
                              %501 = arith.extui %500 : i1 to i32
                              %502 = arith.cmpi eq, %501, %c0_i32 : i32
                              scf.if %502 {
                                %538 = affine.load %491[0] {from = "_addr_390"} : memref<1xi66>
                                %539 = arith.extsi %538 : i66 to i67
                                %540 = arith.addi %539, %496 : i67
                                hcl.print(%538, %540) {format = "\0A\0AAssertion failed {}: ntt_ain Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                scf.while : () -> () {
                                  %541 = affine.load %493[0] {from = "assert_cond_391", unsigned} : memref<1xi1>
                                  %542 = arith.extui %541 : i1 to i32
                                  %543 = arith.cmpi ne, %542, %c1_i32 : i32
                                  scf.condition(%543)
                                } do {
                                  affine.store %3, %493[0] {to = "assert_cond_391", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %503 = affine.load %383[0] {from = "bv_381", unsigned} : memref<1xi3>
                              %504 = arith.index_cast %503 {unsigned} : i3 to index
                              %505 = affine.load %387[0] {from = "rv_382", unsigned} : memref<1xi8>
                              %506 = arith.index_cast %505 {unsigned} : i8 to index
                              %507 = arith.extsi %c2_i32 : i32 to i64
                              %508 = arith.index_cast %arg3 : index to i64
                              %509 = arith.muli %507, %508 : i64
                              %510 = arith.extsi %509 : i64 to i65
                              %511 = arith.addi %485, %510 : i65
                              %512 = arith.index_cast %511 {unsigned} : i65 to index
                              %513 = memref.load %41[%504, %506, %512] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %514 = affine.load %481[0] {from = "write_addr_389"} : memref<1xi66>
                              %515 = arith.index_cast %514 {unsigned} : i66 to index
                              memref.store %513, %59[%515] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              %516 = memref.alloc() {name = "write_addr_392"} : memref<1xi66>
                              affine.store %490, %516[%c0] {to = "write_addr_392"} : memref<1xi66>
                              %517 = memref.alloc() {name = "_addr_393"} : memref<1xi66>
                              %518 = affine.load %516[0] {from = "write_addr_392"} : memref<1xi66>
                              affine.store %518, %517[%c0] {to = "_addr_393"} : memref<1xi66>
                              %519 = memref.alloc() {name = "assert_cond_394"} : memref<1xi1>
                              %520 = affine.load %517[0] {from = "_addr_393"} : memref<1xi66>
                              %521 = arith.extsi %520 : i66 to i67
                              %522 = arith.addi %521, %496 : i67
                              %523 = arith.cmpi sle, %522, %498 : i67
                              affine.store %523, %519[%c0] {to = "assert_cond_394", unsigned} : memref<1xi1>
                              %524 = affine.load %519[0] {from = "assert_cond_394", unsigned} : memref<1xi1>
                              %525 = arith.extui %524 : i1 to i32
                              %526 = arith.cmpi eq, %525, %c0_i32 : i32
                              scf.if %526 {
                                %538 = affine.load %517[0] {from = "_addr_393"} : memref<1xi66>
                                %539 = arith.extsi %538 : i66 to i67
                                %540 = arith.addi %539, %496 : i67
                                hcl.print(%538, %540) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                scf.while : () -> () {
                                  %541 = affine.load %519[0] {from = "assert_cond_394", unsigned} : memref<1xi1>
                                  %542 = arith.extui %541 : i1 to i32
                                  %543 = arith.cmpi ne, %542, %c1_i32 : i32
                                  scf.condition(%543)
                                } do {
                                  affine.store %3, %519[0] {to = "assert_cond_394", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %527 = affine.load %383[0] {from = "bv_381", unsigned} : memref<1xi3>
                              %528 = arith.index_cast %527 {unsigned} : i3 to index
                              %529 = affine.load %387[0] {from = "rv_382", unsigned} : memref<1xi8>
                              %530 = arith.index_cast %529 {unsigned} : i8 to index
                              %531 = arith.extsi %511 : i65 to i66
                              %532 = arith.extsi %c1_i32 : i32 to i66
                              %533 = arith.addi %531, %532 : i66
                              %534 = arith.index_cast %533 {unsigned} : i66 to index
                              %535 = memref.load %41[%528, %530, %534] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                              %536 = affine.load %516[0] {from = "write_addr_392"} : memref<1xi66>
                              %537 = arith.index_cast %536 {unsigned} : i66 to index
                              memref.store %535, %60[%537] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "j", op_name = "nttin_even_odd_brf"}
                          } {loop_name = "i", op_name = "ntt_in_swizzle"}
                          %391 = memref.alloc() {name = "mone_5_4"} : memref<1xi6>
                          %392 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %393 = hcl.struct_get %392[16] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                          %394 = arith.extui %393 {unsigned} : i2 to i6
                          affine.store %394, %391[%c0] {to = "mone_5_4", unsigned} : memref<1xi6>
                          %395 = memref.alloc() {name = "mone_3_1"} : memref<1xi6>
                          %396 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %397 = hcl.struct_get %396[8] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                          %398 = arith.extui %397 {unsigned} : i3 to i6
                          affine.store %398, %395[%c0] {to = "mone_3_1", unsigned} : memref<1xi6>
                          %399 = memref.alloc() {name = "mone_0"} : memref<1xi6>
                          %400 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %401 = hcl.struct_get %400[1] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i1
                          %402 = arith.extui %401 {unsigned} : i1 to i6
                          affine.store %402, %399[%c0] {to = "mone_0", unsigned} : memref<1xi6>
                          %403 = memref.alloc() {name = "read_addr_398"} : memref<1xi8>
                          %c0_i6 = arith.constant {unsigned} 0 : i6
                          %404 = arith.extui %c0_i6 {unsigned} : i6 to i7
                          %405 = arith.addi %404, %404 {unsigned} : i7
                          %406 = affine.load %399[0] {from = "mone_0", unsigned} : memref<1xi6>
                          %407 = arith.extui %405 {unsigned} : i7 to i8
                          %408 = arith.extui %406 {unsigned} : i6 to i8
                          %409 = arith.addi %407, %408 {unsigned} : i8
                          affine.store %409, %403[%c0] {to = "read_addr_398", unsigned} : memref<1xi8>
                          %410 = memref.alloc() {name = "_addr_399"} : memref<1xi8>
                          %411 = affine.load %403[0] {from = "read_addr_398", unsigned} : memref<1xi8>
                          affine.store %411, %410[%c0] {to = "_addr_399", unsigned} : memref<1xi8>
                          %412 = memref.alloc() {name = "assert_cond_400"} : memref<1xi1>
                          %413 = affine.load %410[0] {from = "_addr_399", unsigned} : memref<1xi8>
                          %414 = arith.extui %413 : i8 to i33
                          %415 = arith.addi %414, %160 : i33
                          %c64_i32 = arith.constant 64 : i32
                          %416 = arith.extsi %c64_i32 : i32 to i33
                          %417 = arith.cmpi sle, %415, %416 : i33
                          affine.store %417, %412[%c0] {to = "assert_cond_400", unsigned} : memref<1xi1>
                          %418 = affine.load %412[0] {from = "assert_cond_400", unsigned} : memref<1xi1>
                          %419 = arith.extui %418 : i1 to i32
                          %420 = arith.cmpi eq, %419, %c0_i32 : i32
                          scf.if %420 {
                            %481 = affine.load %410[0] {from = "_addr_399", unsigned} : memref<1xi8>
                            %482 = arith.extui %481 : i8 to i33
                            %483 = arith.addi %482, %160 : i33
                            hcl.print(%481, %483) {format = "\0A\0AAssertion failed {}: mone Mem.read exceeds memory size: addr=%d+size=%d > 64\0A\0A", signedness = "u_"} : i8, i33
                            scf.while : () -> () {
                              %484 = affine.load %412[0] {from = "assert_cond_400", unsigned} : memref<1xi1>
                              %485 = arith.extui %484 : i1 to i32
                              %486 = arith.cmpi ne, %485, %c1_i32 : i32
                              scf.condition(%486)
                            } do {
                              affine.store %3, %412[0] {to = "assert_cond_400", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %421 = memref.alloc() {name = "Mem.read_c_50"} : memref<1xi32>
                          %422 = affine.load %403[0] {from = "read_addr_398", unsigned} : memref<1xi8>
                          %423 = arith.extui %422 {unsigned} : i8 to i33
                          %424 = arith.index_cast %c0 {unsigned} : index to i33
                          %425 = arith.addi %423, %424 {unsigned} : i33
                          %426 = arith.index_cast %425 {unsigned} : i33 to index
                          %427 = memref.load %43[%426] {from = "mone.alloc_c", unsigned} : memref<64xi32>
                          affine.store %427, %421[%c0] {to = "Mem.read_c_50", unsigned} : memref<1xi32>
                          %428 = affine.load %421[0] {from = "Mem.read_c_50", unsigned} : memref<1xi32>
                          affine.store %428, %62[0] {to = "mone_val", unsigned} : memref<1xi32>
                          %429 = memref.alloc() {name = "read_addr_401"} : memref<1xi6>
                          %430 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %431 = hcl.struct_get %430[6] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                          affine.store %431, %429[%c0] {to = "read_addr_401", unsigned} : memref<1xi6>
                          %432 = memref.alloc() {name = "_addr_402"} : memref<1xi6>
                          %433 = affine.load %429[0] {from = "read_addr_401", unsigned} : memref<1xi6>
                          affine.store %433, %432[%c0] {to = "_addr_402", unsigned} : memref<1xi6>
                          %434 = memref.alloc() {name = "assert_cond_403"} : memref<1xi1>
                          %435 = affine.load %432[0] {from = "_addr_402", unsigned} : memref<1xi6>
                          %436 = arith.extui %435 : i6 to i33
                          %437 = arith.addi %436, %160 : i33
                          %438 = arith.cmpi sle, %437, %416 : i33
                          affine.store %438, %434[%c0] {to = "assert_cond_403", unsigned} : memref<1xi1>
                          %439 = affine.load %434[0] {from = "assert_cond_403", unsigned} : memref<1xi1>
                          %440 = arith.extui %439 : i1 to i32
                          %441 = arith.cmpi eq, %440, %c0_i32 : i32
                          scf.if %441 {
                            %481 = affine.load %432[0] {from = "_addr_402", unsigned} : memref<1xi6>
                            %482 = arith.extui %481 : i6 to i33
                            %483 = arith.addi %482, %160 : i33
                            hcl.print(%481, %483) {format = "\0A\0AAssertion failed {}: twpwrs Mem.read exceeds memory size: addr=%d+size=%d > 64\0A\0A", signedness = "u_"} : i6, i33
                            scf.while : () -> () {
                              %484 = affine.load %434[0] {from = "assert_cond_403", unsigned} : memref<1xi1>
                              %485 = arith.extui %484 : i1 to i32
                              %486 = arith.cmpi ne, %485, %c1_i32 : i32
                              scf.condition(%486)
                            } do {
                              affine.store %3, %434[0] {to = "assert_cond_403", unsigned} : memref<1xi1>
                              scf.yield
                            }
                          }
                          %442 = memref.alloc() {name = "Mem.read_c_51"} : memref<1xi32>
                          %443 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %444 = hcl.struct_get %443[7] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                          %445 = arith.index_cast %444 {unsigned} : i5 to index
                          %446 = affine.load %429[0] {from = "read_addr_401", unsigned} : memref<1xi6>
                          %447 = arith.extui %446 {unsigned} : i6 to i33
                          %448 = arith.addi %447, %424 {unsigned} : i33
                          %449 = arith.index_cast %448 {unsigned} : i33 to index
                          %450 = memref.load %42[%445, %449] {from = "twpwrs.alloc_c", unsigned} : memref<32x64xi32>
                          affine.store %450, %442[%c0] {to = "Mem.read_c_51", unsigned} : memref<1xi32>
                          %451 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %452 = hcl.struct_get %451[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                          %453 = arith.extui %452 : i5 to i32
                          %454 = arith.cmpi eq, %453, %c0_i32 : i32
                          scf.if %454 {
                            affine.for %arg2 = 0 to 8192 {
                              %481 = memref.alloc() {name = "write_addr_404"} : memref<1xindex>
                              affine.store %arg2, %481[%c0] {to = "write_addr_404", unsigned} : memref<1xindex>
                              %482 = memref.alloc() {name = "_addr_405"} : memref<1xindex>
                              %483 = affine.load %481[0] {from = "write_addr_404", unsigned} : memref<1xindex>
                              affine.store %483, %482[%c0] {to = "_addr_405", unsigned} : memref<1xindex>
                              %484 = memref.alloc() {name = "assert_cond_406"} : memref<1xi1>
                              %485 = affine.load %482[0] {from = "_addr_405", unsigned} : memref<1xindex>
                              %486 = arith.index_cast %485 : index to i34
                              %487 = arith.addi %486, %174 : i34
                              %c8192_i32 = arith.constant 8192 : i32
                              %488 = arith.extsi %c8192_i32 : i32 to i34
                              %489 = arith.cmpi sle, %487, %488 : i34
                              affine.store %489, %484[%c0] {to = "assert_cond_406", unsigned} : memref<1xi1>
                              %490 = affine.load %484[0] {from = "assert_cond_406", unsigned} : memref<1xi1>
                              %491 = arith.extui %490 : i1 to i32
                              %492 = arith.cmpi eq, %491, %c0_i32 : i32
                              scf.if %492 {
                                %495 = affine.load %482[0] {from = "_addr_405", unsigned} : memref<1xindex>
                                %496 = arith.index_cast %495 : index to i34
                                %497 = arith.addi %496, %174 : i34
                                hcl.print(%495, %497) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %498 = affine.load %484[0] {from = "assert_cond_406", unsigned} : memref<1xi1>
                                  %499 = arith.extui %498 : i1 to i32
                                  %500 = arith.cmpi ne, %499, %c1_i32 : i32
                                  scf.condition(%500)
                                } do {
                                  affine.store %3, %484[0] {to = "assert_cond_406", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %493 = affine.load %62[0] {from = "mone_val", unsigned} : memref<1xi32>
                              %494 = affine.load %481[0] {from = "write_addr_404", unsigned} : memref<1xindex>
                              memref.store %493, %61[%494] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "mone_fill"}
                          } else {
                            %481 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %482 = hcl.struct_get %481[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %c13_i32 = arith.constant 13 : i32
                            %483 = arith.extui %482 : i5 to i32
                            %484 = arith.cmpi eq, %483, %c13_i32 : i32
                            %485 = arith.andi %true, %484 {unsigned} : i1
                            %486 = hcl.struct_get %481[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                            %487 = arith.extui %486 : i2 to i32
                            %488 = arith.cmpi eq, %487, %c0_i32 : i32
                            %489 = arith.andi %485, %488 {unsigned} : i1
                            %490 = arith.ori %false, %489 {unsigned} : i1
                            %c14_i32 = arith.constant 14 : i32
                            %491 = arith.cmpi eq, %483, %c14_i32 : i32
                            %492 = arith.andi %true, %491 {unsigned} : i1
                            %493 = arith.cmpi eq, %487, %c1_i32 : i32
                            %494 = arith.andi %492, %493 {unsigned} : i1
                            %495 = arith.ori %490, %494 {unsigned} : i1
                            %c15_i32 = arith.constant 15 : i32
                            %496 = arith.cmpi eq, %483, %c15_i32 : i32
                            %497 = arith.andi %true, %496 {unsigned} : i1
                            %498 = arith.cmpi eq, %487, %c2_i32 : i32
                            %499 = arith.andi %497, %498 {unsigned} : i1
                            %500 = arith.ori %495, %499 {unsigned} : i1
                            %501 = arith.cmpi eq, %483, %c16_i32 : i32
                            %502 = arith.andi %true, %501 {unsigned} : i1
                            %503 = arith.cmpi eq, %487, %c3_i32 : i32
                            %504 = arith.andi %502, %503 {unsigned} : i1
                            %505 = arith.ori %500, %504 {unsigned} : i1
                            %506 = arith.extui %505 : i1 to i32
                            %507 = arith.cmpi ne, %506, %c0_i32 : i32
                            scf.if %507 {
                              %508 = memref.alloc() {name = "rfaddr_407"} : memref<1x!hcl.struct<i7, i2>>
                              %509 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %510 = hcl.struct_get %509[12] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                              %511 = hcl.int_to_struct(%510) {unsigned} : i9 -> <i7, i2>
                              affine.store %511, %508[%c0] {to = "rfaddr_407"} : memref<1x!hcl.struct<i7, i2>>
                              %512 = memref.alloc() {name = "bv_408"} : memref<1xi3>
                              %513 = affine.load %508[0] {from = "rfaddr_407"} : memref<1x!hcl.struct<i7, i2>>
                              %514 = hcl.struct_get %513[1] : <i7, i2> -> i2
                              %515 = arith.extui %514 {unsigned} : i2 to i3
                              affine.store %515, %512[%c0] {to = "bv_408", unsigned} : memref<1xi3>
                              %516 = memref.alloc() {name = "rv_409"} : memref<1xi8>
                              %517 = affine.load %508[0] {from = "rfaddr_407"} : memref<1x!hcl.struct<i7, i2>>
                              %518 = hcl.struct_get %517[0] : <i7, i2> -> i7
                              %519 = arith.extui %518 {unsigned} : i7 to i8
                              affine.store %519, %516[%c0] {to = "rv_409", unsigned} : memref<1xi8>
                              affine.for %arg2 = 0 to 128 {
                                affine.for %arg3 = 0 to 32 {
                                  %520 = memref.alloc() {name = "write_addr_410"} : memref<1xi66>
                                  %521 = arith.index_cast %arg2 : index to i64
                                  %522 = arith.extsi %c64_i32 : i32 to i64
                                  %523 = arith.muli %521, %522 : i64
                                  %524 = arith.extsi %523 : i64 to i65
                                  %525 = arith.extsi %c0_i32 : i32 to i65
                                  %526 = arith.addi %524, %525 : i65
                                  %527 = arith.extsi %526 : i65 to i66
                                  %528 = arith.index_cast %arg3 : index to i66
                                  %529 = arith.addi %527, %528 : i66
                                  affine.store %529, %520[%c0] {to = "write_addr_410"} : memref<1xi66>
                                  %530 = memref.alloc() {name = "_addr_411"} : memref<1xi66>
                                  %531 = affine.load %520[0] {from = "write_addr_410"} : memref<1xi66>
                                  affine.store %531, %530[%c0] {to = "_addr_411"} : memref<1xi66>
                                  %532 = memref.alloc() {name = "assert_cond_412"} : memref<1xi1>
                                  %533 = affine.load %530[0] {from = "_addr_411"} : memref<1xi66>
                                  %534 = arith.extsi %533 : i66 to i67
                                  %535 = arith.extsi %c1_i32 : i32 to i67
                                  %536 = arith.addi %534, %535 : i67
                                  %c8192_i32 = arith.constant 8192 : i32
                                  %537 = arith.extsi %c8192_i32 : i32 to i67
                                  %538 = arith.cmpi sle, %536, %537 : i67
                                  affine.store %538, %532[%c0] {to = "assert_cond_412", unsigned} : memref<1xi1>
                                  %539 = affine.load %532[0] {from = "assert_cond_412", unsigned} : memref<1xi1>
                                  %540 = arith.extui %539 : i1 to i32
                                  %541 = arith.cmpi eq, %540, %c0_i32 : i32
                                  scf.if %541 {
                                    %583 = affine.load %530[0] {from = "_addr_411"} : memref<1xi66>
                                    %584 = arith.extsi %583 : i66 to i67
                                    %585 = arith.addi %584, %535 : i67
                                    hcl.print(%583, %585) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                    scf.while : () -> () {
                                      %586 = affine.load %532[0] {from = "assert_cond_412", unsigned} : memref<1xi1>
                                      %587 = arith.extui %586 : i1 to i32
                                      %588 = arith.cmpi ne, %587, %c1_i32 : i32
                                      scf.condition(%588)
                                    } do {
                                      affine.store %3, %532[0] {to = "assert_cond_412", unsigned} : memref<1xi1>
                                      scf.yield
                                    }
                                  }
                                  %542 = affine.load %512[0] {from = "bv_408", unsigned} : memref<1xi3>
                                  %543 = arith.index_cast %542 {unsigned} : i3 to index
                                  %544 = affine.load %516[0] {from = "rv_409", unsigned} : memref<1xi8>
                                  %545 = arith.index_cast %544 {unsigned} : i8 to index
                                  %546 = arith.extsi %c2_i32 : i32 to i64
                                  %547 = arith.index_cast %arg3 : index to i64
                                  %548 = arith.muli %546, %547 : i64
                                  %549 = arith.extsi %548 : i64 to i65
                                  %550 = arith.addi %524, %549 : i65
                                  %551 = arith.extsi %550 : i65 to i66
                                  %552 = arith.extsi %c0_i32 : i32 to i66
                                  %553 = arith.addi %551, %552 : i66
                                  %554 = arith.index_cast %553 {unsigned} : i66 to index
                                  %555 = memref.load %41[%543, %545, %554] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                  %556 = affine.load %520[0] {from = "write_addr_410"} : memref<1xi66>
                                  %557 = arith.index_cast %556 {unsigned} : i66 to index
                                  memref.store %555, %61[%557] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                                  %558 = memref.alloc() {name = "write_addr_413"} : memref<1xi66>
                                  %c32_i32 = arith.constant 32 : i32
                                  %559 = arith.extsi %c32_i32 : i32 to i65
                                  %560 = arith.addi %524, %559 : i65
                                  %561 = arith.extsi %560 : i65 to i66
                                  %562 = arith.addi %561, %528 : i66
                                  affine.store %562, %558[%c0] {to = "write_addr_413"} : memref<1xi66>
                                  %563 = memref.alloc() {name = "_addr_414"} : memref<1xi66>
                                  %564 = affine.load %558[0] {from = "write_addr_413"} : memref<1xi66>
                                  affine.store %564, %563[%c0] {to = "_addr_414"} : memref<1xi66>
                                  %565 = memref.alloc() {name = "assert_cond_415"} : memref<1xi1>
                                  %566 = affine.load %563[0] {from = "_addr_414"} : memref<1xi66>
                                  %567 = arith.extsi %566 : i66 to i67
                                  %568 = arith.addi %567, %535 : i67
                                  %569 = arith.cmpi sle, %568, %537 : i67
                                  affine.store %569, %565[%c0] {to = "assert_cond_415", unsigned} : memref<1xi1>
                                  %570 = affine.load %565[0] {from = "assert_cond_415", unsigned} : memref<1xi1>
                                  %571 = arith.extui %570 : i1 to i32
                                  %572 = arith.cmpi eq, %571, %c0_i32 : i32
                                  scf.if %572 {
                                    %583 = affine.load %563[0] {from = "_addr_414"} : memref<1xi66>
                                    %584 = arith.extsi %583 : i66 to i67
                                    %585 = arith.addi %584, %535 : i67
                                    hcl.print(%583, %585) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                    scf.while : () -> () {
                                      %586 = affine.load %565[0] {from = "assert_cond_415", unsigned} : memref<1xi1>
                                      %587 = arith.extui %586 : i1 to i32
                                      %588 = arith.cmpi ne, %587, %c1_i32 : i32
                                      scf.condition(%588)
                                    } do {
                                      affine.store %3, %565[0] {to = "assert_cond_415", unsigned} : memref<1xi1>
                                      scf.yield
                                    }
                                  }
                                  %573 = affine.load %512[0] {from = "bv_408", unsigned} : memref<1xi3>
                                  %574 = arith.index_cast %573 {unsigned} : i3 to index
                                  %575 = affine.load %516[0] {from = "rv_409", unsigned} : memref<1xi8>
                                  %576 = arith.index_cast %575 {unsigned} : i8 to index
                                  %577 = arith.extsi %c1_i32 : i32 to i66
                                  %578 = arith.addi %551, %577 : i66
                                  %579 = arith.index_cast %578 {unsigned} : i66 to index
                                  %580 = memref.load %41[%574, %576, %579] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                  %581 = affine.load %558[0] {from = "write_addr_413"} : memref<1xi66>
                                  %582 = arith.index_cast %581 {unsigned} : i66 to index
                                  memref.store %580, %61[%582] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                                } {loop_name = "j", op_name = "final_interleave_cp"}
                              } {loop_name = "i", op_name = "final_interleave"}
                            } else {
                              %508 = memref.alloc() {name = "rfaddr_416"} : memref<1x!hcl.struct<i7, i2>>
                              %509 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %510 = hcl.struct_get %509[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                              %511 = hcl.int_to_struct(%510) {unsigned} : i9 -> <i7, i2>
                              affine.store %511, %508[%c0] {to = "rfaddr_416"} : memref<1x!hcl.struct<i7, i2>>
                              %512 = memref.alloc() {name = "bv_417"} : memref<1xi3>
                              %513 = affine.load %508[0] {from = "rfaddr_416"} : memref<1x!hcl.struct<i7, i2>>
                              %514 = hcl.struct_get %513[1] : <i7, i2> -> i2
                              %515 = arith.extui %514 {unsigned} : i2 to i3
                              affine.store %515, %512[%c0] {to = "bv_417", unsigned} : memref<1xi3>
                              %516 = memref.alloc() {name = "rv_418"} : memref<1xi8>
                              %517 = affine.load %508[0] {from = "rfaddr_416"} : memref<1x!hcl.struct<i7, i2>>
                              %518 = hcl.struct_get %517[0] : <i7, i2> -> i7
                              %519 = arith.extui %518 {unsigned} : i7 to i8
                              affine.store %519, %516[%c0] {to = "rv_418", unsigned} : memref<1xi8>
                              affine.for %arg2 = 0 to 8192 {
                                %520 = memref.alloc() {name = "write_addr_419"} : memref<1xi34>
                                %521 = arith.extsi %c0_i32 : i32 to i34
                                %522 = arith.index_cast %arg2 : index to i34
                                %523 = arith.addi %521, %522 : i34
                                affine.store %523, %520[%c0] {to = "write_addr_419"} : memref<1xi34>
                                %524 = memref.alloc() {name = "_addr_420"} : memref<1xi34>
                                %525 = affine.load %520[0] {from = "write_addr_419"} : memref<1xi34>
                                affine.store %525, %524[%c0] {to = "_addr_420"} : memref<1xi34>
                                %526 = memref.alloc() {name = "assert_cond_421"} : memref<1xi1>
                                %527 = affine.load %524[0] {from = "_addr_420"} : memref<1xi34>
                                %528 = arith.extsi %527 : i34 to i35
                                %529 = arith.extsi %c1_i32 : i32 to i35
                                %530 = arith.addi %528, %529 : i35
                                %c8192_i32 = arith.constant 8192 : i32
                                %531 = arith.extsi %c8192_i32 : i32 to i35
                                %532 = arith.cmpi sle, %530, %531 : i35
                                affine.store %532, %526[%c0] {to = "assert_cond_421", unsigned} : memref<1xi1>
                                %533 = affine.load %526[0] {from = "assert_cond_421", unsigned} : memref<1xi1>
                                %534 = arith.extui %533 : i1 to i32
                                %535 = arith.cmpi eq, %534, %c0_i32 : i32
                                scf.if %535 {
                                  %544 = affine.load %524[0] {from = "_addr_420"} : memref<1xi34>
                                  %545 = arith.extsi %544 : i34 to i35
                                  %546 = arith.addi %545, %529 : i35
                                  hcl.print(%544, %546) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i34, i35
                                  scf.while : () -> () {
                                    %547 = affine.load %526[0] {from = "assert_cond_421", unsigned} : memref<1xi1>
                                    %548 = arith.extui %547 : i1 to i32
                                    %549 = arith.cmpi ne, %548, %c1_i32 : i32
                                    scf.condition(%549)
                                  } do {
                                    affine.store %3, %526[0] {to = "assert_cond_421", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %536 = affine.load %512[0] {from = "bv_417", unsigned} : memref<1xi3>
                                %537 = arith.index_cast %536 {unsigned} : i3 to index
                                %538 = affine.load %516[0] {from = "rv_418", unsigned} : memref<1xi8>
                                %539 = arith.index_cast %538 {unsigned} : i8 to index
                                %540 = arith.index_cast %523 {unsigned} : i34 to index
                                %541 = memref.load %41[%537, %539, %540] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %542 = affine.load %520[0] {from = "write_addr_419"} : memref<1xi34>
                                %543 = arith.index_cast %542 {unsigned} : i34 to index
                                memref.store %541, %61[%543] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "i", op_name = "copyN_55"}
                            }
                          }
                          affine.for %arg2 = 0 to 8192 {
                            %481 = memref.alloc() {name = "read_addr_422"} : memref<1xindex>
                            affine.store %arg2, %481[%c0] {to = "read_addr_422", unsigned} : memref<1xindex>
                            %482 = memref.alloc() {name = "_addr_423"} : memref<1xindex>
                            %483 = affine.load %481[0] {from = "read_addr_422", unsigned} : memref<1xindex>
                            affine.store %483, %482[%c0] {to = "_addr_423", unsigned} : memref<1xindex>
                            %484 = memref.alloc() {name = "assert_cond_424"} : memref<1xi1>
                            %485 = affine.load %482[0] {from = "_addr_423", unsigned} : memref<1xindex>
                            %486 = arith.index_cast %485 : index to i34
                            %487 = arith.addi %486, %174 : i34
                            %c8192_i32 = arith.constant 8192 : i32
                            %488 = arith.extsi %c8192_i32 : i32 to i34
                            %489 = arith.cmpi sle, %487, %488 : i34
                            affine.store %489, %484[%c0] {to = "assert_cond_424", unsigned} : memref<1xi1>
                            %490 = affine.load %484[0] {from = "assert_cond_424", unsigned} : memref<1xi1>
                            %491 = arith.extui %490 : i1 to i32
                            %492 = arith.cmpi eq, %491, %c0_i32 : i32
                            scf.if %492 {
                              %634 = affine.load %482[0] {from = "_addr_423", unsigned} : memref<1xindex>
                              %635 = arith.index_cast %634 : index to i34
                              %636 = arith.addi %635, %174 : i34
                              hcl.print(%634, %636) {format = "\0A\0AAssertion failed {}: ntt_ain Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                              scf.while : () -> () {
                                %637 = affine.load %484[0] {from = "assert_cond_424", unsigned} : memref<1xi1>
                                %638 = arith.extui %637 : i1 to i32
                                %639 = arith.cmpi ne, %638, %c1_i32 : i32
                                scf.condition(%639)
                              } do {
                                affine.store %3, %484[0] {to = "assert_cond_424", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %493 = memref.alloc() {name = "Mem.read_c_57"} : memref<1xi32>
                            %494 = affine.load %481[0] {from = "read_addr_422", unsigned} : memref<1xindex>
                            %495 = arith.addi %494, %c0 {unsigned} : index
                            %496 = memref.load %59[%495] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %496, %493[%c0] {to = "Mem.read_c_57", unsigned} : memref<1xi32>
                            %497 = memref.alloc() {name = "_a_425"} : memref<1xi64>
                            %498 = affine.load %493[0] {from = "Mem.read_c_57", unsigned} : memref<1xi32>
                            %499 = arith.extui %498 {unsigned} : i32 to i64
                            affine.store %499, %497[%c0] {to = "_a_425", unsigned} : memref<1xi64>
                            %500 = memref.alloc() {name = "read_addr_426"} : memref<1xindex>
                            affine.store %arg2, %500[%c0] {to = "read_addr_426", unsigned} : memref<1xindex>
                            %501 = memref.alloc() {name = "_addr_427"} : memref<1xindex>
                            %502 = affine.load %500[0] {from = "read_addr_426", unsigned} : memref<1xindex>
                            affine.store %502, %501[%c0] {to = "_addr_427", unsigned} : memref<1xindex>
                            %503 = memref.alloc() {name = "assert_cond_428"} : memref<1xi1>
                            %504 = affine.load %501[0] {from = "_addr_427", unsigned} : memref<1xindex>
                            %505 = arith.index_cast %504 : index to i34
                            %506 = arith.addi %505, %174 : i34
                            %507 = arith.cmpi sle, %506, %488 : i34
                            affine.store %507, %503[%c0] {to = "assert_cond_428", unsigned} : memref<1xi1>
                            %508 = affine.load %503[0] {from = "assert_cond_428", unsigned} : memref<1xi1>
                            %509 = arith.extui %508 : i1 to i32
                            %510 = arith.cmpi eq, %509, %c0_i32 : i32
                            scf.if %510 {
                              %634 = affine.load %501[0] {from = "_addr_427", unsigned} : memref<1xindex>
                              %635 = arith.index_cast %634 : index to i34
                              %636 = arith.addi %635, %174 : i34
                              hcl.print(%634, %636) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                              scf.while : () -> () {
                                %637 = affine.load %503[0] {from = "assert_cond_428", unsigned} : memref<1xi1>
                                %638 = arith.extui %637 : i1 to i32
                                %639 = arith.cmpi ne, %638, %c1_i32 : i32
                                scf.condition(%639)
                              } do {
                                affine.store %3, %503[0] {to = "assert_cond_428", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %511 = memref.alloc() {name = "Mem.read_c_58"} : memref<1xi32>
                            %512 = affine.load %500[0] {from = "read_addr_426", unsigned} : memref<1xindex>
                            %513 = arith.addi %512, %c0 {unsigned} : index
                            %514 = memref.load %60[%513] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %514, %511[%c0] {to = "Mem.read_c_58", unsigned} : memref<1xi32>
                            %515 = memref.alloc() {name = "_b_429"} : memref<1xi64>
                            %516 = affine.load %511[0] {from = "Mem.read_c_58", unsigned} : memref<1xi32>
                            %517 = arith.extui %516 {unsigned} : i32 to i64
                            affine.store %517, %515[%c0] {to = "_b_429", unsigned} : memref<1xi64>
                            %518 = memref.alloc() {name = "read_addr_430"} : memref<1xindex>
                            affine.store %arg2, %518[%c0] {to = "read_addr_430", unsigned} : memref<1xindex>
                            %519 = memref.alloc() {name = "_addr_431"} : memref<1xindex>
                            %520 = affine.load %518[0] {from = "read_addr_430", unsigned} : memref<1xindex>
                            affine.store %520, %519[%c0] {to = "_addr_431", unsigned} : memref<1xindex>
                            %521 = memref.alloc() {name = "assert_cond_432"} : memref<1xi1>
                            %522 = affine.load %519[0] {from = "_addr_431", unsigned} : memref<1xindex>
                            %523 = arith.index_cast %522 : index to i34
                            %524 = arith.addi %523, %174 : i34
                            %525 = arith.cmpi sle, %524, %488 : i34
                            affine.store %525, %521[%c0] {to = "assert_cond_432", unsigned} : memref<1xi1>
                            %526 = affine.load %521[0] {from = "assert_cond_432", unsigned} : memref<1xi1>
                            %527 = arith.extui %526 : i1 to i32
                            %528 = arith.cmpi eq, %527, %c0_i32 : i32
                            scf.if %528 {
                              %634 = affine.load %519[0] {from = "_addr_431", unsigned} : memref<1xindex>
                              %635 = arith.index_cast %634 : index to i34
                              %636 = arith.addi %635, %174 : i34
                              hcl.print(%634, %636) {format = "\0A\0AAssertion failed {}: ntt_win Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                              scf.while : () -> () {
                                %637 = affine.load %521[0] {from = "assert_cond_432", unsigned} : memref<1xi1>
                                %638 = arith.extui %637 : i1 to i32
                                %639 = arith.cmpi ne, %638, %c1_i32 : i32
                                scf.condition(%639)
                              } do {
                                affine.store %3, %521[0] {to = "assert_cond_432", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %529 = memref.alloc() {name = "Mem.read_c_59"} : memref<1xi32>
                            %530 = affine.load %518[0] {from = "read_addr_430", unsigned} : memref<1xindex>
                            %531 = arith.addi %530, %c0 {unsigned} : index
                            %532 = memref.load %61[%531] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                            affine.store %532, %529[%c0] {to = "Mem.read_c_59", unsigned} : memref<1xi32>
                            %533 = memref.alloc() {name = "_w_433"} : memref<1xi64>
                            %534 = affine.load %529[0] {from = "Mem.read_c_59", unsigned} : memref<1xi32>
                            %535 = arith.extui %534 {unsigned} : i32 to i64
                            affine.store %535, %533[%c0] {to = "_w_433", unsigned} : memref<1xi64>
                            %536 = memref.alloc() {name = "_q_434"} : memref<1xi64>
                            %537 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %538 = hcl.struct_get %537[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                            %539 = arith.extui %538 {unsigned} : i32 to i64
                            affine.store %539, %536[%c0] {to = "_q_434", unsigned} : memref<1xi64>
                            %540 = memref.alloc() {name = "assert_cond_435"} : memref<1xi1>
                            %541 = affine.load %536[0] {from = "_q_434", unsigned} : memref<1xi64>
                            %c4294967295_i64 = arith.constant 4294967295 : i64
                            %542 = arith.andi %541, %c4294967295_i64 : i64
                            %543 = arith.extsi %c1_i32 : i32 to i64
                            %544 = arith.cmpi eq, %542, %543 : i64
                            affine.store %544, %540[%c0] {to = "assert_cond_435", unsigned} : memref<1xi1>
                            %545 = affine.load %540[0] {from = "assert_cond_435", unsigned} : memref<1xi1>
                            %546 = arith.extui %545 : i1 to i32
                            %547 = arith.cmpi eq, %546, %c0_i32 : i32
                            scf.if %547 {
                              %634 = affine.load %536[0] {from = "_q_434", unsigned} : memref<1xi64>
                              hcl.print(%634) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                              scf.while : () -> () {
                                %635 = affine.load %540[0] {from = "assert_cond_435", unsigned} : memref<1xi1>
                                %636 = arith.extui %635 : i1 to i32
                                %637 = arith.cmpi ne, %636, %c1_i32 : i32
                                scf.condition(%637)
                              } do {
                                affine.store %3, %540[0] {to = "assert_cond_435", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %548 = memref.alloc() {name = "mont_redc_436"} : memref<1xi128>
                            %549 = affine.load %533[0] {from = "_w_433", unsigned} : memref<1xi64>
                            %550 = affine.load %515[0] {from = "_b_429", unsigned} : memref<1xi64>
                            %551 = arith.extui %549 {unsigned} : i64 to i128
                            %552 = arith.extui %550 {unsigned} : i64 to i128
                            %553 = arith.muli %551, %552 {unsigned} : i128
                            %c-1_i32 = arith.constant -1 : i32
                            %554 = arith.extui %553 : i128 to i160
                            %555 = arith.extsi %c-1_i32 : i32 to i160
                            %556 = arith.muli %554, %555 : i160
                            %557 = arith.trunci %556 {unsigned} : i160 to i128
                            %558 = arith.extsi %c4294967295_i64 : i64 to i128
                            %559 = arith.andi %557, %558 : i128
                            %560 = affine.load %536[0] {from = "_q_434", unsigned} : memref<1xi64>
                            %561 = arith.extsi %559 : i128 to i192
                            %562 = arith.extui %560 : i64 to i192
                            %563 = arith.muli %561, %562 : i192
                            %564 = arith.extui %553 : i128 to i193
                            %565 = arith.extsi %563 : i192 to i193
                            %566 = arith.addi %564, %565 : i193
                            %c32_i32 = arith.constant 32 : i32
                            %567 = arith.extsi %c32_i32 : i32 to i193
                            %568 = arith.shrsi %566, %567 : i193
                            %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                            %569 = arith.muli %568, %c18446744073709551615_i193 : i193
                            %570 = arith.extsi %c4294967295_i64 : i64 to i193
                            %571 = arith.andi %569, %570 : i193
                            %572 = arith.extsi %571 : i193 to i257
                            %573 = arith.extui %560 : i64 to i257
                            %574 = arith.muli %572, %573 : i257
                            %575 = arith.extsi %568 : i193 to i258
                            %576 = arith.extsi %574 : i257 to i258
                            %577 = arith.addi %575, %576 : i258
                            %578 = arith.extsi %c32_i32 : i32 to i258
                            %579 = arith.shrsi %577, %578 : i258
                            %580 = arith.extui %560 : i64 to i258
                            %581 = arith.cmpi slt, %579, %580 : i258
                            %582 = arith.extsi %579 : i258 to i259
                            %583 = arith.extui %560 : i64 to i259
                            %584 = arith.subi %582, %583 : i259
                            %585 = arith.extsi %579 : i258 to i260
                            %586 = arith.extsi %584 : i259 to i260
                            %587 = arith.select %581, %585, %586 : i260
                            %588 = arith.trunci %587 {unsigned} : i260 to i128
                            affine.store %588, %548[%c0] {to = "mont_redc_436", unsigned} : memref<1xi128>
                            %589 = memref.alloc() {name = "write_addr_437"} : memref<1xindex>
                            affine.store %arg2, %589[%c0] {to = "write_addr_437", unsigned} : memref<1xindex>
                            %590 = memref.alloc() {name = "_addr_438"} : memref<1xindex>
                            %591 = affine.load %589[0] {from = "write_addr_437", unsigned} : memref<1xindex>
                            affine.store %591, %590[%c0] {to = "_addr_438", unsigned} : memref<1xindex>
                            %592 = memref.alloc() {name = "assert_cond_439"} : memref<1xi1>
                            %593 = affine.load %590[0] {from = "_addr_438", unsigned} : memref<1xindex>
                            %594 = arith.index_cast %593 : index to i34
                            %595 = arith.addi %594, %174 : i34
                            %596 = arith.cmpi sle, %595, %488 : i34
                            affine.store %596, %592[%c0] {to = "assert_cond_439", unsigned} : memref<1xi1>
                            %597 = affine.load %592[0] {from = "assert_cond_439", unsigned} : memref<1xi1>
                            %598 = arith.extui %597 : i1 to i32
                            %599 = arith.cmpi eq, %598, %c0_i32 : i32
                            scf.if %599 {
                              %634 = affine.load %590[0] {from = "_addr_438", unsigned} : memref<1xindex>
                              %635 = arith.index_cast %634 : index to i34
                              %636 = arith.addi %635, %174 : i34
                              hcl.print(%634, %636) {format = "\0A\0AAssertion failed {}: nttdataouttop Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                              scf.while : () -> () {
                                %637 = affine.load %592[0] {from = "assert_cond_439", unsigned} : memref<1xi1>
                                %638 = arith.extui %637 : i1 to i32
                                %639 = arith.cmpi ne, %638, %c1_i32 : i32
                                scf.condition(%639)
                              } do {
                                affine.store %3, %592[0] {to = "assert_cond_439", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %600 = affine.load %497[0] {from = "_a_425", unsigned} : memref<1xi64>
                            %601 = affine.load %548[0] {from = "mont_redc_436", unsigned} : memref<1xi128>
                            %602 = arith.extui %600 {unsigned} : i64 to i129
                            %603 = arith.extui %601 {unsigned} : i128 to i129
                            %604 = arith.addi %602, %603 {unsigned} : i129
                            %605 = affine.load %536[0] {from = "_q_434", unsigned} : memref<1xi64>
                            %606 = arith.extui %605 {unsigned} : i64 to i129
                            %607 = arith.remui %604, %606 {unsigned} : i129
                            %608 = arith.trunci %607 {unsigned} : i129 to i32
                            %609 = affine.load %589[0] {from = "write_addr_437", unsigned} : memref<1xindex>
                            memref.store %608, %53[%609] {to = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                            %610 = memref.alloc() {name = "write_addr_440"} : memref<1xindex>
                            affine.store %arg2, %610[%c0] {to = "write_addr_440", unsigned} : memref<1xindex>
                            %611 = memref.alloc() {name = "_addr_441"} : memref<1xindex>
                            %612 = affine.load %610[0] {from = "write_addr_440", unsigned} : memref<1xindex>
                            affine.store %612, %611[%c0] {to = "_addr_441", unsigned} : memref<1xindex>
                            %613 = memref.alloc() {name = "assert_cond_442"} : memref<1xi1>
                            %614 = affine.load %611[0] {from = "_addr_441", unsigned} : memref<1xindex>
                            %615 = arith.index_cast %614 : index to i34
                            %616 = arith.addi %615, %174 : i34
                            %617 = arith.cmpi sle, %616, %488 : i34
                            affine.store %617, %613[%c0] {to = "assert_cond_442", unsigned} : memref<1xi1>
                            %618 = affine.load %613[0] {from = "assert_cond_442", unsigned} : memref<1xi1>
                            %619 = arith.extui %618 : i1 to i32
                            %620 = arith.cmpi eq, %619, %c0_i32 : i32
                            scf.if %620 {
                              %634 = affine.load %611[0] {from = "_addr_441", unsigned} : memref<1xindex>
                              %635 = arith.index_cast %634 : index to i34
                              %636 = arith.addi %635, %174 : i34
                              hcl.print(%634, %636) {format = "\0A\0AAssertion failed {}: nttdataoutbot Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                              scf.while : () -> () {
                                %637 = affine.load %613[0] {from = "assert_cond_442", unsigned} : memref<1xi1>
                                %638 = arith.extui %637 : i1 to i32
                                %639 = arith.cmpi ne, %638, %c1_i32 : i32
                                scf.condition(%639)
                              } do {
                                affine.store %3, %613[0] {to = "assert_cond_442", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %621 = affine.load %536[0] {from = "_q_434", unsigned} : memref<1xi64>
                            %622 = affine.load %497[0] {from = "_a_425", unsigned} : memref<1xi64>
                            %623 = arith.extui %621 {unsigned} : i64 to i65
                            %624 = arith.extui %622 {unsigned} : i64 to i65
                            %625 = arith.addi %623, %624 {unsigned} : i65
                            %626 = affine.load %548[0] {from = "mont_redc_436", unsigned} : memref<1xi128>
                            %627 = arith.extui %625 {unsigned} : i65 to i129
                            %628 = arith.extui %626 {unsigned} : i128 to i129
                            %629 = arith.subi %627, %628 {unsigned} : i129
                            %630 = arith.extui %621 {unsigned} : i64 to i129
                            %631 = arith.remui %629, %630 {unsigned} : i129
                            %632 = arith.trunci %631 {unsigned} : i129 to i32
                            %633 = affine.load %610[0] {from = "write_addr_440", unsigned} : memref<1xindex>
                            memref.store %632, %54[%633] {to = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                          } {loop_name = "i", op_name = "bflyfn_56"}
                          %455 = memref.alloc() {name = "rfaddr_443"} : memref<1x!hcl.struct<i7, i2>>
                          %456 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %457 = hcl.struct_get %456[10] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          %458 = hcl.int_to_struct(%457) {unsigned} : i9 -> <i7, i2>
                          affine.store %458, %455[%c0] {to = "rfaddr_443"} : memref<1x!hcl.struct<i7, i2>>
                          %459 = memref.alloc() {name = "bv_444"} : memref<1xi3>
                          %460 = affine.load %455[0] {from = "rfaddr_443"} : memref<1x!hcl.struct<i7, i2>>
                          %461 = hcl.struct_get %460[1] : <i7, i2> -> i2
                          %462 = arith.extui %461 {unsigned} : i2 to i3
                          affine.store %462, %459[%c0] {to = "bv_444", unsigned} : memref<1xi3>
                          %463 = memref.alloc() {name = "rv_445"} : memref<1xi8>
                          %464 = affine.load %455[0] {from = "rfaddr_443"} : memref<1x!hcl.struct<i7, i2>>
                          %465 = hcl.struct_get %464[0] : <i7, i2> -> i7
                          %466 = arith.extui %465 {unsigned} : i7 to i8
                          affine.store %466, %463[%c0] {to = "rv_445", unsigned} : memref<1xi8>
                          %467 = memref.alloc() {name = "blocknum"} : memref<1xi3>
                          %468 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %469 = hcl.struct_get %468[14] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                          affine.store %469, %467[%c0] {to = "blocknum", unsigned} : memref<1xi3>
                          %470 = memref.alloc() {name = "modsel"} : memref<1xi6>
                          %471 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %472 = hcl.struct_get %471[6] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                          affine.store %472, %470[%c0] {to = "modsel", unsigned} : memref<1xi6>
                          %473 = affine.load %470[0] {from = "modsel", unsigned} : memref<1xi6>
                          %c31_i32 = arith.constant 31 : i32
                          %474 = arith.extui %473 : i6 to i32
                          %475 = arith.andi %474, %c31_i32 : i32
                          %476 = arith.trunci %475 {unsigned} : i32 to i6
                          affine.store %476, %470[0] {to = "modsel", unsigned} : memref<1xi6>
                          affine.for %arg2 = 0 to 8192 {
                            %481 = memref.alloc() {name = "i_tmp"} : memref<1xi15>
                            %482 = arith.index_cast %arg2 {unsigned} : index to i15
                            affine.store %482, %481[%c0] {to = "i_tmp", unsigned} : memref<1xi15>
                            %483 = memref.alloc() {name = "tilenum"} : memref<1xi7>
                            %484 = arith.trunci %c0_i32 {unsigned} : i32 to i7
                            affine.store %484, %483[%c0] {to = "tilenum", unsigned} : memref<1xi7>
                            %c4032_i32 = arith.constant 4032 : i32
                            %485 = arith.index_cast %arg2 : index to i32
                            %486 = arith.andi %485, %c4032_i32 : i32
                            %487 = arith.shrsi %486, %c5_i32 : i32
                            %c12_i32 = arith.constant 12 : i32
                            %488 = arith.index_cast %c12_i32 {unsigned} : i32 to index
                            %489 = arith.shrui %arg2, %488 {unsigned} : index
                            %490 = arith.extsi %487 : i32 to i34
                            %491 = arith.index_cast %489 : index to i34
                            %492 = arith.addi %490, %491 : i34
                            %493 = arith.trunci %492 {unsigned} : i34 to i7
                            affine.store %493, %483[0] {to = "tilenum", unsigned} : memref<1xi7>
                            %494 = memref.alloc() {name = "t_en16"} : memref<1xi1>
                            affine.store %3, %494[%c0] {to = "t_en16", unsigned} : memref<1xi1>
                            %495 = memref.alloc() {name = "t_en32"} : memref<1xi1>
                            affine.store %3, %495[%c0] {to = "t_en32", unsigned} : memref<1xi1>
                            %496 = memref.alloc() {name = "t_en64"} : memref<1xi1>
                            affine.store %3, %496[%c0] {to = "t_en64", unsigned} : memref<1xi1>
                            %497 = memref.alloc() {name = "t_en128"} : memref<1xi1>
                            affine.store %3, %497[%c0] {to = "t_en128", unsigned} : memref<1xi1>
                            %498 = memref.alloc() {name = "t_up"} : memref<1xi1>
                            affine.store %3, %498[%c0] {to = "t_up", unsigned} : memref<1xi1>
                            %499 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %500 = hcl.struct_get %499[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %501 = arith.extui %500 : i5 to i32
                            %502 = arith.cmpi eq, %501, %c0_i32 : i32
                            %503 = arith.andi %true, %502 {unsigned} : i1
                            %504 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %505 = hcl.get_bit(%504 : i7, %c0_0) -> i1
                            %506 = arith.extui %505 : i1 to i32
                            %507 = arith.cmpi eq, %506, %c1_i32 : i32
                            %508 = arith.andi %503, %507 {unsigned} : i1
                            %509 = arith.ori %false, %508 {unsigned} : i1
                            %510 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %511 = hcl.struct_get %510[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %512 = arith.extui %511 : i5 to i32
                            %513 = arith.cmpi eq, %512, %c1_i32 : i32
                            %514 = arith.andi %true, %513 {unsigned} : i1
                            %515 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %c6 = arith.constant {unsigned} 6 : index
                            %516 = hcl.get_bit(%515 : i7, %c6) -> i1
                            %517 = arith.extui %516 : i1 to i32
                            %518 = arith.cmpi eq, %517, %c1_i32 : i32
                            %519 = arith.andi %514, %518 {unsigned} : i1
                            %520 = arith.ori %509, %519 {unsigned} : i1
                            %521 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %522 = hcl.struct_get %521[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %523 = arith.extui %522 : i5 to i32
                            %524 = arith.cmpi eq, %523, %c2_i32 : i32
                            %525 = arith.andi %true, %524 {unsigned} : i1
                            %526 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %c5 = arith.constant {unsigned} 5 : index
                            %527 = hcl.get_bit(%526 : i7, %c5) -> i1
                            %528 = arith.extui %527 : i1 to i32
                            %529 = arith.cmpi eq, %528, %c1_i32 : i32
                            %530 = arith.andi %525, %529 {unsigned} : i1
                            %531 = arith.ori %520, %530 {unsigned} : i1
                            %532 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %533 = hcl.struct_get %532[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %534 = arith.extui %533 : i5 to i32
                            %535 = arith.cmpi eq, %534, %c3_i32 : i32
                            %536 = arith.andi %true, %535 {unsigned} : i1
                            %537 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %c4 = arith.constant {unsigned} 4 : index
                            %538 = hcl.get_bit(%537 : i7, %c4) -> i1
                            %539 = arith.extui %538 : i1 to i32
                            %540 = arith.cmpi eq, %539, %c1_i32 : i32
                            %541 = arith.andi %536, %540 {unsigned} : i1
                            %542 = arith.ori %531, %541 {unsigned} : i1
                            %543 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %544 = hcl.struct_get %543[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %545 = arith.extui %544 : i5 to i32
                            %546 = arith.cmpi eq, %545, %c4_i32 : i32
                            %547 = arith.andi %true, %546 {unsigned} : i1
                            %548 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %c3 = arith.constant {unsigned} 3 : index
                            %549 = hcl.get_bit(%548 : i7, %c3) -> i1
                            %550 = arith.extui %549 : i1 to i32
                            %551 = arith.cmpi eq, %550, %c1_i32 : i32
                            %552 = arith.andi %547, %551 {unsigned} : i1
                            %553 = arith.ori %542, %552 {unsigned} : i1
                            %554 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %555 = hcl.struct_get %554[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %556 = arith.extui %555 : i5 to i32
                            %557 = arith.cmpi eq, %556, %c5_i32 : i32
                            %558 = arith.andi %true, %557 {unsigned} : i1
                            %559 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %c2 = arith.constant {unsigned} 2 : index
                            %560 = hcl.get_bit(%559 : i7, %c2) -> i1
                            %561 = arith.extui %560 : i1 to i32
                            %562 = arith.cmpi eq, %561, %c1_i32 : i32
                            %563 = arith.andi %558, %562 {unsigned} : i1
                            %564 = arith.ori %553, %563 {unsigned} : i1
                            %565 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %566 = hcl.struct_get %565[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %c6_i32 = arith.constant 6 : i32
                            %567 = arith.extui %566 : i5 to i32
                            %568 = arith.cmpi eq, %567, %c6_i32 : i32
                            %569 = arith.andi %true, %568 {unsigned} : i1
                            %570 = affine.load %483[0] {from = "tilenum", unsigned} : memref<1xi7>
                            %c1 = arith.constant {unsigned} 1 : index
                            %571 = hcl.get_bit(%570 : i7, %c1) -> i1
                            %572 = arith.extui %571 : i1 to i32
                            %573 = arith.cmpi eq, %572, %c1_i32 : i32
                            %574 = arith.andi %569, %573 {unsigned} : i1
                            %575 = arith.ori %564, %574 {unsigned} : i1
                            affine.store %575, %494[0] {to = "t_en16", unsigned} : memref<1xi1>
                            %576 = affine.load %494[0] {from = "t_en16", unsigned} : memref<1xi1>
                            %577 = arith.ori %false, %576 {unsigned} : i1
                            %578 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %579 = hcl.struct_get %578[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %c7_i32 = arith.constant 7 : i32
                            %580 = arith.extui %579 : i5 to i32
                            %581 = arith.cmpi eq, %580, %c7_i32 : i32
                            %582 = arith.andi %true, %581 {unsigned} : i1
                            %583 = affine.load %467[0] {from = "blocknum", unsigned} : memref<1xi3>
                            %584 = hcl.get_bit(%583 : i3, %c0_0) -> i1
                            %585 = arith.extui %584 : i1 to i32
                            %586 = arith.cmpi ne, %585, %c0_i32 : i32
                            %587 = arith.andi %582, %586 {unsigned} : i1
                            %588 = arith.ori %577, %587 {unsigned} : i1
                            affine.store %588, %495[0] {to = "t_en32", unsigned} : memref<1xi1>
                            %589 = affine.load %494[0] {from = "t_en16", unsigned} : memref<1xi1>
                            %590 = arith.ori %false, %589 {unsigned} : i1
                            %591 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %592 = hcl.struct_get %591[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %593 = arith.extui %592 : i5 to i32
                            %594 = arith.cmpi eq, %593, %c7_i32 : i32
                            %595 = arith.andi %true, %594 {unsigned} : i1
                            %596 = affine.load %467[0] {from = "blocknum", unsigned} : memref<1xi3>
                            %597 = hcl.get_bit(%596 : i3, %c1) -> i1
                            %598 = arith.extui %597 : i1 to i32
                            %599 = arith.cmpi ne, %598, %c0_i32 : i32
                            %600 = arith.andi %595, %599 {unsigned} : i1
                            %601 = arith.ori %590, %600 {unsigned} : i1
                            %602 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %603 = hcl.struct_get %602[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %c8_i32 = arith.constant 8 : i32
                            %604 = arith.extui %603 : i5 to i32
                            %605 = arith.cmpi eq, %604, %c8_i32 : i32
                            %606 = arith.andi %true, %605 {unsigned} : i1
                            %607 = affine.load %467[0] {from = "blocknum", unsigned} : memref<1xi3>
                            %608 = hcl.get_bit(%607 : i3, %c0_0) -> i1
                            %609 = arith.extui %608 : i1 to i32
                            %610 = arith.cmpi ne, %609, %c0_i32 : i32
                            %611 = arith.andi %606, %610 {unsigned} : i1
                            %612 = arith.ori %601, %611 {unsigned} : i1
                            affine.store %612, %496[0] {to = "t_en64", unsigned} : memref<1xi1>
                            %613 = affine.load %494[0] {from = "t_en16", unsigned} : memref<1xi1>
                            %614 = arith.ori %false, %613 {unsigned} : i1
                            %615 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %616 = hcl.struct_get %615[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %617 = arith.extui %616 : i5 to i32
                            %618 = arith.cmpi eq, %617, %c7_i32 : i32
                            %619 = arith.andi %true, %618 {unsigned} : i1
                            %620 = affine.load %467[0] {from = "blocknum", unsigned} : memref<1xi3>
                            %621 = hcl.get_bit(%620 : i3, %c2) -> i1
                            %622 = arith.extui %621 : i1 to i32
                            %623 = arith.cmpi ne, %622, %c0_i32 : i32
                            %624 = arith.andi %619, %623 {unsigned} : i1
                            %625 = arith.ori %614, %624 {unsigned} : i1
                            %626 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %627 = hcl.struct_get %626[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %628 = arith.extui %627 : i5 to i32
                            %629 = arith.cmpi eq, %628, %c8_i32 : i32
                            %630 = arith.andi %true, %629 {unsigned} : i1
                            %631 = affine.load %467[0] {from = "blocknum", unsigned} : memref<1xi3>
                            %632 = hcl.get_bit(%631 : i3, %c1) -> i1
                            %633 = arith.extui %632 : i1 to i32
                            %634 = arith.cmpi ne, %633, %c0_i32 : i32
                            %635 = arith.andi %630, %634 {unsigned} : i1
                            %636 = arith.ori %625, %635 {unsigned} : i1
                            %637 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %638 = hcl.struct_get %637[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %c9_i32 = arith.constant 9 : i32
                            %639 = arith.extui %638 : i5 to i32
                            %640 = arith.cmpi eq, %639, %c9_i32 : i32
                            %641 = arith.andi %true, %640 {unsigned} : i1
                            %642 = affine.load %467[0] {from = "blocknum", unsigned} : memref<1xi3>
                            %643 = hcl.get_bit(%642 : i3, %c0_0) -> i1
                            %644 = arith.extui %643 : i1 to i32
                            %645 = arith.cmpi ne, %644, %c0_i32 : i32
                            %646 = arith.andi %641, %645 {unsigned} : i1
                            %647 = arith.ori %636, %646 {unsigned} : i1
                            affine.store %647, %497[0] {to = "t_en128", unsigned} : memref<1xi1>
                            %648 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %649 = hcl.struct_get %648[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                            %650 = arith.extui %649 : i2 to i32
                            %651 = arith.cmpi eq, %650, %c0_i32 : i32
                            %652 = affine.load %494[0] {from = "t_en16", unsigned} : memref<1xi1>
                            %653 = arith.cmpi eq, %650, %c1_i32 : i32
                            %654 = affine.load %495[0] {from = "t_en32", unsigned} : memref<1xi1>
                            %655 = arith.cmpi eq, %650, %c2_i32 : i32
                            %656 = affine.load %496[0] {from = "t_en64", unsigned} : memref<1xi1>
                            %657 = affine.load %497[0] {from = "t_en128", unsigned} : memref<1xi1>
                            %658 = arith.extui %656 {unsigned} : i1 to i2
                            %659 = arith.extui %657 {unsigned} : i1 to i2
                            %660 = arith.select %655, %658, %659 : i2
                            %661 = arith.extui %654 {unsigned} : i1 to i3
                            %662 = arith.extui %660 {unsigned} : i2 to i3
                            %663 = arith.select %653, %661, %662 : i3
                            %664 = arith.extui %652 {unsigned} : i1 to i4
                            %665 = arith.extui %663 {unsigned} : i3 to i4
                            %666 = arith.select %651, %664, %665 : i4
                            %667 = arith.trunci %666 {unsigned} : i4 to i1
                            affine.store %667, %498[0] {to = "t_up", unsigned} : memref<1xi1>
                            %668 = affine.load %498[0] {from = "t_up", unsigned} : memref<1xi1>
                            %669 = arith.extui %668 : i1 to i32
                            %670 = arith.cmpi eq, %669, %c0_i32 : i32
                            scf.if %670 {
                              %674 = affine.load %470[0] {from = "modsel", unsigned} : memref<1xi6>
                              %675 = arith.extui %674 : i6 to i32
                              %676 = arith.cmpi slt, %675, %c6_i32 : i32
                              scf.if %676 {
                                %677 = affine.load %470[0] {from = "modsel", unsigned} : memref<1xi6>
                                %678 = arith.index_cast %677 {unsigned} : i6 to index
                                %679 = memref.load %481[%678] {from = "i_tmp", unsigned} : memref<1xi15>
                                %680 = arith.extui %679 : i15 to i32
                                %681 = arith.cmpi ne, %680, %c0_i32 : i32
                                %682 = arith.select %681, %160, %145 : i33
                                %683 = arith.trunci %682 {unsigned} : i33 to i1
                                affine.store %683, %498[0] {to = "t_up", unsigned} : memref<1xi1>
                              }
                            }
                            %671 = affine.load %498[0] {from = "t_up", unsigned} : memref<1xi1>
                            %672 = arith.extui %671 : i1 to i32
                            %673 = arith.cmpi ne, %672, %c0_i32 : i32
                            scf.if %673 {
                              %674 = memref.alloc() {name = "read_addr_455"} : memref<1xindex>
                              affine.store %arg2, %674[%c0] {to = "read_addr_455", unsigned} : memref<1xindex>
                              %675 = memref.alloc() {name = "_addr_456"} : memref<1xindex>
                              %676 = affine.load %674[0] {from = "read_addr_455", unsigned} : memref<1xindex>
                              affine.store %676, %675[%c0] {to = "_addr_456", unsigned} : memref<1xindex>
                              %677 = memref.alloc() {name = "assert_cond_457"} : memref<1xi1>
                              %678 = affine.load %675[0] {from = "_addr_456", unsigned} : memref<1xindex>
                              %679 = arith.index_cast %678 : index to i34
                              %680 = arith.addi %679, %174 : i34
                              %c8192_i32 = arith.constant 8192 : i32
                              %681 = arith.extsi %c8192_i32 : i32 to i34
                              %682 = arith.cmpi sle, %680, %681 : i34
                              affine.store %682, %677[%c0] {to = "assert_cond_457", unsigned} : memref<1xi1>
                              %683 = affine.load %677[0] {from = "assert_cond_457", unsigned} : memref<1xi1>
                              %684 = arith.extui %683 : i1 to i32
                              %685 = arith.cmpi eq, %684, %c0_i32 : i32
                              scf.if %685 {
                                %746 = affine.load %675[0] {from = "_addr_456", unsigned} : memref<1xindex>
                                %747 = arith.index_cast %746 : index to i34
                                %748 = arith.addi %747, %174 : i34
                                hcl.print(%746, %748) {format = "\0A\0AAssertion failed {}: ntt_win Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %749 = affine.load %677[0] {from = "assert_cond_457", unsigned} : memref<1xi1>
                                  %750 = arith.extui %749 : i1 to i32
                                  %751 = arith.cmpi ne, %750, %c1_i32 : i32
                                  scf.condition(%751)
                                } do {
                                  affine.store %3, %677[0] {to = "assert_cond_457", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %686 = memref.alloc() {name = "Mem.read_c_61"} : memref<1xi32>
                              %687 = affine.load %674[0] {from = "read_addr_455", unsigned} : memref<1xindex>
                              %688 = arith.addi %687, %c0 {unsigned} : index
                              %689 = memref.load %61[%688] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %689, %686[%c0] {to = "Mem.read_c_61", unsigned} : memref<1xi32>
                              %690 = memref.alloc() {name = "assert_cond_458"} : memref<1xi1>
                              %691 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %692 = hcl.struct_get %691[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                              %c65535_i32 = arith.constant 65535 : i32
                              %693 = arith.andi %692, %c65535_i32 : i32
                              %694 = arith.cmpi eq, %693, %c1_i32 : i32
                              affine.store %694, %690[%c0] {to = "assert_cond_458", unsigned} : memref<1xi1>
                              %695 = affine.load %690[0] {from = "assert_cond_458", unsigned} : memref<1xi1>
                              %696 = arith.extui %695 : i1 to i32
                              %697 = arith.cmpi eq, %696, %c0_i32 : i32
                              scf.if %697 {
                                %746 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                %747 = hcl.struct_get %746[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                                hcl.print(%747) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i32
                                scf.while : () -> () {
                                  %748 = affine.load %690[0] {from = "assert_cond_458", unsigned} : memref<1xi1>
                                  %749 = arith.extui %748 : i1 to i32
                                  %750 = arith.cmpi ne, %749, %c1_i32 : i32
                                  scf.condition(%750)
                                } do {
                                  affine.store %3, %690[0] {to = "assert_cond_458", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %698 = memref.alloc() {name = "mont_redc_459"} : memref<1xi64>
                              %699 = affine.load %686[0] {from = "Mem.read_c_61", unsigned} : memref<1xi32>
                              %700 = affine.load %442[0] {from = "Mem.read_c_51", unsigned} : memref<1xi32>
                              %701 = arith.extui %699 {unsigned} : i32 to i64
                              %702 = arith.extui %700 {unsigned} : i32 to i64
                              %703 = arith.muli %701, %702 {unsigned} : i64
                              %c-1_i32 = arith.constant -1 : i32
                              %704 = arith.extui %703 : i64 to i96
                              %705 = arith.extsi %c-1_i32 : i32 to i96
                              %706 = arith.muli %704, %705 : i96
                              %707 = arith.trunci %706 {unsigned} : i96 to i64
                              %708 = arith.extsi %c65535_i32 : i32 to i64
                              %709 = arith.andi %707, %708 : i64
                              %710 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %711 = hcl.struct_get %710[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                              %712 = arith.extsi %709 : i64 to i96
                              %713 = arith.extui %711 : i32 to i96
                              %714 = arith.muli %712, %713 : i96
                              %715 = arith.extui %703 : i64 to i97
                              %716 = arith.extsi %714 : i96 to i97
                              %717 = arith.addi %715, %716 : i97
                              %718 = arith.extsi %c16_i32 : i32 to i97
                              %719 = arith.shrsi %717, %718 : i97
                              %c18446744073709551615_i97 = arith.constant 18446744073709551615 : i97
                              %720 = arith.muli %719, %c18446744073709551615_i97 : i97
                              %721 = arith.extsi %c65535_i32 : i32 to i97
                              %722 = arith.andi %720, %721 : i97
                              %723 = arith.extsi %722 : i97 to i129
                              %724 = arith.extui %711 : i32 to i129
                              %725 = arith.muli %723, %724 : i129
                              %726 = arith.extsi %719 : i97 to i130
                              %727 = arith.extsi %725 : i129 to i130
                              %728 = arith.addi %726, %727 : i130
                              %729 = arith.extsi %c16_i32 : i32 to i130
                              %730 = arith.shrsi %728, %729 : i130
                              %731 = arith.extui %711 : i32 to i130
                              %732 = arith.cmpi slt, %730, %731 : i130
                              %733 = arith.extsi %730 : i130 to i131
                              %734 = arith.extui %711 : i32 to i131
                              %735 = arith.subi %733, %734 : i131
                              %736 = arith.extsi %730 : i130 to i132
                              %737 = arith.extsi %735 : i131 to i132
                              %738 = arith.select %732, %736, %737 : i132
                              %739 = arith.trunci %738 {unsigned} : i132 to i64
                              affine.store %739, %698[%c0] {to = "mont_redc_459", unsigned} : memref<1xi64>
                              %740 = affine.load %698[0] {from = "mont_redc_459", unsigned} : memref<1xi64>
                              %741 = arith.trunci %740 {unsigned} : i64 to i32
                              %742 = affine.load %459[0] {from = "bv_444", unsigned} : memref<1xi3>
                              %743 = arith.index_cast %742 {unsigned} : i3 to index
                              %744 = affine.load %463[0] {from = "rv_445", unsigned} : memref<1xi8>
                              %745 = arith.index_cast %744 {unsigned} : i8 to index
                              memref.store %741, %41[%743, %745, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                            } else {
                              %674 = memref.alloc() {name = "read_addr_460"} : memref<1xindex>
                              affine.store %arg2, %674[%c0] {to = "read_addr_460", unsigned} : memref<1xindex>
                              %675 = memref.alloc() {name = "_addr_461"} : memref<1xindex>
                              %676 = affine.load %674[0] {from = "read_addr_460", unsigned} : memref<1xindex>
                              affine.store %676, %675[%c0] {to = "_addr_461", unsigned} : memref<1xindex>
                              %677 = memref.alloc() {name = "assert_cond_462"} : memref<1xi1>
                              %678 = affine.load %675[0] {from = "_addr_461", unsigned} : memref<1xindex>
                              %679 = arith.index_cast %678 : index to i34
                              %680 = arith.addi %679, %174 : i34
                              %c8192_i32 = arith.constant 8192 : i32
                              %681 = arith.extsi %c8192_i32 : i32 to i34
                              %682 = arith.cmpi sle, %680, %681 : i34
                              affine.store %682, %677[%c0] {to = "assert_cond_462", unsigned} : memref<1xi1>
                              %683 = affine.load %677[0] {from = "assert_cond_462", unsigned} : memref<1xi1>
                              %684 = arith.extui %683 : i1 to i32
                              %685 = arith.cmpi eq, %684, %c0_i32 : i32
                              scf.if %685 {
                                %695 = affine.load %675[0] {from = "_addr_461", unsigned} : memref<1xindex>
                                %696 = arith.index_cast %695 : index to i34
                                %697 = arith.addi %696, %174 : i34
                                hcl.print(%695, %697) {format = "\0A\0AAssertion failed {}: ntt_win Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %698 = affine.load %677[0] {from = "assert_cond_462", unsigned} : memref<1xi1>
                                  %699 = arith.extui %698 : i1 to i32
                                  %700 = arith.cmpi ne, %699, %c1_i32 : i32
                                  scf.condition(%700)
                                } do {
                                  affine.store %3, %677[0] {to = "assert_cond_462", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %686 = memref.alloc() {name = "Mem.read_c_62"} : memref<1xi32>
                              %687 = affine.load %674[0] {from = "read_addr_460", unsigned} : memref<1xindex>
                              %688 = arith.addi %687, %c0 {unsigned} : index
                              %689 = memref.load %61[%688] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %689, %686[%c0] {to = "Mem.read_c_62", unsigned} : memref<1xi32>
                              %690 = affine.load %686[0] {from = "Mem.read_c_62", unsigned} : memref<1xi32>
                              %691 = affine.load %459[0] {from = "bv_444", unsigned} : memref<1xi3>
                              %692 = arith.index_cast %691 {unsigned} : i3 to index
                              %693 = affine.load %463[0] {from = "rv_445", unsigned} : memref<1xi8>
                              %694 = arith.index_cast %693 {unsigned} : i8 to index
                              memref.store %690, %41[%692, %694, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                            }
                          } {loop_name = "i", op_name = "ntt_update_twiddle"}
                          %477 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %478 = hcl.struct_get %477[2] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          affine.store %478, %47[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                          %479 = affine.load %250[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_ntt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                          %480 = hcl.struct_get %479[3] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                          affine.store %480, %49[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                          affine.store %322, %45[0] {to = "flag_ntt", unsigned} : memref<1xi1>
                        } else {
                          %250 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                          %c6_i32 = arith.constant 6 : i32
                          %251 = arith.extui %250 : i16 to i32
                          %252 = arith.cmpi eq, %251, %c6_i32 : i32
                          scf.if %252 {
                            %253 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %254 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                            %255 = hcl.int_to_struct(%254) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>
                            affine.store %255, %253[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                            %256 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                            hcl.print(%256) {format = "ip=%d ", signedness = "u"} : i5
                            %257 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %258 = hcl.struct_get %257[1] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i1
                            %259 = hcl.struct_get %257[2] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %260 = hcl.struct_get %257[3] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %261 = hcl.struct_get %257[4] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %262 = hcl.struct_get %257[5] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %263 = hcl.struct_get %257[8] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                            %264 = hcl.struct_get %257[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                            %265 = hcl.struct_get %257[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %266 = hcl.struct_get %257[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %267 = hcl.struct_get %257[16] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                            hcl.print(%258, %259, %260, %261, %262, %263, %264, %265, %266, %267) {format = "intt twmetadataMemRdDataSel_0=%d dsttop=%d dstbot=%d srctop=%d srcbot=%d twmetadataMemRdDataSel_3_1=%d q=%d srctw=%d stagenum=%d twmetadataMemRdDataSel_5_4=%d", signedness = "uuuuuuuuuu"} : i1, i9, i9, i9, i9, i3, i32, i9, i5, i2
                            hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                            %268 = memref.alloc() {name = "assert_cond_464"} : memref<1xi1>
                            %269 = affine.load %46[0] {from = "flag_intt", unsigned} : memref<1xi1>
                            %270 = arith.extui %269 : i1 to i32
                            %271 = arith.cmpi eq, %270, %c0_i32 : i32
                            affine.store %271, %268[%c0] {to = "assert_cond_464", unsigned} : memref<1xi1>
                            %272 = affine.load %268[0] {from = "assert_cond_464", unsigned} : memref<1xi1>
                            %273 = arith.extui %272 : i1 to i32
                            %274 = arith.cmpi eq, %273, %c0_i32 : i32
                            scf.if %274 {
                              hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: INTT flag already set?\0A\0A", signedness = "_"} : i32
                              scf.while : () -> () {
                                %376 = affine.load %268[0] {from = "assert_cond_464", unsigned} : memref<1xi1>
                                %377 = arith.extui %376 : i1 to i32
                                %378 = arith.cmpi ne, %377, %c1_i32 : i32
                                scf.condition(%378)
                              } do {
                                affine.store %3, %268[0] {to = "assert_cond_464", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %275 = memref.alloc() {name = "rfaddr_465"} : memref<1x!hcl.struct<i7, i2>>
                            %276 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %277 = hcl.struct_get %276[2] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %278 = hcl.int_to_struct(%277) {unsigned} : i9 -> <i7, i2>
                            affine.store %278, %275[%c0] {to = "rfaddr_465"} : memref<1x!hcl.struct<i7, i2>>
                            %279 = memref.alloc() {name = "bv_466"} : memref<1xi3>
                            %280 = affine.load %275[0] {from = "rfaddr_465"} : memref<1x!hcl.struct<i7, i2>>
                            %281 = hcl.struct_get %280[1] : <i7, i2> -> i2
                            %282 = arith.extui %281 {unsigned} : i2 to i3
                            affine.store %282, %279[%c0] {to = "bv_466", unsigned} : memref<1xi3>
                            %283 = memref.alloc() {name = "rv_467"} : memref<1xi8>
                            %284 = affine.load %275[0] {from = "rfaddr_465"} : memref<1x!hcl.struct<i7, i2>>
                            %285 = hcl.struct_get %284[0] : <i7, i2> -> i7
                            %286 = arith.extui %285 {unsigned} : i7 to i8
                            affine.store %286, %283[%c0] {to = "rv_467", unsigned} : memref<1xi8>
                            %287 = memref.alloc() {name = "rfaddr_468"} : memref<1x!hcl.struct<i7, i2>>
                            %288 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %289 = hcl.struct_get %288[3] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %290 = hcl.int_to_struct(%289) {unsigned} : i9 -> <i7, i2>
                            affine.store %290, %287[%c0] {to = "rfaddr_468"} : memref<1x!hcl.struct<i7, i2>>
                            %291 = memref.alloc() {name = "bv_469"} : memref<1xi3>
                            %292 = affine.load %287[0] {from = "rfaddr_468"} : memref<1x!hcl.struct<i7, i2>>
                            %293 = hcl.struct_get %292[1] : <i7, i2> -> i2
                            %294 = arith.extui %293 {unsigned} : i2 to i3
                            affine.store %294, %291[%c0] {to = "bv_469", unsigned} : memref<1xi3>
                            %295 = memref.alloc() {name = "rv_470"} : memref<1xi8>
                            %296 = affine.load %287[0] {from = "rfaddr_468"} : memref<1x!hcl.struct<i7, i2>>
                            %297 = hcl.struct_get %296[0] : <i7, i2> -> i7
                            %298 = arith.extui %297 {unsigned} : i7 to i8
                            affine.store %298, %295[%c0] {to = "rv_470", unsigned} : memref<1xi8>
                            %299 = memref.alloc() {name = "assert_cond_471"} : memref<1xi1>
                            %300 = affine.load %279[0] {from = "bv_466", unsigned} : memref<1xi3>
                            %301 = affine.load %291[0] {from = "bv_469", unsigned} : memref<1xi3>
                            %302 = arith.cmpi ne, %300, %301 {unsigned} : i3
                            affine.store %302, %299[%c0] {to = "assert_cond_471", unsigned} : memref<1xi1>
                            %303 = affine.load %299[0] {from = "assert_cond_471", unsigned} : memref<1xi1>
                            %304 = arith.extui %303 : i1 to i32
                            %305 = arith.cmpi eq, %304, %c0_i32 : i32
                            scf.if %305 {
                              hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: intt write bank conflict\0A\0A", signedness = "_"} : i32
                              scf.while : () -> () {
                                %376 = affine.load %299[0] {from = "assert_cond_471", unsigned} : memref<1xi1>
                                %377 = arith.extui %376 : i1 to i32
                                %378 = arith.cmpi ne, %377, %c1_i32 : i32
                                scf.condition(%378)
                              } do {
                                affine.store %3, %299[0] {to = "assert_cond_471", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %306 = memref.alloc() {name = "rfaddr_472"} : memref<1x!hcl.struct<i7, i2>>
                            %307 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %308 = hcl.struct_get %307[4] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %309 = hcl.int_to_struct(%308) {unsigned} : i9 -> <i7, i2>
                            affine.store %309, %306[%c0] {to = "rfaddr_472"} : memref<1x!hcl.struct<i7, i2>>
                            %310 = memref.alloc() {name = "bv_473"} : memref<1xi3>
                            %311 = affine.load %306[0] {from = "rfaddr_472"} : memref<1x!hcl.struct<i7, i2>>
                            %312 = hcl.struct_get %311[1] : <i7, i2> -> i2
                            %313 = arith.extui %312 {unsigned} : i2 to i3
                            affine.store %313, %310[%c0] {to = "bv_473", unsigned} : memref<1xi3>
                            %314 = memref.alloc() {name = "rv_474"} : memref<1xi8>
                            %315 = affine.load %306[0] {from = "rfaddr_472"} : memref<1x!hcl.struct<i7, i2>>
                            %316 = hcl.struct_get %315[0] : <i7, i2> -> i7
                            %317 = arith.extui %316 {unsigned} : i7 to i8
                            affine.store %317, %314[%c0] {to = "rv_474", unsigned} : memref<1xi8>
                            %318 = memref.alloc() {name = "rfaddr_475"} : memref<1x!hcl.struct<i7, i2>>
                            %319 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %320 = hcl.struct_get %319[5] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            %321 = hcl.int_to_struct(%320) {unsigned} : i9 -> <i7, i2>
                            affine.store %321, %318[%c0] {to = "rfaddr_475"} : memref<1x!hcl.struct<i7, i2>>
                            %322 = memref.alloc() {name = "bv_476"} : memref<1xi3>
                            %323 = affine.load %318[0] {from = "rfaddr_475"} : memref<1x!hcl.struct<i7, i2>>
                            %324 = hcl.struct_get %323[1] : <i7, i2> -> i2
                            %325 = arith.extui %324 {unsigned} : i2 to i3
                            affine.store %325, %322[%c0] {to = "bv_476", unsigned} : memref<1xi3>
                            %326 = memref.alloc() {name = "rv_477"} : memref<1xi8>
                            %327 = affine.load %318[0] {from = "rfaddr_475"} : memref<1x!hcl.struct<i7, i2>>
                            %328 = hcl.struct_get %327[0] : <i7, i2> -> i7
                            %329 = arith.extui %328 {unsigned} : i7 to i8
                            affine.store %329, %326[%c0] {to = "rv_477", unsigned} : memref<1xi8>
                            affine.for %arg2 = 0 to 64 {
                              affine.for %arg3 = 0 to 64 {
                                %376 = memref.alloc() {name = "write_addr_478"} : memref<1xi65>
                                %377 = arith.index_cast %arg2 : index to i64
                                %378 = arith.extsi %c128_i32 : i32 to i64
                                %379 = arith.muli %377, %378 : i64
                                %380 = arith.extsi %379 : i64 to i65
                                %381 = arith.index_cast %arg3 : index to i65
                                %382 = arith.addi %380, %381 : i65
                                affine.store %382, %376[%c0] {to = "write_addr_478"} : memref<1xi65>
                                %383 = memref.alloc() {name = "_addr_479"} : memref<1xi65>
                                %384 = affine.load %376[0] {from = "write_addr_478"} : memref<1xi65>
                                affine.store %384, %383[%c0] {to = "_addr_479"} : memref<1xi65>
                                %385 = memref.alloc() {name = "assert_cond_480"} : memref<1xi1>
                                %386 = affine.load %383[0] {from = "_addr_479"} : memref<1xi65>
                                %387 = arith.extsi %386 : i65 to i66
                                %388 = arith.extsi %c1_i32 : i32 to i66
                                %389 = arith.addi %387, %388 : i66
                                %c8192_i32 = arith.constant 8192 : i32
                                %390 = arith.extsi %c8192_i32 : i32 to i66
                                %391 = arith.cmpi sle, %389, %390 : i66
                                affine.store %391, %385[%c0] {to = "assert_cond_480", unsigned} : memref<1xi1>
                                %392 = affine.load %385[0] {from = "assert_cond_480", unsigned} : memref<1xi1>
                                %393 = arith.extui %392 : i1 to i32
                                %394 = arith.cmpi eq, %393, %c0_i32 : i32
                                scf.if %394 {
                                  %411 = affine.load %383[0] {from = "_addr_479"} : memref<1xi65>
                                  %412 = arith.extsi %411 : i65 to i66
                                  %413 = arith.addi %412, %388 : i66
                                  hcl.print(%411, %413) {format = "\0A\0AAssertion failed {}: ntt_ain Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i65, i66
                                  scf.while : () -> () {
                                    %414 = affine.load %385[0] {from = "assert_cond_480", unsigned} : memref<1xi1>
                                    %415 = arith.extui %414 : i1 to i32
                                    %416 = arith.cmpi ne, %415, %c1_i32 : i32
                                    scf.condition(%416)
                                  } do {
                                    affine.store %3, %385[0] {to = "assert_cond_480", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %395 = affine.load %310[0] {from = "bv_473", unsigned} : memref<1xi3>
                                %396 = arith.index_cast %395 {unsigned} : i3 to index
                                %397 = affine.load %314[0] {from = "rv_474", unsigned} : memref<1xi8>
                                %398 = arith.index_cast %397 {unsigned} : i8 to index
                                %c64_i32_1 = arith.constant 64 : i32
                                %399 = arith.extsi %c64_i32_1 : i32 to i64
                                %400 = arith.muli %377, %399 : i64
                                %401 = arith.extsi %c0_i32 : i32 to i65
                                %402 = arith.extsi %400 : i64 to i65
                                %403 = arith.addi %401, %402 : i65
                                %404 = arith.extsi %403 : i65 to i66
                                %405 = arith.index_cast %arg3 : index to i66
                                %406 = arith.addi %404, %405 : i66
                                %407 = arith.index_cast %406 {unsigned} : i66 to index
                                %408 = memref.load %41[%396, %398, %407] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %409 = affine.load %376[0] {from = "write_addr_478"} : memref<1xi65>
                                %410 = arith.index_cast %409 {unsigned} : i65 to index
                                memref.store %408, %59[%410] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64"}
                              affine.for %arg3 = 0 to 64 {
                                %376 = memref.alloc() {name = "write_addr_481"} : memref<1xi66>
                                %377 = arith.index_cast %arg2 : index to i64
                                %378 = arith.extsi %c128_i32 : i32 to i64
                                %379 = arith.muli %377, %378 : i64
                                %c64_i32_1 = arith.constant 64 : i32
                                %380 = arith.extsi %379 : i64 to i65
                                %381 = arith.extsi %c64_i32_1 : i32 to i65
                                %382 = arith.addi %380, %381 : i65
                                %383 = arith.extsi %382 : i65 to i66
                                %384 = arith.index_cast %arg3 : index to i66
                                %385 = arith.addi %383, %384 : i66
                                affine.store %385, %376[%c0] {to = "write_addr_481"} : memref<1xi66>
                                %386 = memref.alloc() {name = "_addr_482"} : memref<1xi66>
                                %387 = affine.load %376[0] {from = "write_addr_481"} : memref<1xi66>
                                affine.store %387, %386[%c0] {to = "_addr_482"} : memref<1xi66>
                                %388 = memref.alloc() {name = "assert_cond_483"} : memref<1xi1>
                                %389 = affine.load %386[0] {from = "_addr_482"} : memref<1xi66>
                                %390 = arith.extsi %389 : i66 to i67
                                %391 = arith.extsi %c1_i32 : i32 to i67
                                %392 = arith.addi %390, %391 : i67
                                %c8192_i32 = arith.constant 8192 : i32
                                %393 = arith.extsi %c8192_i32 : i32 to i67
                                %394 = arith.cmpi sle, %392, %393 : i67
                                affine.store %394, %388[%c0] {to = "assert_cond_483", unsigned} : memref<1xi1>
                                %395 = affine.load %388[0] {from = "assert_cond_483", unsigned} : memref<1xi1>
                                %396 = arith.extui %395 : i1 to i32
                                %397 = arith.cmpi eq, %396, %c0_i32 : i32
                                scf.if %397 {
                                  %413 = affine.load %386[0] {from = "_addr_482"} : memref<1xi66>
                                  %414 = arith.extsi %413 : i66 to i67
                                  %415 = arith.addi %414, %391 : i67
                                  hcl.print(%413, %415) {format = "\0A\0AAssertion failed {}: ntt_ain Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                  scf.while : () -> () {
                                    %416 = affine.load %388[0] {from = "assert_cond_483", unsigned} : memref<1xi1>
                                    %417 = arith.extui %416 : i1 to i32
                                    %418 = arith.cmpi ne, %417, %c1_i32 : i32
                                    scf.condition(%418)
                                  } do {
                                    affine.store %3, %388[0] {to = "assert_cond_483", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %398 = affine.load %322[0] {from = "bv_476", unsigned} : memref<1xi3>
                                %399 = arith.index_cast %398 {unsigned} : i3 to index
                                %400 = affine.load %326[0] {from = "rv_477", unsigned} : memref<1xi8>
                                %401 = arith.index_cast %400 {unsigned} : i8 to index
                                %402 = arith.extsi %c64_i32_1 : i32 to i64
                                %403 = arith.muli %377, %402 : i64
                                %404 = arith.extsi %c0_i32 : i32 to i65
                                %405 = arith.extsi %403 : i64 to i65
                                %406 = arith.addi %404, %405 : i65
                                %407 = arith.extsi %406 : i65 to i66
                                %408 = arith.addi %407, %384 : i66
                                %409 = arith.index_cast %408 {unsigned} : i66 to index
                                %410 = memref.load %41[%399, %401, %409] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %411 = affine.load %376[0] {from = "write_addr_481"} : memref<1xi66>
                                %412 = arith.index_cast %411 {unsigned} : i66 to index
                                memref.store %410, %59[%412] {to = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_a"}
                            affine.for %arg2 = 0 to 64 {
                              affine.for %arg3 = 0 to 64 {
                                %376 = memref.alloc() {name = "write_addr_484"} : memref<1xi65>
                                %377 = arith.index_cast %arg2 : index to i64
                                %378 = arith.extsi %c128_i32 : i32 to i64
                                %379 = arith.muli %377, %378 : i64
                                %380 = arith.extsi %379 : i64 to i65
                                %381 = arith.index_cast %arg3 : index to i65
                                %382 = arith.addi %380, %381 : i65
                                affine.store %382, %376[%c0] {to = "write_addr_484"} : memref<1xi65>
                                %383 = memref.alloc() {name = "_addr_485"} : memref<1xi65>
                                %384 = affine.load %376[0] {from = "write_addr_484"} : memref<1xi65>
                                affine.store %384, %383[%c0] {to = "_addr_485"} : memref<1xi65>
                                %385 = memref.alloc() {name = "assert_cond_486"} : memref<1xi1>
                                %386 = affine.load %383[0] {from = "_addr_485"} : memref<1xi65>
                                %387 = arith.extsi %386 : i65 to i66
                                %388 = arith.extsi %c1_i32 : i32 to i66
                                %389 = arith.addi %387, %388 : i66
                                %c8192_i32 = arith.constant 8192 : i32
                                %390 = arith.extsi %c8192_i32 : i32 to i66
                                %391 = arith.cmpi sle, %389, %390 : i66
                                affine.store %391, %385[%c0] {to = "assert_cond_486", unsigned} : memref<1xi1>
                                %392 = affine.load %385[0] {from = "assert_cond_486", unsigned} : memref<1xi1>
                                %393 = arith.extui %392 : i1 to i32
                                %394 = arith.cmpi eq, %393, %c0_i32 : i32
                                scf.if %394 {
                                  %411 = affine.load %383[0] {from = "_addr_485"} : memref<1xi65>
                                  %412 = arith.extsi %411 : i65 to i66
                                  %413 = arith.addi %412, %388 : i66
                                  hcl.print(%411, %413) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i65, i66
                                  scf.while : () -> () {
                                    %414 = affine.load %385[0] {from = "assert_cond_486", unsigned} : memref<1xi1>
                                    %415 = arith.extui %414 : i1 to i32
                                    %416 = arith.cmpi ne, %415, %c1_i32 : i32
                                    scf.condition(%416)
                                  } do {
                                    affine.store %3, %385[0] {to = "assert_cond_486", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %395 = affine.load %310[0] {from = "bv_473", unsigned} : memref<1xi3>
                                %396 = arith.index_cast %395 {unsigned} : i3 to index
                                %397 = affine.load %314[0] {from = "rv_474", unsigned} : memref<1xi8>
                                %398 = arith.index_cast %397 {unsigned} : i8 to index
                                %c4096_i32 = arith.constant 4096 : i32
                                %c64_i32_1 = arith.constant 64 : i32
                                %399 = arith.extsi %c64_i32_1 : i32 to i64
                                %400 = arith.muli %377, %399 : i64
                                %401 = arith.extsi %c4096_i32 : i32 to i65
                                %402 = arith.extsi %400 : i64 to i65
                                %403 = arith.addi %401, %402 : i65
                                %404 = arith.extsi %403 : i65 to i66
                                %405 = arith.index_cast %arg3 : index to i66
                                %406 = arith.addi %404, %405 : i66
                                %407 = arith.index_cast %406 {unsigned} : i66 to index
                                %408 = memref.load %41[%396, %398, %407] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %409 = affine.load %376[0] {from = "write_addr_484"} : memref<1xi65>
                                %410 = arith.index_cast %409 {unsigned} : i65 to index
                                memref.store %408, %60[%410] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "ain64_67"}
                              affine.for %arg3 = 0 to 64 {
                                %376 = memref.alloc() {name = "write_addr_487"} : memref<1xi66>
                                %377 = arith.index_cast %arg2 : index to i64
                                %378 = arith.extsi %c128_i32 : i32 to i64
                                %379 = arith.muli %377, %378 : i64
                                %c64_i32_1 = arith.constant 64 : i32
                                %380 = arith.extsi %379 : i64 to i65
                                %381 = arith.extsi %c64_i32_1 : i32 to i65
                                %382 = arith.addi %380, %381 : i65
                                %383 = arith.extsi %382 : i65 to i66
                                %384 = arith.index_cast %arg3 : index to i66
                                %385 = arith.addi %383, %384 : i66
                                affine.store %385, %376[%c0] {to = "write_addr_487"} : memref<1xi66>
                                %386 = memref.alloc() {name = "_addr_488"} : memref<1xi66>
                                %387 = affine.load %376[0] {from = "write_addr_487"} : memref<1xi66>
                                affine.store %387, %386[%c0] {to = "_addr_488"} : memref<1xi66>
                                %388 = memref.alloc() {name = "assert_cond_489"} : memref<1xi1>
                                %389 = affine.load %386[0] {from = "_addr_488"} : memref<1xi66>
                                %390 = arith.extsi %389 : i66 to i67
                                %391 = arith.extsi %c1_i32 : i32 to i67
                                %392 = arith.addi %390, %391 : i67
                                %c8192_i32 = arith.constant 8192 : i32
                                %393 = arith.extsi %c8192_i32 : i32 to i67
                                %394 = arith.cmpi sle, %392, %393 : i67
                                affine.store %394, %388[%c0] {to = "assert_cond_489", unsigned} : memref<1xi1>
                                %395 = affine.load %388[0] {from = "assert_cond_489", unsigned} : memref<1xi1>
                                %396 = arith.extui %395 : i1 to i32
                                %397 = arith.cmpi eq, %396, %c0_i32 : i32
                                scf.if %397 {
                                  %413 = affine.load %386[0] {from = "_addr_488"} : memref<1xi66>
                                  %414 = arith.extsi %413 : i66 to i67
                                  %415 = arith.addi %414, %391 : i67
                                  hcl.print(%413, %415) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                                  scf.while : () -> () {
                                    %416 = affine.load %388[0] {from = "assert_cond_489", unsigned} : memref<1xi1>
                                    %417 = arith.extui %416 : i1 to i32
                                    %418 = arith.cmpi ne, %417, %c1_i32 : i32
                                    scf.condition(%418)
                                  } do {
                                    affine.store %3, %388[0] {to = "assert_cond_489", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %398 = affine.load %322[0] {from = "bv_476", unsigned} : memref<1xi3>
                                %399 = arith.index_cast %398 {unsigned} : i3 to index
                                %400 = affine.load %326[0] {from = "rv_477", unsigned} : memref<1xi8>
                                %401 = arith.index_cast %400 {unsigned} : i8 to index
                                %c4096_i32 = arith.constant 4096 : i32
                                %402 = arith.extsi %c64_i32_1 : i32 to i64
                                %403 = arith.muli %377, %402 : i64
                                %404 = arith.extsi %c4096_i32 : i32 to i65
                                %405 = arith.extsi %403 : i64 to i65
                                %406 = arith.addi %404, %405 : i65
                                %407 = arith.extsi %406 : i65 to i66
                                %408 = arith.addi %407, %384 : i66
                                %409 = arith.index_cast %408 {unsigned} : i66 to index
                                %410 = memref.load %41[%399, %401, %409] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %411 = affine.load %376[0] {from = "write_addr_487"} : memref<1xi66>
                                %412 = arith.index_cast %411 {unsigned} : i66 to index
                                memref.store %410, %60[%412] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "j", op_name = "bin64_68"}
                            } {loop_name = "i", op_name = "intt_in_swizzle_b"}
                            %330 = memref.alloc() {name = "mone_5_4_490"} : memref<1xi6>
                            %331 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %332 = hcl.struct_get %331[16] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                            %333 = arith.extui %332 {unsigned} : i2 to i6
                            affine.store %333, %330[%c0] {to = "mone_5_4_490", unsigned} : memref<1xi6>
                            %334 = memref.alloc() {name = "mone_3_1_491"} : memref<1xi6>
                            %335 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %336 = hcl.struct_get %335[8] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                            %337 = arith.extui %336 {unsigned} : i3 to i6
                            affine.store %337, %334[%c0] {to = "mone_3_1_491", unsigned} : memref<1xi6>
                            %338 = memref.alloc() {name = "mone_0_492"} : memref<1xi6>
                            %339 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %340 = hcl.struct_get %339[1] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i1
                            %341 = arith.extui %340 {unsigned} : i1 to i6
                            affine.store %341, %338[%c0] {to = "mone_0_492", unsigned} : memref<1xi6>
                            %342 = memref.alloc() {name = "read_addr_493"} : memref<1xi8>
                            %c0_i6 = arith.constant {unsigned} 0 : i6
                            %343 = arith.extui %c0_i6 {unsigned} : i6 to i7
                            %344 = arith.addi %343, %343 {unsigned} : i7
                            %345 = arith.extui %344 {unsigned} : i7 to i8
                            %346 = arith.extui %c0_i6 {unsigned} : i6 to i8
                            %347 = arith.addi %345, %346 {unsigned} : i8
                            affine.store %347, %342[%c0] {to = "read_addr_493", unsigned} : memref<1xi8>
                            %348 = memref.alloc() {name = "_addr_494"} : memref<1xi8>
                            %349 = affine.load %342[0] {from = "read_addr_493", unsigned} : memref<1xi8>
                            affine.store %349, %348[%c0] {to = "_addr_494", unsigned} : memref<1xi8>
                            %350 = memref.alloc() {name = "assert_cond_495"} : memref<1xi1>
                            %351 = affine.load %348[0] {from = "_addr_494", unsigned} : memref<1xi8>
                            %352 = arith.extui %351 : i8 to i33
                            %353 = arith.addi %352, %160 : i33
                            %c64_i32 = arith.constant 64 : i32
                            %354 = arith.extsi %c64_i32 : i32 to i33
                            %355 = arith.cmpi sle, %353, %354 : i33
                            affine.store %355, %350[%c0] {to = "assert_cond_495", unsigned} : memref<1xi1>
                            %356 = affine.load %350[0] {from = "assert_cond_495", unsigned} : memref<1xi1>
                            %357 = arith.extui %356 : i1 to i32
                            %358 = arith.cmpi eq, %357, %c0_i32 : i32
                            scf.if %358 {
                              %376 = affine.load %348[0] {from = "_addr_494", unsigned} : memref<1xi8>
                              %377 = arith.extui %376 : i8 to i33
                              %378 = arith.addi %377, %160 : i33
                              hcl.print(%376, %378) {format = "\0A\0AAssertion failed {}: mone Mem.read exceeds memory size: addr=%d+size=%d > 64\0A\0A", signedness = "u_"} : i8, i33
                              scf.while : () -> () {
                                %379 = affine.load %350[0] {from = "assert_cond_495", unsigned} : memref<1xi1>
                                %380 = arith.extui %379 : i1 to i32
                                %381 = arith.cmpi ne, %380, %c1_i32 : i32
                                scf.condition(%381)
                              } do {
                                affine.store %3, %350[0] {to = "assert_cond_495", unsigned} : memref<1xi1>
                                scf.yield
                              }
                            }
                            %359 = memref.alloc() {name = "Mem.read_c_69"} : memref<1xi32>
                            %360 = affine.load %342[0] {from = "read_addr_493", unsigned} : memref<1xi8>
                            %361 = arith.extui %360 {unsigned} : i8 to i33
                            %362 = arith.index_cast %c0 {unsigned} : index to i33
                            %363 = arith.addi %361, %362 {unsigned} : i33
                            %364 = arith.index_cast %363 {unsigned} : i33 to index
                            %365 = memref.load %43[%364] {from = "mone.alloc_c", unsigned} : memref<64xi32>
                            affine.store %365, %359[%c0] {to = "Mem.read_c_69", unsigned} : memref<1xi32>
                            %366 = affine.load %359[0] {from = "Mem.read_c_69", unsigned} : memref<1xi32>
                            affine.store %366, %62[0] {to = "mone_val", unsigned} : memref<1xi32>
                            %367 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %368 = hcl.struct_get %367[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                            %369 = arith.extui %368 : i5 to i32
                            %370 = arith.cmpi eq, %369, %c0_i32 : i32
                            scf.if %370 {
                              affine.for %arg2 = 0 to 8192 {
                                %376 = memref.alloc() {name = "write_addr_496"} : memref<1xindex>
                                affine.store %arg2, %376[%c0] {to = "write_addr_496", unsigned} : memref<1xindex>
                                %377 = memref.alloc() {name = "_addr_497"} : memref<1xindex>
                                %378 = affine.load %376[0] {from = "write_addr_496", unsigned} : memref<1xindex>
                                affine.store %378, %377[%c0] {to = "_addr_497", unsigned} : memref<1xindex>
                                %379 = memref.alloc() {name = "assert_cond_498"} : memref<1xi1>
                                %380 = affine.load %377[0] {from = "_addr_497", unsigned} : memref<1xindex>
                                %381 = arith.index_cast %380 : index to i34
                                %382 = arith.addi %381, %174 : i34
                                %c8192_i32 = arith.constant 8192 : i32
                                %383 = arith.extsi %c8192_i32 : i32 to i34
                                %384 = arith.cmpi sle, %382, %383 : i34
                                affine.store %384, %379[%c0] {to = "assert_cond_498", unsigned} : memref<1xi1>
                                %385 = affine.load %379[0] {from = "assert_cond_498", unsigned} : memref<1xi1>
                                %386 = arith.extui %385 : i1 to i32
                                %387 = arith.cmpi eq, %386, %c0_i32 : i32
                                scf.if %387 {
                                  %390 = affine.load %377[0] {from = "_addr_497", unsigned} : memref<1xindex>
                                  %391 = arith.index_cast %390 : index to i34
                                  %392 = arith.addi %391, %174 : i34
                                  hcl.print(%390, %392) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                  scf.while : () -> () {
                                    %393 = affine.load %379[0] {from = "assert_cond_498", unsigned} : memref<1xi1>
                                    %394 = arith.extui %393 : i1 to i32
                                    %395 = arith.cmpi ne, %394, %c1_i32 : i32
                                    scf.condition(%395)
                                  } do {
                                    affine.store %3, %379[0] {to = "assert_cond_498", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %388 = affine.load %62[0] {from = "mone_val", unsigned} : memref<1xi32>
                                %389 = affine.load %376[0] {from = "write_addr_496", unsigned} : memref<1xindex>
                                memref.store %388, %61[%389] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "i", op_name = "mone_fill_70"}
                            } else {
                              %376 = memref.alloc() {name = "rfaddr_499"} : memref<1x!hcl.struct<i7, i2>>
                              %377 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %378 = hcl.struct_get %377[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                              %379 = hcl.int_to_struct(%378) {unsigned} : i9 -> <i7, i2>
                              affine.store %379, %376[%c0] {to = "rfaddr_499"} : memref<1x!hcl.struct<i7, i2>>
                              %380 = memref.alloc() {name = "bv_500"} : memref<1xi3>
                              %381 = affine.load %376[0] {from = "rfaddr_499"} : memref<1x!hcl.struct<i7, i2>>
                              %382 = hcl.struct_get %381[1] : <i7, i2> -> i2
                              %383 = arith.extui %382 {unsigned} : i2 to i3
                              affine.store %383, %380[%c0] {to = "bv_500", unsigned} : memref<1xi3>
                              %384 = memref.alloc() {name = "rv_501"} : memref<1xi8>
                              %385 = affine.load %376[0] {from = "rfaddr_499"} : memref<1x!hcl.struct<i7, i2>>
                              %386 = hcl.struct_get %385[0] : <i7, i2> -> i7
                              %387 = arith.extui %386 {unsigned} : i7 to i8
                              affine.store %387, %384[%c0] {to = "rv_501", unsigned} : memref<1xi8>
                              affine.for %arg2 = 0 to 8192 {
                                %388 = memref.alloc() {name = "write_addr_502"} : memref<1xi34>
                                %389 = arith.extsi %c0_i32 : i32 to i34
                                %390 = arith.index_cast %arg2 : index to i34
                                %391 = arith.addi %389, %390 : i34
                                affine.store %391, %388[%c0] {to = "write_addr_502"} : memref<1xi34>
                                %392 = memref.alloc() {name = "_addr_503"} : memref<1xi34>
                                %393 = affine.load %388[0] {from = "write_addr_502"} : memref<1xi34>
                                affine.store %393, %392[%c0] {to = "_addr_503"} : memref<1xi34>
                                %394 = memref.alloc() {name = "assert_cond_504"} : memref<1xi1>
                                %395 = affine.load %392[0] {from = "_addr_503"} : memref<1xi34>
                                %396 = arith.extsi %395 : i34 to i35
                                %397 = arith.extsi %c1_i32 : i32 to i35
                                %398 = arith.addi %396, %397 : i35
                                %c8192_i32 = arith.constant 8192 : i32
                                %399 = arith.extsi %c8192_i32 : i32 to i35
                                %400 = arith.cmpi sle, %398, %399 : i35
                                affine.store %400, %394[%c0] {to = "assert_cond_504", unsigned} : memref<1xi1>
                                %401 = affine.load %394[0] {from = "assert_cond_504", unsigned} : memref<1xi1>
                                %402 = arith.extui %401 : i1 to i32
                                %403 = arith.cmpi eq, %402, %c0_i32 : i32
                                scf.if %403 {
                                  %412 = affine.load %392[0] {from = "_addr_503"} : memref<1xi34>
                                  %413 = arith.extsi %412 : i34 to i35
                                  %414 = arith.addi %413, %397 : i35
                                  hcl.print(%412, %414) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i34, i35
                                  scf.while : () -> () {
                                    %415 = affine.load %394[0] {from = "assert_cond_504", unsigned} : memref<1xi1>
                                    %416 = arith.extui %415 : i1 to i32
                                    %417 = arith.cmpi ne, %416, %c1_i32 : i32
                                    scf.condition(%417)
                                  } do {
                                    affine.store %3, %394[0] {to = "assert_cond_504", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %404 = affine.load %380[0] {from = "bv_500", unsigned} : memref<1xi3>
                                %405 = arith.index_cast %404 {unsigned} : i3 to index
                                %406 = affine.load %384[0] {from = "rv_501", unsigned} : memref<1xi8>
                                %407 = arith.index_cast %406 {unsigned} : i8 to index
                                %408 = arith.index_cast %391 {unsigned} : i34 to index
                                %409 = memref.load %41[%405, %407, %408] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                %410 = affine.load %388[0] {from = "write_addr_502"} : memref<1xi34>
                                %411 = arith.index_cast %410 {unsigned} : i34 to index
                                memref.store %409, %61[%411] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "i", op_name = "copyN_71"}
                            }
                            affine.for %arg2 = 0 to 8192 {
                              %376 = memref.alloc() {name = "read_addr_505"} : memref<1xindex>
                              affine.store %arg2, %376[%c0] {to = "read_addr_505", unsigned} : memref<1xindex>
                              %377 = memref.alloc() {name = "_addr_506"} : memref<1xindex>
                              %378 = affine.load %376[0] {from = "read_addr_505", unsigned} : memref<1xindex>
                              affine.store %378, %377[%c0] {to = "_addr_506", unsigned} : memref<1xindex>
                              %379 = memref.alloc() {name = "assert_cond_507"} : memref<1xi1>
                              %380 = affine.load %377[0] {from = "_addr_506", unsigned} : memref<1xindex>
                              %381 = arith.index_cast %380 : index to i34
                              %382 = arith.addi %381, %174 : i34
                              %c8192_i32 = arith.constant 8192 : i32
                              %383 = arith.extsi %c8192_i32 : i32 to i34
                              %384 = arith.cmpi sle, %382, %383 : i34
                              affine.store %384, %379[%c0] {to = "assert_cond_507", unsigned} : memref<1xi1>
                              %385 = affine.load %379[0] {from = "assert_cond_507", unsigned} : memref<1xi1>
                              %386 = arith.extui %385 : i1 to i32
                              %387 = arith.cmpi eq, %386, %c0_i32 : i32
                              scf.if %387 {
                                %529 = affine.load %377[0] {from = "_addr_506", unsigned} : memref<1xindex>
                                %530 = arith.index_cast %529 : index to i34
                                %531 = arith.addi %530, %174 : i34
                                hcl.print(%529, %531) {format = "\0A\0AAssertion failed {}: ntt_ain Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %532 = affine.load %379[0] {from = "assert_cond_507", unsigned} : memref<1xi1>
                                  %533 = arith.extui %532 : i1 to i32
                                  %534 = arith.cmpi ne, %533, %c1_i32 : i32
                                  scf.condition(%534)
                                } do {
                                  affine.store %3, %379[0] {to = "assert_cond_507", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %388 = memref.alloc() {name = "Mem.read_c_73"} : memref<1xi32>
                              %389 = affine.load %376[0] {from = "read_addr_505", unsigned} : memref<1xindex>
                              %390 = arith.addi %389, %c0 {unsigned} : index
                              %391 = memref.load %59[%390] {from = "ntt_ain.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %391, %388[%c0] {to = "Mem.read_c_73", unsigned} : memref<1xi32>
                              %392 = memref.alloc() {name = "_a_508"} : memref<1xi64>
                              %393 = affine.load %388[0] {from = "Mem.read_c_73", unsigned} : memref<1xi32>
                              %394 = arith.extui %393 {unsigned} : i32 to i64
                              affine.store %394, %392[%c0] {to = "_a_508", unsigned} : memref<1xi64>
                              %395 = memref.alloc() {name = "read_addr_509"} : memref<1xindex>
                              affine.store %arg2, %395[%c0] {to = "read_addr_509", unsigned} : memref<1xindex>
                              %396 = memref.alloc() {name = "_addr_510"} : memref<1xindex>
                              %397 = affine.load %395[0] {from = "read_addr_509", unsigned} : memref<1xindex>
                              affine.store %397, %396[%c0] {to = "_addr_510", unsigned} : memref<1xindex>
                              %398 = memref.alloc() {name = "assert_cond_511"} : memref<1xi1>
                              %399 = affine.load %396[0] {from = "_addr_510", unsigned} : memref<1xindex>
                              %400 = arith.index_cast %399 : index to i34
                              %401 = arith.addi %400, %174 : i34
                              %402 = arith.cmpi sle, %401, %383 : i34
                              affine.store %402, %398[%c0] {to = "assert_cond_511", unsigned} : memref<1xi1>
                              %403 = affine.load %398[0] {from = "assert_cond_511", unsigned} : memref<1xi1>
                              %404 = arith.extui %403 : i1 to i32
                              %405 = arith.cmpi eq, %404, %c0_i32 : i32
                              scf.if %405 {
                                %529 = affine.load %396[0] {from = "_addr_510", unsigned} : memref<1xindex>
                                %530 = arith.index_cast %529 : index to i34
                                %531 = arith.addi %530, %174 : i34
                                hcl.print(%529, %531) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %532 = affine.load %398[0] {from = "assert_cond_511", unsigned} : memref<1xi1>
                                  %533 = arith.extui %532 : i1 to i32
                                  %534 = arith.cmpi ne, %533, %c1_i32 : i32
                                  scf.condition(%534)
                                } do {
                                  affine.store %3, %398[0] {to = "assert_cond_511", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %406 = memref.alloc() {name = "Mem.read_c_74"} : memref<1xi32>
                              %407 = affine.load %395[0] {from = "read_addr_509", unsigned} : memref<1xindex>
                              %408 = arith.addi %407, %c0 {unsigned} : index
                              %409 = memref.load %60[%408] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %409, %406[%c0] {to = "Mem.read_c_74", unsigned} : memref<1xi32>
                              %410 = memref.alloc() {name = "_b_512"} : memref<1xi64>
                              %411 = affine.load %406[0] {from = "Mem.read_c_74", unsigned} : memref<1xi32>
                              %412 = arith.extui %411 {unsigned} : i32 to i64
                              affine.store %412, %410[%c0] {to = "_b_512", unsigned} : memref<1xi64>
                              %413 = memref.alloc() {name = "read_addr_513"} : memref<1xindex>
                              affine.store %arg2, %413[%c0] {to = "read_addr_513", unsigned} : memref<1xindex>
                              %414 = memref.alloc() {name = "_addr_514"} : memref<1xindex>
                              %415 = affine.load %413[0] {from = "read_addr_513", unsigned} : memref<1xindex>
                              affine.store %415, %414[%c0] {to = "_addr_514", unsigned} : memref<1xindex>
                              %416 = memref.alloc() {name = "assert_cond_515"} : memref<1xi1>
                              %417 = affine.load %414[0] {from = "_addr_514", unsigned} : memref<1xindex>
                              %418 = arith.index_cast %417 : index to i34
                              %419 = arith.addi %418, %174 : i34
                              %420 = arith.cmpi sle, %419, %383 : i34
                              affine.store %420, %416[%c0] {to = "assert_cond_515", unsigned} : memref<1xi1>
                              %421 = affine.load %416[0] {from = "assert_cond_515", unsigned} : memref<1xi1>
                              %422 = arith.extui %421 : i1 to i32
                              %423 = arith.cmpi eq, %422, %c0_i32 : i32
                              scf.if %423 {
                                %529 = affine.load %414[0] {from = "_addr_514", unsigned} : memref<1xindex>
                                %530 = arith.index_cast %529 : index to i34
                                %531 = arith.addi %530, %174 : i34
                                hcl.print(%529, %531) {format = "\0A\0AAssertion failed {}: ntt_win Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %532 = affine.load %416[0] {from = "assert_cond_515", unsigned} : memref<1xi1>
                                  %533 = arith.extui %532 : i1 to i32
                                  %534 = arith.cmpi ne, %533, %c1_i32 : i32
                                  scf.condition(%534)
                                } do {
                                  affine.store %3, %416[0] {to = "assert_cond_515", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %424 = memref.alloc() {name = "Mem.read_c_75"} : memref<1xi32>
                              %425 = affine.load %413[0] {from = "read_addr_513", unsigned} : memref<1xindex>
                              %426 = arith.addi %425, %c0 {unsigned} : index
                              %427 = memref.load %61[%426] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                              affine.store %427, %424[%c0] {to = "Mem.read_c_75", unsigned} : memref<1xi32>
                              %428 = memref.alloc() {name = "_w_516"} : memref<1xi64>
                              %429 = affine.load %424[0] {from = "Mem.read_c_75", unsigned} : memref<1xi32>
                              %430 = arith.extui %429 {unsigned} : i32 to i64
                              affine.store %430, %428[%c0] {to = "_w_516", unsigned} : memref<1xi64>
                              %431 = memref.alloc() {name = "_q_517"} : memref<1xi64>
                              %432 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %433 = hcl.struct_get %432[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                              %434 = arith.extui %433 {unsigned} : i32 to i64
                              affine.store %434, %431[%c0] {to = "_q_517", unsigned} : memref<1xi64>
                              %435 = memref.alloc() {name = "assert_cond_518"} : memref<1xi1>
                              %436 = affine.load %431[0] {from = "_q_517", unsigned} : memref<1xi64>
                              %c4294967295_i64 = arith.constant 4294967295 : i64
                              %437 = arith.andi %436, %c4294967295_i64 : i64
                              %438 = arith.extsi %c1_i32 : i32 to i64
                              %439 = arith.cmpi eq, %437, %438 : i64
                              affine.store %439, %435[%c0] {to = "assert_cond_518", unsigned} : memref<1xi1>
                              %440 = affine.load %435[0] {from = "assert_cond_518", unsigned} : memref<1xi1>
                              %441 = arith.extui %440 : i1 to i32
                              %442 = arith.cmpi eq, %441, %c0_i32 : i32
                              scf.if %442 {
                                %529 = affine.load %431[0] {from = "_q_517", unsigned} : memref<1xi64>
                                hcl.print(%529) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                                scf.while : () -> () {
                                  %530 = affine.load %435[0] {from = "assert_cond_518", unsigned} : memref<1xi1>
                                  %531 = arith.extui %530 : i1 to i32
                                  %532 = arith.cmpi ne, %531, %c1_i32 : i32
                                  scf.condition(%532)
                                } do {
                                  affine.store %3, %435[0] {to = "assert_cond_518", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %443 = memref.alloc() {name = "mont_redc_519"} : memref<1xi128>
                              %444 = affine.load %428[0] {from = "_w_516", unsigned} : memref<1xi64>
                              %445 = affine.load %410[0] {from = "_b_512", unsigned} : memref<1xi64>
                              %446 = arith.extui %444 {unsigned} : i64 to i128
                              %447 = arith.extui %445 {unsigned} : i64 to i128
                              %448 = arith.muli %446, %447 {unsigned} : i128
                              %c-1_i32 = arith.constant -1 : i32
                              %449 = arith.extui %448 : i128 to i160
                              %450 = arith.extsi %c-1_i32 : i32 to i160
                              %451 = arith.muli %449, %450 : i160
                              %452 = arith.trunci %451 {unsigned} : i160 to i128
                              %453 = arith.extsi %c4294967295_i64 : i64 to i128
                              %454 = arith.andi %452, %453 : i128
                              %455 = affine.load %431[0] {from = "_q_517", unsigned} : memref<1xi64>
                              %456 = arith.extsi %454 : i128 to i192
                              %457 = arith.extui %455 : i64 to i192
                              %458 = arith.muli %456, %457 : i192
                              %459 = arith.extui %448 : i128 to i193
                              %460 = arith.extsi %458 : i192 to i193
                              %461 = arith.addi %459, %460 : i193
                              %c32_i32 = arith.constant 32 : i32
                              %462 = arith.extsi %c32_i32 : i32 to i193
                              %463 = arith.shrsi %461, %462 : i193
                              %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                              %464 = arith.muli %463, %c18446744073709551615_i193 : i193
                              %465 = arith.extsi %c4294967295_i64 : i64 to i193
                              %466 = arith.andi %464, %465 : i193
                              %467 = arith.extsi %466 : i193 to i257
                              %468 = arith.extui %455 : i64 to i257
                              %469 = arith.muli %467, %468 : i257
                              %470 = arith.extsi %463 : i193 to i258
                              %471 = arith.extsi %469 : i257 to i258
                              %472 = arith.addi %470, %471 : i258
                              %473 = arith.extsi %c32_i32 : i32 to i258
                              %474 = arith.shrsi %472, %473 : i258
                              %475 = arith.extui %455 : i64 to i258
                              %476 = arith.cmpi slt, %474, %475 : i258
                              %477 = arith.extsi %474 : i258 to i259
                              %478 = arith.extui %455 : i64 to i259
                              %479 = arith.subi %477, %478 : i259
                              %480 = arith.extsi %474 : i258 to i260
                              %481 = arith.extsi %479 : i259 to i260
                              %482 = arith.select %476, %480, %481 : i260
                              %483 = arith.trunci %482 {unsigned} : i260 to i128
                              affine.store %483, %443[%c0] {to = "mont_redc_519", unsigned} : memref<1xi128>
                              %484 = memref.alloc() {name = "write_addr_520"} : memref<1xindex>
                              affine.store %arg2, %484[%c0] {to = "write_addr_520", unsigned} : memref<1xindex>
                              %485 = memref.alloc() {name = "_addr_521"} : memref<1xindex>
                              %486 = affine.load %484[0] {from = "write_addr_520", unsigned} : memref<1xindex>
                              affine.store %486, %485[%c0] {to = "_addr_521", unsigned} : memref<1xindex>
                              %487 = memref.alloc() {name = "assert_cond_522"} : memref<1xi1>
                              %488 = affine.load %485[0] {from = "_addr_521", unsigned} : memref<1xindex>
                              %489 = arith.index_cast %488 : index to i34
                              %490 = arith.addi %489, %174 : i34
                              %491 = arith.cmpi sle, %490, %383 : i34
                              affine.store %491, %487[%c0] {to = "assert_cond_522", unsigned} : memref<1xi1>
                              %492 = affine.load %487[0] {from = "assert_cond_522", unsigned} : memref<1xi1>
                              %493 = arith.extui %492 : i1 to i32
                              %494 = arith.cmpi eq, %493, %c0_i32 : i32
                              scf.if %494 {
                                %529 = affine.load %485[0] {from = "_addr_521", unsigned} : memref<1xindex>
                                %530 = arith.index_cast %529 : index to i34
                                %531 = arith.addi %530, %174 : i34
                                hcl.print(%529, %531) {format = "\0A\0AAssertion failed {}: inttdataouttop Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %532 = affine.load %487[0] {from = "assert_cond_522", unsigned} : memref<1xi1>
                                  %533 = arith.extui %532 : i1 to i32
                                  %534 = arith.cmpi ne, %533, %c1_i32 : i32
                                  scf.condition(%534)
                                } do {
                                  affine.store %3, %487[0] {to = "assert_cond_522", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %495 = affine.load %392[0] {from = "_a_508", unsigned} : memref<1xi64>
                              %496 = affine.load %443[0] {from = "mont_redc_519", unsigned} : memref<1xi128>
                              %497 = arith.extui %495 {unsigned} : i64 to i129
                              %498 = arith.extui %496 {unsigned} : i128 to i129
                              %499 = arith.addi %497, %498 {unsigned} : i129
                              %500 = affine.load %431[0] {from = "_q_517", unsigned} : memref<1xi64>
                              %501 = arith.extui %500 {unsigned} : i64 to i129
                              %502 = arith.remui %499, %501 {unsigned} : i129
                              %503 = arith.trunci %502 {unsigned} : i129 to i32
                              %504 = affine.load %484[0] {from = "write_addr_520", unsigned} : memref<1xindex>
                              memref.store %503, %57[%504] {to = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
                              %505 = memref.alloc() {name = "write_addr_523"} : memref<1xindex>
                              affine.store %arg2, %505[%c0] {to = "write_addr_523", unsigned} : memref<1xindex>
                              %506 = memref.alloc() {name = "_addr_524"} : memref<1xindex>
                              %507 = affine.load %505[0] {from = "write_addr_523", unsigned} : memref<1xindex>
                              affine.store %507, %506[%c0] {to = "_addr_524", unsigned} : memref<1xindex>
                              %508 = memref.alloc() {name = "assert_cond_525"} : memref<1xi1>
                              %509 = affine.load %506[0] {from = "_addr_524", unsigned} : memref<1xindex>
                              %510 = arith.index_cast %509 : index to i34
                              %511 = arith.addi %510, %174 : i34
                              %512 = arith.cmpi sle, %511, %383 : i34
                              affine.store %512, %508[%c0] {to = "assert_cond_525", unsigned} : memref<1xi1>
                              %513 = affine.load %508[0] {from = "assert_cond_525", unsigned} : memref<1xi1>
                              %514 = arith.extui %513 : i1 to i32
                              %515 = arith.cmpi eq, %514, %c0_i32 : i32
                              scf.if %515 {
                                %529 = affine.load %506[0] {from = "_addr_524", unsigned} : memref<1xindex>
                                %530 = arith.index_cast %529 : index to i34
                                %531 = arith.addi %530, %174 : i34
                                hcl.print(%529, %531) {format = "\0A\0AAssertion failed {}: inttdataoutbot Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                scf.while : () -> () {
                                  %532 = affine.load %508[0] {from = "assert_cond_525", unsigned} : memref<1xi1>
                                  %533 = arith.extui %532 : i1 to i32
                                  %534 = arith.cmpi ne, %533, %c1_i32 : i32
                                  scf.condition(%534)
                                } do {
                                  affine.store %3, %508[0] {to = "assert_cond_525", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %516 = affine.load %431[0] {from = "_q_517", unsigned} : memref<1xi64>
                              %517 = affine.load %392[0] {from = "_a_508", unsigned} : memref<1xi64>
                              %518 = arith.extui %516 {unsigned} : i64 to i65
                              %519 = arith.extui %517 {unsigned} : i64 to i65
                              %520 = arith.addi %518, %519 {unsigned} : i65
                              %521 = affine.load %443[0] {from = "mont_redc_519", unsigned} : memref<1xi128>
                              %522 = arith.extui %520 {unsigned} : i65 to i129
                              %523 = arith.extui %521 {unsigned} : i128 to i129
                              %524 = arith.subi %522, %523 {unsigned} : i129
                              %525 = arith.extui %516 {unsigned} : i64 to i129
                              %526 = arith.remui %524, %525 {unsigned} : i129
                              %527 = arith.trunci %526 {unsigned} : i129 to i32
                              %528 = affine.load %505[0] {from = "write_addr_523", unsigned} : memref<1xindex>
                              memref.store %527, %58[%528] {to = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
                            } {loop_name = "i", op_name = "bflyfn_72"}
                            %371 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %372 = hcl.struct_get %371[2] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            affine.store %372, %47[0] {to = "ntt_intt_top_addr", unsigned} : memref<1xi9>
                            %373 = affine.load %253[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_intt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                            %374 = hcl.struct_get %373[3] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                            affine.store %374, %49[0] {to = "ntt_intt_bot_addr", unsigned} : memref<1xi9>
                            %375 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                            affine.store %375, %46[0] {to = "flag_intt", unsigned} : memref<1xi1>
                          } else {
                            %253 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                            %c7_i32 = arith.constant 7 : i32
                            %254 = arith.extui %253 : i16 to i32
                            %255 = arith.cmpi eq, %254, %c7_i32 : i32
                            scf.if %255 {
                              %256 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %257 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                              %258 = hcl.int_to_struct(%257) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>
                              affine.store %258, %256[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                              %259 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                              hcl.print(%259) {format = "ip=%d ", signedness = "u"} : i5
                              %260 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %261 = hcl.struct_get %260[1] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i1
                              %262 = hcl.struct_get %260[6] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                              %263 = hcl.struct_get %260[7] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                              %264 = hcl.struct_get %260[8] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                              %265 = hcl.struct_get %260[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                              %266 = hcl.struct_get %260[10] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                              %267 = hcl.struct_get %260[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                              %268 = hcl.struct_get %260[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                              %269 = hcl.struct_get %260[14] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                              %270 = hcl.struct_get %260[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                              %271 = hcl.struct_get %260[16] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                              hcl.print(%261, %262, %263, %264, %265, %266, %267, %268, %269, %270, %271) {format = "twintt twmetadataMemRdDataSel_0=%d twrfmodsel=%d twrfrdaddr=%d twmetadataMemRdDataSel_3_1=%d q=%d dsttw=%d srctw=%d stagenum=%d blocknum=%d polyblocknum=%d twmetadataMemRdDataSel_5_4=%d", signedness = "uuuuuuuuuuu"} : i1, i6, i5, i3, i32, i9, i9, i5, i3, i2, i2
                              hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                              %272 = memref.alloc() {name = "mone_5_4_527"} : memref<1xi6>
                              %273 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %274 = hcl.struct_get %273[16] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                              %275 = arith.extui %274 {unsigned} : i2 to i6
                              affine.store %275, %272[%c0] {to = "mone_5_4_527", unsigned} : memref<1xi6>
                              %276 = memref.alloc() {name = "mone_3_1_528"} : memref<1xi6>
                              %277 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %278 = hcl.struct_get %277[8] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                              %279 = arith.extui %278 {unsigned} : i3 to i6
                              affine.store %279, %276[%c0] {to = "mone_3_1_528", unsigned} : memref<1xi6>
                              %280 = memref.alloc() {name = "mone_0_529"} : memref<1xi6>
                              %281 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %282 = hcl.struct_get %281[1] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i1
                              %283 = arith.extui %282 {unsigned} : i1 to i6
                              affine.store %283, %280[%c0] {to = "mone_0_529", unsigned} : memref<1xi6>
                              %284 = memref.alloc() {name = "read_addr_530"} : memref<1xi8>
                              %c0_i6 = arith.constant {unsigned} 0 : i6
                              %285 = arith.extui %c0_i6 {unsigned} : i6 to i7
                              %286 = arith.addi %285, %285 {unsigned} : i7
                              %287 = arith.extui %286 {unsigned} : i7 to i8
                              %288 = arith.extui %c0_i6 {unsigned} : i6 to i8
                              %289 = arith.addi %287, %288 {unsigned} : i8
                              affine.store %289, %284[%c0] {to = "read_addr_530", unsigned} : memref<1xi8>
                              %290 = memref.alloc() {name = "_addr_531"} : memref<1xi8>
                              %291 = affine.load %284[0] {from = "read_addr_530", unsigned} : memref<1xi8>
                              affine.store %291, %290[%c0] {to = "_addr_531", unsigned} : memref<1xi8>
                              %292 = memref.alloc() {name = "assert_cond_532"} : memref<1xi1>
                              %293 = affine.load %290[0] {from = "_addr_531", unsigned} : memref<1xi8>
                              %294 = arith.extui %293 : i8 to i33
                              %295 = arith.addi %294, %160 : i33
                              %c64_i32 = arith.constant 64 : i32
                              %296 = arith.extsi %c64_i32 : i32 to i33
                              %297 = arith.cmpi sle, %295, %296 : i33
                              affine.store %297, %292[%c0] {to = "assert_cond_532", unsigned} : memref<1xi1>
                              %298 = affine.load %292[0] {from = "assert_cond_532", unsigned} : memref<1xi1>
                              %299 = arith.extui %298 : i1 to i32
                              %300 = arith.cmpi eq, %299, %c0_i32 : i32
                              scf.if %300 {
                                %350 = affine.load %290[0] {from = "_addr_531", unsigned} : memref<1xi8>
                                %351 = arith.extui %350 : i8 to i33
                                %352 = arith.addi %351, %160 : i33
                                hcl.print(%350, %352) {format = "\0A\0AAssertion failed {}: mone Mem.read exceeds memory size: addr=%d+size=%d > 64\0A\0A", signedness = "u_"} : i8, i33
                                scf.while : () -> () {
                                  %353 = affine.load %292[0] {from = "assert_cond_532", unsigned} : memref<1xi1>
                                  %354 = arith.extui %353 : i1 to i32
                                  %355 = arith.cmpi ne, %354, %c1_i32 : i32
                                  scf.condition(%355)
                                } do {
                                  affine.store %3, %292[0] {to = "assert_cond_532", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %301 = memref.alloc() {name = "Mem.read_c_76"} : memref<1xi32>
                              %302 = affine.load %284[0] {from = "read_addr_530", unsigned} : memref<1xi8>
                              %303 = arith.extui %302 {unsigned} : i8 to i33
                              %304 = arith.index_cast %c0 {unsigned} : index to i33
                              %305 = arith.addi %303, %304 {unsigned} : i33
                              %306 = arith.index_cast %305 {unsigned} : i33 to index
                              %307 = memref.load %43[%306] {from = "mone.alloc_c", unsigned} : memref<64xi32>
                              affine.store %307, %301[%c0] {to = "Mem.read_c_76", unsigned} : memref<1xi32>
                              %308 = affine.load %301[0] {from = "Mem.read_c_76", unsigned} : memref<1xi32>
                              affine.store %308, %62[0] {to = "mone_val", unsigned} : memref<1xi32>
                              %309 = memref.alloc() {name = "read_addr_533"} : memref<1xi6>
                              %310 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %311 = hcl.struct_get %310[6] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i6
                              affine.store %311, %309[%c0] {to = "read_addr_533", unsigned} : memref<1xi6>
                              %312 = memref.alloc() {name = "_addr_534"} : memref<1xi6>
                              %313 = affine.load %309[0] {from = "read_addr_533", unsigned} : memref<1xi6>
                              affine.store %313, %312[%c0] {to = "_addr_534", unsigned} : memref<1xi6>
                              %314 = memref.alloc() {name = "assert_cond_535"} : memref<1xi1>
                              %315 = affine.load %312[0] {from = "_addr_534", unsigned} : memref<1xi6>
                              %316 = arith.extui %315 : i6 to i33
                              %317 = arith.addi %316, %160 : i33
                              %318 = arith.cmpi sle, %317, %296 : i33
                              affine.store %318, %314[%c0] {to = "assert_cond_535", unsigned} : memref<1xi1>
                              %319 = affine.load %314[0] {from = "assert_cond_535", unsigned} : memref<1xi1>
                              %320 = arith.extui %319 : i1 to i32
                              %321 = arith.cmpi eq, %320, %c0_i32 : i32
                              scf.if %321 {
                                %350 = affine.load %312[0] {from = "_addr_534", unsigned} : memref<1xi6>
                                %351 = arith.extui %350 : i6 to i33
                                %352 = arith.addi %351, %160 : i33
                                hcl.print(%350, %352) {format = "\0A\0AAssertion failed {}: twpwrs Mem.read exceeds memory size: addr=%d+size=%d > 64\0A\0A", signedness = "u_"} : i6, i33
                                scf.while : () -> () {
                                  %353 = affine.load %314[0] {from = "assert_cond_535", unsigned} : memref<1xi1>
                                  %354 = arith.extui %353 : i1 to i32
                                  %355 = arith.cmpi ne, %354, %c1_i32 : i32
                                  scf.condition(%355)
                                } do {
                                  affine.store %3, %314[0] {to = "assert_cond_535", unsigned} : memref<1xi1>
                                  scf.yield
                                }
                              }
                              %322 = memref.alloc() {name = "Mem.read_c_77"} : memref<1xi32>
                              %323 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %324 = hcl.struct_get %323[7] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                              %325 = arith.index_cast %324 {unsigned} : i5 to index
                              %326 = affine.load %309[0] {from = "read_addr_533", unsigned} : memref<1xi6>
                              %327 = arith.extui %326 {unsigned} : i6 to i33
                              %328 = arith.addi %327, %304 {unsigned} : i33
                              %329 = arith.index_cast %328 {unsigned} : i33 to index
                              %330 = memref.load %42[%325, %329] {from = "twpwrs.alloc_c", unsigned} : memref<32x64xi32>
                              affine.store %330, %322[%c0] {to = "Mem.read_c_77", unsigned} : memref<1xi32>
                              %331 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %332 = hcl.struct_get %331[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                              %333 = arith.extui %332 : i5 to i32
                              %334 = arith.cmpi eq, %333, %c0_i32 : i32
                              scf.if %334 {
                                affine.for %arg2 = 0 to 8192 {
                                  %350 = memref.alloc() {name = "write_addr_536"} : memref<1xindex>
                                  affine.store %arg2, %350[%c0] {to = "write_addr_536", unsigned} : memref<1xindex>
                                  %351 = memref.alloc() {name = "_addr_537"} : memref<1xindex>
                                  %352 = affine.load %350[0] {from = "write_addr_536", unsigned} : memref<1xindex>
                                  affine.store %352, %351[%c0] {to = "_addr_537", unsigned} : memref<1xindex>
                                  %353 = memref.alloc() {name = "assert_cond_538"} : memref<1xi1>
                                  %354 = affine.load %351[0] {from = "_addr_537", unsigned} : memref<1xindex>
                                  %355 = arith.index_cast %354 : index to i34
                                  %356 = arith.addi %355, %174 : i34
                                  %c8192_i32 = arith.constant 8192 : i32
                                  %357 = arith.extsi %c8192_i32 : i32 to i34
                                  %358 = arith.cmpi sle, %356, %357 : i34
                                  affine.store %358, %353[%c0] {to = "assert_cond_538", unsigned} : memref<1xi1>
                                  %359 = affine.load %353[0] {from = "assert_cond_538", unsigned} : memref<1xi1>
                                  %360 = arith.extui %359 : i1 to i32
                                  %361 = arith.cmpi eq, %360, %c0_i32 : i32
                                  scf.if %361 {
                                    %364 = affine.load %351[0] {from = "_addr_537", unsigned} : memref<1xindex>
                                    %365 = arith.index_cast %364 : index to i34
                                    %366 = arith.addi %365, %174 : i34
                                    hcl.print(%364, %366) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                    scf.while : () -> () {
                                      %367 = affine.load %353[0] {from = "assert_cond_538", unsigned} : memref<1xi1>
                                      %368 = arith.extui %367 : i1 to i32
                                      %369 = arith.cmpi ne, %368, %c1_i32 : i32
                                      scf.condition(%369)
                                    } do {
                                      affine.store %3, %353[0] {to = "assert_cond_538", unsigned} : memref<1xi1>
                                      scf.yield
                                    }
                                  }
                                  %362 = affine.load %62[0] {from = "mone_val", unsigned} : memref<1xi32>
                                  %363 = affine.load %350[0] {from = "write_addr_536", unsigned} : memref<1xindex>
                                  memref.store %362, %61[%363] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                                } {loop_name = "i", op_name = "mone_fill_78"}
                              } else {
                                %350 = memref.alloc() {name = "rfaddr_539"} : memref<1x!hcl.struct<i7, i2>>
                                %351 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                %352 = hcl.struct_get %351[11] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                                %353 = hcl.int_to_struct(%352) {unsigned} : i9 -> <i7, i2>
                                affine.store %353, %350[%c0] {to = "rfaddr_539"} : memref<1x!hcl.struct<i7, i2>>
                                %354 = memref.alloc() {name = "bv_540"} : memref<1xi3>
                                %355 = affine.load %350[0] {from = "rfaddr_539"} : memref<1x!hcl.struct<i7, i2>>
                                %356 = hcl.struct_get %355[1] : <i7, i2> -> i2
                                %357 = arith.extui %356 {unsigned} : i2 to i3
                                affine.store %357, %354[%c0] {to = "bv_540", unsigned} : memref<1xi3>
                                %358 = memref.alloc() {name = "rv_541"} : memref<1xi8>
                                %359 = affine.load %350[0] {from = "rfaddr_539"} : memref<1x!hcl.struct<i7, i2>>
                                %360 = hcl.struct_get %359[0] : <i7, i2> -> i7
                                %361 = arith.extui %360 {unsigned} : i7 to i8
                                affine.store %361, %358[%c0] {to = "rv_541", unsigned} : memref<1xi8>
                                affine.for %arg2 = 0 to 8192 {
                                  %362 = memref.alloc() {name = "write_addr_542"} : memref<1xi34>
                                  %363 = arith.extsi %c0_i32 : i32 to i34
                                  %364 = arith.index_cast %arg2 : index to i34
                                  %365 = arith.addi %363, %364 : i34
                                  affine.store %365, %362[%c0] {to = "write_addr_542"} : memref<1xi34>
                                  %366 = memref.alloc() {name = "_addr_543"} : memref<1xi34>
                                  %367 = affine.load %362[0] {from = "write_addr_542"} : memref<1xi34>
                                  affine.store %367, %366[%c0] {to = "_addr_543"} : memref<1xi34>
                                  %368 = memref.alloc() {name = "assert_cond_544"} : memref<1xi1>
                                  %369 = affine.load %366[0] {from = "_addr_543"} : memref<1xi34>
                                  %370 = arith.extsi %369 : i34 to i35
                                  %371 = arith.extsi %c1_i32 : i32 to i35
                                  %372 = arith.addi %370, %371 : i35
                                  %c8192_i32 = arith.constant 8192 : i32
                                  %373 = arith.extsi %c8192_i32 : i32 to i35
                                  %374 = arith.cmpi sle, %372, %373 : i35
                                  affine.store %374, %368[%c0] {to = "assert_cond_544", unsigned} : memref<1xi1>
                                  %375 = affine.load %368[0] {from = "assert_cond_544", unsigned} : memref<1xi1>
                                  %376 = arith.extui %375 : i1 to i32
                                  %377 = arith.cmpi eq, %376, %c0_i32 : i32
                                  scf.if %377 {
                                    %386 = affine.load %366[0] {from = "_addr_543"} : memref<1xi34>
                                    %387 = arith.extsi %386 : i34 to i35
                                    %388 = arith.addi %387, %371 : i35
                                    hcl.print(%386, %388) {format = "\0A\0AAssertion failed {}: ntt_win Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i34, i35
                                    scf.while : () -> () {
                                      %389 = affine.load %368[0] {from = "assert_cond_544", unsigned} : memref<1xi1>
                                      %390 = arith.extui %389 : i1 to i32
                                      %391 = arith.cmpi ne, %390, %c1_i32 : i32
                                      scf.condition(%391)
                                    } do {
                                      affine.store %3, %368[0] {to = "assert_cond_544", unsigned} : memref<1xi1>
                                      scf.yield
                                    }
                                  }
                                  %378 = affine.load %354[0] {from = "bv_540", unsigned} : memref<1xi3>
                                  %379 = arith.index_cast %378 {unsigned} : i3 to index
                                  %380 = affine.load %358[0] {from = "rv_541", unsigned} : memref<1xi8>
                                  %381 = arith.index_cast %380 {unsigned} : i8 to index
                                  %382 = arith.index_cast %365 {unsigned} : i34 to index
                                  %383 = memref.load %41[%379, %381, %382] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                  %384 = affine.load %362[0] {from = "write_addr_542"} : memref<1xi34>
                                  %385 = arith.index_cast %384 {unsigned} : i34 to index
                                  memref.store %383, %61[%385] {to = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                                } {loop_name = "i", op_name = "copyN_79"}
                              }
                              %335 = memref.alloc() {name = "blocknum_545"} : memref<1xi3>
                              %336 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %337 = hcl.struct_get %336[14] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i3
                              affine.store %337, %335[%c0] {to = "blocknum_545", unsigned} : memref<1xi3>
                              affine.for %arg2 = 0 to 8192 {
                                %350 = memref.alloc() {name = "i_tmp_546"} : memref<1xi15>
                                %351 = arith.index_cast %arg2 {unsigned} : index to i15
                                affine.store %351, %350[%c0] {to = "i_tmp_546", unsigned} : memref<1xi15>
                                %352 = memref.alloc() {name = "tilenum_547"} : memref<1xi7>
                                %353 = arith.trunci %c0_i32 {unsigned} : i32 to i7
                                affine.store %353, %352[%c0] {to = "tilenum_547", unsigned} : memref<1xi7>
                                %c4032_i32 = arith.constant 4032 : i32
                                %354 = arith.index_cast %arg2 : index to i32
                                %355 = arith.andi %354, %c4032_i32 : i32
                                %356 = arith.shrsi %355, %c5_i32 : i32
                                %c12_i32 = arith.constant 12 : i32
                                %357 = arith.index_cast %c12_i32 {unsigned} : i32 to index
                                %358 = arith.shrui %arg2, %357 {unsigned} : index
                                %359 = arith.extsi %356 : i32 to i34
                                %360 = arith.index_cast %358 : index to i34
                                %361 = arith.addi %359, %360 : i34
                                %362 = arith.trunci %361 {unsigned} : i34 to i7
                                affine.store %362, %352[0] {to = "tilenum_547", unsigned} : memref<1xi7>
                                %363 = memref.alloc() {name = "t_up_548"} : memref<1xi1>
                                affine.store %3, %363[%c0] {to = "t_up_548", unsigned} : memref<1xi1>
                                %364 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                %365 = hcl.struct_get %364[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                %366 = arith.extui %365 : i5 to i32
                                %367 = arith.cmpi eq, %366, %c0_i32 : i32
                                scf.if %367 {
                                  %388 = affine.load %350[0] {from = "i_tmp_546", unsigned} : memref<1xi15>
                                  %389 = arith.trunci %388 {unsigned} : i15 to i1
                                  affine.store %389, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                } else {
                                  %388 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                  %389 = hcl.struct_get %388[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                  %390 = arith.extui %389 : i5 to i32
                                  %391 = arith.cmpi eq, %390, %c1_i32 : i32
                                  scf.if %391 {
                                    %392 = affine.load %350[1] {from = "i_tmp_546", unsigned} : memref<1xi15>
                                    %393 = arith.trunci %392 {unsigned} : i15 to i1
                                    affine.store %393, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                  } else {
                                    %392 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                    %393 = hcl.struct_get %392[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                    %394 = arith.extui %393 : i5 to i32
                                    %395 = arith.cmpi eq, %394, %c2_i32 : i32
                                    scf.if %395 {
                                      %396 = affine.load %350[2] {from = "i_tmp_546", unsigned} : memref<1xi15>
                                      %397 = arith.trunci %396 {unsigned} : i15 to i1
                                      affine.store %397, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                    } else {
                                      %396 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                      %397 = hcl.struct_get %396[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                      %398 = arith.extui %397 : i5 to i32
                                      %399 = arith.cmpi eq, %398, %c3_i32 : i32
                                      scf.if %399 {
                                        %400 = affine.load %350[3] {from = "i_tmp_546", unsigned} : memref<1xi15>
                                        %401 = arith.trunci %400 {unsigned} : i15 to i1
                                        affine.store %401, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                      } else {
                                        %400 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                        %401 = hcl.struct_get %400[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                        %402 = arith.extui %401 : i5 to i32
                                        %403 = arith.cmpi eq, %402, %c4_i32 : i32
                                        scf.if %403 {
                                          %404 = affine.load %350[4] {from = "i_tmp_546", unsigned} : memref<1xi15>
                                          %405 = arith.trunci %404 {unsigned} : i15 to i1
                                          affine.store %405, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                        } else {
                                          %404 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                          %405 = hcl.struct_get %404[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                          %406 = arith.extui %405 : i5 to i32
                                          %407 = arith.cmpi eq, %406, %c5_i32 : i32
                                          scf.if %407 {
                                            %408 = affine.load %350[5] {from = "i_tmp_546", unsigned} : memref<1xi15>
                                            %409 = arith.trunci %408 {unsigned} : i15 to i1
                                            affine.store %409, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                          } else {
                                            %408 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                            %409 = hcl.struct_get %408[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                            %410 = arith.extui %409 : i5 to i32
                                            %411 = arith.cmpi eq, %410, %c6_i32 : i32
                                            scf.if %411 {
                                              %412 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                              %413 = hcl.struct_get %412[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                              %414 = arith.extui %413 : i2 to i32
                                              %415 = arith.cmpi eq, %414, %c0_i32 : i32
                                              %416 = arith.andi %true, %415 {unsigned} : i1
                                              %417 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                              %c1 = arith.constant {unsigned} 1 : index
                                              %418 = hcl.get_bit(%417 : i7, %c1) -> i1
                                              %419 = arith.extui %418 : i1 to i32
                                              %420 = arith.cmpi ne, %419, %c0_i32 : i32
                                              %421 = arith.andi %416, %420 {unsigned} : i1
                                              %422 = arith.ori %false, %421 {unsigned} : i1
                                              %423 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                              %424 = hcl.struct_get %423[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                              %425 = arith.extui %424 : i2 to i32
                                              %426 = arith.cmpi eq, %425, %c1_i32 : i32
                                              %427 = arith.andi %true, %426 {unsigned} : i1
                                              %428 = affine.load %335[0] {from = "blocknum_545", unsigned} : memref<1xi3>
                                              %429 = hcl.get_bit(%428 : i3, %c0_0) -> i1
                                              %430 = arith.extui %429 : i1 to i32
                                              %431 = arith.cmpi ne, %430, %c0_i32 : i32
                                              %432 = arith.andi %427, %431 {unsigned} : i1
                                              %433 = arith.ori %422, %432 {unsigned} : i1
                                              %434 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                              %435 = hcl.struct_get %434[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                              %436 = arith.extui %435 : i2 to i32
                                              %437 = arith.cmpi eq, %436, %c2_i32 : i32
                                              %438 = arith.andi %true, %437 {unsigned} : i1
                                              %439 = affine.load %335[0] {from = "blocknum_545", unsigned} : memref<1xi3>
                                              %440 = hcl.get_bit(%439 : i3, %c0_0) -> i1
                                              %441 = arith.extui %440 : i1 to i32
                                              %442 = arith.cmpi ne, %441, %c0_i32 : i32
                                              %443 = arith.andi %438, %442 {unsigned} : i1
                                              %444 = arith.ori %433, %443 {unsigned} : i1
                                              %445 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                              %446 = hcl.struct_get %445[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                              %447 = arith.extui %446 : i2 to i32
                                              %448 = arith.cmpi eq, %447, %c3_i32 : i32
                                              %449 = arith.andi %true, %448 {unsigned} : i1
                                              %450 = affine.load %335[0] {from = "blocknum_545", unsigned} : memref<1xi3>
                                              %451 = hcl.get_bit(%450 : i3, %c0_0) -> i1
                                              %452 = arith.extui %451 : i1 to i32
                                              %453 = arith.cmpi ne, %452, %c0_i32 : i32
                                              %454 = arith.andi %449, %453 {unsigned} : i1
                                              %455 = arith.ori %444, %454 {unsigned} : i1
                                              affine.store %455, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                            } else {
                                              %412 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                              %413 = hcl.struct_get %412[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                              %414 = arith.extui %413 : i5 to i32
                                              %415 = arith.cmpi eq, %414, %c7_i32 : i32
                                              scf.if %415 {
                                                %416 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                %417 = hcl.struct_get %416[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                %418 = arith.extui %417 : i2 to i32
                                                %419 = arith.cmpi eq, %418, %c0_i32 : i32
                                                %420 = arith.andi %true, %419 {unsigned} : i1
                                                %421 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                %c2 = arith.constant {unsigned} 2 : index
                                                %422 = hcl.get_bit(%421 : i7, %c2) -> i1
                                                %423 = arith.extui %422 : i1 to i32
                                                %424 = arith.cmpi ne, %423, %c0_i32 : i32
                                                %425 = arith.andi %420, %424 {unsigned} : i1
                                                %426 = arith.ori %false, %425 {unsigned} : i1
                                                %427 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                %428 = hcl.struct_get %427[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                %429 = arith.extui %428 : i2 to i32
                                                %430 = arith.cmpi eq, %429, %c1_i32 : i32
                                                %431 = arith.andi %true, %430 {unsigned} : i1
                                                %432 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                %c1 = arith.constant {unsigned} 1 : index
                                                %433 = hcl.get_bit(%432 : i7, %c1) -> i1
                                                %434 = arith.extui %433 : i1 to i32
                                                %435 = arith.cmpi ne, %434, %c0_i32 : i32
                                                %436 = arith.andi %431, %435 {unsigned} : i1
                                                %437 = arith.ori %426, %436 {unsigned} : i1
                                                %438 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                %439 = hcl.struct_get %438[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                %440 = arith.extui %439 : i2 to i32
                                                %441 = arith.cmpi eq, %440, %c2_i32 : i32
                                                %442 = arith.andi %true, %441 {unsigned} : i1
                                                %443 = affine.load %335[0] {from = "blocknum_545", unsigned} : memref<1xi3>
                                                %444 = hcl.get_bit(%443 : i3, %c1) -> i1
                                                %445 = arith.extui %444 : i1 to i32
                                                %446 = arith.cmpi ne, %445, %c0_i32 : i32
                                                %447 = arith.andi %442, %446 {unsigned} : i1
                                                %448 = arith.ori %437, %447 {unsigned} : i1
                                                %449 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                %450 = hcl.struct_get %449[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                %451 = arith.extui %450 : i2 to i32
                                                %452 = arith.cmpi eq, %451, %c3_i32 : i32
                                                %453 = arith.andi %true, %452 {unsigned} : i1
                                                %454 = affine.load %335[0] {from = "blocknum_545", unsigned} : memref<1xi3>
                                                %455 = hcl.get_bit(%454 : i3, %c1) -> i1
                                                %456 = arith.extui %455 : i1 to i32
                                                %457 = arith.cmpi ne, %456, %c0_i32 : i32
                                                %458 = arith.andi %453, %457 {unsigned} : i1
                                                %459 = arith.ori %448, %458 {unsigned} : i1
                                                affine.store %459, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                              } else {
                                                %416 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                %417 = hcl.struct_get %416[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                %c8_i32 = arith.constant 8 : i32
                                                %418 = arith.extui %417 : i5 to i32
                                                %419 = arith.cmpi eq, %418, %c8_i32 : i32
                                                scf.if %419 {
                                                  %420 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                  %421 = hcl.struct_get %420[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                  %422 = arith.extui %421 : i2 to i32
                                                  %423 = arith.cmpi eq, %422, %c0_i32 : i32
                                                  %424 = arith.andi %true, %423 {unsigned} : i1
                                                  %425 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                  %c3 = arith.constant {unsigned} 3 : index
                                                  %426 = hcl.get_bit(%425 : i7, %c3) -> i1
                                                  %427 = arith.extui %426 : i1 to i32
                                                  %428 = arith.cmpi ne, %427, %c0_i32 : i32
                                                  %429 = arith.andi %424, %428 {unsigned} : i1
                                                  %430 = arith.ori %false, %429 {unsigned} : i1
                                                  %431 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                  %432 = hcl.struct_get %431[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                  %433 = arith.extui %432 : i2 to i32
                                                  %434 = arith.cmpi eq, %433, %c1_i32 : i32
                                                  %435 = arith.andi %true, %434 {unsigned} : i1
                                                  %436 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                  %c2 = arith.constant {unsigned} 2 : index
                                                  %437 = hcl.get_bit(%436 : i7, %c2) -> i1
                                                  %438 = arith.extui %437 : i1 to i32
                                                  %439 = arith.cmpi ne, %438, %c0_i32 : i32
                                                  %440 = arith.andi %435, %439 {unsigned} : i1
                                                  %441 = arith.ori %430, %440 {unsigned} : i1
                                                  %442 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                  %443 = hcl.struct_get %442[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                  %444 = arith.extui %443 : i2 to i32
                                                  %445 = arith.cmpi eq, %444, %c2_i32 : i32
                                                  %446 = arith.andi %true, %445 {unsigned} : i1
                                                  %447 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                  %c1 = arith.constant {unsigned} 1 : index
                                                  %448 = hcl.get_bit(%447 : i7, %c1) -> i1
                                                  %449 = arith.extui %448 : i1 to i32
                                                  %450 = arith.cmpi ne, %449, %c0_i32 : i32
                                                  %451 = arith.andi %446, %450 {unsigned} : i1
                                                  %452 = arith.ori %441, %451 {unsigned} : i1
                                                  %453 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                  %454 = hcl.struct_get %453[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                  %455 = arith.extui %454 : i2 to i32
                                                  %456 = arith.cmpi eq, %455, %c3_i32 : i32
                                                  %457 = arith.andi %true, %456 {unsigned} : i1
                                                  %458 = affine.load %335[0] {from = "blocknum_545", unsigned} : memref<1xi3>
                                                  %459 = hcl.get_bit(%458 : i3, %c2) -> i1
                                                  %460 = arith.extui %459 : i1 to i32
                                                  %461 = arith.cmpi ne, %460, %c0_i32 : i32
                                                  %462 = arith.andi %457, %461 {unsigned} : i1
                                                  %463 = arith.ori %452, %462 {unsigned} : i1
                                                  affine.store %463, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                } else {
                                                  %420 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                  %421 = hcl.struct_get %420[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                  %c9_i32 = arith.constant 9 : i32
                                                  %422 = arith.extui %421 : i5 to i32
                                                  %423 = arith.cmpi eq, %422, %c9_i32 : i32
                                                  scf.if %423 {
                                                    %424 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                    %425 = hcl.struct_get %424[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                    %426 = arith.extui %425 : i2 to i32
                                                    %427 = arith.cmpi eq, %426, %c0_i32 : i32
                                                    %428 = arith.andi %true, %427 {unsigned} : i1
                                                    %429 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                    %c4 = arith.constant {unsigned} 4 : index
                                                    %430 = hcl.get_bit(%429 : i7, %c4) -> i1
                                                    %431 = arith.extui %430 : i1 to i32
                                                    %432 = arith.cmpi ne, %431, %c0_i32 : i32
                                                    %433 = arith.andi %428, %432 {unsigned} : i1
                                                    %434 = arith.ori %false, %433 {unsigned} : i1
                                                    %435 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                    %436 = hcl.struct_get %435[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                    %437 = arith.extui %436 : i2 to i32
                                                    %438 = arith.cmpi eq, %437, %c1_i32 : i32
                                                    %439 = arith.andi %true, %438 {unsigned} : i1
                                                    %440 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                    %c3 = arith.constant {unsigned} 3 : index
                                                    %441 = hcl.get_bit(%440 : i7, %c3) -> i1
                                                    %442 = arith.extui %441 : i1 to i32
                                                    %443 = arith.cmpi ne, %442, %c0_i32 : i32
                                                    %444 = arith.andi %439, %443 {unsigned} : i1
                                                    %445 = arith.ori %434, %444 {unsigned} : i1
                                                    %446 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                    %447 = hcl.struct_get %446[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                    %448 = arith.extui %447 : i2 to i32
                                                    %449 = arith.cmpi eq, %448, %c2_i32 : i32
                                                    %450 = arith.andi %true, %449 {unsigned} : i1
                                                    %451 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                    %c2 = arith.constant {unsigned} 2 : index
                                                    %452 = hcl.get_bit(%451 : i7, %c2) -> i1
                                                    %453 = arith.extui %452 : i1 to i32
                                                    %454 = arith.cmpi ne, %453, %c0_i32 : i32
                                                    %455 = arith.andi %450, %454 {unsigned} : i1
                                                    %456 = arith.ori %445, %455 {unsigned} : i1
                                                    %457 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                    %458 = hcl.struct_get %457[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                    %459 = arith.extui %458 : i2 to i32
                                                    %460 = arith.cmpi eq, %459, %c3_i32 : i32
                                                    %461 = arith.andi %true, %460 {unsigned} : i1
                                                    %462 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                    %c1 = arith.constant {unsigned} 1 : index
                                                    %463 = hcl.get_bit(%462 : i7, %c1) -> i1
                                                    %464 = arith.extui %463 : i1 to i32
                                                    %465 = arith.cmpi ne, %464, %c0_i32 : i32
                                                    %466 = arith.andi %461, %465 {unsigned} : i1
                                                    %467 = arith.ori %456, %466 {unsigned} : i1
                                                    affine.store %467, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                  } else {
                                                    %424 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                    %425 = hcl.struct_get %424[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                    %c10_i32 = arith.constant 10 : i32
                                                    %426 = arith.extui %425 : i5 to i32
                                                    %427 = arith.cmpi eq, %426, %c10_i32 : i32
                                                    scf.if %427 {
                                                      %428 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                      %429 = hcl.struct_get %428[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                      %430 = arith.extui %429 : i2 to i32
                                                      %431 = arith.cmpi eq, %430, %c0_i32 : i32
                                                      %432 = arith.andi %true, %431 {unsigned} : i1
                                                      %433 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                      %c5 = arith.constant {unsigned} 5 : index
                                                      %434 = hcl.get_bit(%433 : i7, %c5) -> i1
                                                      %435 = arith.extui %434 : i1 to i32
                                                      %436 = arith.cmpi ne, %435, %c0_i32 : i32
                                                      %437 = arith.andi %432, %436 {unsigned} : i1
                                                      %438 = arith.ori %false, %437 {unsigned} : i1
                                                      %439 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                      %440 = hcl.struct_get %439[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                      %441 = arith.extui %440 : i2 to i32
                                                      %442 = arith.cmpi eq, %441, %c1_i32 : i32
                                                      %443 = arith.andi %true, %442 {unsigned} : i1
                                                      %444 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                      %c4 = arith.constant {unsigned} 4 : index
                                                      %445 = hcl.get_bit(%444 : i7, %c4) -> i1
                                                      %446 = arith.extui %445 : i1 to i32
                                                      %447 = arith.cmpi ne, %446, %c0_i32 : i32
                                                      %448 = arith.andi %443, %447 {unsigned} : i1
                                                      %449 = arith.ori %438, %448 {unsigned} : i1
                                                      %450 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                      %451 = hcl.struct_get %450[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                      %452 = arith.extui %451 : i2 to i32
                                                      %453 = arith.cmpi eq, %452, %c2_i32 : i32
                                                      %454 = arith.andi %true, %453 {unsigned} : i1
                                                      %455 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                      %c3 = arith.constant {unsigned} 3 : index
                                                      %456 = hcl.get_bit(%455 : i7, %c3) -> i1
                                                      %457 = arith.extui %456 : i1 to i32
                                                      %458 = arith.cmpi ne, %457, %c0_i32 : i32
                                                      %459 = arith.andi %454, %458 {unsigned} : i1
                                                      %460 = arith.ori %449, %459 {unsigned} : i1
                                                      %461 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                      %462 = hcl.struct_get %461[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                      %463 = arith.extui %462 : i2 to i32
                                                      %464 = arith.cmpi eq, %463, %c3_i32 : i32
                                                      %465 = arith.andi %true, %464 {unsigned} : i1
                                                      %466 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                      %c2 = arith.constant {unsigned} 2 : index
                                                      %467 = hcl.get_bit(%466 : i7, %c2) -> i1
                                                      %468 = arith.extui %467 : i1 to i32
                                                      %469 = arith.cmpi ne, %468, %c0_i32 : i32
                                                      %470 = arith.andi %465, %469 {unsigned} : i1
                                                      %471 = arith.ori %460, %470 {unsigned} : i1
                                                      affine.store %471, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                    } else {
                                                      %428 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                      %429 = hcl.struct_get %428[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                      %c11_i32 = arith.constant 11 : i32
                                                      %430 = arith.extui %429 : i5 to i32
                                                      %431 = arith.cmpi eq, %430, %c11_i32 : i32
                                                      scf.if %431 {
                                                        %432 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                        %433 = hcl.struct_get %432[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                        %434 = arith.extui %433 : i2 to i32
                                                        %435 = arith.cmpi eq, %434, %c0_i32 : i32
                                                        %436 = arith.andi %true, %435 {unsigned} : i1
                                                        %437 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                        %c6 = arith.constant {unsigned} 6 : index
                                                        %438 = hcl.get_bit(%437 : i7, %c6) -> i1
                                                        %439 = arith.extui %438 : i1 to i32
                                                        %440 = arith.cmpi ne, %439, %c0_i32 : i32
                                                        %441 = arith.andi %436, %440 {unsigned} : i1
                                                        %442 = arith.ori %false, %441 {unsigned} : i1
                                                        %443 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                        %444 = hcl.struct_get %443[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                        %445 = arith.extui %444 : i2 to i32
                                                        %446 = arith.cmpi eq, %445, %c1_i32 : i32
                                                        %447 = arith.andi %true, %446 {unsigned} : i1
                                                        %448 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                        %c5 = arith.constant {unsigned} 5 : index
                                                        %449 = hcl.get_bit(%448 : i7, %c5) -> i1
                                                        %450 = arith.extui %449 : i1 to i32
                                                        %451 = arith.cmpi ne, %450, %c0_i32 : i32
                                                        %452 = arith.andi %447, %451 {unsigned} : i1
                                                        %453 = arith.ori %442, %452 {unsigned} : i1
                                                        %454 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                        %455 = hcl.struct_get %454[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                        %456 = arith.extui %455 : i2 to i32
                                                        %457 = arith.cmpi eq, %456, %c2_i32 : i32
                                                        %458 = arith.andi %true, %457 {unsigned} : i1
                                                        %459 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                        %c4 = arith.constant {unsigned} 4 : index
                                                        %460 = hcl.get_bit(%459 : i7, %c4) -> i1
                                                        %461 = arith.extui %460 : i1 to i32
                                                        %462 = arith.cmpi ne, %461, %c0_i32 : i32
                                                        %463 = arith.andi %458, %462 {unsigned} : i1
                                                        %464 = arith.ori %453, %463 {unsigned} : i1
                                                        %465 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                        %466 = hcl.struct_get %465[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                        %467 = arith.extui %466 : i2 to i32
                                                        %468 = arith.cmpi eq, %467, %c3_i32 : i32
                                                        %469 = arith.andi %true, %468 {unsigned} : i1
                                                        %470 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                        %c3 = arith.constant {unsigned} 3 : index
                                                        %471 = hcl.get_bit(%470 : i7, %c3) -> i1
                                                        %472 = arith.extui %471 : i1 to i32
                                                        %473 = arith.cmpi ne, %472, %c0_i32 : i32
                                                        %474 = arith.andi %469, %473 {unsigned} : i1
                                                        %475 = arith.ori %464, %474 {unsigned} : i1
                                                        affine.store %475, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                      } else {
                                                        %432 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                        %433 = hcl.struct_get %432[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                        %434 = arith.extui %433 : i5 to i32
                                                        %435 = arith.cmpi eq, %434, %c12_i32 : i32
                                                        scf.if %435 {
                                                          %436 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                          %437 = hcl.struct_get %436[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                          %438 = arith.extui %437 : i2 to i32
                                                          %439 = arith.cmpi eq, %438, %c0_i32 : i32
                                                          %440 = arith.andi %true, %439 {unsigned} : i1
                                                          %441 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                          %442 = hcl.get_bit(%441 : i7, %c0_0) -> i1
                                                          %443 = arith.extui %442 : i1 to i32
                                                          %444 = arith.cmpi ne, %443, %c0_i32 : i32
                                                          %445 = arith.andi %440, %444 {unsigned} : i1
                                                          %446 = arith.ori %false, %445 {unsigned} : i1
                                                          %447 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                          %448 = hcl.struct_get %447[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                          %449 = arith.extui %448 : i2 to i32
                                                          %450 = arith.cmpi eq, %449, %c1_i32 : i32
                                                          %451 = arith.andi %true, %450 {unsigned} : i1
                                                          %452 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                          %c6 = arith.constant {unsigned} 6 : index
                                                          %453 = hcl.get_bit(%452 : i7, %c6) -> i1
                                                          %454 = arith.extui %453 : i1 to i32
                                                          %455 = arith.cmpi ne, %454, %c0_i32 : i32
                                                          %456 = arith.andi %451, %455 {unsigned} : i1
                                                          %457 = arith.ori %446, %456 {unsigned} : i1
                                                          %458 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                          %459 = hcl.struct_get %458[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                          %460 = arith.extui %459 : i2 to i32
                                                          %461 = arith.cmpi eq, %460, %c2_i32 : i32
                                                          %462 = arith.andi %true, %461 {unsigned} : i1
                                                          %463 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                          %c5 = arith.constant {unsigned} 5 : index
                                                          %464 = hcl.get_bit(%463 : i7, %c5) -> i1
                                                          %465 = arith.extui %464 : i1 to i32
                                                          %466 = arith.cmpi ne, %465, %c0_i32 : i32
                                                          %467 = arith.andi %462, %466 {unsigned} : i1
                                                          %468 = arith.ori %457, %467 {unsigned} : i1
                                                          %469 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                          %470 = hcl.struct_get %469[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                          %471 = arith.extui %470 : i2 to i32
                                                          %472 = arith.cmpi eq, %471, %c3_i32 : i32
                                                          %473 = arith.andi %true, %472 {unsigned} : i1
                                                          %474 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                          %c4 = arith.constant {unsigned} 4 : index
                                                          %475 = hcl.get_bit(%474 : i7, %c4) -> i1
                                                          %476 = arith.extui %475 : i1 to i32
                                                          %477 = arith.cmpi ne, %476, %c0_i32 : i32
                                                          %478 = arith.andi %473, %477 {unsigned} : i1
                                                          %479 = arith.ori %468, %478 {unsigned} : i1
                                                          affine.store %479, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                        } else {
                                                          %436 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                          %437 = hcl.struct_get %436[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                          %c13_i32 = arith.constant 13 : i32
                                                          %438 = arith.extui %437 : i5 to i32
                                                          %439 = arith.cmpi eq, %438, %c13_i32 : i32
                                                          scf.if %439 {
                                                            %440 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                            %441 = hcl.struct_get %440[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                            %442 = arith.extui %441 : i2 to i32
                                                            %443 = arith.cmpi eq, %442, %c1_i32 : i32
                                                            %444 = arith.andi %true, %443 {unsigned} : i1
                                                            %445 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                            %446 = hcl.get_bit(%445 : i7, %c0_0) -> i1
                                                            %447 = arith.extui %446 : i1 to i32
                                                            %448 = arith.cmpi ne, %447, %c0_i32 : i32
                                                            %449 = arith.andi %444, %448 {unsigned} : i1
                                                            %450 = arith.ori %false, %449 {unsigned} : i1
                                                            %451 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                            %452 = hcl.struct_get %451[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                            %453 = arith.extui %452 : i2 to i32
                                                            %454 = arith.cmpi eq, %453, %c2_i32 : i32
                                                            %455 = arith.andi %true, %454 {unsigned} : i1
                                                            %456 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                            %c6 = arith.constant {unsigned} 6 : index
                                                            %457 = hcl.get_bit(%456 : i7, %c6) -> i1
                                                            %458 = arith.extui %457 : i1 to i32
                                                            %459 = arith.cmpi ne, %458, %c0_i32 : i32
                                                            %460 = arith.andi %455, %459 {unsigned} : i1
                                                            %461 = arith.ori %450, %460 {unsigned} : i1
                                                            %462 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                            %463 = hcl.struct_get %462[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                            %464 = arith.extui %463 : i2 to i32
                                                            %465 = arith.cmpi eq, %464, %c3_i32 : i32
                                                            %466 = arith.andi %true, %465 {unsigned} : i1
                                                            %467 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                            %c5 = arith.constant {unsigned} 5 : index
                                                            %468 = hcl.get_bit(%467 : i7, %c5) -> i1
                                                            %469 = arith.extui %468 : i1 to i32
                                                            %470 = arith.cmpi ne, %469, %c0_i32 : i32
                                                            %471 = arith.andi %466, %470 {unsigned} : i1
                                                            %472 = arith.ori %461, %471 {unsigned} : i1
                                                            affine.store %472, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                          } else {
                                                            %440 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                            %441 = hcl.struct_get %440[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                            %c14_i32 = arith.constant 14 : i32
                                                            %442 = arith.extui %441 : i5 to i32
                                                            %443 = arith.cmpi eq, %442, %c14_i32 : i32
                                                            scf.if %443 {
                                                              %444 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                              %445 = hcl.struct_get %444[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                              %446 = arith.extui %445 : i2 to i32
                                                              %447 = arith.cmpi eq, %446, %c2_i32 : i32
                                                              %448 = arith.andi %true, %447 {unsigned} : i1
                                                              %449 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                              %450 = hcl.get_bit(%449 : i7, %c0_0) -> i1
                                                              %451 = arith.extui %450 : i1 to i32
                                                              %452 = arith.cmpi ne, %451, %c0_i32 : i32
                                                              %453 = arith.andi %448, %452 {unsigned} : i1
                                                              %454 = arith.ori %false, %453 {unsigned} : i1
                                                              %455 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                              %456 = hcl.struct_get %455[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                              %457 = arith.extui %456 : i2 to i32
                                                              %458 = arith.cmpi eq, %457, %c3_i32 : i32
                                                              %459 = arith.andi %true, %458 {unsigned} : i1
                                                              %460 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                              %c6 = arith.constant {unsigned} 6 : index
                                                              %461 = hcl.get_bit(%460 : i7, %c6) -> i1
                                                              %462 = arith.extui %461 : i1 to i32
                                                              %463 = arith.cmpi ne, %462, %c0_i32 : i32
                                                              %464 = arith.andi %459, %463 {unsigned} : i1
                                                              %465 = arith.ori %454, %464 {unsigned} : i1
                                                              affine.store %465, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
                                                            } else {
                                                              %444 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                              %445 = hcl.struct_get %444[13] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i5
                                                              %c15_i32 = arith.constant 15 : i32
                                                              %446 = arith.extui %445 : i5 to i32
                                                              %447 = arith.cmpi eq, %446, %c15_i32 : i32
                                                              scf.if %447 {
                                                                %448 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                                                %449 = hcl.struct_get %448[15] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i2
                                                                %450 = arith.extui %449 : i2 to i32
                                                                %451 = arith.cmpi eq, %450, %c3_i32 : i32
                                                                %452 = arith.andi %true, %451 {unsigned} : i1
                                                                %453 = affine.load %352[0] {from = "tilenum_547", unsigned} : memref<1xi7>
                                                                %454 = hcl.get_bit(%453 : i7, %c0_0) -> i1
                                                                %455 = arith.extui %454 : i1 to i32
                                                                %456 = arith.cmpi ne, %455, %c0_i32 : i32
                                                                %457 = arith.andi %452, %456 {unsigned} : i1
                                                                %458 = arith.ori %false, %457 {unsigned} : i1
                                                                affine.store %458, %363[0] {to = "t_up_548", unsigned} : memref<1xi1>
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
                                        }
                                      }
                                    }
                                  }
                                }
                                %368 = memref.alloc() {name = "write_addr_549"} : memref<1xindex>
                                affine.store %arg2, %368[%c0] {to = "write_addr_549", unsigned} : memref<1xindex>
                                %369 = memref.alloc() {name = "_addr_550"} : memref<1xindex>
                                %370 = affine.load %368[0] {from = "write_addr_549", unsigned} : memref<1xindex>
                                affine.store %370, %369[%c0] {to = "_addr_550", unsigned} : memref<1xindex>
                                %371 = memref.alloc() {name = "assert_cond_551"} : memref<1xi1>
                                %372 = affine.load %369[0] {from = "_addr_550", unsigned} : memref<1xindex>
                                %373 = arith.index_cast %372 : index to i34
                                %374 = arith.addi %373, %174 : i34
                                %c8192_i32 = arith.constant 8192 : i32
                                %375 = arith.extsi %c8192_i32 : i32 to i34
                                %376 = arith.cmpi sle, %374, %375 : i34
                                affine.store %376, %371[%c0] {to = "assert_cond_551", unsigned} : memref<1xi1>
                                %377 = affine.load %371[0] {from = "assert_cond_551", unsigned} : memref<1xi1>
                                %378 = arith.extui %377 : i1 to i32
                                %379 = arith.cmpi eq, %378, %c0_i32 : i32
                                scf.if %379 {
                                  %388 = affine.load %369[0] {from = "_addr_550", unsigned} : memref<1xindex>
                                  %389 = arith.index_cast %388 : index to i34
                                  %390 = arith.addi %389, %174 : i34
                                  hcl.print(%388, %390) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                  scf.while : () -> () {
                                    %391 = affine.load %371[0] {from = "assert_cond_551", unsigned} : memref<1xi1>
                                    %392 = arith.extui %391 : i1 to i32
                                    %393 = arith.cmpi ne, %392, %c1_i32 : i32
                                    scf.condition(%393)
                                  } do {
                                    affine.store %3, %371[0] {to = "assert_cond_551", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %380 = affine.load %363[0] {from = "t_up_548", unsigned} : memref<1xi1>
                                %381 = affine.load %322[0] {from = "Mem.read_c_77", unsigned} : memref<1xi32>
                                %382 = affine.load %62[0] {from = "mone_val", unsigned} : memref<1xi32>
                                %383 = arith.extui %381 {unsigned} : i32 to i33
                                %384 = arith.extui %382 {unsigned} : i32 to i33
                                %385 = arith.select %380, %383, %384 : i33
                                %386 = arith.trunci %385 {unsigned} : i33 to i32
                                %387 = affine.load %368[0] {from = "write_addr_549", unsigned} : memref<1xindex>
                                memref.store %386, %60[%387] {to = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                              } {loop_name = "i", op_name = "twintt_bin_select"}
                              %338 = memref.alloc() {name = "rfaddr_552"} : memref<1x!hcl.struct<i7, i2>>
                              %339 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                              %340 = hcl.struct_get %339[10] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i9
                              %341 = hcl.int_to_struct(%340) {unsigned} : i9 -> <i7, i2>
                              affine.store %341, %338[%c0] {to = "rfaddr_552"} : memref<1x!hcl.struct<i7, i2>>
                              %342 = memref.alloc() {name = "bv_553"} : memref<1xi3>
                              %343 = affine.load %338[0] {from = "rfaddr_552"} : memref<1x!hcl.struct<i7, i2>>
                              %344 = hcl.struct_get %343[1] : <i7, i2> -> i2
                              %345 = arith.extui %344 {unsigned} : i2 to i3
                              affine.store %345, %342[%c0] {to = "bv_553", unsigned} : memref<1xi3>
                              %346 = memref.alloc() {name = "rv_554"} : memref<1xi8>
                              %347 = affine.load %338[0] {from = "rfaddr_552"} : memref<1x!hcl.struct<i7, i2>>
                              %348 = hcl.struct_get %347[0] : <i7, i2> -> i7
                              %349 = arith.extui %348 {unsigned} : i7 to i8
                              affine.store %349, %346[%c0] {to = "rv_554", unsigned} : memref<1xi8>
                              affine.for %arg2 = 0 to 8192 {
                                %350 = memref.alloc() {name = "_a_555"} : memref<1xi64>
                                %351 = arith.extsi %c0_i32 {unsigned} : i32 to i64
                                affine.store %351, %350[%c0] {to = "_a_555", unsigned} : memref<1xi64>
                                %352 = memref.alloc() {name = "read_addr_556"} : memref<1xindex>
                                affine.store %arg2, %352[%c0] {to = "read_addr_556", unsigned} : memref<1xindex>
                                %353 = memref.alloc() {name = "_addr_557"} : memref<1xindex>
                                %354 = affine.load %352[0] {from = "read_addr_556", unsigned} : memref<1xindex>
                                affine.store %354, %353[%c0] {to = "_addr_557", unsigned} : memref<1xindex>
                                %355 = memref.alloc() {name = "assert_cond_558"} : memref<1xi1>
                                %356 = affine.load %353[0] {from = "_addr_557", unsigned} : memref<1xindex>
                                %357 = arith.index_cast %356 : index to i34
                                %358 = arith.addi %357, %174 : i34
                                %c8192_i32 = arith.constant 8192 : i32
                                %359 = arith.extsi %c8192_i32 : i32 to i34
                                %360 = arith.cmpi sle, %358, %359 : i34
                                affine.store %360, %355[%c0] {to = "assert_cond_558", unsigned} : memref<1xi1>
                                %361 = affine.load %355[0] {from = "assert_cond_558", unsigned} : memref<1xi1>
                                %362 = arith.extui %361 : i1 to i32
                                %363 = arith.cmpi eq, %362, %c0_i32 : i32
                                scf.if %363 {
                                  %448 = affine.load %353[0] {from = "_addr_557", unsigned} : memref<1xindex>
                                  %449 = arith.index_cast %448 : index to i34
                                  %450 = arith.addi %449, %174 : i34
                                  hcl.print(%448, %450) {format = "\0A\0AAssertion failed {}: ntt_bin Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                  scf.while : () -> () {
                                    %451 = affine.load %355[0] {from = "assert_cond_558", unsigned} : memref<1xi1>
                                    %452 = arith.extui %451 : i1 to i32
                                    %453 = arith.cmpi ne, %452, %c1_i32 : i32
                                    scf.condition(%453)
                                  } do {
                                    affine.store %3, %355[0] {to = "assert_cond_558", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %364 = memref.alloc() {name = "Mem.read_c_82"} : memref<1xi32>
                                %365 = affine.load %352[0] {from = "read_addr_556", unsigned} : memref<1xindex>
                                %366 = arith.addi %365, %c0 {unsigned} : index
                                %367 = memref.load %60[%366] {from = "ntt_bin.alloc_c", unsigned} : memref<8192xi32>
                                affine.store %367, %364[%c0] {to = "Mem.read_c_82", unsigned} : memref<1xi32>
                                %368 = memref.alloc() {name = "_b_559"} : memref<1xi64>
                                %369 = affine.load %364[0] {from = "Mem.read_c_82", unsigned} : memref<1xi32>
                                %370 = arith.extui %369 {unsigned} : i32 to i64
                                affine.store %370, %368[%c0] {to = "_b_559", unsigned} : memref<1xi64>
                                %371 = memref.alloc() {name = "read_addr_560"} : memref<1xindex>
                                affine.store %arg2, %371[%c0] {to = "read_addr_560", unsigned} : memref<1xindex>
                                %372 = memref.alloc() {name = "_addr_561"} : memref<1xindex>
                                %373 = affine.load %371[0] {from = "read_addr_560", unsigned} : memref<1xindex>
                                affine.store %373, %372[%c0] {to = "_addr_561", unsigned} : memref<1xindex>
                                %374 = memref.alloc() {name = "assert_cond_562"} : memref<1xi1>
                                %375 = affine.load %372[0] {from = "_addr_561", unsigned} : memref<1xindex>
                                %376 = arith.index_cast %375 : index to i34
                                %377 = arith.addi %376, %174 : i34
                                %378 = arith.cmpi sle, %377, %359 : i34
                                affine.store %378, %374[%c0] {to = "assert_cond_562", unsigned} : memref<1xi1>
                                %379 = affine.load %374[0] {from = "assert_cond_562", unsigned} : memref<1xi1>
                                %380 = arith.extui %379 : i1 to i32
                                %381 = arith.cmpi eq, %380, %c0_i32 : i32
                                scf.if %381 {
                                  %448 = affine.load %372[0] {from = "_addr_561", unsigned} : memref<1xindex>
                                  %449 = arith.index_cast %448 : index to i34
                                  %450 = arith.addi %449, %174 : i34
                                  hcl.print(%448, %450) {format = "\0A\0AAssertion failed {}: ntt_win Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "u_"} : index, i34
                                  scf.while : () -> () {
                                    %451 = affine.load %374[0] {from = "assert_cond_562", unsigned} : memref<1xi1>
                                    %452 = arith.extui %451 : i1 to i32
                                    %453 = arith.cmpi ne, %452, %c1_i32 : i32
                                    scf.condition(%453)
                                  } do {
                                    affine.store %3, %374[0] {to = "assert_cond_562", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %382 = memref.alloc() {name = "Mem.read_c_83"} : memref<1xi32>
                                %383 = affine.load %371[0] {from = "read_addr_560", unsigned} : memref<1xindex>
                                %384 = arith.addi %383, %c0 {unsigned} : index
                                %385 = memref.load %61[%384] {from = "ntt_win.alloc_c", unsigned} : memref<8192xi32>
                                affine.store %385, %382[%c0] {to = "Mem.read_c_83", unsigned} : memref<1xi32>
                                %386 = memref.alloc() {name = "_w_563"} : memref<1xi64>
                                %387 = affine.load %382[0] {from = "Mem.read_c_83", unsigned} : memref<1xi32>
                                %388 = arith.extui %387 {unsigned} : i32 to i64
                                affine.store %388, %386[%c0] {to = "_w_563", unsigned} : memref<1xi64>
                                %389 = memref.alloc() {name = "_q_564"} : memref<1xi64>
                                %390 = affine.load %256[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_twintt"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2>>
                                %391 = hcl.struct_get %390[9] : <i6, i1, i9, i9, i9, i9, i6, i5, i3, i32, i9, i9, i9, i5, i3, i2, i2> -> i32
                                %392 = arith.extui %391 {unsigned} : i32 to i64
                                affine.store %392, %389[%c0] {to = "_q_564", unsigned} : memref<1xi64>
                                %393 = memref.alloc() {name = "assert_cond_565"} : memref<1xi1>
                                %394 = affine.load %389[0] {from = "_q_564", unsigned} : memref<1xi64>
                                %c4294967295_i64 = arith.constant 4294967295 : i64
                                %395 = arith.andi %394, %c4294967295_i64 : i64
                                %396 = arith.extsi %c1_i32 : i32 to i64
                                %397 = arith.cmpi eq, %395, %396 : i64
                                affine.store %397, %393[%c0] {to = "assert_cond_565", unsigned} : memref<1xi1>
                                %398 = affine.load %393[0] {from = "assert_cond_565", unsigned} : memref<1xi1>
                                %399 = arith.extui %398 : i1 to i32
                                %400 = arith.cmpi eq, %399, %c0_i32 : i32
                                scf.if %400 {
                                  %448 = affine.load %389[0] {from = "_q_564", unsigned} : memref<1xi64>
                                  hcl.print(%448) {format = "\0A\0AAssertion failed {}: Modulus 0x%x not in the correct form?\0A\0A", signedness = "u"} : i64
                                  scf.while : () -> () {
                                    %449 = affine.load %393[0] {from = "assert_cond_565", unsigned} : memref<1xi1>
                                    %450 = arith.extui %449 : i1 to i32
                                    %451 = arith.cmpi ne, %450, %c1_i32 : i32
                                    scf.condition(%451)
                                  } do {
                                    affine.store %3, %393[0] {to = "assert_cond_565", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %401 = memref.alloc() {name = "mont_redc_566"} : memref<1xi128>
                                %402 = affine.load %386[0] {from = "_w_563", unsigned} : memref<1xi64>
                                %403 = affine.load %368[0] {from = "_b_559", unsigned} : memref<1xi64>
                                %404 = arith.extui %402 {unsigned} : i64 to i128
                                %405 = arith.extui %403 {unsigned} : i64 to i128
                                %406 = arith.muli %404, %405 {unsigned} : i128
                                %c-1_i32 = arith.constant -1 : i32
                                %407 = arith.extui %406 : i128 to i160
                                %408 = arith.extsi %c-1_i32 : i32 to i160
                                %409 = arith.muli %407, %408 : i160
                                %410 = arith.trunci %409 {unsigned} : i160 to i128
                                %411 = arith.extsi %c4294967295_i64 : i64 to i128
                                %412 = arith.andi %410, %411 : i128
                                %413 = affine.load %389[0] {from = "_q_564", unsigned} : memref<1xi64>
                                %414 = arith.extsi %412 : i128 to i192
                                %415 = arith.extui %413 : i64 to i192
                                %416 = arith.muli %414, %415 : i192
                                %417 = arith.extui %406 : i128 to i193
                                %418 = arith.extsi %416 : i192 to i193
                                %419 = arith.addi %417, %418 : i193
                                %c32_i32 = arith.constant 32 : i32
                                %420 = arith.extsi %c32_i32 : i32 to i193
                                %421 = arith.shrsi %419, %420 : i193
                                %c18446744073709551615_i193 = arith.constant 18446744073709551615 : i193
                                %422 = arith.muli %421, %c18446744073709551615_i193 : i193
                                %423 = arith.extsi %c4294967295_i64 : i64 to i193
                                %424 = arith.andi %422, %423 : i193
                                %425 = arith.extsi %424 : i193 to i257
                                %426 = arith.extui %413 : i64 to i257
                                %427 = arith.muli %425, %426 : i257
                                %428 = arith.extsi %421 : i193 to i258
                                %429 = arith.extsi %427 : i257 to i258
                                %430 = arith.addi %428, %429 : i258
                                %431 = arith.extsi %c32_i32 : i32 to i258
                                %432 = arith.shrsi %430, %431 : i258
                                %433 = arith.extui %413 : i64 to i258
                                %434 = arith.cmpi slt, %432, %433 : i258
                                %435 = arith.extsi %432 : i258 to i259
                                %436 = arith.extui %413 : i64 to i259
                                %437 = arith.subi %435, %436 : i259
                                %438 = arith.extsi %432 : i258 to i260
                                %439 = arith.extsi %437 : i259 to i260
                                %440 = arith.select %434, %438, %439 : i260
                                %441 = arith.trunci %440 {unsigned} : i260 to i128
                                affine.store %441, %401[%c0] {to = "mont_redc_566", unsigned} : memref<1xi128>
                                %442 = affine.load %401[0] {from = "mont_redc_566", unsigned} : memref<1xi128>
                                %443 = arith.trunci %442 {unsigned} : i128 to i32
                                %444 = affine.load %342[0] {from = "bv_553", unsigned} : memref<1xi3>
                                %445 = arith.index_cast %444 {unsigned} : i3 to index
                                %446 = affine.load %346[0] {from = "rv_554", unsigned} : memref<1xi8>
                                %447 = arith.index_cast %446 {unsigned} : i8 to index
                                memref.store %443, %41[%445, %447, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                              } {loop_name = "i", op_name = "bflyfn_81"}
                            } else {
                              %256 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                              %c8_i32 = arith.constant 8 : i32
                              %257 = arith.extui %256 : i16 to i32
                              %258 = arith.cmpi eq, %257, %c8_i32 : i32
                              scf.if %258 {
                                %259 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %260 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                %261 = hcl.int_to_struct(%260) {unsigned} : i128 -> <i6, i1, i9, i9, i9, i32, i62>
                                affine.store %261, %259[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                %262 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                hcl.print(%262) {format = "ip=%d ", signedness = "u"} : i5
                                %263 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %264 = hcl.struct_get %263[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %265 = hcl.struct_get %263[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %266 = hcl.struct_get %263[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %267 = hcl.struct_get %263[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                                hcl.print(%264, %265, %266, %267) {format = "psub res=%d a=%d b=%d q=%d", signedness = "uuuu"} : i9, i9, i9, i32
                                hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                                %268 = memref.alloc() {name = "rfaddr_568"} : memref<1x!hcl.struct<i7, i2>>
                                %269 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %270 = hcl.struct_get %269[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %271 = hcl.int_to_struct(%270) {unsigned} : i9 -> <i7, i2>
                                affine.store %271, %268[%c0] {to = "rfaddr_568"} : memref<1x!hcl.struct<i7, i2>>
                                %272 = memref.alloc() {name = "bv_569"} : memref<1xi3>
                                %273 = affine.load %268[0] {from = "rfaddr_568"} : memref<1x!hcl.struct<i7, i2>>
                                %274 = hcl.struct_get %273[1] : <i7, i2> -> i2
                                %275 = arith.extui %274 {unsigned} : i2 to i3
                                affine.store %275, %272[%c0] {to = "bv_569", unsigned} : memref<1xi3>
                                %276 = memref.alloc() {name = "rv_570"} : memref<1xi8>
                                %277 = affine.load %268[0] {from = "rfaddr_568"} : memref<1x!hcl.struct<i7, i2>>
                                %278 = hcl.struct_get %277[0] : <i7, i2> -> i7
                                %279 = arith.extui %278 {unsigned} : i7 to i8
                                affine.store %279, %276[%c0] {to = "rv_570", unsigned} : memref<1xi8>
                                %280 = memref.alloc() {name = "rfaddr_571"} : memref<1x!hcl.struct<i7, i2>>
                                %281 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %282 = hcl.struct_get %281[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %283 = hcl.int_to_struct(%282) {unsigned} : i9 -> <i7, i2>
                                affine.store %283, %280[%c0] {to = "rfaddr_571"} : memref<1x!hcl.struct<i7, i2>>
                                %284 = memref.alloc() {name = "bv_572"} : memref<1xi3>
                                %285 = affine.load %280[0] {from = "rfaddr_571"} : memref<1x!hcl.struct<i7, i2>>
                                %286 = hcl.struct_get %285[1] : <i7, i2> -> i2
                                %287 = arith.extui %286 {unsigned} : i2 to i3
                                affine.store %287, %284[%c0] {to = "bv_572", unsigned} : memref<1xi3>
                                %288 = memref.alloc() {name = "rv_573"} : memref<1xi8>
                                %289 = affine.load %280[0] {from = "rfaddr_571"} : memref<1x!hcl.struct<i7, i2>>
                                %290 = hcl.struct_get %289[0] : <i7, i2> -> i7
                                %291 = arith.extui %290 {unsigned} : i7 to i8
                                affine.store %291, %288[%c0] {to = "rv_573", unsigned} : memref<1xi8>
                                %292 = memref.alloc() {name = "assert_cond_574"} : memref<1xi1>
                                %293 = affine.load %272[0] {from = "bv_569", unsigned} : memref<1xi3>
                                %294 = affine.load %284[0] {from = "bv_572", unsigned} : memref<1xi3>
                                %295 = arith.cmpi ne, %293, %294 {unsigned} : i3
                                affine.store %295, %292[%c0] {to = "assert_cond_574", unsigned} : memref<1xi1>
                                %296 = affine.load %292[0] {from = "assert_cond_574", unsigned} : memref<1xi1>
                                %297 = arith.extui %296 : i1 to i32
                                %298 = arith.cmpi eq, %297, %c0_i32 : i32
                                scf.if %298 {
                                  hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: psub read bank conflict\0A\0A", signedness = "_"} : i32
                                  scf.while : () -> () {
                                    %335 = affine.load %292[0] {from = "assert_cond_574", unsigned} : memref<1xi1>
                                    %336 = arith.extui %335 : i1 to i32
                                    %337 = arith.cmpi ne, %336, %c1_i32 : i32
                                    scf.condition(%337)
                                  } do {
                                    affine.store %3, %292[0] {to = "assert_cond_574", unsigned} : memref<1xi1>
                                    scf.yield
                                  }
                                }
                                %299 = memref.alloc() {name = "rfaddr_575"} : memref<1x!hcl.struct<i7, i2>>
                                %300 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %301 = hcl.struct_get %300[2] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %302 = hcl.int_to_struct(%301) {unsigned} : i9 -> <i7, i2>
                                affine.store %302, %299[%c0] {to = "rfaddr_575"} : memref<1x!hcl.struct<i7, i2>>
                                %303 = memref.alloc() {name = "bv_576"} : memref<1xi3>
                                %304 = affine.load %299[0] {from = "rfaddr_575"} : memref<1x!hcl.struct<i7, i2>>
                                %305 = hcl.struct_get %304[1] : <i7, i2> -> i2
                                %306 = arith.extui %305 {unsigned} : i2 to i3
                                affine.store %306, %303[%c0] {to = "bv_576", unsigned} : memref<1xi3>
                                %307 = memref.alloc() {name = "rv_577"} : memref<1xi8>
                                %308 = affine.load %299[0] {from = "rfaddr_575"} : memref<1x!hcl.struct<i7, i2>>
                                %309 = hcl.struct_get %308[0] : <i7, i2> -> i7
                                %310 = arith.extui %309 {unsigned} : i7 to i8
                                affine.store %310, %307[%c0] {to = "rv_577", unsigned} : memref<1xi8>
                                %311 = memref.alloc() {name = "rfaddr_578"} : memref<1x!hcl.struct<i7, i2>>
                                %312 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %313 = hcl.struct_get %312[3] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %314 = hcl.int_to_struct(%313) {unsigned} : i9 -> <i7, i2>
                                affine.store %314, %311[%c0] {to = "rfaddr_578"} : memref<1x!hcl.struct<i7, i2>>
                                %315 = memref.alloc() {name = "bv_579"} : memref<1xi3>
                                %316 = affine.load %311[0] {from = "rfaddr_578"} : memref<1x!hcl.struct<i7, i2>>
                                %317 = hcl.struct_get %316[1] : <i7, i2> -> i2
                                %318 = arith.extui %317 {unsigned} : i2 to i3
                                affine.store %318, %315[%c0] {to = "bv_579", unsigned} : memref<1xi3>
                                %319 = memref.alloc() {name = "rv_580"} : memref<1xi8>
                                %320 = affine.load %311[0] {from = "rfaddr_578"} : memref<1x!hcl.struct<i7, i2>>
                                %321 = hcl.struct_get %320[0] : <i7, i2> -> i7
                                %322 = arith.extui %321 {unsigned} : i7 to i8
                                affine.store %322, %319[%c0] {to = "rv_580", unsigned} : memref<1xi8>
                                %323 = memref.alloc() {name = "rfaddr_581"} : memref<1x!hcl.struct<i7, i2>>
                                %324 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                %325 = hcl.struct_get %324[4] : <i6, i1, i9, i9, i9, i32, i62> -> i9
                                %326 = hcl.int_to_struct(%325) {unsigned} : i9 -> <i7, i2>
                                affine.store %326, %323[%c0] {to = "rfaddr_581"} : memref<1x!hcl.struct<i7, i2>>
                                %327 = memref.alloc() {name = "bv_582"} : memref<1xi3>
                                %328 = affine.load %323[0] {from = "rfaddr_581"} : memref<1x!hcl.struct<i7, i2>>
                                %329 = hcl.struct_get %328[1] : <i7, i2> -> i2
                                %330 = arith.extui %329 {unsigned} : i2 to i3
                                affine.store %330, %327[%c0] {to = "bv_582", unsigned} : memref<1xi3>
                                %331 = memref.alloc() {name = "rv_583"} : memref<1xi8>
                                %332 = affine.load %323[0] {from = "rfaddr_581"} : memref<1x!hcl.struct<i7, i2>>
                                %333 = hcl.struct_get %332[0] : <i7, i2> -> i7
                                %334 = arith.extui %333 {unsigned} : i7 to i8
                                affine.store %334, %331[%c0] {to = "rv_583", unsigned} : memref<1xi8>
                                affine.for %arg2 = 0 to 8192 {
                                  %335 = memref.alloc() {name = "_a_584"} : memref<1xi64>
                                  %336 = affine.load %315[0] {from = "bv_579", unsigned} : memref<1xi3>
                                  %337 = arith.index_cast %336 {unsigned} : i3 to index
                                  %338 = affine.load %319[0] {from = "rv_580", unsigned} : memref<1xi8>
                                  %339 = arith.index_cast %338 {unsigned} : i8 to index
                                  %340 = memref.load %41[%337, %339, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                  %341 = arith.extui %340 {unsigned} : i32 to i64
                                  affine.store %341, %335[%c0] {to = "_a_584", unsigned} : memref<1xi64>
                                  %342 = memref.alloc() {name = "_b_585"} : memref<1xi64>
                                  %343 = affine.load %327[0] {from = "bv_582", unsigned} : memref<1xi3>
                                  %344 = arith.index_cast %343 {unsigned} : i3 to index
                                  %345 = affine.load %331[0] {from = "rv_583", unsigned} : memref<1xi8>
                                  %346 = arith.index_cast %345 {unsigned} : i8 to index
                                  %347 = memref.load %41[%344, %346, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                  %348 = arith.extui %347 {unsigned} : i32 to i64
                                  affine.store %348, %342[%c0] {to = "_b_585", unsigned} : memref<1xi64>
                                  %349 = memref.alloc() {name = "_w_586"} : memref<1xi64>
                                  %350 = arith.extsi %c0_i32 {unsigned} : i32 to i64
                                  affine.store %350, %349[%c0] {to = "_w_586", unsigned} : memref<1xi64>
                                  %351 = memref.alloc() {name = "_q_587"} : memref<1xi64>
                                  %352 = affine.load %259[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_psub"} : memref<1x!hcl.struct<i6, i1, i9, i9, i9, i32, i62>>
                                  %353 = hcl.struct_get %352[5] : <i6, i1, i9, i9, i9, i32, i62> -> i32
                                  %354 = arith.extui %353 {unsigned} : i32 to i64
                                  affine.store %354, %351[%c0] {to = "_q_587", unsigned} : memref<1xi64>
                                  %355 = affine.load %351[0] {from = "_q_587", unsigned} : memref<1xi64>
                                  %356 = affine.load %335[0] {from = "_a_584", unsigned} : memref<1xi64>
                                  %357 = arith.extui %355 {unsigned} : i64 to i65
                                  %358 = arith.extui %356 {unsigned} : i64 to i65
                                  %359 = arith.addi %357, %358 {unsigned} : i65
                                  %360 = affine.load %342[0] {from = "_b_585", unsigned} : memref<1xi64>
                                  %361 = arith.extui %359 {unsigned} : i65 to i66
                                  %362 = arith.extui %360 {unsigned} : i64 to i66
                                  %363 = arith.subi %361, %362 {unsigned} : i66
                                  %364 = arith.extui %355 {unsigned} : i64 to i66
                                  %365 = arith.remui %363, %364 {unsigned} : i66
                                  %366 = arith.trunci %365 {unsigned} : i66 to i32
                                  %367 = affine.load %303[0] {from = "bv_576", unsigned} : memref<1xi3>
                                  %368 = arith.index_cast %367 {unsigned} : i3 to index
                                  %369 = affine.load %307[0] {from = "rv_577", unsigned} : memref<1xi8>
                                  %370 = arith.index_cast %369 {unsigned} : i8 to index
                                  memref.store %366, %41[%368, %370, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                } {loop_name = "i", op_name = "bflyfn_84"}
                              } else {
                                %259 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                                %c9_i32 = arith.constant 9 : i32
                                %260 = arith.extui %259 : i16 to i32
                                %261 = arith.cmpi eq, %260, %c9_i32 : i32
                                scf.if %261 {
                                  %262 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_nop"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                                  %263 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                  %264 = hcl.int_to_struct(%263) {unsigned} : i128 -> <i6, i1, i10, i111>
                                  affine.store %264, %262[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_nop"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                                  %265 = affine.load %44[0] {from = "nop_count_35", unsigned} : memref<1xi32>
                                  %266 = affine.load %262[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_nop"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                                  %267 = hcl.struct_get %266[2] : <i6, i1, i10, i111> -> i10
                                  %268 = arith.extui %267 {unsigned} : i10 to i32
                                  %269 = arith.cmpi ult, %265, %268 {unsigned} : i32
                                  scf.if %269 {
                                    %270 = affine.load %44[0] {from = "nop_count_35", unsigned} : memref<1xi32>
                                    %271 = arith.extui %270 : i32 to i34
                                    %272 = arith.addi %271, %174 : i34
                                    %273 = arith.trunci %272 {unsigned} : i34 to i32
                                    affine.store %273, %44[0] {to = "nop_count_35", unsigned} : memref<1xi32>
                                    %274 = affine.load %78[0] {from = "tele_stall_count_54", unsigned} : memref<1xi32>
                                    %275 = arith.extui %274 : i32 to i34
                                    %276 = arith.addi %275, %174 : i34
                                    %277 = arith.trunci %276 {unsigned} : i34 to i32
                                    affine.store %277, %78[0] {to = "tele_stall_count_54", unsigned} : memref<1xi32>
                                    %278 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                                    affine.store %278, %67[0] {to = "flags_stall_44", unsigned} : memref<1xi1>
                                    affine.store %278, %68[0] {to = "flags_stalled_45", unsigned} : memref<1xi1>
                                    affine.store %278, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
                                    %279 = affine.load %68[0] {from = "flags_stalled_45", unsigned} : memref<1xi1>
                                    %280 = arith.extui %279 : i1 to i32
                                    %281 = arith.cmpi eq, %280, %c0_i32 : i32
                                    scf.if %281 {
                                      hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                      %282 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                      hcl.print(%282) {format = "ip=%d ", signedness = "u"} : i5
                                      %283 = affine.load %262[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_nop"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                                      %284 = hcl.struct_get %283[2] : <i6, i1, i10, i111> -> i10
                                      hcl.print(%284) {format = "nop count=%d", signedness = "u"} : i10
                                      hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                                    }
                                  } else {
                                    affine.store %c0_i32, %44[0] {to = "nop_count_35", unsigned} : memref<1xi32>
                                    %270 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                                    affine.store %270, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
                                    hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                    %271 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                    hcl.print(%271) {format = "ip=%d ", signedness = "u"} : i5
                                    %272 = affine.load %262[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_nop"} : memref<1x!hcl.struct<i6, i1, i10, i111>>
                                    %273 = hcl.struct_get %272[2] : <i6, i1, i10, i111> -> i10
                                    hcl.print(%273) {format = "nop count=%d", signedness = "u"} : i10
                                    hcl.print(%c0_i32) {format = "    <break>\0A", signedness = "_"} : i32
                                  }
                                } else {
                                  %262 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                                  %c10_i32 = arith.constant 10 : i32
                                  %263 = arith.extui %262 : i16 to i32
                                  %264 = arith.cmpi eq, %263, %c10_i32 : i32
                                  scf.if %264 {
                                    %265 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_cstore"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                    %266 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                    %267 = hcl.int_to_struct(%266) {unsigned} : i128 -> <i6, i33, i9, i80>
                                    affine.store %267, %265[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_cstore"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                    %268 = affine.load %23[0] {from = "cstore_cycle", unsigned} : memref<1xi3>
                                    %269 = arith.extui %268 : i3 to i32
                                    %270 = arith.cmpi eq, %269, %c1_i32 : i32
                                    scf.if %270 {
                                      hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                      %271 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                      hcl.print(%271) {format = "ip=%d ", signedness = "u"} : i5
                                      %272 = affine.load %265[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_cstore"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                      %273 = hcl.struct_get %272[2] : <i6, i33, i9, i80> -> i9
                                      hcl.print(%273) {format = "cstore addr=%d", signedness = "u"} : i9
                                      hcl.print(%c0_i32) {format = "    <got matching cfetch cstore!>\0A", signedness = "_"} : i32
                                      %274 = memref.alloc() {name = "rfaddr_590"} : memref<1x!hcl.struct<i7, i2>>
                                      %275 = affine.load %265[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_cstore"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                      %276 = hcl.struct_get %275[2] : <i6, i33, i9, i80> -> i9
                                      %277 = hcl.int_to_struct(%276) {unsigned} : i9 -> <i7, i2>
                                      affine.store %277, %274[%c0] {to = "rfaddr_590"} : memref<1x!hcl.struct<i7, i2>>
                                      %278 = memref.alloc() {name = "bv_591"} : memref<1xi3>
                                      %279 = affine.load %274[0] {from = "rfaddr_590"} : memref<1x!hcl.struct<i7, i2>>
                                      %280 = hcl.struct_get %279[1] : <i7, i2> -> i2
                                      %281 = arith.extui %280 {unsigned} : i2 to i3
                                      affine.store %281, %278[%c0] {to = "bv_591", unsigned} : memref<1xi3>
                                      %282 = memref.alloc() {name = "rv_592"} : memref<1xi8>
                                      %283 = affine.load %274[0] {from = "rfaddr_590"} : memref<1x!hcl.struct<i7, i2>>
                                      %284 = hcl.struct_get %283[0] : <i7, i2> -> i7
                                      %285 = arith.extui %284 {unsigned} : i7 to i8
                                      affine.store %285, %282[%c0] {to = "rv_592", unsigned} : memref<1xi8>
                                      %286 = memref.alloc() {name = "count_593"} : memref<1xi32>
                                      %c8192_i32 = arith.constant 8192 : i32
                                      affine.store %c8192_i32, %286[%c0] {to = "count_593", unsigned} : memref<1xi32>
                                      %287 = memref.alloc() {name = "src_addr_594"} : memref<1xi32>
                                      affine.store %c0_i32, %287[%c0] {to = "src_addr_594", unsigned} : memref<1xi32>
                                      %288 = memref.alloc() {name = "dst_addr_595"} : memref<1xi34>
                                      %289 = affine.load %26[0] {from = "cstore_spadaddr", unsigned} : memref<1xi32>
                                      %290 = arith.extui %289 : i32 to i34
                                      %291 = arith.extsi %c0_i32 : i32 to i34
                                      %292 = arith.addi %290, %291 : i34
                                      affine.store %292, %288[%c0] {to = "dst_addr_595"} : memref<1xi34>
                                      %293 = memref.alloc() {name = "_addr_596"} : memref<1xi32>
                                      %294 = affine.load %287[0] {from = "src_addr_594", unsigned} : memref<1xi32>
                                      affine.store %294, %293[%c0] {to = "_addr_596", unsigned} : memref<1xi32>
                                      %295 = memref.alloc() {name = "assert_cond_597"} : memref<1xi1>
                                      %296 = affine.load %293[0] {from = "_addr_596", unsigned} : memref<1xi32>
                                      %297 = affine.load %286[0] {from = "count_593", unsigned} : memref<1xi32>
                                      %298 = arith.extui %296 {unsigned} : i32 to i33
                                      %299 = arith.extui %297 {unsigned} : i32 to i33
                                      %300 = arith.addi %298, %299 {unsigned} : i33
                                      %301 = arith.extui %300 : i33 to i34
                                      %302 = arith.extsi %c8192_i32 : i32 to i34
                                      %303 = arith.cmpi sle, %301, %302 : i34
                                      affine.store %303, %295[%c0] {to = "assert_cond_597", unsigned} : memref<1xi1>
                                      %304 = affine.load %295[0] {from = "assert_cond_597", unsigned} : memref<1xi1>
                                      %305 = arith.extui %304 : i1 to i32
                                      %306 = arith.cmpi eq, %305, %c0_i32 : i32
                                      scf.if %306 {
                                        %310 = affine.load %293[0] {from = "_addr_596", unsigned} : memref<1xi32>
                                        %311 = affine.load %286[0] {from = "count_593", unsigned} : memref<1xi32>
                                        %312 = arith.extui %310 {unsigned} : i32 to i33
                                        %313 = arith.extui %311 {unsigned} : i32 to i33
                                        %314 = arith.addi %312, %313 {unsigned} : i33
                                        hcl.print(%310, %314) {format = "\0A\0AAssertion failed {}: RFfoo Mem.copyto exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "uu"} : i32, i33
                                        scf.while : () -> () {
                                          %315 = affine.load %295[0] {from = "assert_cond_597", unsigned} : memref<1xi1>
                                          %316 = arith.extui %315 : i1 to i32
                                          %317 = arith.cmpi ne, %316, %c1_i32 : i32
                                          scf.condition(%317)
                                        } do {
                                          affine.store %3, %295[0] {to = "assert_cond_597", unsigned} : memref<1xi1>
                                          scf.yield
                                        }
                                      }
                                      %307 = affine.load %286[0] {from = "count_593", unsigned} : memref<1xi32>
                                      %308 = arith.index_cast %307 {unsigned} : i32 to index
                                      %c1 = arith.constant {unsigned} 1 : index
                                      scf.for %arg2 = %c0_0 to %308 step %c1 {
                                        %310 = affine.load %278[0] {from = "bv_591", unsigned} : memref<1xi3>
                                        %311 = arith.index_cast %310 {unsigned} : i3 to index
                                        %312 = affine.load %282[0] {from = "rv_592", unsigned} : memref<1xi8>
                                        %313 = arith.index_cast %312 {unsigned} : i8 to index
                                        %314 = affine.load %287[0] {from = "src_addr_594", unsigned} : memref<1xi32>
                                        %315 = arith.extui %314 {unsigned} : i32 to i33
                                        %316 = arith.index_cast %arg2 {unsigned} : index to i33
                                        %317 = arith.addi %315, %316 {unsigned} : i33
                                        %318 = arith.index_cast %317 {unsigned} : i33 to index
                                        %319 = memref.load %41[%311, %313, %318] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                        %320 = affine.load %288[0] {from = "dst_addr_595"} : memref<1xi34>
                                        %321 = arith.extsi %320 : i34 to i35
                                        %322 = arith.index_cast %arg2 : index to i35
                                        %323 = arith.addi %321, %322 : i35
                                        %324 = arith.index_cast %323 {unsigned} : i35 to index
                                        memref.store %319, %0[%324] {to = "SPAD.alloc_c", unsigned} : memref<33554432xi32>
                                      } {loop_name = "i", op_name = "copyN_85"}
                                      %309 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                                      affine.store %309, %25[0] {to = "cstore_valid", unsigned} : memref<1xi1>
                                      affine.store %309, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
                                    } else {
                                      hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                      %271 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                      hcl.print(%271) {format = "ip=%d ", signedness = "u"} : i5
                                      %272 = affine.load %265[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_cstore"} : memref<1x!hcl.struct<i6, i33, i9, i80>>
                                      %273 = hcl.struct_get %272[2] : <i6, i33, i9, i80> -> i9
                                      hcl.print(%273) {format = "cstore addr=%d", signedness = "u"} : i9
                                      hcl.print(%c0_i32) {format = "    <no matching cfetch cstore?>\0A", signedness = "_"} : i32
                                      %274 = memref.alloc() {name = "assert_cond_598"} : memref<1xi1>
                                      affine.store %3, %274[%c0] {to = "assert_cond_598", unsigned} : memref<1xi1>
                                      %275 = affine.load %274[0] {from = "assert_cond_598", unsigned} : memref<1xi1>
                                      %276 = arith.extui %275 : i1 to i32
                                      %277 = arith.cmpi eq, %276, %c0_i32 : i32
                                      scf.if %277 {
                                        hcl.print_memref(%23) : memref<1xi3>
                                        scf.while : () -> () {
                                          %278 = affine.load %274[0] {from = "assert_cond_598", unsigned} : memref<1xi1>
                                          %279 = arith.extui %278 : i1 to i32
                                          %280 = arith.cmpi ne, %279, %c1_i32 : i32
                                          scf.condition(%280)
                                        } do {
                                          affine.store %3, %274[0] {to = "assert_cond_598", unsigned} : memref<1xi1>
                                          scf.yield
                                        }
                                      }
                                    }
                                  } else {
                                    %265 = affine.load %201[0] {from = "inst_id_230", unsigned} : memref<1xi16>
                                    %c11_i32 = arith.constant 11 : i32
                                    %266 = arith.extui %265 : i16 to i32
                                    %267 = arith.cmpi eq, %266, %c11_i32 : i32
                                    scf.if %267 {
                                      %268 = memref.alloc() {name = "exe_inst_ce0.cetiles.Mtile.UC_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                      %269 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                      %270 = hcl.int_to_struct(%269) {unsigned} : i128 -> <i6, i1, i9, i9, i103>
                                      affine.store %270, %268[%c0] {to = "exe_inst_ce0.cetiles.Mtile.UC_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                      hcl.print(%c0_i32) {format = "                                                            ce0.cetiles.Mtile.UC ", signedness = "_"} : i32
                                      %271 = affine.load %156[0] {from = "_cur_address_223", unsigned} : memref<1xi5>
                                      hcl.print(%271) {format = "ip=%d ", signedness = "u"} : i5
                                      %272 = affine.load %268[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                      %273 = hcl.struct_get %272[2] : <i6, i1, i9, i9, i103> -> i9
                                      %274 = hcl.struct_get %272[3] : <i6, i1, i9, i9, i103> -> i9
                                      hcl.print(%273, %274) {format = "move res=%d a=%d", signedness = "uu"} : i9, i9
                                      hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                                      %275 = memref.alloc() {name = "rfaddr_600"} : memref<1x!hcl.struct<i7, i2>>
                                      %276 = affine.load %268[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                      %277 = hcl.struct_get %276[2] : <i6, i1, i9, i9, i103> -> i9
                                      %278 = hcl.int_to_struct(%277) {unsigned} : i9 -> <i7, i2>
                                      affine.store %278, %275[%c0] {to = "rfaddr_600"} : memref<1x!hcl.struct<i7, i2>>
                                      %279 = memref.alloc() {name = "bv_601"} : memref<1xi3>
                                      %280 = affine.load %275[0] {from = "rfaddr_600"} : memref<1x!hcl.struct<i7, i2>>
                                      %281 = hcl.struct_get %280[1] : <i7, i2> -> i2
                                      %282 = arith.extui %281 {unsigned} : i2 to i3
                                      affine.store %282, %279[%c0] {to = "bv_601", unsigned} : memref<1xi3>
                                      %283 = memref.alloc() {name = "rv_602"} : memref<1xi8>
                                      %284 = affine.load %275[0] {from = "rfaddr_600"} : memref<1x!hcl.struct<i7, i2>>
                                      %285 = hcl.struct_get %284[0] : <i7, i2> -> i7
                                      %286 = arith.extui %285 {unsigned} : i7 to i8
                                      affine.store %286, %283[%c0] {to = "rv_602", unsigned} : memref<1xi8>
                                      %287 = memref.alloc() {name = "rfaddr_603"} : memref<1x!hcl.struct<i7, i2>>
                                      %288 = affine.load %268[0] {from = "exe_inst_ce0.cetiles.Mtile.UC_move"} : memref<1x!hcl.struct<i6, i1, i9, i9, i103>>
                                      %289 = hcl.struct_get %288[3] : <i6, i1, i9, i9, i103> -> i9
                                      %290 = hcl.int_to_struct(%289) {unsigned} : i9 -> <i7, i2>
                                      affine.store %290, %287[%c0] {to = "rfaddr_603"} : memref<1x!hcl.struct<i7, i2>>
                                      %291 = memref.alloc() {name = "bv_604"} : memref<1xi3>
                                      %292 = affine.load %287[0] {from = "rfaddr_603"} : memref<1x!hcl.struct<i7, i2>>
                                      %293 = hcl.struct_get %292[1] : <i7, i2> -> i2
                                      %294 = arith.extui %293 {unsigned} : i2 to i3
                                      affine.store %294, %291[%c0] {to = "bv_604", unsigned} : memref<1xi3>
                                      %295 = memref.alloc() {name = "rv_605"} : memref<1xi8>
                                      %296 = affine.load %287[0] {from = "rfaddr_603"} : memref<1x!hcl.struct<i7, i2>>
                                      %297 = hcl.struct_get %296[0] : <i7, i2> -> i7
                                      %298 = arith.extui %297 {unsigned} : i7 to i8
                                      affine.store %298, %295[%c0] {to = "rv_605", unsigned} : memref<1xi8>
                                      affine.for %arg2 = 0 to 8192 {
                                        %299 = memref.alloc() {name = "_a_606"} : memref<1xi64>
                                        %300 = affine.load %291[0] {from = "bv_604", unsigned} : memref<1xi3>
                                        %301 = arith.index_cast %300 {unsigned} : i3 to index
                                        %302 = affine.load %295[0] {from = "rv_605", unsigned} : memref<1xi8>
                                        %303 = arith.index_cast %302 {unsigned} : i8 to index
                                        %304 = memref.load %41[%301, %303, %arg2] {from = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                        %305 = arith.extui %304 {unsigned} : i32 to i64
                                        affine.store %305, %299[%c0] {to = "_a_606", unsigned} : memref<1xi64>
                                        %306 = memref.alloc() {name = "_b_607"} : memref<1xi64>
                                        %307 = arith.extsi %c0_i32 {unsigned} : i32 to i64
                                        affine.store %307, %306[%c0] {to = "_b_607", unsigned} : memref<1xi64>
                                        %308 = memref.alloc() {name = "_w_608"} : memref<1xi64>
                                        affine.store %307, %308[%c0] {to = "_w_608", unsigned} : memref<1xi64>
                                        %309 = memref.alloc() {name = "_q_609"} : memref<1xi64>
                                        %c4294967295_i64 = arith.constant 4294967295 : i64
                                        affine.store %c4294967295_i64, %309[%c0] {to = "_q_609", unsigned} : memref<1xi64>
                                        %310 = affine.load %299[0] {from = "_a_606", unsigned} : memref<1xi64>
                                        %311 = affine.load %306[0] {from = "_b_607", unsigned} : memref<1xi64>
                                        %312 = arith.extui %310 {unsigned} : i64 to i65
                                        %313 = arith.extui %311 {unsigned} : i64 to i65
                                        %314 = arith.addi %312, %313 {unsigned} : i65
                                        %315 = affine.load %309[0] {from = "_q_609", unsigned} : memref<1xi64>
                                        %316 = arith.extui %315 {unsigned} : i64 to i65
                                        %317 = arith.remui %314, %316 {unsigned} : i65
                                        %318 = arith.trunci %317 {unsigned} : i65 to i32
                                        %319 = affine.load %279[0] {from = "bv_601", unsigned} : memref<1xi3>
                                        %320 = arith.index_cast %319 {unsigned} : i3 to index
                                        %321 = affine.load %283[0] {from = "rv_602", unsigned} : memref<1xi8>
                                        %322 = arith.index_cast %321 {unsigned} : i8 to index
                                        memref.store %318, %41[%320, %322, %arg2] {to = "RFfoo.alloc_c", unsigned} : memref<4x72x8192xi32>
                                      } {loop_name = "i", op_name = "bflyfn_86"}
                                    } else {
                                      hcl.print(%c0_i32) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                                      %268 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                      %269 = hcl.get_slice(%268 : i128, %c127, %c96) -> i32
                                      hcl.print(%269) {format = "%d:", signedness = "u"} : i32
                                      %270 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                      %271 = hcl.get_slice(%270 : i128, %c95, %c64) -> i32
                                      hcl.print(%271) {format = "%d:", signedness = "u"} : i32
                                      %272 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                      %273 = hcl.get_slice(%272 : i128, %c63, %c32) -> i32
                                      hcl.print(%273) {format = "%d:", signedness = "u"} : i32
                                      %274 = affine.load %221[0] {from = "execute_inst_244", unsigned} : memref<1xi128>
                                      %275 = hcl.get_slice(%274 : i128, %c31, %c0_0) -> i32
                                      hcl.print(%275) {format = "%d:", signedness = "u"} : i32
                                      hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                                      %276 = memref.alloc() {name = "assert_cond_610"} : memref<1xi1>
                                      affine.store %3, %276[%c0] {to = "assert_cond_610", unsigned} : memref<1xi1>
                                      %277 = affine.load %276[0] {from = "assert_cond_610", unsigned} : memref<1xi1>
                                      %278 = arith.extui %277 : i1 to i32
                                      %279 = arith.cmpi eq, %278, %c0_i32 : i32
                                      scf.if %279 {
                                        hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ce0.cetiles.Mtile.UC.decode Invalid instruction\0A\0A", signedness = "_"} : i32
                                        scf.while : () -> () {
                                          %280 = affine.load %276[0] {from = "assert_cond_610", unsigned} : memref<1xi1>
                                          %281 = arith.extui %280 : i1 to i32
                                          %282 = arith.cmpi ne, %281, %c1_i32 : i32
                                          scf.condition(%282)
                                        } do {
                                          affine.store %3, %276[0] {to = "assert_cond_610", unsigned} : memref<1xi1>
                                          scf.yield
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
                  }
                }
              }
              affine.store %3, %76[0] {to = "latstalled_52", unsigned} : memref<1xi1>
              %226 = affine.load %198[0] {from = "inst_lat_228", unsigned} : memref<1xi32>
              %227 = arith.extui %226 : i32 to i33
              %228 = arith.cmpi ne, %227, %145 : i33
              scf.if %228 {
                %235 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                affine.store %235, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
              }
              %229 = affine.load %67[0] {from = "flags_stall_44", unsigned} : memref<1xi1>
              %230 = arith.extui %229 : i1 to i32
              %231 = arith.cmpi eq, %230, %c0_i32 : i32
              scf.if %231 {
                %235 = affine.load %77[0] {from = "tele_inst_count_53", unsigned} : memref<1xi32>
                %236 = arith.extui %235 : i32 to i34
                %237 = arith.addi %236, %174 : i34
                %238 = arith.trunci %237 {unsigned} : i34 to i32
                affine.store %238, %77[0] {to = "tele_inst_count_53", unsigned} : memref<1xi32>
                %239 = affine.load %74[0] {from = "inst_naddr_50", unsigned} : memref<1xi5>
                affine.store %239, %72[0] {to = "inst_addr_49", unsigned} : memref<1xi5>
                affine.store %3, %68[0] {to = "flags_stalled_45", unsigned} : memref<1xi1>
              }
              %232 = affine.load %133[0] {from = "addr_top", unsigned} : memref<1xi5>
              %233 = affine.load %74[0] {from = "inst_naddr_50", unsigned} : memref<1xi5>
              %234 = arith.cmpi eq, %232, %233 {unsigned} : i5
              scf.if %234 {
                %235 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                affine.store %235, %71[0] {to = "addr_stop_48", unsigned} : memref<1xi1>
                affine.store %235, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
              }
            } else {
              %221 = affine.load %198[0] {from = "inst_lat_228", unsigned} : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %222 = arith.extui %221 : i32 to i34
              %223 = arith.extsi %c2_i32 : i32 to i34
              %224 = arith.subi %222, %223 : i34
              %225 = arith.trunci %224 {unsigned} : i34 to i32
              affine.store %225, %75[0] {to = "latency_count_51", unsigned} : memref<1xi32>
              %226 = affine.load %79[0] {from = "tele_latstall_count_55", unsigned} : memref<1xi32>
              %227 = arith.extui %226 : i32 to i34
              %228 = arith.addi %227, %174 : i34
              %229 = arith.trunci %228 {unsigned} : i34 to i32
              affine.store %229, %79[0] {to = "tele_latstall_count_55", unsigned} : memref<1xi32>
              %230 = arith.trunci %c1_i32 {unsigned} : i32 to i1
              affine.store %230, %76[0] {to = "latstalled_52", unsigned} : memref<1xi1>
              affine.store %230, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
            }
          } else {
            %156 = memref.alloc() {name = "assert_cond_611"} : memref<1xi1>
            %157 = affine.load %76[0] {from = "latstalled_52", unsigned} : memref<1xi1>
            %158 = arith.extui %157 : i1 to i32
            %159 = arith.cmpi eq, %158, %c1_i32 : i32
            affine.store %159, %156[%c0] {to = "assert_cond_611", unsigned} : memref<1xi1>
            %160 = affine.load %156[0] {from = "assert_cond_611", unsigned} : memref<1xi1>
            %161 = arith.extui %160 : i1 to i32
            %162 = arith.cmpi eq, %161, %c0_i32 : i32
            scf.if %162 {
              hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: latency countdown but not latstalled?\0A\0A", signedness = "_"} : i32
              scf.while : () -> () {
                %173 = affine.load %156[0] {from = "assert_cond_611", unsigned} : memref<1xi1>
                %174 = arith.extui %173 : i1 to i32
                %175 = arith.cmpi ne, %174, %c1_i32 : i32
                scf.condition(%175)
              } do {
                affine.store %3, %156[0] {to = "assert_cond_611", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %163 = affine.load %75[0] {from = "latency_count_51", unsigned} : memref<1xi32>
            %164 = arith.extui %163 : i32 to i34
            %165 = arith.extsi %c1_i32 : i32 to i34
            %166 = arith.subi %164, %165 : i34
            %167 = arith.trunci %166 {unsigned} : i34 to i32
            affine.store %167, %75[0] {to = "latency_count_51", unsigned} : memref<1xi32>
            %168 = affine.load %79[0] {from = "tele_latstall_count_55", unsigned} : memref<1xi32>
            %169 = arith.extui %168 : i32 to i34
            %170 = arith.addi %169, %165 : i34
            %171 = arith.trunci %170 {unsigned} : i34 to i32
            affine.store %171, %79[0] {to = "tele_latstall_count_55", unsigned} : memref<1xi32>
            %172 = arith.trunci %c1_i32 {unsigned} : i32 to i1
            affine.store %172, %76[0] {to = "latstalled_52", unsigned} : memref<1xi1>
            affine.store %172, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
          }
          scf.yield
        }
        %135 = affine.load %71[0] {from = "addr_stop_48", unsigned} : memref<1xi1>
        %136 = arith.extui %135 : i1 to i32
        %137 = arith.cmpi ne, %136, %c0_i32 : i32
        scf.if %137 {
          affine.store %3, %65[0] {to = "flags_active_42", unsigned} : memref<1xi1>
        }
      } else {
        %133 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
        %134 = arith.extui %133 : i4 to i32
        %135 = arith.cmpi eq, %134, %c1_i32 : i32
        scf.if %135 {
          %141 = memref.alloc() {name = "assert_cond_612"} : memref<1xi1>
          %142 = affine.load %65[0] {from = "flags_active_42", unsigned} : memref<1xi1>
          %143 = arith.extui %142 : i1 to i32
          %144 = arith.cmpi eq, %143, %c0_i32 : i32
          affine.store %144, %141[%c0] {to = "assert_cond_612", unsigned} : memref<1xi1>
          %145 = affine.load %141[0] {from = "assert_cond_612", unsigned} : memref<1xi1>
          %146 = arith.extui %145 : i1 to i32
          %147 = arith.cmpi eq, %146, %c0_i32 : i32
          scf.if %147 {
            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ce0.cetiles.Mtile.UC: uController already/still active?\0A\0A", signedness = "_"} : i32
            scf.while : () -> () {
              %149 = affine.load %141[0] {from = "assert_cond_612", unsigned} : memref<1xi1>
              %150 = arith.extui %149 : i1 to i32
              %151 = arith.cmpi ne, %150, %c1_i32 : i32
              scf.condition(%151)
            } do {
              affine.store %3, %141[0] {to = "assert_cond_612", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          affine.store %3, %65[0] {to = "flags_active_42", unsigned} : memref<1xi1>
          affine.store %3, %66[0] {to = "flags_halt_43", unsigned} : memref<1xi1>
          affine.store %3, %67[0] {to = "flags_stall_44", unsigned} : memref<1xi1>
          affine.store %3, %68[0] {to = "flags_stalled_45", unsigned} : memref<1xi1>
          affine.store %3, %69[0] {to = "flags_break_46", unsigned} : memref<1xi1>
          affine.store %3, %70[0] {to = "count_stop_47", unsigned} : memref<1xi1>
          affine.store %3, %71[0] {to = "addr_stop_48", unsigned} : memref<1xi1>
          affine.store %73, %72[0] {to = "inst_addr_49", unsigned} : memref<1xi5>
          affine.store %73, %74[0] {to = "inst_naddr_50", unsigned} : memref<1xi5>
          affine.store %c0_i32, %75[0] {to = "latency_count_51", unsigned} : memref<1xi32>
          affine.store %3, %76[0] {to = "latstalled_52", unsigned} : memref<1xi1>
          affine.store %73, %72[0] {to = "inst_addr_49", unsigned} : memref<1xi5>
          %148 = arith.trunci %c1_i32 {unsigned} : i32 to i1
          affine.store %148, %65[0] {to = "flags_active_42", unsigned} : memref<1xi1>
        }
        %136 = affine.load %63[0] {from = "uc_start_delay", unsigned} : memref<1xi4>
        %137 = arith.extui %136 : i4 to i33
        %138 = arith.extsi %c1_i32 : i32 to i33
        %139 = arith.subi %137, %138 : i33
        %140 = arith.trunci %139 {unsigned} : i33 to i4
        affine.store %140, %63[0] {to = "uc_start_delay", unsigned} : memref<1xi4>
      }
      affine.store %3, %82[0] {to = "flags_stall_58", unsigned} : memref<1xi1>
      affine.store %3, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
      affine.store %3, %85[0] {to = "count_stop_61", unsigned} : memref<1xi1>
      affine.store %3, %86[0] {to = "addr_stop_62", unsigned} : memref<1xi1>
      scf.while : () -> () {
        %true = arith.constant {unsigned} true
        %133 = affine.load %80[0] {from = "flags_active_56", unsigned} : memref<1xi1>
        %134 = arith.extui %133 : i1 to i32
        %135 = arith.cmpi ne, %134, %c0_i32 : i32
        %136 = arith.andi %true, %135 {unsigned} : i1
        %137 = affine.load %84[0] {from = "flags_break_60", unsigned} : memref<1xi1>
        %138 = arith.extui %137 : i1 to i32
        %139 = arith.cmpi eq, %138, %c0_i32 : i32
        %140 = arith.andi %136, %139 {unsigned} : i1
        scf.condition(%140)
      } do {
        %133 = memref.alloc() {name = "assert_cond_613"} : memref<1xi1>
        %134 = affine.load %90[0] {from = "latstalled_66", unsigned} : memref<1xi1>
        %135 = arith.extui %134 : i1 to i32
        %136 = arith.cmpi eq, %135, %c1_i32 : i32
        %137 = arith.ori %false, %136 {unsigned} : i1
        %138 = affine.load %89[0] {from = "latency_count_65", unsigned} : memref<1xi32>
        %139 = arith.extui %138 : i32 to i33
        %140 = arith.extsi %c0_i32 : i32 to i33
        %141 = arith.cmpi eq, %139, %140 : i33
        %142 = arith.ori %137, %141 {unsigned} : i1
        %143 = arith.extui %142 : i1 to i32
        %144 = arith.cmpi ne, %143, %c0_i32 : i32
        affine.store %144, %133[%c0] {to = "assert_cond_613", unsigned} : memref<1xi1>
        %145 = affine.load %133[0] {from = "assert_cond_613", unsigned} : memref<1xi1>
        %146 = arith.extui %145 : i1 to i32
        %147 = arith.cmpi eq, %146, %c0_i32 : i32
        scf.if %147 {
          hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: \0A\0A", signedness = "_"} : i32
          scf.while : () -> () {
            %151 = affine.load %133[0] {from = "assert_cond_613", unsigned} : memref<1xi1>
            %152 = arith.extui %151 : i1 to i32
            %153 = arith.cmpi ne, %152, %c1_i32 : i32
            scf.condition(%153)
          } do {
            affine.store %3, %133[0] {to = "assert_cond_613", unsigned} : memref<1xi1>
            scf.yield
          }
        }
        %148 = affine.load %89[0] {from = "latency_count_65", unsigned} : memref<1xi32>
        %149 = arith.extui %148 : i32 to i33
        %150 = arith.cmpi eq, %149, %140 : i33
        scf.if %150 {
          %151 = memref.alloc() {name = "_cur_address_614"} : memref<1xi32>
          %152 = affine.load %87[0] {from = "inst_addr_63", unsigned} : memref<1xi32>
          affine.store %152, %151[%c0] {to = "_cur_address_614", unsigned} : memref<1xi32>
          %153 = affine.load %87[0] {from = "inst_addr_63", unsigned} : memref<1xi32>
          %c2_i32 = arith.constant 2 : i32
          %154 = arith.extui %153 : i32 to i34
          %155 = arith.extsi %c2_i32 : i32 to i34
          %156 = arith.addi %154, %155 : i34
          %157 = arith.trunci %156 {unsigned} : i34 to i32
          affine.store %157, %88[0] {to = "inst_naddr_64", unsigned} : memref<1xi32>
          %158 = memref.alloc() {name = "inst_615"} : memref<1xi64>
          %159 = arith.extsi %c0_i32 {unsigned} : i32 to i64
          affine.store %159, %158[%c0] {to = "inst_615", unsigned} : memref<1xi64>
          %160 = memref.alloc() {name = "read_addr_616"} : memref<1xi34>
          %161 = affine.load %87[0] {from = "inst_addr_63", unsigned} : memref<1xi32>
          %162 = arith.extui %161 : i32 to i34
          %163 = arith.extsi %c0_i32 : i32 to i34
          %164 = arith.addi %162, %163 : i34
          affine.store %164, %160[%c0] {to = "read_addr_616"} : memref<1xi34>
          %165 = memref.alloc() {name = "_addr_617"} : memref<1xi34>
          %166 = affine.load %160[0] {from = "read_addr_616"} : memref<1xi34>
          affine.store %166, %165[%c0] {to = "_addr_617"} : memref<1xi34>
          %167 = memref.alloc() {name = "assert_cond_618"} : memref<1xi1>
          %168 = affine.load %165[0] {from = "_addr_617"} : memref<1xi34>
          %169 = arith.extsi %168 : i34 to i35
          %170 = arith.extsi %c1_i32 : i32 to i35
          %171 = arith.addi %169, %170 : i35
          %c33554432_i32 = arith.constant 33554432 : i32
          %172 = arith.extsi %c33554432_i32 : i32 to i35
          %173 = arith.cmpi sle, %171, %172 : i35
          affine.store %173, %167[%c0] {to = "assert_cond_618", unsigned} : memref<1xi1>
          %174 = affine.load %167[0] {from = "assert_cond_618", unsigned} : memref<1xi1>
          %175 = arith.extui %174 : i1 to i32
          %176 = arith.cmpi eq, %175, %c0_i32 : i32
          scf.if %176 {
            %238 = affine.load %165[0] {from = "_addr_617"} : memref<1xi34>
            %239 = arith.extsi %238 : i34 to i35
            %240 = arith.addi %239, %170 : i35
            hcl.print(%238, %240) {format = "\0A\0AAssertion failed {}: HBM Mem.read exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
            scf.while : () -> () {
              %241 = affine.load %167[0] {from = "assert_cond_618", unsigned} : memref<1xi1>
              %242 = arith.extui %241 : i1 to i32
              %243 = arith.cmpi ne, %242, %c1_i32 : i32
              scf.condition(%243)
            } do {
              affine.store %3, %167[0] {to = "assert_cond_618", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %177 = memref.alloc() {name = "Mem.read_c_87"} : memref<1xi32>
          %178 = affine.load %160[0] {from = "read_addr_616"} : memref<1xi34>
          %179 = arith.extsi %178 : i34 to i35
          %180 = arith.index_cast %c0 : index to i35
          %181 = arith.addi %179, %180 : i35
          %182 = arith.index_cast %181 {unsigned} : i35 to index
          %183 = memref.load %arg0[%182] {from = "hbm", unsigned} : memref<33554432xi32>
          affine.store %183, %177[%c0] {to = "Mem.read_c_87", unsigned} : memref<1xi32>
          %c32_i32 = arith.constant 32 : i32
          %c0_i64 = arith.constant {unsigned} 0 : i64
          %184 = affine.load %177[0] {from = "Mem.read_c_87", unsigned} : memref<1xi32>
          %185 = arith.extui %184 {unsigned} : i32 to i64
          %186 = arith.ori %c0_i64, %185 {unsigned} : i64
          affine.store %186, %158[0] {to = "inst_615", unsigned} : memref<1xi64>
          %187 = memref.alloc() {name = "read_addr_619"} : memref<1xi34>
          %188 = affine.load %87[0] {from = "inst_addr_63", unsigned} : memref<1xi32>
          %189 = arith.extui %188 : i32 to i34
          %190 = arith.extsi %c1_i32 : i32 to i34
          %191 = arith.addi %189, %190 : i34
          affine.store %191, %187[%c0] {to = "read_addr_619"} : memref<1xi34>
          %192 = memref.alloc() {name = "_addr_620"} : memref<1xi34>
          %193 = affine.load %187[0] {from = "read_addr_619"} : memref<1xi34>
          affine.store %193, %192[%c0] {to = "_addr_620"} : memref<1xi34>
          %194 = memref.alloc() {name = "assert_cond_621"} : memref<1xi1>
          %195 = affine.load %192[0] {from = "_addr_620"} : memref<1xi34>
          %196 = arith.extsi %195 : i34 to i35
          %197 = arith.addi %196, %170 : i35
          %198 = arith.cmpi sle, %197, %172 : i35
          affine.store %198, %194[%c0] {to = "assert_cond_621", unsigned} : memref<1xi1>
          %199 = affine.load %194[0] {from = "assert_cond_621", unsigned} : memref<1xi1>
          %200 = arith.extui %199 : i1 to i32
          %201 = arith.cmpi eq, %200, %c0_i32 : i32
          scf.if %201 {
            %238 = affine.load %192[0] {from = "_addr_620"} : memref<1xi34>
            %239 = arith.extsi %238 : i34 to i35
            %240 = arith.addi %239, %170 : i35
            hcl.print(%238, %240) {format = "\0A\0AAssertion failed {}: HBM Mem.read exceeds memory size: addr=%d+size=%d > 33554432\0A\0A", signedness = "__"} : i34, i35
            scf.while : () -> () {
              %241 = affine.load %194[0] {from = "assert_cond_621", unsigned} : memref<1xi1>
              %242 = arith.extui %241 : i1 to i32
              %243 = arith.cmpi ne, %242, %c1_i32 : i32
              scf.condition(%243)
            } do {
              affine.store %3, %194[0] {to = "assert_cond_621", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %202 = memref.alloc() {name = "Mem.read_c_88"} : memref<1xi32>
          %203 = affine.load %187[0] {from = "read_addr_619"} : memref<1xi34>
          %204 = arith.extsi %203 : i34 to i35
          %205 = arith.addi %204, %180 : i35
          %206 = arith.index_cast %205 {unsigned} : i35 to index
          %207 = memref.load %arg0[%206] {from = "hbm", unsigned} : memref<33554432xi32>
          affine.store %207, %202[%c0] {to = "Mem.read_c_88", unsigned} : memref<1xi32>
          %208 = affine.load %202[0] {from = "Mem.read_c_88", unsigned} : memref<1xi32>
          %209 = arith.extui %208 {unsigned} : i32 to i64
          %210 = arith.ori %c0_i64, %209 {unsigned} : i64
          affine.store %210, %158[0] {to = "inst_615", unsigned} : memref<1xi64>
          hcl.print(%c0_i32) {format = "FETCH proc.UC inst=0x", signedness = "_"} : i32
          %211 = affine.load %158[0] {from = "inst_615", unsigned} : memref<1xi64>
          %c32 = arith.constant {unsigned} 32 : index
          %c63 = arith.constant {unsigned} 63 : index
          %212 = hcl.get_slice(%211 : i64, %c63, %c32) -> i32
          hcl.print(%212) {format = "%d:", signedness = "u"} : i32
          %213 = affine.load %158[0] {from = "inst_615", unsigned} : memref<1xi64>
          %c0_0 = arith.constant {unsigned} 0 : index
          %c31 = arith.constant {unsigned} 31 : index
          %214 = hcl.get_slice(%213 : i64, %c31, %c0_0) -> i32
          hcl.print(%214) {format = "%d:", signedness = "u"} : i32
          hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
          %215 = memref.alloc() {name = "inst_lat_622"} : memref<1xi32>
          affine.store %c0_i32, %215[%c0] {to = "inst_lat_622", unsigned} : memref<1xi32>
          %216 = memref.alloc() {name = "decode_inst_623"} : memref<1xi64>
          %217 = affine.load %158[0] {from = "inst_615", unsigned} : memref<1xi64>
          affine.store %217, %216[%c0] {to = "decode_inst_623", unsigned} : memref<1xi64>
          %218 = memref.alloc() {name = "inst_id_624"} : memref<1xi16>
          %219 = arith.trunci %c0_i32 {unsigned} : i32 to i16
          affine.store %219, %218[%c0] {to = "inst_id_624", unsigned} : memref<1xi16>
          %220 = memref.alloc() {name = "dec_inst_halt"} : memref<1x!hcl.struct<i4, i60>>
          %221 = affine.load %216[0] {from = "decode_inst_623", unsigned} : memref<1xi64>
          %222 = hcl.int_to_struct(%221) {unsigned} : i64 -> <i4, i60>
          affine.store %222, %220[%c0] {to = "dec_inst_halt"} : memref<1x!hcl.struct<i4, i60>>
          %true = arith.constant {unsigned} true
          %223 = affine.load %220[0] {from = "dec_inst_halt"} : memref<1x!hcl.struct<i4, i60>>
          %224 = hcl.struct_get %223[0] : <i4, i60> -> i4
          %225 = arith.cmpi eq, %224, %64 {unsigned} : i4
          %226 = arith.andi %true, %225 {unsigned} : i1
          scf.if %226 {
            affine.store %219, %218[0] {to = "inst_id_624", unsigned} : memref<1xi16>
            affine.store %c0_i32, %215[0] {to = "inst_lat_622", unsigned} : memref<1xi32>
          } else {
            %238 = memref.alloc() {name = "dec_inst_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
            %239 = affine.load %216[0] {from = "decode_inst_623", unsigned} : memref<1xi64>
            %240 = hcl.int_to_struct(%239) {unsigned} : i64 -> <i4, i4, i56>
            affine.store %240, %238[%c0] {to = "dec_inst_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
            %241 = affine.load %238[0] {from = "dec_inst_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
            %242 = hcl.struct_get %241[0] : <i4, i4, i56> -> i4
            %243 = arith.trunci %c1_i32 {unsigned} : i32 to i4
            %244 = arith.cmpi eq, %242, %243 {unsigned} : i4
            %245 = arith.andi %true, %244 {unsigned} : i1
            scf.if %245 {
              %246 = arith.trunci %c1_i32 {unsigned} : i32 to i16
              affine.store %246, %218[0] {to = "inst_id_624", unsigned} : memref<1xi16>
              affine.store %c0_i32, %215[0] {to = "inst_lat_622", unsigned} : memref<1xi32>
            } else {
              %246 = memref.alloc() {name = "dec_inst_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
              %247 = affine.load %216[0] {from = "decode_inst_623", unsigned} : memref<1xi64>
              %248 = hcl.int_to_struct(%247) {unsigned} : i64 -> <i4, i4, i56>
              affine.store %248, %246[%c0] {to = "dec_inst_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
              %249 = affine.load %246[0] {from = "dec_inst_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
              %250 = hcl.struct_get %249[0] : <i4, i4, i56> -> i4
              %251 = arith.trunci %c2_i32 {unsigned} : i32 to i4
              %252 = arith.cmpi eq, %250, %251 {unsigned} : i4
              %253 = arith.andi %true, %252 {unsigned} : i1
              scf.if %253 {
                %254 = arith.trunci %c2_i32 {unsigned} : i32 to i16
                affine.store %254, %218[0] {to = "inst_id_624", unsigned} : memref<1xi16>
                affine.store %c0_i32, %215[0] {to = "inst_lat_622", unsigned} : memref<1xi32>
              } else {
                %254 = memref.alloc() {name = "assert_cond_628"} : memref<1xi1>
                affine.store %3, %254[%c0] {to = "assert_cond_628", unsigned} : memref<1xi1>
                %255 = affine.load %254[0] {from = "assert_cond_628", unsigned} : memref<1xi1>
                %256 = arith.extui %255 : i1 to i32
                %257 = arith.cmpi eq, %256, %c0_i32 : i32
                scf.if %257 {
                  %259 = affine.load %216[0] {from = "decode_inst_623", unsigned} : memref<1xi64>
                  %260 = affine.load %151[0] {from = "_cur_address_614", unsigned} : memref<1xi32>
                  hcl.print(%259, %260) {format = "\0A\0AAssertion failed {}: \0A\0Aproc.UC.decode Invalid instruction (%d) at address %d\0A\0A\0A", signedness = "uu"} : i64, i32
                  scf.while : () -> () {
                    %261 = affine.load %254[0] {from = "assert_cond_628", unsigned} : memref<1xi1>
                    %262 = arith.extui %261 : i1 to i32
                    %263 = arith.cmpi ne, %262, %c1_i32 : i32
                    scf.condition(%263)
                  } do {
                    affine.store %3, %254[0] {to = "assert_cond_628", unsigned} : memref<1xi1>
                    scf.yield
                  }
                }
                %c3_i32 = arith.constant 3 : i32
                %258 = arith.trunci %c3_i32 {unsigned} : i32 to i16
                affine.store %258, %218[0] {to = "inst_id_624", unsigned} : memref<1xi16>
              }
            }
          }
          %227 = affine.load %215[0] {from = "inst_lat_622", unsigned} : memref<1xi32>
          %228 = arith.extui %227 : i32 to i33
          %229 = arith.extsi %c1_i32 : i32 to i33
          %230 = arith.cmpi sle, %228, %229 : i33
          %231 = arith.ori %false, %230 {unsigned} : i1
          %232 = affine.load %90[0] {from = "latstalled_66", unsigned} : memref<1xi1>
          %233 = arith.extui %232 : i1 to i32
          %234 = arith.cmpi eq, %233, %c1_i32 : i32
          %235 = arith.ori %231, %234 {unsigned} : i1
          %236 = arith.extui %235 : i1 to i32
          %237 = arith.cmpi ne, %236, %c0_i32 : i32
          scf.if %237 {
            %238 = memref.alloc() {name = "execute_inst_629"} : memref<1xi64>
            %239 = affine.load %158[0] {from = "inst_615", unsigned} : memref<1xi64>
            affine.store %239, %238[%c0] {to = "execute_inst_629", unsigned} : memref<1xi64>
            %240 = affine.load %218[0] {from = "inst_id_624", unsigned} : memref<1xi16>
            %241 = arith.extui %240 : i16 to i32
            %242 = arith.cmpi eq, %241, %c0_i32 : i32
            scf.if %242 {
              %249 = memref.alloc() {name = "exe_inst_proc.UC_halt"} : memref<1x!hcl.struct<i4, i60>>
              %250 = affine.load %238[0] {from = "execute_inst_629", unsigned} : memref<1xi64>
              %251 = hcl.int_to_struct(%250) {unsigned} : i64 -> <i4, i60>
              affine.store %251, %249[%c0] {to = "exe_inst_proc.UC_halt"} : memref<1x!hcl.struct<i4, i60>>
              hcl.print(%c0_i32) {format = "proc.UC ", signedness = "_"} : i32
              %252 = affine.load %151[0] {from = "_cur_address_614", unsigned} : memref<1xi32>
              hcl.print(%252) {format = "ip=%d ", signedness = "u"} : i32
              hcl.print(%c0_i32) {format = "halt", signedness = "_"} : i32
              hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
              %253 = arith.trunci %c1_i32 {unsigned} : i32 to i1
              affine.store %253, %81[0] {to = "flags_halt_57", unsigned} : memref<1xi1>
              affine.store %3, %80[0] {to = "flags_active_56", unsigned} : memref<1xi1>
              affine.store %253, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
            } else {
              %249 = affine.load %218[0] {from = "inst_id_624", unsigned} : memref<1xi16>
              %250 = arith.extui %249 : i16 to i32
              %251 = arith.cmpi eq, %250, %c1_i32 : i32
              scf.if %251 {
                %252 = memref.alloc() {name = "exe_inst_proc.UC_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
                %253 = affine.load %238[0] {from = "execute_inst_629", unsigned} : memref<1xi64>
                %254 = hcl.int_to_struct(%253) {unsigned} : i64 -> <i4, i4, i56>
                affine.store %254, %252[%c0] {to = "exe_inst_proc.UC_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
                hcl.print(%c0_i32) {format = "proc.UC ", signedness = "_"} : i32
                %255 = affine.load %151[0] {from = "_cur_address_614", unsigned} : memref<1xi32>
                hcl.print(%255) {format = "ip=%d ", signedness = "u"} : i32
                %256 = affine.load %252[0] {from = "exe_inst_proc.UC_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
                %257 = hcl.struct_get %256[1] : <i4, i4, i56> -> i4
                hcl.print(%257) {format = "cestart ce=%d", signedness = "u"} : i4
                hcl.print(%c0_i32) {format = "    \0A", signedness = "_"} : i32
                %258 = memref.alloc() {name = "assert_cond_632"} : memref<1xi1>
                %259 = affine.load %252[0] {from = "exe_inst_proc.UC_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
                %260 = hcl.struct_get %259[1] : <i4, i4, i56> -> i4
                %261 = arith.extui %260 : i4 to i32
                %262 = arith.cmpi slt, %261, %c1_i32 : i32
                affine.store %262, %258[%c0] {to = "assert_cond_632", unsigned} : memref<1xi1>
                %263 = affine.load %258[0] {from = "assert_cond_632", unsigned} : memref<1xi1>
                %264 = arith.extui %263 : i1 to i32
                %265 = arith.cmpi eq, %264, %c0_i32 : i32
                scf.if %265 {
                  %270 = affine.load %252[0] {from = "exe_inst_proc.UC_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
                  %271 = hcl.struct_get %270[1] : <i4, i4, i56> -> i4
                  hcl.print(%271) {format = "\0A\0AAssertion failed {}: Invalid ce_index=%d\0A\0A", signedness = "u"} : i4
                  scf.while : () -> () {
                    %272 = affine.load %258[0] {from = "assert_cond_632", unsigned} : memref<1xi1>
                    %273 = arith.extui %272 : i1 to i32
                    %274 = arith.cmpi ne, %273, %c1_i32 : i32
                    scf.condition(%274)
                  } do {
                    affine.store %3, %258[0] {to = "assert_cond_632", unsigned} : memref<1xi1>
                    scf.yield
                  }
                }
                %266 = affine.load %252[0] {from = "exe_inst_proc.UC_cestart"} : memref<1x!hcl.struct<i4, i4, i56>>
                %267 = hcl.struct_get %266[1] : <i4, i4, i56> -> i4
                %268 = arith.extui %267 : i4 to i32
                %269 = arith.cmpi eq, %268, %c0_i32 : i32
                scf.if %269 {
                  %270 = memref.alloc() {name = "read_addr_633"} : memref<1xi32>
                  affine.store %c1_i32, %270[%c0] {to = "read_addr_633", unsigned} : memref<1xi32>
                  %271 = memref.alloc() {name = "_addr_634"} : memref<1xi32>
                  %272 = affine.load %270[0] {from = "read_addr_633", unsigned} : memref<1xi32>
                  affine.store %272, %271[%c0] {to = "_addr_634", unsigned} : memref<1xi32>
                  %273 = memref.alloc() {name = "assert_cond_635"} : memref<1xi1>
                  %274 = affine.load %271[0] {from = "_addr_634", unsigned} : memref<1xi32>
                  %275 = arith.extui %274 : i32 to i34
                  %276 = arith.addi %275, %190 : i34
                  %c10_i32 = arith.constant 10 : i32
                  %277 = arith.extsi %c10_i32 : i32 to i34
                  %278 = arith.cmpi sle, %276, %277 : i34
                  affine.store %278, %273[%c0] {to = "assert_cond_635", unsigned} : memref<1xi1>
                  %279 = affine.load %273[0] {from = "assert_cond_635", unsigned} : memref<1xi1>
                  %280 = arith.extui %279 : i1 to i32
                  %281 = arith.cmpi eq, %280, %c0_i32 : i32
                  scf.if %281 {
                    %325 = affine.load %271[0] {from = "_addr_634", unsigned} : memref<1xi32>
                    %326 = arith.extui %325 : i32 to i34
                    %327 = arith.addi %326, %190 : i34
                    hcl.print(%325, %327) {format = "\0A\0AAssertion failed {}: Sysreg Mem.read exceeds memory size: addr=%d+size=%d > 10\0A\0A", signedness = "u_"} : i32, i34
                    scf.while : () -> () {
                      %328 = affine.load %273[0] {from = "assert_cond_635", unsigned} : memref<1xi1>
                      %329 = arith.extui %328 : i1 to i32
                      %330 = arith.cmpi ne, %329, %c1_i32 : i32
                      scf.condition(%330)
                    } do {
                      affine.store %3, %273[0] {to = "assert_cond_635", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %282 = memref.alloc() {name = "Mem.read_c_89"} : memref<1xi64>
                  %283 = affine.load %270[0] {from = "read_addr_633", unsigned} : memref<1xi32>
                  %284 = arith.extui %283 {unsigned} : i32 to i33
                  %285 = arith.index_cast %c0 {unsigned} : index to i33
                  %286 = arith.addi %284, %285 {unsigned} : i33
                  %287 = arith.index_cast %286 {unsigned} : i33 to index
                  %288 = memref.load %arg1[%287] {from = "sysreg", unsigned} : memref<10xi64>
                  affine.store %288, %282[%c0] {to = "Mem.read_c_89", unsigned} : memref<1xi64>
                  %289 = memref.alloc() {name = "assert_cond_636"} : memref<1xi1>
                  %290 = affine.load %4[0] {from = "flags_active", unsigned} : memref<1xi1>
                  %291 = arith.extui %290 : i1 to i32
                  %292 = arith.cmpi eq, %291, %c0_i32 : i32
                  affine.store %292, %289[%c0] {to = "assert_cond_636", unsigned} : memref<1xi1>
                  %293 = affine.load %289[0] {from = "assert_cond_636", unsigned} : memref<1xi1>
                  %294 = arith.extui %293 : i1 to i32
                  %295 = arith.cmpi eq, %294, %c0_i32 : i32
                  scf.if %295 {
                    hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ce0.mf.UC: uController already/still active?\0A\0A", signedness = "_"} : i32
                    scf.while : () -> () {
                      %325 = affine.load %289[0] {from = "assert_cond_636", unsigned} : memref<1xi1>
                      %326 = arith.extui %325 : i1 to i32
                      %327 = arith.cmpi ne, %326, %c1_i32 : i32
                      scf.condition(%327)
                    } do {
                      affine.store %3, %289[0] {to = "assert_cond_636", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  affine.store %3, %4[0] {to = "flags_active", unsigned} : memref<1xi1>
                  affine.store %3, %5[0] {to = "flags_halt", unsigned} : memref<1xi1>
                  affine.store %3, %6[0] {to = "flags_stall", unsigned} : memref<1xi1>
                  affine.store %3, %7[0] {to = "flags_stalled", unsigned} : memref<1xi1>
                  affine.store %3, %8[0] {to = "flags_break", unsigned} : memref<1xi1>
                  affine.store %3, %9[0] {to = "count_stop", unsigned} : memref<1xi1>
                  affine.store %3, %10[0] {to = "addr_stop", unsigned} : memref<1xi1>
                  affine.store %c0_i32, %11[0] {to = "inst_addr", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %12[0] {to = "inst_naddr", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %13[0] {to = "latency_count", unsigned} : memref<1xi32>
                  affine.store %3, %14[0] {to = "latstalled", unsigned} : memref<1xi1>
                  %296 = affine.load %282[0] {from = "Mem.read_c_89", unsigned} : memref<1xi64>
                  %297 = arith.trunci %296 {unsigned} : i64 to i32
                  affine.store %297, %11[0] {to = "inst_addr", unsigned} : memref<1xi32>
                  %298 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                  affine.store %298, %4[0] {to = "flags_active", unsigned} : memref<1xi1>
                  %299 = memref.alloc() {name = "read_addr_637"} : memref<1xi32>
                  affine.store %c2_i32, %299[%c0] {to = "read_addr_637", unsigned} : memref<1xi32>
                  %300 = memref.alloc() {name = "_addr_638"} : memref<1xi32>
                  %301 = affine.load %299[0] {from = "read_addr_637", unsigned} : memref<1xi32>
                  affine.store %301, %300[%c0] {to = "_addr_638", unsigned} : memref<1xi32>
                  %302 = memref.alloc() {name = "assert_cond_639"} : memref<1xi1>
                  %303 = affine.load %300[0] {from = "_addr_638", unsigned} : memref<1xi32>
                  %304 = arith.extui %303 : i32 to i34
                  %305 = arith.addi %304, %190 : i34
                  %306 = arith.cmpi sle, %305, %277 : i34
                  affine.store %306, %302[%c0] {to = "assert_cond_639", unsigned} : memref<1xi1>
                  %307 = affine.load %302[0] {from = "assert_cond_639", unsigned} : memref<1xi1>
                  %308 = arith.extui %307 : i1 to i32
                  %309 = arith.cmpi eq, %308, %c0_i32 : i32
                  scf.if %309 {
                    %325 = affine.load %300[0] {from = "_addr_638", unsigned} : memref<1xi32>
                    %326 = arith.extui %325 : i32 to i34
                    %327 = arith.addi %326, %190 : i34
                    hcl.print(%325, %327) {format = "\0A\0AAssertion failed {}: Sysreg Mem.read exceeds memory size: addr=%d+size=%d > 10\0A\0A", signedness = "u_"} : i32, i34
                    scf.while : () -> () {
                      %328 = affine.load %302[0] {from = "assert_cond_639", unsigned} : memref<1xi1>
                      %329 = arith.extui %328 : i1 to i32
                      %330 = arith.cmpi ne, %329, %c1_i32 : i32
                      scf.condition(%330)
                    } do {
                      affine.store %3, %302[0] {to = "assert_cond_639", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %310 = memref.alloc() {name = "Mem.read_c_90"} : memref<1xi64>
                  %311 = affine.load %299[0] {from = "read_addr_637", unsigned} : memref<1xi32>
                  %312 = arith.extui %311 {unsigned} : i32 to i33
                  %313 = arith.addi %312, %285 {unsigned} : i33
                  %314 = arith.index_cast %313 {unsigned} : i33 to index
                  %315 = memref.load %arg1[%314] {from = "sysreg", unsigned} : memref<10xi64>
                  affine.store %315, %310[%c0] {to = "Mem.read_c_90", unsigned} : memref<1xi64>
                  %316 = memref.alloc() {name = "assert_cond_640"} : memref<1xi1>
                  %317 = affine.load %27[0] {from = "flags_active_21", unsigned} : memref<1xi1>
                  %318 = arith.extui %317 : i1 to i32
                  %319 = arith.cmpi eq, %318, %c0_i32 : i32
                  affine.store %319, %316[%c0] {to = "assert_cond_640", unsigned} : memref<1xi1>
                  %320 = affine.load %316[0] {from = "assert_cond_640", unsigned} : memref<1xi1>
                  %321 = arith.extui %320 : i1 to i32
                  %322 = arith.cmpi eq, %321, %c0_i32 : i32
                  scf.if %322 {
                    hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: ce0.cf.UC: uController already/still active?\0A\0A", signedness = "_"} : i32
                    scf.while : () -> () {
                      %325 = affine.load %316[0] {from = "assert_cond_640", unsigned} : memref<1xi1>
                      %326 = arith.extui %325 : i1 to i32
                      %327 = arith.cmpi ne, %326, %c1_i32 : i32
                      scf.condition(%327)
                    } do {
                      affine.store %3, %316[0] {to = "assert_cond_640", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  affine.store %3, %27[0] {to = "flags_active_21", unsigned} : memref<1xi1>
                  affine.store %3, %28[0] {to = "flags_halt_22", unsigned} : memref<1xi1>
                  affine.store %3, %29[0] {to = "flags_stall_23", unsigned} : memref<1xi1>
                  affine.store %3, %30[0] {to = "flags_stalled_24", unsigned} : memref<1xi1>
                  affine.store %3, %31[0] {to = "flags_break_25", unsigned} : memref<1xi1>
                  affine.store %3, %32[0] {to = "count_stop_26", unsigned} : memref<1xi1>
                  affine.store %3, %33[0] {to = "addr_stop_27", unsigned} : memref<1xi1>
                  affine.store %c0_i32, %34[0] {to = "inst_addr_28", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %35[0] {to = "inst_naddr_29", unsigned} : memref<1xi32>
                  affine.store %c0_i32, %36[0] {to = "latency_count_30", unsigned} : memref<1xi32>
                  affine.store %3, %37[0] {to = "latstalled_31", unsigned} : memref<1xi1>
                  %323 = affine.load %310[0] {from = "Mem.read_c_90", unsigned} : memref<1xi64>
                  %324 = arith.trunci %323 {unsigned} : i64 to i32
                  affine.store %324, %34[0] {to = "inst_addr_28", unsigned} : memref<1xi32>
                  affine.store %298, %27[0] {to = "flags_active_21", unsigned} : memref<1xi1>
                }
              } else {
                %252 = affine.load %218[0] {from = "inst_id_624", unsigned} : memref<1xi16>
                %253 = arith.extui %252 : i16 to i32
                %254 = arith.cmpi eq, %253, %c2_i32 : i32
                scf.if %254 {
                  %255 = memref.alloc() {name = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                  %256 = affine.load %238[0] {from = "execute_inst_629", unsigned} : memref<1xi64>
                  %257 = hcl.int_to_struct(%256) {unsigned} : i64 -> <i4, i4, i56>
                  affine.store %257, %255[%c0] {to = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                  %258 = memref.alloc() {name = "assert_cond_642"} : memref<1xi1>
                  %259 = affine.load %255[0] {from = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                  %260 = hcl.struct_get %259[1] : <i4, i4, i56> -> i4
                  %261 = arith.extui %260 : i4 to i32
                  %262 = arith.cmpi slt, %261, %c1_i32 : i32
                  affine.store %262, %258[%c0] {to = "assert_cond_642", unsigned} : memref<1xi1>
                  %263 = affine.load %258[0] {from = "assert_cond_642", unsigned} : memref<1xi1>
                  %264 = arith.extui %263 : i1 to i32
                  %265 = arith.cmpi eq, %264, %c0_i32 : i32
                  scf.if %265 {
                    %270 = affine.load %255[0] {from = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                    %271 = hcl.struct_get %270[1] : <i4, i4, i56> -> i4
                    hcl.print(%271) {format = "\0A\0AAssertion failed {}: Invalid ce_index=%d\0A\0A", signedness = "u"} : i4
                    scf.while : () -> () {
                      %272 = affine.load %258[0] {from = "assert_cond_642", unsigned} : memref<1xi1>
                      %273 = arith.extui %272 : i1 to i32
                      %274 = arith.cmpi ne, %273, %c1_i32 : i32
                      scf.condition(%274)
                    } do {
                      affine.store %3, %258[0] {to = "assert_cond_642", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                  %266 = affine.load %255[0] {from = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                  %267 = hcl.struct_get %266[1] : <i4, i4, i56> -> i4
                  %268 = arith.extui %267 : i4 to i32
                  %269 = arith.cmpi eq, %268, %c0_i32 : i32
                  scf.if %269 {
                    %270 = affine.load %4[0] {from = "flags_active", unsigned} : memref<1xi1>
                    %271 = arith.extui %270 : i1 to i32
                    %272 = arith.cmpi ne, %271, %c0_i32 : i32
                    %273 = arith.ori %false, %272 {unsigned} : i1
                    %274 = affine.load %27[0] {from = "flags_active_21", unsigned} : memref<1xi1>
                    %275 = arith.extui %274 : i1 to i32
                    %276 = arith.cmpi ne, %275, %c0_i32 : i32
                    %277 = arith.ori %273, %276 {unsigned} : i1
                    scf.if %277 {
                      %278 = affine.load %83[0] {from = "flags_stalled_59", unsigned} : memref<1xi1>
                      %279 = arith.extui %278 : i1 to i32
                      %280 = arith.cmpi eq, %279, %c0_i32 : i32
                      scf.if %280 {
                        hcl.print(%c0_i32) {format = "proc.UC ", signedness = "_"} : i32
                        %286 = affine.load %151[0] {from = "_cur_address_614", unsigned} : memref<1xi32>
                        hcl.print(%286) {format = "ip=%d ", signedness = "u"} : i32
                        %287 = affine.load %255[0] {from = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                        %288 = hcl.struct_get %287[1] : <i4, i4, i56> -> i4
                        hcl.print(%288) {format = "cewait ce=%d", signedness = "u"} : i4
                        hcl.print(%c0_i32) {format = "    <stall>\0A", signedness = "_"} : i32
                      }
                      %281 = affine.load %92[0] {from = "tele_stall_count_68", unsigned} : memref<1xi32>
                      %282 = arith.extui %281 : i32 to i34
                      %283 = arith.addi %282, %190 : i34
                      %284 = arith.trunci %283 {unsigned} : i34 to i32
                      affine.store %284, %92[0] {to = "tele_stall_count_68", unsigned} : memref<1xi32>
                      %285 = arith.trunci %c1_i32 {unsigned} : i32 to i1
                      affine.store %285, %82[0] {to = "flags_stall_58", unsigned} : memref<1xi1>
                      affine.store %285, %83[0] {to = "flags_stalled_59", unsigned} : memref<1xi1>
                      affine.store %285, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
                    } else {
                      hcl.print(%c0_i32) {format = "proc.UC ", signedness = "_"} : i32
                      %278 = affine.load %151[0] {from = "_cur_address_614", unsigned} : memref<1xi32>
                      hcl.print(%278) {format = "ip=%d ", signedness = "u"} : i32
                      %279 = affine.load %255[0] {from = "exe_inst_proc.UC_cewait"} : memref<1x!hcl.struct<i4, i4, i56>>
                      %280 = hcl.struct_get %279[1] : <i4, i4, i56> -> i4
                      hcl.print(%280) {format = "cewait ce=%d", signedness = "u"} : i4
                      hcl.print(%c0_i32) {format = "    <resume>\0A", signedness = "_"} : i32
                    }
                  }
                } else {
                  hcl.print(%c0_i32) {format = "Invalid instruction : 0x", signedness = "_"} : i32
                  %255 = affine.load %238[0] {from = "execute_inst_629", unsigned} : memref<1xi64>
                  %256 = hcl.get_slice(%255 : i64, %c63, %c32) -> i32
                  hcl.print(%256) {format = "%d:", signedness = "u"} : i32
                  %257 = affine.load %238[0] {from = "execute_inst_629", unsigned} : memref<1xi64>
                  %258 = hcl.get_slice(%257 : i64, %c31, %c0_0) -> i32
                  hcl.print(%258) {format = "%d:", signedness = "u"} : i32
                  hcl.print(%c0_i32) {format = "\0A", signedness = "_"} : i32
                  %259 = memref.alloc() {name = "assert_cond_643"} : memref<1xi1>
                  affine.store %3, %259[%c0] {to = "assert_cond_643", unsigned} : memref<1xi1>
                  %260 = affine.load %259[0] {from = "assert_cond_643", unsigned} : memref<1xi1>
                  %261 = arith.extui %260 : i1 to i32
                  %262 = arith.cmpi eq, %261, %c0_i32 : i32
                  scf.if %262 {
                    hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: proc.UC.decode Invalid instruction\0A\0A", signedness = "_"} : i32
                    scf.while : () -> () {
                      %263 = affine.load %259[0] {from = "assert_cond_643", unsigned} : memref<1xi1>
                      %264 = arith.extui %263 : i1 to i32
                      %265 = arith.cmpi ne, %264, %c1_i32 : i32
                      scf.condition(%265)
                    } do {
                      affine.store %3, %259[0] {to = "assert_cond_643", unsigned} : memref<1xi1>
                      scf.yield
                    }
                  }
                }
              }
            }
            affine.store %3, %90[0] {to = "latstalled_66", unsigned} : memref<1xi1>
            %243 = affine.load %215[0] {from = "inst_lat_622", unsigned} : memref<1xi32>
            %244 = arith.extui %243 : i32 to i33
            %245 = arith.cmpi ne, %244, %140 : i33
            scf.if %245 {
              %249 = arith.trunci %c1_i32 {unsigned} : i32 to i1
              affine.store %249, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
            }
            %246 = affine.load %82[0] {from = "flags_stall_58", unsigned} : memref<1xi1>
            %247 = arith.extui %246 : i1 to i32
            %248 = arith.cmpi eq, %247, %c0_i32 : i32
            scf.if %248 {
              %249 = affine.load %91[0] {from = "tele_inst_count_67", unsigned} : memref<1xi32>
              %250 = arith.extui %249 : i32 to i34
              %251 = arith.addi %250, %190 : i34
              %252 = arith.trunci %251 {unsigned} : i34 to i32
              affine.store %252, %91[0] {to = "tele_inst_count_67", unsigned} : memref<1xi32>
              %253 = affine.load %88[0] {from = "inst_naddr_64", unsigned} : memref<1xi32>
              affine.store %253, %87[0] {to = "inst_addr_63", unsigned} : memref<1xi32>
              affine.store %3, %83[0] {to = "flags_stalled_59", unsigned} : memref<1xi1>
            }
          } else {
            %238 = affine.load %215[0] {from = "inst_lat_622", unsigned} : memref<1xi32>
            %239 = arith.extui %238 : i32 to i34
            %240 = arith.subi %239, %155 : i34
            %241 = arith.trunci %240 {unsigned} : i34 to i32
            affine.store %241, %89[0] {to = "latency_count_65", unsigned} : memref<1xi32>
            %242 = affine.load %93[0] {from = "tele_latstall_count_69", unsigned} : memref<1xi32>
            %243 = arith.extui %242 : i32 to i34
            %244 = arith.addi %243, %190 : i34
            %245 = arith.trunci %244 {unsigned} : i34 to i32
            affine.store %245, %93[0] {to = "tele_latstall_count_69", unsigned} : memref<1xi32>
            %246 = arith.trunci %c1_i32 {unsigned} : i32 to i1
            affine.store %246, %90[0] {to = "latstalled_66", unsigned} : memref<1xi1>
            affine.store %246, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
          }
        } else {
          %151 = memref.alloc() {name = "assert_cond_644"} : memref<1xi1>
          %152 = affine.load %90[0] {from = "latstalled_66", unsigned} : memref<1xi1>
          %153 = arith.extui %152 : i1 to i32
          %154 = arith.cmpi eq, %153, %c1_i32 : i32
          affine.store %154, %151[%c0] {to = "assert_cond_644", unsigned} : memref<1xi1>
          %155 = affine.load %151[0] {from = "assert_cond_644", unsigned} : memref<1xi1>
          %156 = arith.extui %155 : i1 to i32
          %157 = arith.cmpi eq, %156, %c0_i32 : i32
          scf.if %157 {
            hcl.print(%c0_i32) {format = "\0A\0AAssertion failed {}: latency countdown but not latstalled?\0A\0A", signedness = "_"} : i32
            scf.while : () -> () {
              %168 = affine.load %151[0] {from = "assert_cond_644", unsigned} : memref<1xi1>
              %169 = arith.extui %168 : i1 to i32
              %170 = arith.cmpi ne, %169, %c1_i32 : i32
              scf.condition(%170)
            } do {
              affine.store %3, %151[0] {to = "assert_cond_644", unsigned} : memref<1xi1>
              scf.yield
            }
          }
          %158 = affine.load %89[0] {from = "latency_count_65", unsigned} : memref<1xi32>
          %159 = arith.extui %158 : i32 to i34
          %160 = arith.extsi %c1_i32 : i32 to i34
          %161 = arith.subi %159, %160 : i34
          %162 = arith.trunci %161 {unsigned} : i34 to i32
          affine.store %162, %89[0] {to = "latency_count_65", unsigned} : memref<1xi32>
          %163 = affine.load %93[0] {from = "tele_latstall_count_69", unsigned} : memref<1xi32>
          %164 = arith.extui %163 : i32 to i34
          %165 = arith.addi %164, %160 : i34
          %166 = arith.trunci %165 {unsigned} : i34 to i32
          affine.store %166, %93[0] {to = "tele_latstall_count_69", unsigned} : memref<1xi32>
          %167 = arith.trunci %c1_i32 {unsigned} : i32 to i1
          affine.store %167, %90[0] {to = "latstalled_66", unsigned} : memref<1xi1>
          affine.store %167, %84[0] {to = "flags_break_60", unsigned} : memref<1xi1>
        }
        scf.yield
      }
      %125 = affine.load %45[0] {from = "flag_ntt", unsigned} : memref<1xi1>
      %126 = arith.extui %125 : i1 to i32
      %127 = arith.cmpi ne, %126, %c0_i32 : i32
      scf.if %127 {
        affine.for %arg2 = 0 to 64 {
          affine.for %arg3 = 0 to 64 {
            %133 = memref.alloc() {name = "read_addr_645"} : memref<1xi65>
            %c128_i32 = arith.constant 128 : i32
            %134 = arith.index_cast %arg2 : index to i64
            %135 = arith.extsi %c128_i32 : i32 to i64
            %136 = arith.muli %134, %135 : i64
            %137 = arith.extsi %136 : i64 to i65
            %138 = arith.index_cast %arg3 : index to i65
            %139 = arith.addi %137, %138 : i65
            affine.store %139, %133[%c0] {to = "read_addr_645"} : memref<1xi65>
            %140 = memref.alloc() {name = "_addr_646"} : memref<1xi65>
            %141 = affine.load %133[0] {from = "read_addr_645"} : memref<1xi65>
            affine.store %141, %140[%c0] {to = "_addr_646"} : memref<1xi65>
            %142 = memref.alloc() {name = "assert_cond_647"} : memref<1xi1>
            %143 = affine.load %140[0] {from = "_addr_646"} : memref<1xi65>
            %144 = arith.extsi %143 : i65 to i66
            %145 = arith.extsi %c1_i32 : i32 to i66
            %146 = arith.addi %144, %145 : i66
            %c8192_i32 = arith.constant 8192 : i32
            %147 = arith.extsi %c8192_i32 : i32 to i66
            %148 = arith.cmpi sle, %146, %147 : i66
            affine.store %148, %142[%c0] {to = "assert_cond_647", unsigned} : memref<1xi1>
            %149 = affine.load %142[0] {from = "assert_cond_647", unsigned} : memref<1xi1>
            %150 = arith.extui %149 : i1 to i32
            %151 = arith.cmpi eq, %150, %c0_i32 : i32
            scf.if %151 {
              %183 = affine.load %140[0] {from = "_addr_646"} : memref<1xi65>
              %184 = arith.extsi %183 : i65 to i66
              %185 = arith.addi %184, %145 : i66
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdataouttop Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i65, i66
              scf.while : () -> () {
                %186 = affine.load %142[0] {from = "assert_cond_647", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %142[0] {to = "assert_cond_647", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %152 = memref.alloc() {name = "Mem.read_c_93"} : memref<1xi32>
            %153 = affine.load %133[0] {from = "read_addr_645"} : memref<1xi65>
            %154 = arith.extsi %153 : i65 to i66
            %155 = arith.index_cast %c0 : index to i66
            %156 = arith.addi %154, %155 : i66
            %157 = arith.index_cast %156 {unsigned} : i66 to index
            %158 = memref.load %53[%157] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %158, %152[%c0] {to = "Mem.read_c_93", unsigned} : memref<1xi32>
            %159 = memref.alloc() {name = "write_addr_648"} : memref<1xi66>
            %c64_i32 = arith.constant 64 : i32
            %160 = arith.extsi %c64_i32 : i32 to i64
            %161 = arith.muli %134, %160 : i64
            %162 = arith.extsi %c0_i32 : i32 to i65
            %163 = arith.extsi %161 : i64 to i65
            %164 = arith.addi %162, %163 : i65
            %165 = arith.extsi %164 : i65 to i66
            %166 = arith.index_cast %arg3 : index to i66
            %167 = arith.addi %165, %166 : i66
            affine.store %167, %159[%c0] {to = "write_addr_648"} : memref<1xi66>
            %168 = memref.alloc() {name = "_addr_649"} : memref<1xi66>
            %169 = affine.load %159[0] {from = "write_addr_648"} : memref<1xi66>
            affine.store %169, %168[%c0] {to = "_addr_649"} : memref<1xi66>
            %170 = memref.alloc() {name = "assert_cond_650"} : memref<1xi1>
            %171 = affine.load %168[0] {from = "_addr_649"} : memref<1xi66>
            %172 = arith.extsi %171 : i66 to i67
            %173 = arith.extsi %c1_i32 : i32 to i67
            %174 = arith.addi %172, %173 : i67
            %175 = arith.extsi %c8192_i32 : i32 to i67
            %176 = arith.cmpi sle, %174, %175 : i67
            affine.store %176, %170[%c0] {to = "assert_cond_650", unsigned} : memref<1xi1>
            %177 = affine.load %170[0] {from = "assert_cond_650", unsigned} : memref<1xi1>
            %178 = arith.extui %177 : i1 to i32
            %179 = arith.cmpi eq, %178, %c0_i32 : i32
            scf.if %179 {
              %183 = affine.load %168[0] {from = "_addr_649"} : memref<1xi66>
              %184 = arith.extsi %183 : i66 to i67
              %185 = arith.addi %184, %173 : i67
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdataintop Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
              scf.while : () -> () {
                %186 = affine.load %170[0] {from = "assert_cond_650", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %170[0] {to = "assert_cond_650", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %180 = affine.load %152[0] {from = "Mem.read_c_93", unsigned} : memref<1xi32>
            %181 = affine.load %159[0] {from = "write_addr_648"} : memref<1xi66>
            %182 = arith.index_cast %181 {unsigned} : i66 to index
            memref.store %180, %51[%182] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64"}
          affine.for %arg3 = 0 to 64 {
            %133 = memref.alloc() {name = "read_addr_651"} : memref<1xi66>
            %c128_i32 = arith.constant 128 : i32
            %134 = arith.index_cast %arg2 : index to i64
            %135 = arith.extsi %c128_i32 : i32 to i64
            %136 = arith.muli %134, %135 : i64
            %c64_i32 = arith.constant 64 : i32
            %137 = arith.extsi %136 : i64 to i65
            %138 = arith.extsi %c64_i32 : i32 to i65
            %139 = arith.addi %137, %138 : i65
            %140 = arith.extsi %139 : i65 to i66
            %141 = arith.index_cast %arg3 : index to i66
            %142 = arith.addi %140, %141 : i66
            affine.store %142, %133[%c0] {to = "read_addr_651"} : memref<1xi66>
            %143 = memref.alloc() {name = "_addr_652"} : memref<1xi66>
            %144 = affine.load %133[0] {from = "read_addr_651"} : memref<1xi66>
            affine.store %144, %143[%c0] {to = "_addr_652"} : memref<1xi66>
            %145 = memref.alloc() {name = "assert_cond_653"} : memref<1xi1>
            %146 = affine.load %143[0] {from = "_addr_652"} : memref<1xi66>
            %147 = arith.extsi %146 : i66 to i67
            %148 = arith.extsi %c1_i32 : i32 to i67
            %149 = arith.addi %147, %148 : i67
            %c8192_i32 = arith.constant 8192 : i32
            %150 = arith.extsi %c8192_i32 : i32 to i67
            %151 = arith.cmpi sle, %149, %150 : i67
            affine.store %151, %145[%c0] {to = "assert_cond_653", unsigned} : memref<1xi1>
            %152 = affine.load %145[0] {from = "assert_cond_653", unsigned} : memref<1xi1>
            %153 = arith.extui %152 : i1 to i32
            %154 = arith.cmpi eq, %153, %c0_i32 : i32
            scf.if %154 {
              %183 = affine.load %143[0] {from = "_addr_652"} : memref<1xi66>
              %184 = arith.extsi %183 : i66 to i67
              %185 = arith.addi %184, %148 : i67
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdataouttop Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
              scf.while : () -> () {
                %186 = affine.load %145[0] {from = "assert_cond_653", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %145[0] {to = "assert_cond_653", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %155 = memref.alloc() {name = "Mem.read_c_95"} : memref<1xi32>
            %156 = affine.load %133[0] {from = "read_addr_651"} : memref<1xi66>
            %157 = arith.extsi %156 : i66 to i67
            %158 = arith.index_cast %c0 : index to i67
            %159 = arith.addi %157, %158 : i67
            %160 = arith.index_cast %159 {unsigned} : i67 to index
            %161 = memref.load %53[%160] {from = "nttdataouttop.alloc_c", unsigned} : memref<8192xi32>
            affine.store %161, %155[%c0] {to = "Mem.read_c_95", unsigned} : memref<1xi32>
            %162 = memref.alloc() {name = "write_addr_654"} : memref<1xi66>
            %163 = arith.extsi %c64_i32 : i32 to i64
            %164 = arith.muli %134, %163 : i64
            %165 = arith.extsi %c0_i32 : i32 to i65
            %166 = arith.extsi %164 : i64 to i65
            %167 = arith.addi %165, %166 : i65
            %168 = arith.extsi %167 : i65 to i66
            %169 = arith.addi %168, %141 : i66
            affine.store %169, %162[%c0] {to = "write_addr_654"} : memref<1xi66>
            %170 = memref.alloc() {name = "_addr_655"} : memref<1xi66>
            %171 = affine.load %162[0] {from = "write_addr_654"} : memref<1xi66>
            affine.store %171, %170[%c0] {to = "_addr_655"} : memref<1xi66>
            %172 = memref.alloc() {name = "assert_cond_656"} : memref<1xi1>
            %173 = affine.load %170[0] {from = "_addr_655"} : memref<1xi66>
            %174 = arith.extsi %173 : i66 to i67
            %175 = arith.addi %174, %148 : i67
            %176 = arith.cmpi sle, %175, %150 : i67
            affine.store %176, %172[%c0] {to = "assert_cond_656", unsigned} : memref<1xi1>
            %177 = affine.load %172[0] {from = "assert_cond_656", unsigned} : memref<1xi1>
            %178 = arith.extui %177 : i1 to i32
            %179 = arith.cmpi eq, %178, %c0_i32 : i32
            scf.if %179 {
              %183 = affine.load %170[0] {from = "_addr_655"} : memref<1xi66>
              %184 = arith.extsi %183 : i66 to i67
              %185 = arith.addi %184, %148 : i67
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdatainbot Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
              scf.while : () -> () {
                %186 = affine.load %172[0] {from = "assert_cond_656", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %172[0] {to = "assert_cond_656", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %180 = affine.load %155[0] {from = "Mem.read_c_95", unsigned} : memref<1xi32>
            %181 = affine.load %162[0] {from = "write_addr_654"} : memref<1xi66>
            %182 = arith.index_cast %181 {unsigned} : i66 to index
            memref.store %180, %52[%182] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64_94"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ot"}
        affine.for %arg2 = 0 to 64 {
          affine.for %arg3 = 0 to 64 {
            %133 = memref.alloc() {name = "read_addr_657"} : memref<1xi65>
            %c128_i32 = arith.constant 128 : i32
            %134 = arith.index_cast %arg2 : index to i64
            %135 = arith.extsi %c128_i32 : i32 to i64
            %136 = arith.muli %134, %135 : i64
            %137 = arith.extsi %136 : i64 to i65
            %138 = arith.index_cast %arg3 : index to i65
            %139 = arith.addi %137, %138 : i65
            affine.store %139, %133[%c0] {to = "read_addr_657"} : memref<1xi65>
            %140 = memref.alloc() {name = "_addr_658"} : memref<1xi65>
            %141 = affine.load %133[0] {from = "read_addr_657"} : memref<1xi65>
            affine.store %141, %140[%c0] {to = "_addr_658"} : memref<1xi65>
            %142 = memref.alloc() {name = "assert_cond_659"} : memref<1xi1>
            %143 = affine.load %140[0] {from = "_addr_658"} : memref<1xi65>
            %144 = arith.extsi %143 : i65 to i66
            %145 = arith.extsi %c1_i32 : i32 to i66
            %146 = arith.addi %144, %145 : i66
            %c8192_i32 = arith.constant 8192 : i32
            %147 = arith.extsi %c8192_i32 : i32 to i66
            %148 = arith.cmpi sle, %146, %147 : i66
            affine.store %148, %142[%c0] {to = "assert_cond_659", unsigned} : memref<1xi1>
            %149 = affine.load %142[0] {from = "assert_cond_659", unsigned} : memref<1xi1>
            %150 = arith.extui %149 : i1 to i32
            %151 = arith.cmpi eq, %150, %c0_i32 : i32
            scf.if %151 {
              %183 = affine.load %140[0] {from = "_addr_658"} : memref<1xi65>
              %184 = arith.extsi %183 : i65 to i66
              %185 = arith.addi %184, %145 : i66
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdataoutbot Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i65, i66
              scf.while : () -> () {
                %186 = affine.load %142[0] {from = "assert_cond_659", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %142[0] {to = "assert_cond_659", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %152 = memref.alloc() {name = "Mem.read_c_98"} : memref<1xi32>
            %153 = affine.load %133[0] {from = "read_addr_657"} : memref<1xi65>
            %154 = arith.extsi %153 : i65 to i66
            %155 = arith.index_cast %c0 : index to i66
            %156 = arith.addi %154, %155 : i66
            %157 = arith.index_cast %156 {unsigned} : i66 to index
            %158 = memref.load %54[%157] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %158, %152[%c0] {to = "Mem.read_c_98", unsigned} : memref<1xi32>
            %159 = memref.alloc() {name = "write_addr_660"} : memref<1xi66>
            %c4096_i32 = arith.constant 4096 : i32
            %c64_i32 = arith.constant 64 : i32
            %160 = arith.extsi %c64_i32 : i32 to i64
            %161 = arith.muli %134, %160 : i64
            %162 = arith.extsi %c4096_i32 : i32 to i65
            %163 = arith.extsi %161 : i64 to i65
            %164 = arith.addi %162, %163 : i65
            %165 = arith.extsi %164 : i65 to i66
            %166 = arith.index_cast %arg3 : index to i66
            %167 = arith.addi %165, %166 : i66
            affine.store %167, %159[%c0] {to = "write_addr_660"} : memref<1xi66>
            %168 = memref.alloc() {name = "_addr_661"} : memref<1xi66>
            %169 = affine.load %159[0] {from = "write_addr_660"} : memref<1xi66>
            affine.store %169, %168[%c0] {to = "_addr_661"} : memref<1xi66>
            %170 = memref.alloc() {name = "assert_cond_662"} : memref<1xi1>
            %171 = affine.load %168[0] {from = "_addr_661"} : memref<1xi66>
            %172 = arith.extsi %171 : i66 to i67
            %173 = arith.extsi %c1_i32 : i32 to i67
            %174 = arith.addi %172, %173 : i67
            %175 = arith.extsi %c8192_i32 : i32 to i67
            %176 = arith.cmpi sle, %174, %175 : i67
            affine.store %176, %170[%c0] {to = "assert_cond_662", unsigned} : memref<1xi1>
            %177 = affine.load %170[0] {from = "assert_cond_662", unsigned} : memref<1xi1>
            %178 = arith.extui %177 : i1 to i32
            %179 = arith.cmpi eq, %178, %c0_i32 : i32
            scf.if %179 {
              %183 = affine.load %168[0] {from = "_addr_661"} : memref<1xi66>
              %184 = arith.extsi %183 : i66 to i67
              %185 = arith.addi %184, %173 : i67
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdataintop Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
              scf.while : () -> () {
                %186 = affine.load %170[0] {from = "assert_cond_662", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %170[0] {to = "assert_cond_662", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %180 = affine.load %152[0] {from = "Mem.read_c_98", unsigned} : memref<1xi32>
            %181 = affine.load %159[0] {from = "write_addr_660"} : memref<1xi66>
            %182 = arith.index_cast %181 {unsigned} : i66 to index
            memref.store %180, %51[%182] {to = "nttdataintop.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64_97"}
          affine.for %arg3 = 0 to 64 {
            %133 = memref.alloc() {name = "read_addr_663"} : memref<1xi66>
            %c128_i32 = arith.constant 128 : i32
            %134 = arith.index_cast %arg2 : index to i64
            %135 = arith.extsi %c128_i32 : i32 to i64
            %136 = arith.muli %134, %135 : i64
            %c64_i32 = arith.constant 64 : i32
            %137 = arith.extsi %136 : i64 to i65
            %138 = arith.extsi %c64_i32 : i32 to i65
            %139 = arith.addi %137, %138 : i65
            %140 = arith.extsi %139 : i65 to i66
            %141 = arith.index_cast %arg3 : index to i66
            %142 = arith.addi %140, %141 : i66
            affine.store %142, %133[%c0] {to = "read_addr_663"} : memref<1xi66>
            %143 = memref.alloc() {name = "_addr_664"} : memref<1xi66>
            %144 = affine.load %133[0] {from = "read_addr_663"} : memref<1xi66>
            affine.store %144, %143[%c0] {to = "_addr_664"} : memref<1xi66>
            %145 = memref.alloc() {name = "assert_cond_665"} : memref<1xi1>
            %146 = affine.load %143[0] {from = "_addr_664"} : memref<1xi66>
            %147 = arith.extsi %146 : i66 to i67
            %148 = arith.extsi %c1_i32 : i32 to i67
            %149 = arith.addi %147, %148 : i67
            %c8192_i32 = arith.constant 8192 : i32
            %150 = arith.extsi %c8192_i32 : i32 to i67
            %151 = arith.cmpi sle, %149, %150 : i67
            affine.store %151, %145[%c0] {to = "assert_cond_665", unsigned} : memref<1xi1>
            %152 = affine.load %145[0] {from = "assert_cond_665", unsigned} : memref<1xi1>
            %153 = arith.extui %152 : i1 to i32
            %154 = arith.cmpi eq, %153, %c0_i32 : i32
            scf.if %154 {
              %183 = affine.load %143[0] {from = "_addr_664"} : memref<1xi66>
              %184 = arith.extsi %183 : i66 to i67
              %185 = arith.addi %184, %148 : i67
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdataoutbot Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
              scf.while : () -> () {
                %186 = affine.load %145[0] {from = "assert_cond_665", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %145[0] {to = "assert_cond_665", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %155 = memref.alloc() {name = "Mem.read_c_100"} : memref<1xi32>
            %156 = affine.load %133[0] {from = "read_addr_663"} : memref<1xi66>
            %157 = arith.extsi %156 : i66 to i67
            %158 = arith.index_cast %c0 : index to i67
            %159 = arith.addi %157, %158 : i67
            %160 = arith.index_cast %159 {unsigned} : i67 to index
            %161 = memref.load %54[%160] {from = "nttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
            affine.store %161, %155[%c0] {to = "Mem.read_c_100", unsigned} : memref<1xi32>
            %162 = memref.alloc() {name = "write_addr_666"} : memref<1xi66>
            %c4096_i32 = arith.constant 4096 : i32
            %163 = arith.extsi %c64_i32 : i32 to i64
            %164 = arith.muli %134, %163 : i64
            %165 = arith.extsi %c4096_i32 : i32 to i65
            %166 = arith.extsi %164 : i64 to i65
            %167 = arith.addi %165, %166 : i65
            %168 = arith.extsi %167 : i65 to i66
            %169 = arith.addi %168, %141 : i66
            affine.store %169, %162[%c0] {to = "write_addr_666"} : memref<1xi66>
            %170 = memref.alloc() {name = "_addr_667"} : memref<1xi66>
            %171 = affine.load %162[0] {from = "write_addr_666"} : memref<1xi66>
            affine.store %171, %170[%c0] {to = "_addr_667"} : memref<1xi66>
            %172 = memref.alloc() {name = "assert_cond_668"} : memref<1xi1>
            %173 = affine.load %170[0] {from = "_addr_667"} : memref<1xi66>
            %174 = arith.extsi %173 : i66 to i67
            %175 = arith.addi %174, %148 : i67
            %176 = arith.cmpi sle, %175, %150 : i67
            affine.store %176, %172[%c0] {to = "assert_cond_668", unsigned} : memref<1xi1>
            %177 = affine.load %172[0] {from = "assert_cond_668", unsigned} : memref<1xi1>
            %178 = arith.extui %177 : i1 to i32
            %179 = arith.cmpi eq, %178, %c0_i32 : i32
            scf.if %179 {
              %183 = affine.load %170[0] {from = "_addr_667"} : memref<1xi66>
              %184 = arith.extsi %183 : i66 to i67
              %185 = arith.addi %184, %148 : i67
              hcl.print(%183, %185) {format = "\0A\0AAssertion failed {}: nttdatainbot Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
              scf.while : () -> () {
                %186 = affine.load %172[0] {from = "assert_cond_668", unsigned} : memref<1xi1>
                %187 = arith.extui %186 : i1 to i32
                %188 = arith.cmpi ne, %187, %c1_i32 : i32
                scf.condition(%188)
              } do {
                affine.store %3, %172[0] {to = "assert_cond_668", unsigned} : memref<1xi1>
                scf.yield
              }
            }
            %180 = affine.load %155[0] {from = "Mem.read_c_100", unsigned} : memref<1xi32>
            %181 = affine.load %162[0] {from = "write_addr_666"} : memref<1xi66>
            %182 = arith.index_cast %181 {unsigned} : i66 to index
            memref.store %180, %52[%182] {to = "nttdatainbot.alloc_c", unsigned} : memref<8192xi32>
          } {loop_name = "j", op_name = "ot64_99"}
        } {loop_name = "i", op_name = "ntt_out_swizzle_ob"}
      } else {
        %133 = affine.load %46[0] {from = "flag_intt", unsigned} : memref<1xi1>
        %134 = arith.extui %133 : i1 to i32
        %135 = arith.cmpi ne, %134, %c0_i32 : i32
        scf.if %135 {
          affine.for %arg2 = 0 to 128 {
            affine.for %arg3 = 0 to 32 {
              %136 = memref.alloc() {name = "read_addr_669"} : memref<1xi66>
              %c64_i32 = arith.constant 64 : i32
              %137 = arith.index_cast %arg2 : index to i64
              %138 = arith.extsi %c64_i32 : i32 to i64
              %139 = arith.muli %137, %138 : i64
              %140 = arith.extsi %139 : i64 to i65
              %141 = arith.extsi %c0_i32 : i32 to i65
              %142 = arith.addi %140, %141 : i65
              %143 = arith.extsi %142 : i65 to i66
              %144 = arith.index_cast %arg3 : index to i66
              %145 = arith.addi %143, %144 : i66
              affine.store %145, %136[%c0] {to = "read_addr_669"} : memref<1xi66>
              %146 = memref.alloc() {name = "_addr_670"} : memref<1xi66>
              %147 = affine.load %136[0] {from = "read_addr_669"} : memref<1xi66>
              affine.store %147, %146[%c0] {to = "_addr_670"} : memref<1xi66>
              %148 = memref.alloc() {name = "assert_cond_671"} : memref<1xi1>
              %149 = affine.load %146[0] {from = "_addr_670"} : memref<1xi66>
              %150 = arith.extsi %149 : i66 to i67
              %151 = arith.extsi %c1_i32 : i32 to i67
              %152 = arith.addi %150, %151 : i67
              %c8192_i32 = arith.constant 8192 : i32
              %153 = arith.extsi %c8192_i32 : i32 to i67
              %154 = arith.cmpi sle, %152, %153 : i67
              affine.store %154, %148[%c0] {to = "assert_cond_671", unsigned} : memref<1xi1>
              %155 = affine.load %148[0] {from = "assert_cond_671", unsigned} : memref<1xi1>
              %156 = arith.extui %155 : i1 to i32
              %157 = arith.cmpi eq, %156, %c0_i32 : i32
              scf.if %157 {
                %219 = affine.load %146[0] {from = "_addr_670"} : memref<1xi66>
                %220 = arith.extsi %219 : i66 to i67
                %221 = arith.addi %220, %151 : i67
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdataouttop Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                scf.while : () -> () {
                  %222 = affine.load %148[0] {from = "assert_cond_671", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %148[0] {to = "assert_cond_671", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %158 = memref.alloc() {name = "Mem.read_c_103"} : memref<1xi32>
              %159 = affine.load %136[0] {from = "read_addr_669"} : memref<1xi66>
              %160 = arith.extsi %159 : i66 to i67
              %161 = arith.index_cast %c0 : index to i67
              %162 = arith.addi %160, %161 : i67
              %163 = arith.index_cast %162 {unsigned} : i67 to index
              %164 = memref.load %57[%163] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %164, %158[%c0] {to = "Mem.read_c_103", unsigned} : memref<1xi32>
              %165 = memref.alloc() {name = "write_addr_672"} : memref<1xi65>
              %c2_i32 = arith.constant 2 : i32
              %166 = arith.extsi %c2_i32 : i32 to i64
              %167 = arith.index_cast %arg3 : index to i64
              %168 = arith.muli %166, %167 : i64
              %169 = arith.extsi %168 : i64 to i65
              %170 = arith.addi %140, %169 : i65
              affine.store %170, %165[%c0] {to = "write_addr_672"} : memref<1xi65>
              %171 = memref.alloc() {name = "_addr_673"} : memref<1xi65>
              %172 = affine.load %165[0] {from = "write_addr_672"} : memref<1xi65>
              affine.store %172, %171[%c0] {to = "_addr_673"} : memref<1xi65>
              %173 = memref.alloc() {name = "assert_cond_674"} : memref<1xi1>
              %174 = affine.load %171[0] {from = "_addr_673"} : memref<1xi65>
              %175 = arith.extsi %174 : i65 to i66
              %176 = arith.extsi %c1_i32 : i32 to i66
              %177 = arith.addi %175, %176 : i66
              %178 = arith.extsi %c8192_i32 : i32 to i66
              %179 = arith.cmpi sle, %177, %178 : i66
              affine.store %179, %173[%c0] {to = "assert_cond_674", unsigned} : memref<1xi1>
              %180 = affine.load %173[0] {from = "assert_cond_674", unsigned} : memref<1xi1>
              %181 = arith.extui %180 : i1 to i32
              %182 = arith.cmpi eq, %181, %c0_i32 : i32
              scf.if %182 {
                %219 = affine.load %171[0] {from = "_addr_673"} : memref<1xi65>
                %220 = arith.extsi %219 : i65 to i66
                %221 = arith.addi %220, %176 : i66
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdataintop Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i65, i66
                scf.while : () -> () {
                  %222 = affine.load %173[0] {from = "assert_cond_674", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %173[0] {to = "assert_cond_674", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %183 = affine.load %158[0] {from = "Mem.read_c_103", unsigned} : memref<1xi32>
              %184 = affine.load %165[0] {from = "write_addr_672"} : memref<1xi65>
              %185 = arith.index_cast %184 {unsigned} : i65 to index
              memref.store %183, %55[%185] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
              %186 = memref.alloc() {name = "read_addr_675"} : memref<1xi66>
              affine.store %145, %186[%c0] {to = "read_addr_675"} : memref<1xi66>
              %187 = memref.alloc() {name = "_addr_676"} : memref<1xi66>
              %188 = affine.load %186[0] {from = "read_addr_675"} : memref<1xi66>
              affine.store %188, %187[%c0] {to = "_addr_676"} : memref<1xi66>
              %189 = memref.alloc() {name = "assert_cond_677"} : memref<1xi1>
              %190 = affine.load %187[0] {from = "_addr_676"} : memref<1xi66>
              %191 = arith.extsi %190 : i66 to i67
              %192 = arith.addi %191, %151 : i67
              %193 = arith.cmpi sle, %192, %153 : i67
              affine.store %193, %189[%c0] {to = "assert_cond_677", unsigned} : memref<1xi1>
              %194 = affine.load %189[0] {from = "assert_cond_677", unsigned} : memref<1xi1>
              %195 = arith.extui %194 : i1 to i32
              %196 = arith.cmpi eq, %195, %c0_i32 : i32
              scf.if %196 {
                %219 = affine.load %187[0] {from = "_addr_676"} : memref<1xi66>
                %220 = arith.extsi %219 : i66 to i67
                %221 = arith.addi %220, %151 : i67
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdataoutbot Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                scf.while : () -> () {
                  %222 = affine.load %189[0] {from = "assert_cond_677", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %189[0] {to = "assert_cond_677", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %197 = memref.alloc() {name = "Mem.read_c_104"} : memref<1xi32>
              %198 = affine.load %186[0] {from = "read_addr_675"} : memref<1xi66>
              %199 = arith.extsi %198 : i66 to i67
              %200 = arith.addi %199, %161 : i67
              %201 = arith.index_cast %200 {unsigned} : i67 to index
              %202 = memref.load %58[%201] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %202, %197[%c0] {to = "Mem.read_c_104", unsigned} : memref<1xi32>
              %203 = memref.alloc() {name = "write_addr_678"} : memref<1xi66>
              %204 = arith.extsi %170 : i65 to i66
              %205 = arith.addi %204, %176 : i66
              affine.store %205, %203[%c0] {to = "write_addr_678"} : memref<1xi66>
              %206 = memref.alloc() {name = "_addr_679"} : memref<1xi66>
              %207 = affine.load %203[0] {from = "write_addr_678"} : memref<1xi66>
              affine.store %207, %206[%c0] {to = "_addr_679"} : memref<1xi66>
              %208 = memref.alloc() {name = "assert_cond_680"} : memref<1xi1>
              %209 = affine.load %206[0] {from = "_addr_679"} : memref<1xi66>
              %210 = arith.extsi %209 : i66 to i67
              %211 = arith.addi %210, %151 : i67
              %212 = arith.cmpi sle, %211, %153 : i67
              affine.store %212, %208[%c0] {to = "assert_cond_680", unsigned} : memref<1xi1>
              %213 = affine.load %208[0] {from = "assert_cond_680", unsigned} : memref<1xi1>
              %214 = arith.extui %213 : i1 to i32
              %215 = arith.cmpi eq, %214, %c0_i32 : i32
              scf.if %215 {
                %219 = affine.load %206[0] {from = "_addr_679"} : memref<1xi66>
                %220 = arith.extsi %219 : i66 to i67
                %221 = arith.addi %220, %151 : i67
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdataintop Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                scf.while : () -> () {
                  %222 = affine.load %208[0] {from = "assert_cond_680", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %208[0] {to = "assert_cond_680", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %216 = affine.load %197[0] {from = "Mem.read_c_104", unsigned} : memref<1xi32>
              %217 = affine.load %203[0] {from = "write_addr_678"} : memref<1xi66>
              %218 = arith.index_cast %217 {unsigned} : i66 to index
              memref.store %216, %55[%218] {to = "inttdataintop.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_arf_102"}
            affine.for %arg3 = 0 to 32 {
              %136 = memref.alloc() {name = "read_addr_681"} : memref<1xi66>
              %c64_i32 = arith.constant 64 : i32
              %137 = arith.index_cast %arg2 : index to i64
              %138 = arith.extsi %c64_i32 : i32 to i64
              %139 = arith.muli %137, %138 : i64
              %c32_i32 = arith.constant 32 : i32
              %140 = arith.extsi %139 : i64 to i65
              %141 = arith.extsi %c32_i32 : i32 to i65
              %142 = arith.addi %140, %141 : i65
              %143 = arith.extsi %142 : i65 to i66
              %144 = arith.index_cast %arg3 : index to i66
              %145 = arith.addi %143, %144 : i66
              affine.store %145, %136[%c0] {to = "read_addr_681"} : memref<1xi66>
              %146 = memref.alloc() {name = "_addr_682"} : memref<1xi66>
              %147 = affine.load %136[0] {from = "read_addr_681"} : memref<1xi66>
              affine.store %147, %146[%c0] {to = "_addr_682"} : memref<1xi66>
              %148 = memref.alloc() {name = "assert_cond_683"} : memref<1xi1>
              %149 = affine.load %146[0] {from = "_addr_682"} : memref<1xi66>
              %150 = arith.extsi %149 : i66 to i67
              %151 = arith.extsi %c1_i32 : i32 to i67
              %152 = arith.addi %150, %151 : i67
              %c8192_i32 = arith.constant 8192 : i32
              %153 = arith.extsi %c8192_i32 : i32 to i67
              %154 = arith.cmpi sle, %152, %153 : i67
              affine.store %154, %148[%c0] {to = "assert_cond_683", unsigned} : memref<1xi1>
              %155 = affine.load %148[0] {from = "assert_cond_683", unsigned} : memref<1xi1>
              %156 = arith.extui %155 : i1 to i32
              %157 = arith.cmpi eq, %156, %c0_i32 : i32
              scf.if %157 {
                %219 = affine.load %146[0] {from = "_addr_682"} : memref<1xi66>
                %220 = arith.extsi %219 : i66 to i67
                %221 = arith.addi %220, %151 : i67
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdataouttop Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                scf.while : () -> () {
                  %222 = affine.load %148[0] {from = "assert_cond_683", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %148[0] {to = "assert_cond_683", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %158 = memref.alloc() {name = "Mem.read_c_106"} : memref<1xi32>
              %159 = affine.load %136[0] {from = "read_addr_681"} : memref<1xi66>
              %160 = arith.extsi %159 : i66 to i67
              %161 = arith.index_cast %c0 : index to i67
              %162 = arith.addi %160, %161 : i67
              %163 = arith.index_cast %162 {unsigned} : i67 to index
              %164 = memref.load %57[%163] {from = "inttdataouttop.alloc_c", unsigned} : memref<8192xi32>
              affine.store %164, %158[%c0] {to = "Mem.read_c_106", unsigned} : memref<1xi32>
              %165 = memref.alloc() {name = "write_addr_684"} : memref<1xi65>
              %c2_i32 = arith.constant 2 : i32
              %166 = arith.extsi %c2_i32 : i32 to i64
              %167 = arith.index_cast %arg3 : index to i64
              %168 = arith.muli %166, %167 : i64
              %169 = arith.extsi %168 : i64 to i65
              %170 = arith.addi %140, %169 : i65
              affine.store %170, %165[%c0] {to = "write_addr_684"} : memref<1xi65>
              %171 = memref.alloc() {name = "_addr_685"} : memref<1xi65>
              %172 = affine.load %165[0] {from = "write_addr_684"} : memref<1xi65>
              affine.store %172, %171[%c0] {to = "_addr_685"} : memref<1xi65>
              %173 = memref.alloc() {name = "assert_cond_686"} : memref<1xi1>
              %174 = affine.load %171[0] {from = "_addr_685"} : memref<1xi65>
              %175 = arith.extsi %174 : i65 to i66
              %176 = arith.extsi %c1_i32 : i32 to i66
              %177 = arith.addi %175, %176 : i66
              %178 = arith.extsi %c8192_i32 : i32 to i66
              %179 = arith.cmpi sle, %177, %178 : i66
              affine.store %179, %173[%c0] {to = "assert_cond_686", unsigned} : memref<1xi1>
              %180 = affine.load %173[0] {from = "assert_cond_686", unsigned} : memref<1xi1>
              %181 = arith.extui %180 : i1 to i32
              %182 = arith.cmpi eq, %181, %c0_i32 : i32
              scf.if %182 {
                %219 = affine.load %171[0] {from = "_addr_685"} : memref<1xi65>
                %220 = arith.extsi %219 : i65 to i66
                %221 = arith.addi %220, %176 : i66
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdatainbot Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i65, i66
                scf.while : () -> () {
                  %222 = affine.load %173[0] {from = "assert_cond_686", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %173[0] {to = "assert_cond_686", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %183 = affine.load %158[0] {from = "Mem.read_c_106", unsigned} : memref<1xi32>
              %184 = affine.load %165[0] {from = "write_addr_684"} : memref<1xi65>
              %185 = arith.index_cast %184 {unsigned} : i65 to index
              memref.store %183, %56[%185] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
              %186 = memref.alloc() {name = "read_addr_687"} : memref<1xi66>
              affine.store %145, %186[%c0] {to = "read_addr_687"} : memref<1xi66>
              %187 = memref.alloc() {name = "_addr_688"} : memref<1xi66>
              %188 = affine.load %186[0] {from = "read_addr_687"} : memref<1xi66>
              affine.store %188, %187[%c0] {to = "_addr_688"} : memref<1xi66>
              %189 = memref.alloc() {name = "assert_cond_689"} : memref<1xi1>
              %190 = affine.load %187[0] {from = "_addr_688"} : memref<1xi66>
              %191 = arith.extsi %190 : i66 to i67
              %192 = arith.addi %191, %151 : i67
              %193 = arith.cmpi sle, %192, %153 : i67
              affine.store %193, %189[%c0] {to = "assert_cond_689", unsigned} : memref<1xi1>
              %194 = affine.load %189[0] {from = "assert_cond_689", unsigned} : memref<1xi1>
              %195 = arith.extui %194 : i1 to i32
              %196 = arith.cmpi eq, %195, %c0_i32 : i32
              scf.if %196 {
                %219 = affine.load %187[0] {from = "_addr_688"} : memref<1xi66>
                %220 = arith.extsi %219 : i66 to i67
                %221 = arith.addi %220, %151 : i67
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdataoutbot Mem.read exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                scf.while : () -> () {
                  %222 = affine.load %189[0] {from = "assert_cond_689", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %189[0] {to = "assert_cond_689", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %197 = memref.alloc() {name = "Mem.read_c_107"} : memref<1xi32>
              %198 = affine.load %186[0] {from = "read_addr_687"} : memref<1xi66>
              %199 = arith.extsi %198 : i66 to i67
              %200 = arith.addi %199, %161 : i67
              %201 = arith.index_cast %200 {unsigned} : i67 to index
              %202 = memref.load %58[%201] {from = "inttdataoutbot.alloc_c", unsigned} : memref<8192xi32>
              affine.store %202, %197[%c0] {to = "Mem.read_c_107", unsigned} : memref<1xi32>
              %203 = memref.alloc() {name = "write_addr_690"} : memref<1xi66>
              %204 = arith.extsi %170 : i65 to i66
              %205 = arith.addi %204, %176 : i66
              affine.store %205, %203[%c0] {to = "write_addr_690"} : memref<1xi66>
              %206 = memref.alloc() {name = "_addr_691"} : memref<1xi66>
              %207 = affine.load %203[0] {from = "write_addr_690"} : memref<1xi66>
              affine.store %207, %206[%c0] {to = "_addr_691"} : memref<1xi66>
              %208 = memref.alloc() {name = "assert_cond_692"} : memref<1xi1>
              %209 = affine.load %206[0] {from = "_addr_691"} : memref<1xi66>
              %210 = arith.extsi %209 : i66 to i67
              %211 = arith.addi %210, %151 : i67
              %212 = arith.cmpi sle, %211, %153 : i67
              affine.store %212, %208[%c0] {to = "assert_cond_692", unsigned} : memref<1xi1>
              %213 = affine.load %208[0] {from = "assert_cond_692", unsigned} : memref<1xi1>
              %214 = arith.extui %213 : i1 to i32
              %215 = arith.cmpi eq, %214, %c0_i32 : i32
              scf.if %215 {
                %219 = affine.load %206[0] {from = "_addr_691"} : memref<1xi66>
                %220 = arith.extsi %219 : i66 to i67
                %221 = arith.addi %220, %151 : i67
                hcl.print(%219, %221) {format = "\0A\0AAssertion failed {}: inttdatainbot Mem.write exceeds memory size: addr=%d+size=%d > 8192\0A\0A", signedness = "__"} : i66, i67
                scf.while : () -> () {
                  %222 = affine.load %208[0] {from = "assert_cond_692", unsigned} : memref<1xi1>
                  %223 = arith.extui %222 : i1 to i32
                  %224 = arith.cmpi ne, %223, %c1_i32 : i32
                  scf.condition(%224)
                } do {
                  affine.store %3, %208[0] {to = "assert_cond_692", unsigned} : memref<1xi1>
                  scf.yield
                }
              }
              %216 = affine.load %197[0] {from = "Mem.read_c_107", unsigned} : memref<1xi32>
              %217 = affine.load %203[0] {from = "write_addr_690"} : memref<1xi66>
              %218 = arith.index_cast %217 {unsigned} : i66 to index
              memref.store %216, %56[%218] {to = "inttdatainbot.alloc_c", unsigned} : memref<8192xi32>
            } {loop_name = "j", op_name = "nttin_even_odd_brf_105"}
          } {loop_name = "i", op_name = "intt_out_swizzle"}
        }
      }
      %128 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
      %129 = arith.extui %128 : i32 to i34
      %130 = arith.extsi %c1_i32 : i32 to i34
      %131 = arith.addi %129, %130 : i34
      %132 = arith.trunci %131 {unsigned} : i34 to i32
      affine.store %132, %94[0] {to = "sys_steps", unsigned} : memref<1xi32>
      scf.yield
    }
    %96 = affine.load %15[0] {from = "tele_inst_count", unsigned} : memref<1xi32>
    %97 = affine.load %16[0] {from = "tele_stall_count", unsigned} : memref<1xi32>
    hcl.print(%96, %97) {format = "ce0.mf uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %98 = affine.load %38[0] {from = "tele_inst_count_32", unsigned} : memref<1xi32>
    %99 = affine.load %39[0] {from = "tele_stall_count_33", unsigned} : memref<1xi32>
    hcl.print(%98, %99) {format = "ce0.cf uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %100 = affine.load %77[0] {from = "tele_inst_count_53", unsigned} : memref<1xi32>
    %101 = affine.load %78[0] {from = "tele_stall_count_54", unsigned} : memref<1xi32>
    hcl.print(%100, %101) {format = "ce0.cetiles.Mtile uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %102 = affine.load %91[0] {from = "tele_inst_count_67", unsigned} : memref<1xi32>
    %103 = affine.load %92[0] {from = "tele_stall_count_68", unsigned} : memref<1xi32>
    hcl.print(%102, %103) {format = "proc uC instructions=%d stalls=%d\0A", signedness = "uu"} : i32, i32
    %104 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
    %c100000_i32 = arith.constant 100000 : i32
    %105 = arith.extui %104 : i32 to i33
    %106 = arith.extsi %c100000_i32 : i32 to i33
    %107 = arith.cmpi sge, %105, %106 : i33
    scf.if %107 {
      hcl.print(%c0_i32) {format = "Reached max step ... aborting\0A", signedness = "_"} : i32
    }
    %108 = affine.load %94[0] {from = "sys_steps", unsigned} : memref<1xi32>
    hcl.print(%108) {format = "Total steps: %d\0A", signedness = "u"} : i32
    return
  }
}
