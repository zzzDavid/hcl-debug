#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (20)>
"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: memref<4096xi8>, %arg1: memref<2xi64>):
    %0 = "arith.constant"() {value = 0 : index} : () -> index
    %1 = "arith.constant"() {value = 0 : index} : () -> index
    %2 = "arith.constant"() {value = 0 : index} : () -> index
    %3 = "arith.constant"() {value = 0 : index} : () -> index
    %4 = "arith.constant"() {value = 0 : index} : () -> index
    %5 = "arith.constant"() {value = 0 : index} : () -> index
    %6 = "arith.constant"() {value = 0 : index} : () -> index
    %7 = "arith.constant"() {value = 0 : index} : () -> index
    %8 = "arith.constant"() {value = 0 : index} : () -> index
    %9 = "arith.constant"() {value = 0 : index} : () -> index
    %10 = "arith.constant"() {value = 0 : index} : () -> index
    %11 = "arith.constant"() {value = 0 : index} : () -> index
    %12 = "arith.constant"() {value = 0 : index} : () -> index
    %13 = "arith.constant"() {value = 0 : index} : () -> index
    %14 = "arith.constant"() {value = 0 : index} : () -> index
    %15 = "arith.constant"() {value = 0 : index} : () -> index
    %16 = "arith.constant"() {value = 0 : index} : () -> index
    %17 = "arith.constant"() {value = 0 : index} : () -> index
    %18 = "arith.constant"() {value = 0 : index} : () -> index
    %19 = "arith.constant"() {value = 0 : index} : () -> index
    %20 = "arith.constant"() {value = 0 : index} : () -> index
    %21 = "arith.constant"() {value = 0 : index} : () -> index
    %22 = "arith.constant"() {value = 0 : index} : () -> index
    %23 = "arith.constant"() {value = 0 : index} : () -> index
    %24 = "arith.constant"() {value = 0 : index} : () -> index
    %25 = "arith.constant"() {value = 0 : index} : () -> index
    %26 = "arith.constant"() {value = 0 : index} : () -> index
    %27 = "arith.constant"() {value = 0 : index} : () -> index
    %28 = "arith.constant"() {value = 0 : index} : () -> index
    %29 = "arith.constant"() {value = 0 : index} : () -> index
    %30 = "arith.constant"() {value = 0 : index} : () -> index
    %31 = "arith.constant"() {value = 0 : index} : () -> index
    %32 = "arith.constant"() {value = 0 : index} : () -> index
    %33 = "arith.constant"() {value = 0 : index} : () -> index
    %34 = "arith.constant"() {value = 0 : index} : () -> index
    %35 = "arith.constant"() {value = 0 : index} : () -> index
    %36 = "arith.constant"() {value = 0 : index} : () -> index
    %37 = "arith.constant"() {value = 0 : index} : () -> index
    %38 = "arith.constant"() {value = 0 : index} : () -> index
    %39 = "arith.constant"() {value = 0 : index} : () -> index
    %40 = "arith.constant"() {value = 0 : index} : () -> index
    %41 = "arith.constant"() {value = 0 : index} : () -> index
    %42 = "arith.constant"() {value = 0 : index} : () -> index
    %43 = "arith.constant"() {value = 0 : index} : () -> index
    %44 = "arith.constant"() {value = 0 : index} : () -> index
    %45 = "arith.constant"() {value = 0 : index} : () -> index
    %46 = "arith.constant"() {value = 0 : index} : () -> index
    %47 = "arith.constant"() {value = 0 : index} : () -> index
    %48 = "arith.constant"() {value = 0 : index} : () -> index
    %49 = "arith.constant"() {value = 0 : index} : () -> index
    %50 = "arith.constant"() {value = 0 : index} : () -> index
    %51 = "arith.constant"() {value = 0 : index} : () -> index
    %52 = "arith.constant"() {value = 0 : index} : () -> index
    %53 = "arith.constant"() {value = 0 : index} : () -> index
    %54 = "arith.constant"() {value = 0 : index} : () -> index
    %55 = "arith.constant"() {value = 0 : index} : () -> index
    %56 = "arith.constant"() {value = 0 : index} : () -> index
    %57 = "arith.constant"() {value = 0 : index} : () -> index
    %58 = "arith.constant"() {value = 0 : index} : () -> index
    %59 = "arith.constant"() {value = 0 : index} : () -> index
    %60 = "arith.constant"() {value = 0 : index} : () -> index
    %61 = "arith.constant"() {value = 0 : index} : () -> index
    %62 = "arith.constant"() {value = 0 : index} : () -> index
    %63 = "arith.constant"() {value = 0 : index} : () -> index
    %64 = "arith.constant"() {value = 0 : index} : () -> index
    %65 = "arith.constant"() {value = 0 : index} : () -> index
    %66 = "arith.constant"() {value = 0 : index} : () -> index
    %67 = "arith.constant"() {value = 0 : index} : () -> index
    %68 = "arith.constant"() {value = 0 : index} : () -> index
    %69 = "arith.constant"() {value = 0 : index} : () -> index
    %70 = "arith.constant"() {value = 0 : index} : () -> index
    %71 = "arith.constant"() {value = 0 : index} : () -> index
    %72 = "memref.alloc"() {name = "cpu0.archstate.RAX", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %73 = "arith.constant"() {value = 0 : i32} : () -> i32
    %74 = "arith.extsi"(%73) {unsigned} : (i32) -> i64
    "affine.store"(%74, %72, %71) {map = #map0, to = "cpu0.archstate.RAX", unsigned} : (i64, memref<1xi64>, index) -> ()
    %75 = "memref.alloc"() {name = "cpu0.archstate.RBX", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %76 = "arith.constant"() {value = 0 : i32} : () -> i32
    %77 = "arith.extsi"(%76) {unsigned} : (i32) -> i64
    "affine.store"(%77, %75, %70) {map = #map0, to = "cpu0.archstate.RBX", unsigned} : (i64, memref<1xi64>, index) -> ()
    %78 = "memref.alloc"() {name = "cpu0.archstate.RCX", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %79 = "arith.constant"() {value = 0 : i32} : () -> i32
    %80 = "arith.extsi"(%79) {unsigned} : (i32) -> i64
    "affine.store"(%80, %78, %69) {map = #map0, to = "cpu0.archstate.RCX", unsigned} : (i64, memref<1xi64>, index) -> ()
    %81 = "memref.alloc"() {name = "cpu0.archstate.RDX", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %82 = "arith.constant"() {value = 0 : i32} : () -> i32
    %83 = "arith.extsi"(%82) {unsigned} : (i32) -> i64
    "affine.store"(%83, %81, %68) {map = #map0, to = "cpu0.archstate.RDX", unsigned} : (i64, memref<1xi64>, index) -> ()
    %84 = "memref.alloc"() {name = "cpu0.archstate.RSI", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %85 = "arith.constant"() {value = 0 : i32} : () -> i32
    %86 = "arith.extsi"(%85) {unsigned} : (i32) -> i64
    "affine.store"(%86, %84, %67) {map = #map0, to = "cpu0.archstate.RSI", unsigned} : (i64, memref<1xi64>, index) -> ()
    %87 = "memref.alloc"() {name = "cpu0.archstate.RDI", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %88 = "arith.constant"() {value = 0 : i32} : () -> i32
    %89 = "arith.extsi"(%88) {unsigned} : (i32) -> i64
    "affine.store"(%89, %87, %66) {map = #map0, to = "cpu0.archstate.RDI", unsigned} : (i64, memref<1xi64>, index) -> ()
    %90 = "memref.alloc"() {name = "cpu0.archstate.RBP", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %91 = "arith.constant"() {value = 0 : i32} : () -> i32
    %92 = "arith.extsi"(%91) {unsigned} : (i32) -> i64
    "affine.store"(%92, %90, %65) {map = #map0, to = "cpu0.archstate.RBP", unsigned} : (i64, memref<1xi64>, index) -> ()
    %93 = "memref.alloc"() {name = "cpu0.archstate.RSP", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %94 = "arith.constant"() {value = 0 : i32} : () -> i32
    %95 = "arith.extsi"(%94) {unsigned} : (i32) -> i64
    "affine.store"(%95, %93, %64) {map = #map0, to = "cpu0.archstate.RSP", unsigned} : (i64, memref<1xi64>, index) -> ()
    %96 = "memref.alloc"() {name = "cpu0.archstate.CS", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi16>
    %97 = "arith.constant"() {value = 0 : i32} : () -> i32
    %98 = "arith.trunci"(%97) {unsigned} : (i32) -> i16
    "affine.store"(%98, %96, %63) {map = #map0, to = "cpu0.archstate.CS", unsigned} : (i16, memref<1xi16>, index) -> ()
    %99 = "memref.alloc"() {name = "cpu0.archstate.DS", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi16>
    %100 = "arith.constant"() {value = 0 : i32} : () -> i32
    %101 = "arith.trunci"(%100) {unsigned} : (i32) -> i16
    "affine.store"(%101, %99, %62) {map = #map0, to = "cpu0.archstate.DS", unsigned} : (i16, memref<1xi16>, index) -> ()
    %102 = "memref.alloc"() {name = "cpu0.archstate.SS", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi16>
    %103 = "arith.constant"() {value = 0 : i32} : () -> i32
    %104 = "arith.trunci"(%103) {unsigned} : (i32) -> i16
    "affine.store"(%104, %102, %61) {map = #map0, to = "cpu0.archstate.SS", unsigned} : (i16, memref<1xi16>, index) -> ()
    %105 = "memref.alloc"() {name = "cpu0.archstate.ES", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi16>
    %106 = "arith.constant"() {value = 0 : i32} : () -> i32
    %107 = "arith.trunci"(%106) {unsigned} : (i32) -> i16
    "affine.store"(%107, %105, %60) {map = #map0, to = "cpu0.archstate.ES", unsigned} : (i16, memref<1xi16>, index) -> ()
    %108 = "memref.alloc"() {name = "cpu0.archstate.FS", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi16>
    %109 = "arith.constant"() {value = 0 : i32} : () -> i32
    %110 = "arith.trunci"(%109) {unsigned} : (i32) -> i16
    "affine.store"(%110, %108, %59) {map = #map0, to = "cpu0.archstate.FS", unsigned} : (i16, memref<1xi16>, index) -> ()
    %111 = "memref.alloc"() {name = "cpu0.archstate.GS", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi16>
    %112 = "arith.constant"() {value = 0 : i32} : () -> i32
    %113 = "arith.trunci"(%112) {unsigned} : (i32) -> i16
    "affine.store"(%113, %111, %58) {map = #map0, to = "cpu0.archstate.GS", unsigned} : (i16, memref<1xi16>, index) -> ()
    %114 = "memref.alloc"() {name = "cpu0.archstate.RIP", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %115 = "arith.constant"() {value = 0 : i32} : () -> i32
    %116 = "arith.extsi"(%115) {unsigned} : (i32) -> i64
    "affine.store"(%116, %114, %57) {map = #map0, to = "cpu0.archstate.RIP", unsigned} : (i64, memref<1xi64>, index) -> ()
    %117 = "memref.alloc"() {name = "cpu0.archstate.EFLAGS", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %118 = "arith.constant"() {value = 0 : i32} : () -> i32
    "affine.store"(%118, %117, %56) {map = #map0, to = "cpu0.archstate.EFLAGS", unsigned} : (i32, memref<1xi32>, index) -> ()
    %119 = "arith.constant"() {value = 2 : i32} : () -> i32
    "affine.store"(%119, %117) {map = #map1, to = "cpu0.archstate.EFLAGS", unsigned} : (i32, memref<1xi32>) -> ()
    %120 = "memref.alloc"() {name = "fetchip", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi64>
    %121 = "arith.constant"() {value = 0 : i32} : () -> i32
    %122 = "arith.extsi"(%121) {unsigned} : (i32) -> i64
    "affine.store"(%122, %120, %55) {map = #map0, to = "fetchip", unsigned} : (i64, memref<1xi64>, index) -> ()
    %123 = "memref.alloc"() {name = "fetchbuf", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<20xi8>
    "affine.for"() ({
    ^bb0(%arg2: index):
      %288 = "arith.constant"() {value = 0 : i32} : () -> i32
      %289 = "arith.trunci"(%288) {unsigned} : (i32) -> i8
      "affine.store"(%289, %123, %arg2) {map = #map0, to = "fetchbuf", unsigned} : (i8, memref<20xi8>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "i", lower_bound = #map1, op_name = "fetchbuf", step = 1 : i32, upper_bound = #map2} : () -> ()
    %124 = "memref.alloc"() {name = "cs_override_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %125 = "arith.constant"() {value = 0 : i32} : () -> i32
    %126 = "arith.trunci"(%125) {unsigned} : (i32) -> i1
    "affine.store"(%126, %124, %54) {map = #map0, to = "cs_override_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %127 = "memref.alloc"() {name = "ds_override_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %128 = "arith.constant"() {value = 0 : i32} : () -> i32
    %129 = "arith.trunci"(%128) {unsigned} : (i32) -> i1
    "affine.store"(%129, %127, %53) {map = #map0, to = "ds_override_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %130 = "memref.alloc"() {name = "es_override_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %131 = "arith.constant"() {value = 0 : i32} : () -> i32
    %132 = "arith.trunci"(%131) {unsigned} : (i32) -> i1
    "affine.store"(%132, %130, %52) {map = #map0, to = "es_override_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %133 = "memref.alloc"() {name = "fs_override_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %134 = "arith.constant"() {value = 0 : i32} : () -> i32
    %135 = "arith.trunci"(%134) {unsigned} : (i32) -> i1
    "affine.store"(%135, %133, %51) {map = #map0, to = "fs_override_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %136 = "memref.alloc"() {name = "gs_override_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %137 = "arith.constant"() {value = 0 : i32} : () -> i32
    %138 = "arith.trunci"(%137) {unsigned} : (i32) -> i1
    "affine.store"(%138, %136, %50) {map = #map0, to = "gs_override_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %139 = "memref.alloc"() {name = "ss_override_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %140 = "arith.constant"() {value = 0 : i32} : () -> i32
    %141 = "arith.trunci"(%140) {unsigned} : (i32) -> i1
    "affine.store"(%141, %139, %49) {map = #map0, to = "ss_override_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %142 = "memref.alloc"() {name = "lock_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %143 = "arith.constant"() {value = 0 : i32} : () -> i32
    %144 = "arith.trunci"(%143) {unsigned} : (i32) -> i1
    "affine.store"(%144, %142, %48) {map = #map0, to = "lock_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %145 = "memref.alloc"() {name = "osz_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %146 = "arith.constant"() {value = 0 : i32} : () -> i32
    %147 = "arith.trunci"(%146) {unsigned} : (i32) -> i1
    "affine.store"(%147, %145, %47) {map = #map0, to = "osz_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %148 = "memref.alloc"() {name = "asz_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %149 = "arith.constant"() {value = 0 : i32} : () -> i32
    %150 = "arith.trunci"(%149) {unsigned} : (i32) -> i1
    "affine.store"(%150, %148, %46) {map = #map0, to = "asz_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %151 = "memref.alloc"() {name = "rex_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %152 = "arith.constant"() {value = 0 : i32} : () -> i32
    %153 = "arith.trunci"(%152) {unsigned} : (i32) -> i1
    "affine.store"(%153, %151, %45) {map = #map0, to = "rex_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %154 = "memref.alloc"() {name = "vex_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %155 = "arith.constant"() {value = 0 : i32} : () -> i32
    %156 = "arith.trunci"(%155) {unsigned} : (i32) -> i1
    "affine.store"(%156, %154, %44) {map = #map0, to = "vex_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %157 = "memref.alloc"() {name = "evex_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %158 = "arith.constant"() {value = 0 : i32} : () -> i32
    %159 = "arith.trunci"(%158) {unsigned} : (i32) -> i1
    "affine.store"(%159, %157, %43) {map = #map0, to = "evex_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %160 = "memref.alloc"() {name = "rep_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %161 = "arith.constant"() {value = 0 : i32} : () -> i32
    %162 = "arith.trunci"(%161) {unsigned} : (i32) -> i1
    "affine.store"(%162, %160, %42) {map = #map0, to = "rep_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %163 = "memref.alloc"() {name = "repne_prefix_present", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %164 = "arith.constant"() {value = 0 : i32} : () -> i32
    %165 = "arith.trunci"(%164) {unsigned} : (i32) -> i1
    "affine.store"(%165, %163, %41) {map = #map0, to = "repne_prefix_present", unsigned} : (i1, memref<1xi1>, index) -> ()
    %166 = "memref.alloc"() {name = "mode", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi3>
    %167 = "arith.constant"() {value = 0 : i32} : () -> i32
    %168 = "arith.trunci"(%167) {unsigned} : (i32) -> i3
    "affine.store"(%168, %166, %40) {map = #map0, to = "mode", unsigned} : (i3, memref<1xi3>, index) -> ()
    %169 = "memref.alloc"() {name = "is_mode64", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %170 = "arith.constant"() {value = 0 : i32} : () -> i32
    %171 = "arith.trunci"(%170) {unsigned} : (i32) -> i1
    "affine.store"(%171, %169, %39) {map = #map0, to = "is_mode64", unsigned} : (i1, memref<1xi1>, index) -> ()
    %172 = "memref.alloc"() {name = "rexw", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %173 = "arith.constant"() {value = 0 : i32} : () -> i32
    %174 = "arith.trunci"(%173) {unsigned} : (i32) -> i1
    "affine.store"(%174, %172, %38) {map = #map0, to = "rexw", unsigned} : (i1, memref<1xi1>, index) -> ()
    %175 = "memref.alloc"() {name = "rexr", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %176 = "arith.constant"() {value = 0 : i32} : () -> i32
    %177 = "arith.trunci"(%176) {unsigned} : (i32) -> i1
    "affine.store"(%177, %175, %37) {map = #map0, to = "rexr", unsigned} : (i1, memref<1xi1>, index) -> ()
    %178 = "memref.alloc"() {name = "rexx", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %179 = "arith.constant"() {value = 0 : i32} : () -> i32
    %180 = "arith.trunci"(%179) {unsigned} : (i32) -> i1
    "affine.store"(%180, %178, %36) {map = #map0, to = "rexx", unsigned} : (i1, memref<1xi1>, index) -> ()
    %181 = "memref.alloc"() {name = "rexb", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %182 = "arith.constant"() {value = 0 : i32} : () -> i32
    %183 = "arith.trunci"(%182) {unsigned} : (i32) -> i1
    "affine.store"(%183, %181, %35) {map = #map0, to = "rexb", unsigned} : (i1, memref<1xi1>, index) -> ()
    %184 = "memref.alloc"() {name = "vexr2", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %185 = "arith.constant"() {value = 0 : i32} : () -> i32
    %186 = "arith.trunci"(%185) {unsigned} : (i32) -> i1
    "affine.store"(%186, %184, %34) {map = #map0, to = "vexr2", unsigned} : (i1, memref<1xi1>, index) -> ()
    %187 = "memref.alloc"() {name = "vvvv", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %188 = "arith.constant"() {value = 0 : i32} : () -> i32
    %189 = "arith.trunci"(%188) {unsigned} : (i32) -> i1
    "affine.store"(%189, %187, %33) {map = #map0, to = "vvvv", unsigned} : (i1, memref<1xi1>, index) -> ()
    %190 = "memref.alloc"() {name = "vexL", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %191 = "arith.constant"() {value = 0 : i32} : () -> i32
    %192 = "arith.trunci"(%191) {unsigned} : (i32) -> i1
    "affine.store"(%192, %190, %32) {map = #map0, to = "vexL", unsigned} : (i1, memref<1xi1>, index) -> ()
    %193 = "memref.alloc"() {name = "vexpp", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %194 = "arith.constant"() {value = 0 : i32} : () -> i32
    %195 = "arith.trunci"(%194) {unsigned} : (i32) -> i1
    "affine.store"(%195, %193, %31) {map = #map0, to = "vexpp", unsigned} : (i1, memref<1xi1>, index) -> ()
    %196 = "memref.alloc"() {name = "vexz", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %197 = "arith.constant"() {value = 0 : i32} : () -> i32
    %198 = "arith.trunci"(%197) {unsigned} : (i32) -> i1
    "affine.store"(%198, %196, %30) {map = #map0, to = "vexz", unsigned} : (i1, memref<1xi1>, index) -> ()
    %199 = "memref.alloc"() {name = "vexLLRC", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %200 = "arith.constant"() {value = 0 : i32} : () -> i32
    %201 = "arith.trunci"(%200) {unsigned} : (i32) -> i1
    "affine.store"(%201, %199, %29) {map = #map0, to = "vexLLRC", unsigned} : (i1, memref<1xi1>, index) -> ()
    %202 = "memref.alloc"() {name = "vexBCRC", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %203 = "arith.constant"() {value = 0 : i32} : () -> i32
    %204 = "arith.trunci"(%203) {unsigned} : (i32) -> i1
    "affine.store"(%204, %202, %28) {map = #map0, to = "vexBCRC", unsigned} : (i1, memref<1xi1>, index) -> ()
    %205 = "memref.alloc"() {name = "vexv2", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %206 = "arith.constant"() {value = 0 : i32} : () -> i32
    %207 = "arith.trunci"(%206) {unsigned} : (i32) -> i1
    "affine.store"(%207, %205, %27) {map = #map0, to = "vexv2", unsigned} : (i1, memref<1xi1>, index) -> ()
    %208 = "memref.alloc"() {name = "vexaaa", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %209 = "arith.constant"() {value = 0 : i32} : () -> i32
    %210 = "arith.trunci"(%209) {unsigned} : (i32) -> i1
    "affine.store"(%210, %208, %26) {map = #map0, to = "vexaaa", unsigned} : (i1, memref<1xi1>, index) -> ()
    %211 = "memref.alloc"() {name = "operand_size", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
    %212 = "arith.constant"() {value = 0 : i32} : () -> i32
    %213 = "arith.trunci"(%212) {unsigned} : (i32) -> i8
    "affine.store"(%213, %211, %25) {map = #map0, to = "operand_size", unsigned} : (i8, memref<1xi8>, index) -> ()
    %214 = "memref.alloc"() {name = "address_size", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
    %215 = "arith.constant"() {value = 0 : i32} : () -> i32
    %216 = "arith.trunci"(%215) {unsigned} : (i32) -> i8
    "affine.store"(%216, %214, %24) {map = #map0, to = "address_size", unsigned} : (i8, memref<1xi8>, index) -> ()
    %217 = "memref.alloc"() {name = "stack_address_size", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
    %218 = "arith.constant"() {value = 0 : i32} : () -> i32
    %219 = "arith.trunci"(%218) {unsigned} : (i32) -> i8
    "affine.store"(%219, %217, %23) {map = #map0, to = "stack_address_size", unsigned} : (i8, memref<1xi8>, index) -> ()
    %220 = "memref.alloc"() {name = "immediate_size", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
    %221 = "arith.constant"() {value = 0 : i32} : () -> i32
    %222 = "arith.trunci"(%221) {unsigned} : (i32) -> i8
    "affine.store"(%222, %220, %22) {map = #map0, to = "immediate_size", unsigned} : (i8, memref<1xi8>, index) -> ()
    %223 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%223, %124) {map = #map1, to = "cs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %224 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%224, %127) {map = #map1, to = "ds_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %225 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%225, %130) {map = #map1, to = "es_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %226 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%226, %133) {map = #map1, to = "fs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %227 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%227, %136) {map = #map1, to = "gs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %228 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%228, %139) {map = #map1, to = "ss_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %229 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%229, %142) {map = #map1, to = "lock_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %230 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%230, %145) {map = #map1, to = "osz_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %231 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%231, %148) {map = #map1, to = "asz_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %232 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%232, %151) {map = #map1, to = "rex_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %233 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%233, %154) {map = #map1, to = "vex_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %234 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%234, %157) {map = #map1, to = "evex_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %235 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%235, %160) {map = #map1, to = "rep_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %236 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%236, %163) {map = #map1, to = "repne_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
    %237 = "arith.constant"() {value = 5 : i32} : () -> i32
    %238 = "arith.trunci"(%237) {unsigned} : (i32) -> i3
    "affine.store"(%238, %166) {map = #map1, to = "mode", unsigned} : (i3, memref<1xi3>) -> ()
    %239 = "arith.constant"() {value = true} : () -> i1
    "affine.store"(%239, %169) {map = #map1, to = "is_mode64", unsigned} : (i1, memref<1xi1>) -> ()
    %240 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%240, %172) {map = #map1, to = "rexw", unsigned} : (i1, memref<1xi1>) -> ()
    %241 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%241, %175) {map = #map1, to = "rexr", unsigned} : (i1, memref<1xi1>) -> ()
    %242 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%242, %178) {map = #map1, to = "rexx", unsigned} : (i1, memref<1xi1>) -> ()
    %243 = "arith.constant"() {value = false} : () -> i1
    "affine.store"(%243, %181) {map = #map1, to = "rexb", unsigned} : (i1, memref<1xi1>) -> ()
    %244 = "arith.constant"() {value = 0 : i32} : () -> i32
    %245 = "arith.trunci"(%244) {unsigned} : (i32) -> i1
    "affine.store"(%245, %184) {map = #map1, to = "vexr2", unsigned} : (i1, memref<1xi1>) -> ()
    %246 = "arith.constant"() {value = 0 : i32} : () -> i32
    %247 = "arith.trunci"(%246) {unsigned} : (i32) -> i1
    "affine.store"(%247, %187) {map = #map1, to = "vvvv", unsigned} : (i1, memref<1xi1>) -> ()
    %248 = "arith.constant"() {value = 0 : i32} : () -> i32
    %249 = "arith.trunci"(%248) {unsigned} : (i32) -> i1
    "affine.store"(%249, %190) {map = #map1, to = "vexL", unsigned} : (i1, memref<1xi1>) -> ()
    %250 = "arith.constant"() {value = 0 : i32} : () -> i32
    %251 = "arith.trunci"(%250) {unsigned} : (i32) -> i1
    "affine.store"(%251, %193) {map = #map1, to = "vexpp", unsigned} : (i1, memref<1xi1>) -> ()
    %252 = "arith.constant"() {value = 0 : i32} : () -> i32
    %253 = "arith.trunci"(%252) {unsigned} : (i32) -> i1
    "affine.store"(%253, %196) {map = #map1, to = "vexz", unsigned} : (i1, memref<1xi1>) -> ()
    %254 = "arith.constant"() {value = 0 : i32} : () -> i32
    %255 = "arith.trunci"(%254) {unsigned} : (i32) -> i1
    "affine.store"(%255, %199) {map = #map1, to = "vexLLRC", unsigned} : (i1, memref<1xi1>) -> ()
    %256 = "arith.constant"() {value = 0 : i32} : () -> i32
    %257 = "arith.trunci"(%256) {unsigned} : (i32) -> i1
    "affine.store"(%257, %202) {map = #map1, to = "vexBCRC", unsigned} : (i1, memref<1xi1>) -> ()
    %258 = "arith.constant"() {value = 0 : i32} : () -> i32
    %259 = "arith.trunci"(%258) {unsigned} : (i32) -> i1
    "affine.store"(%259, %205) {map = #map1, to = "vexv2", unsigned} : (i1, memref<1xi1>) -> ()
    %260 = "arith.constant"() {value = 0 : i32} : () -> i32
    %261 = "arith.trunci"(%260) {unsigned} : (i32) -> i1
    "affine.store"(%261, %208) {map = #map1, to = "vexaaa", unsigned} : (i1, memref<1xi1>) -> ()
    %262 = "arith.constant"() {value = 32 : i32} : () -> i32
    %263 = "arith.trunci"(%262) {unsigned} : (i32) -> i8
    "affine.store"(%263, %211) {map = #map1, to = "operand_size", unsigned} : (i8, memref<1xi8>) -> ()
    %264 = "arith.constant"() {value = 32 : i32} : () -> i32
    %265 = "arith.trunci"(%264) {unsigned} : (i32) -> i8
    "affine.store"(%265, %214) {map = #map1, to = "address_size", unsigned} : (i8, memref<1xi8>) -> ()
    %266 = "arith.constant"() {value = 32 : i32} : () -> i32
    %267 = "arith.trunci"(%266) {unsigned} : (i32) -> i8
    "affine.store"(%267, %217) {map = #map1, to = "stack_address_size", unsigned} : (i8, memref<1xi8>) -> ()
    %268 = "arith.constant"() {value = 32 : i32} : () -> i32
    %269 = "arith.trunci"(%268) {unsigned} : (i32) -> i8
    "affine.store"(%269, %220) {map = #map1, to = "immediate_size", unsigned} : (i8, memref<1xi8>) -> ()
    %270 = "memref.alloc"() {name = "sys_steps", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %271 = "arith.constant"() {value = 1 : i32} : () -> i32
    "affine.store"(%271, %270, %21) {map = #map0, to = "sys_steps", unsigned} : (i32, memref<1xi32>, index) -> ()
    %272 = "memref.alloc"() {name = "sys_done", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %273 = "arith.constant"() {value = 0 : i32} : () -> i32
    %274 = "arith.trunci"(%273) {unsigned} : (i32) -> i1
    "affine.store"(%274, %272, %20) {map = #map0, to = "sys_done", unsigned} : (i1, memref<1xi1>, index) -> ()
    %275 = "memref.alloc"() {name = "sys_abort", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %276 = "arith.constant"() {value = 0 : i32} : () -> i32
    %277 = "arith.trunci"(%276) {unsigned} : (i32) -> i1
    "affine.store"(%277, %275, %19) {map = #map0, to = "sys_abort", unsigned} : (i1, memref<1xi1>, index) -> ()
    %278 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
    %279 = "affine.load"(%arg1) {from = "conf", map = #map1, unsigned} : (memref<2xi64>) -> i64
    %280 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
    %281 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
    %282 = "hcl.set_slice"(%278, %281, %280, %279) : (i64, index, index, i64) -> i64
    "affine.store"(%282, %114) {map = #map1, to = "cpu0.archstate.RIP", unsigned} : (i64, memref<1xi64>) -> ()
    %283 = "affine.load"(%arg1) {from = "conf", map = #map1, unsigned} : (memref<2xi64>) -> i64
    "affine.store"(%283, %120) {map = #map1, to = "fetchip", unsigned} : (i64, memref<1xi64>) -> ()
    "scf.while"() ({
      %288 = "arith.constant"() {unsigned, value = true} : () -> i1
      %289 = "affine.load"(%272) {from = "sys_done", map = #map1, unsigned} : (memref<1xi1>) -> i1
      %290 = "arith.constant"() {value = 0 : i32} : () -> i32
      %291 = "arith.extui"(%289) : (i1) -> i32
      %292 = "arith.cmpi"(%291, %290) {predicate = 0 : i64} : (i32, i32) -> i1
      %293 = "arith.andi"(%288, %292) {unsigned} : (i1, i1) -> i1
      %294 = "affine.load"(%275) {from = "sys_abort", map = #map1, unsigned} : (memref<1xi1>) -> i1
      %295 = "arith.constant"() {value = 0 : i32} : () -> i32
      %296 = "arith.extui"(%294) : (i1) -> i32
      %297 = "arith.cmpi"(%296, %295) {predicate = 0 : i64} : (i32, i32) -> i1
      %298 = "arith.andi"(%293, %297) {unsigned} : (i1, i1) -> i1
      "scf.condition"(%298) : (i1) -> ()
    }, {
      %288 = "affine.load"(%270) {from = "sys_steps", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %289 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %290 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %291 = "hcl.get_slice"(%288, %290, %289) : (i32, index, index) -> i16
      %292 = "affine.load"(%270) {from = "sys_steps", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %293 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %294 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %295 = "hcl.get_slice"(%292, %294, %293) : (i32, index, index) -> i16
      "hcl.print"(%291, %295) {format = "step=%%{hclxpr:d,16,32,%d,%d,} ------------------------------------------------------------\0A\00", signedness = "uu"} : (i16, i16) -> ()
      %296 = "arith.constant"() {value = 0 : i32} : () -> i32
      "hcl.print"(%296) {format = "test\0A\00", signedness = "_"} : (i32) -> ()
      %297 = "affine.load"(%72) {from = "cpu0.archstate.RAX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %298 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %299 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %300 = "hcl.get_slice"(%297, %299, %298) : (i64, index, index) -> i16
      %301 = "affine.load"(%72) {from = "cpu0.archstate.RAX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %302 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %303 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %304 = "hcl.get_slice"(%301, %303, %302) : (i64, index, index) -> i16
      %305 = "affine.load"(%72) {from = "cpu0.archstate.RAX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %306 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %307 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %308 = "hcl.get_slice"(%305, %307, %306) : (i64, index, index) -> i16
      %309 = "affine.load"(%72) {from = "cpu0.archstate.RAX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %310 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %311 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %312 = "hcl.get_slice"(%309, %311, %310) : (i64, index, index) -> i16
      "hcl.print"(%300, %304, %308, %312) {format = "RAX %%{hclxpr:16x,16,64,%d,%d,%d,%d,} \00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %313 = "affine.load"(%75) {from = "cpu0.archstate.RBX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %314 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %315 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %316 = "hcl.get_slice"(%313, %315, %314) : (i64, index, index) -> i16
      %317 = "affine.load"(%75) {from = "cpu0.archstate.RBX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %318 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %319 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %320 = "hcl.get_slice"(%317, %319, %318) : (i64, index, index) -> i16
      %321 = "affine.load"(%75) {from = "cpu0.archstate.RBX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %322 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %323 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %324 = "hcl.get_slice"(%321, %323, %322) : (i64, index, index) -> i16
      %325 = "affine.load"(%75) {from = "cpu0.archstate.RBX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %326 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %327 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %328 = "hcl.get_slice"(%325, %327, %326) : (i64, index, index) -> i16
      "hcl.print"(%316, %320, %324, %328) {format = "RBX %%{hclxpr:16x,16,64,%d,%d,%d,%d,} \00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %329 = "affine.load"(%78) {from = "cpu0.archstate.RCX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %330 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %331 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %332 = "hcl.get_slice"(%329, %331, %330) : (i64, index, index) -> i16
      %333 = "affine.load"(%78) {from = "cpu0.archstate.RCX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %334 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %335 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %336 = "hcl.get_slice"(%333, %335, %334) : (i64, index, index) -> i16
      %337 = "affine.load"(%78) {from = "cpu0.archstate.RCX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %338 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %339 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %340 = "hcl.get_slice"(%337, %339, %338) : (i64, index, index) -> i16
      %341 = "affine.load"(%78) {from = "cpu0.archstate.RCX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %342 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %343 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %344 = "hcl.get_slice"(%341, %343, %342) : (i64, index, index) -> i16
      "hcl.print"(%332, %336, %340, %344) {format = "RCX %%{hclxpr:16x,16,64,%d,%d,%d,%d,} \00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %345 = "affine.load"(%81) {from = "cpu0.archstate.RDX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %346 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %347 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %348 = "hcl.get_slice"(%345, %347, %346) : (i64, index, index) -> i16
      %349 = "affine.load"(%81) {from = "cpu0.archstate.RDX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %350 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %351 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %352 = "hcl.get_slice"(%349, %351, %350) : (i64, index, index) -> i16
      %353 = "affine.load"(%81) {from = "cpu0.archstate.RDX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %354 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %355 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %356 = "hcl.get_slice"(%353, %355, %354) : (i64, index, index) -> i16
      %357 = "affine.load"(%81) {from = "cpu0.archstate.RDX", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %358 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %359 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %360 = "hcl.get_slice"(%357, %359, %358) : (i64, index, index) -> i16
      "hcl.print"(%348, %352, %356, %360) {format = "RDX %%{hclxpr:16x,16,64,%d,%d,%d,%d,}\0A\00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %361 = "affine.load"(%84) {from = "cpu0.archstate.RSI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %362 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %363 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %364 = "hcl.get_slice"(%361, %363, %362) : (i64, index, index) -> i16
      %365 = "affine.load"(%84) {from = "cpu0.archstate.RSI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %366 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %367 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %368 = "hcl.get_slice"(%365, %367, %366) : (i64, index, index) -> i16
      %369 = "affine.load"(%84) {from = "cpu0.archstate.RSI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %370 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %371 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %372 = "hcl.get_slice"(%369, %371, %370) : (i64, index, index) -> i16
      %373 = "affine.load"(%84) {from = "cpu0.archstate.RSI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %374 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %375 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %376 = "hcl.get_slice"(%373, %375, %374) : (i64, index, index) -> i16
      "hcl.print"(%364, %368, %372, %376) {format = "RSI %%{hclxpr:16x,16,64,%d,%d,%d,%d,} \00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %377 = "affine.load"(%87) {from = "cpu0.archstate.RDI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %378 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %379 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %380 = "hcl.get_slice"(%377, %379, %378) : (i64, index, index) -> i16
      %381 = "affine.load"(%87) {from = "cpu0.archstate.RDI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %382 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %383 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %384 = "hcl.get_slice"(%381, %383, %382) : (i64, index, index) -> i16
      %385 = "affine.load"(%87) {from = "cpu0.archstate.RDI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %386 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %387 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %388 = "hcl.get_slice"(%385, %387, %386) : (i64, index, index) -> i16
      %389 = "affine.load"(%87) {from = "cpu0.archstate.RDI", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %390 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %391 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %392 = "hcl.get_slice"(%389, %391, %390) : (i64, index, index) -> i16
      "hcl.print"(%380, %384, %388, %392) {format = "RDI %%{hclxpr:16x,16,64,%d,%d,%d,%d,} \00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %393 = "affine.load"(%90) {from = "cpu0.archstate.RBP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %394 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %395 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %396 = "hcl.get_slice"(%393, %395, %394) : (i64, index, index) -> i16
      %397 = "affine.load"(%90) {from = "cpu0.archstate.RBP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %398 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %399 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %400 = "hcl.get_slice"(%397, %399, %398) : (i64, index, index) -> i16
      %401 = "affine.load"(%90) {from = "cpu0.archstate.RBP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %402 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %403 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %404 = "hcl.get_slice"(%401, %403, %402) : (i64, index, index) -> i16
      %405 = "affine.load"(%90) {from = "cpu0.archstate.RBP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %406 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %407 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %408 = "hcl.get_slice"(%405, %407, %406) : (i64, index, index) -> i16
      "hcl.print"(%396, %400, %404, %408) {format = "RBP %%{hclxpr:16x,16,64,%d,%d,%d,%d,} \00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %409 = "affine.load"(%93) {from = "cpu0.archstate.RSP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %410 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %411 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %412 = "hcl.get_slice"(%409, %411, %410) : (i64, index, index) -> i16
      %413 = "affine.load"(%93) {from = "cpu0.archstate.RSP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %414 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %415 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %416 = "hcl.get_slice"(%413, %415, %414) : (i64, index, index) -> i16
      %417 = "affine.load"(%93) {from = "cpu0.archstate.RSP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %418 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %419 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %420 = "hcl.get_slice"(%417, %419, %418) : (i64, index, index) -> i16
      %421 = "affine.load"(%93) {from = "cpu0.archstate.RSP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %422 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %423 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %424 = "hcl.get_slice"(%421, %423, %422) : (i64, index, index) -> i16
      "hcl.print"(%412, %416, %420, %424) {format = "RSP %%{hclxpr:16x,16,64,%d,%d,%d,%d,}\0A\00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %425 = "affine.load"(%96) {from = "cpu0.archstate.CS", map = #map1, unsigned} : (memref<1xi16>) -> i16
      %426 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %427 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %428 = "hcl.get_slice"(%425, %427, %426) : (i16, index, index) -> i16
      "hcl.print"(%428) {format = "CS  %%{hclxpr:16x,16,16,%d,} \00", signedness = "u"} : (i16) -> ()
      %429 = "affine.load"(%99) {from = "cpu0.archstate.DS", map = #map1, unsigned} : (memref<1xi16>) -> i16
      %430 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %431 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %432 = "hcl.get_slice"(%429, %431, %430) : (i16, index, index) -> i16
      "hcl.print"(%432) {format = "DS  %%{hclxpr:16x,16,16,%d,} \00", signedness = "u"} : (i16) -> ()
      %433 = "affine.load"(%102) {from = "cpu0.archstate.SS", map = #map1, unsigned} : (memref<1xi16>) -> i16
      %434 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %435 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %436 = "hcl.get_slice"(%433, %435, %434) : (i16, index, index) -> i16
      "hcl.print"(%436) {format = "SS  %%{hclxpr:16x,16,16,%d,} \00", signedness = "u"} : (i16) -> ()
      %437 = "affine.load"(%105) {from = "cpu0.archstate.ES", map = #map1, unsigned} : (memref<1xi16>) -> i16
      %438 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %439 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %440 = "hcl.get_slice"(%437, %439, %438) : (i16, index, index) -> i16
      "hcl.print"(%440) {format = "ES  %%{hclxpr:16x,16,16,%d,}\0A\00", signedness = "u"} : (i16) -> ()
      %441 = "affine.load"(%108) {from = "cpu0.archstate.FS", map = #map1, unsigned} : (memref<1xi16>) -> i16
      %442 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %443 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %444 = "hcl.get_slice"(%441, %443, %442) : (i16, index, index) -> i16
      "hcl.print"(%444) {format = "FS  %%{hclxpr:16x,16,16,%d,} \00", signedness = "u"} : (i16) -> ()
      %445 = "affine.load"(%111) {from = "cpu0.archstate.GS", map = #map1, unsigned} : (memref<1xi16>) -> i16
      %446 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %447 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %448 = "hcl.get_slice"(%445, %447, %446) : (i16, index, index) -> i16
      "hcl.print"(%448) {format = "GS  %%{hclxpr:16x,16,16,%d,} \00", signedness = "u"} : (i16) -> ()
      %449 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %450 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %451 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %452 = "hcl.get_slice"(%449, %451, %450) : (i64, index, index) -> i16
      %453 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %454 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %455 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %456 = "hcl.get_slice"(%453, %455, %454) : (i64, index, index) -> i16
      %457 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %458 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %459 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %460 = "hcl.get_slice"(%457, %459, %458) : (i64, index, index) -> i16
      %461 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %462 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %463 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %464 = "hcl.get_slice"(%461, %463, %462) : (i64, index, index) -> i16
      "hcl.print"(%452, %456, %460, %464) {format = "RIP %%{hclxpr:16x,16,64,%d,%d,%d,%d,}\0A\00", signedness = "uuuu"} : (i16, i16, i16, i16) -> ()
      %465 = "affine.load"(%117) {from = "cpu0.archstate.EFLAGS", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %466 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %467 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %468 = "hcl.get_slice"(%465, %467, %466) : (i32, index, index) -> i16
      %469 = "affine.load"(%117) {from = "cpu0.archstate.EFLAGS", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %470 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %471 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %472 = "hcl.get_slice"(%469, %471, %470) : (i32, index, index) -> i16
      "hcl.print"(%468, %472) {format = "EFLAGS 0x%%{hclxpr:x,16,32,%d,%d,}\0A\00", signedness = "uu"} : (i16, i16) -> ()
      %473 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%473, %124) {map = #map1, to = "cs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %474 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%474, %127) {map = #map1, to = "ds_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %475 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%475, %130) {map = #map1, to = "es_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %476 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%476, %133) {map = #map1, to = "fs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %477 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%477, %136) {map = #map1, to = "gs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %478 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%478, %139) {map = #map1, to = "ss_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %479 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%479, %142) {map = #map1, to = "lock_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %480 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%480, %145) {map = #map1, to = "osz_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %481 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%481, %148) {map = #map1, to = "asz_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %482 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%482, %151) {map = #map1, to = "rex_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %483 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%483, %154) {map = #map1, to = "vex_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %484 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%484, %157) {map = #map1, to = "evex_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %485 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%485, %160) {map = #map1, to = "rep_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %486 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%486, %163) {map = #map1, to = "repne_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
      %487 = "arith.constant"() {value = 5 : i32} : () -> i32
      %488 = "arith.trunci"(%487) {unsigned} : (i32) -> i3
      "affine.store"(%488, %166) {map = #map1, to = "mode", unsigned} : (i3, memref<1xi3>) -> ()
      %489 = "arith.constant"() {value = true} : () -> i1
      "affine.store"(%489, %169) {map = #map1, to = "is_mode64", unsigned} : (i1, memref<1xi1>) -> ()
      %490 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%490, %172) {map = #map1, to = "rexw", unsigned} : (i1, memref<1xi1>) -> ()
      %491 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%491, %175) {map = #map1, to = "rexr", unsigned} : (i1, memref<1xi1>) -> ()
      %492 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%492, %178) {map = #map1, to = "rexx", unsigned} : (i1, memref<1xi1>) -> ()
      %493 = "arith.constant"() {value = false} : () -> i1
      "affine.store"(%493, %181) {map = #map1, to = "rexb", unsigned} : (i1, memref<1xi1>) -> ()
      %494 = "arith.constant"() {value = 0 : i32} : () -> i32
      %495 = "arith.trunci"(%494) {unsigned} : (i32) -> i1
      "affine.store"(%495, %184) {map = #map1, to = "vexr2", unsigned} : (i1, memref<1xi1>) -> ()
      %496 = "arith.constant"() {value = 0 : i32} : () -> i32
      %497 = "arith.trunci"(%496) {unsigned} : (i32) -> i1
      "affine.store"(%497, %187) {map = #map1, to = "vvvv", unsigned} : (i1, memref<1xi1>) -> ()
      %498 = "arith.constant"() {value = 0 : i32} : () -> i32
      %499 = "arith.trunci"(%498) {unsigned} : (i32) -> i1
      "affine.store"(%499, %190) {map = #map1, to = "vexL", unsigned} : (i1, memref<1xi1>) -> ()
      %500 = "arith.constant"() {value = 0 : i32} : () -> i32
      %501 = "arith.trunci"(%500) {unsigned} : (i32) -> i1
      "affine.store"(%501, %193) {map = #map1, to = "vexpp", unsigned} : (i1, memref<1xi1>) -> ()
      %502 = "arith.constant"() {value = 0 : i32} : () -> i32
      %503 = "arith.trunci"(%502) {unsigned} : (i32) -> i1
      "affine.store"(%503, %196) {map = #map1, to = "vexz", unsigned} : (i1, memref<1xi1>) -> ()
      %504 = "arith.constant"() {value = 0 : i32} : () -> i32
      %505 = "arith.trunci"(%504) {unsigned} : (i32) -> i1
      "affine.store"(%505, %199) {map = #map1, to = "vexLLRC", unsigned} : (i1, memref<1xi1>) -> ()
      %506 = "arith.constant"() {value = 0 : i32} : () -> i32
      %507 = "arith.trunci"(%506) {unsigned} : (i32) -> i1
      "affine.store"(%507, %202) {map = #map1, to = "vexBCRC", unsigned} : (i1, memref<1xi1>) -> ()
      %508 = "arith.constant"() {value = 0 : i32} : () -> i32
      %509 = "arith.trunci"(%508) {unsigned} : (i32) -> i1
      "affine.store"(%509, %205) {map = #map1, to = "vexv2", unsigned} : (i1, memref<1xi1>) -> ()
      %510 = "arith.constant"() {value = 0 : i32} : () -> i32
      %511 = "arith.trunci"(%510) {unsigned} : (i32) -> i1
      "affine.store"(%511, %208) {map = #map1, to = "vexaaa", unsigned} : (i1, memref<1xi1>) -> ()
      %512 = "arith.constant"() {value = 32 : i32} : () -> i32
      %513 = "arith.trunci"(%512) {unsigned} : (i32) -> i8
      "affine.store"(%513, %211) {map = #map1, to = "operand_size", unsigned} : (i8, memref<1xi8>) -> ()
      %514 = "arith.constant"() {value = 32 : i32} : () -> i32
      %515 = "arith.trunci"(%514) {unsigned} : (i32) -> i8
      "affine.store"(%515, %214) {map = #map1, to = "address_size", unsigned} : (i8, memref<1xi8>) -> ()
      %516 = "arith.constant"() {value = 32 : i32} : () -> i32
      %517 = "arith.trunci"(%516) {unsigned} : (i32) -> i8
      "affine.store"(%517, %217) {map = #map1, to = "stack_address_size", unsigned} : (i8, memref<1xi8>) -> ()
      %518 = "arith.constant"() {value = 32 : i32} : () -> i32
      %519 = "arith.trunci"(%518) {unsigned} : (i32) -> i8
      "affine.store"(%519, %220) {map = #map1, to = "immediate_size", unsigned} : (i8, memref<1xi8>) -> ()
      %520 = "memref.alloc"() {name = "offset", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
      %521 = "arith.constant"() {value = 0 : i32} : () -> i32
      %522 = "arith.trunci"(%521) {unsigned} : (i32) -> i8
      "affine.store"(%522, %520, %18) {map = #map0, to = "offset", unsigned} : (i8, memref<1xi8>, index) -> ()
      %523 = "memref.alloc"() {name = "legacy_prefix", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
      %524 = "arith.constant"() {value = 1 : i32} : () -> i32
      %525 = "arith.trunci"(%524) {unsigned} : (i32) -> i1
      "affine.store"(%525, %523, %17) {map = #map0, to = "legacy_prefix", unsigned} : (i1, memref<1xi1>, index) -> ()
      %526 = "memref.alloc"() {name = "byte", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
      %527 = "arith.constant"() {value = 0 : i32} : () -> i32
      %528 = "arith.trunci"(%527) {unsigned} : (i32) -> i8
      "affine.store"(%528, %526, %16) {map = #map0, to = "byte", unsigned} : (i8, memref<1xi8>, index) -> ()
      "scf.while"() ({
        %578 = "affine.load"(%523) {from = "legacy_prefix", map = #map1, unsigned} : (memref<1xi1>) -> i1
        "scf.condition"(%578) : (i1) -> ()
      }, {
        %578 = "memref.alloc"() {name = "read_addr", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi33>
        %579 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
        %580 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
        %581 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
        %582 = "hcl.get_slice"(%579, %581, %580) : (i64, index, index) -> i32
        %583 = "affine.load"(%520) {from = "offset", map = #map1, unsigned} : (memref<1xi8>) -> i8
        %584 = "arith.extui"(%582) {unsigned} : (i32) -> i33
        %585 = "arith.extui"(%583) {unsigned} : (i8) -> i33
        %586 = "arith.addi"(%584, %585) {unsigned} : (i33, i33) -> i33
        "affine.store"(%586, %578, %15) {map = #map0, to = "read_addr", unsigned} : (i33, memref<1xi33>, index) -> ()
        %587 = "memref.alloc"() {name = "_addr", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi33>
        %588 = "affine.load"(%578) {from = "read_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
        "affine.store"(%588, %587, %14) {map = #map0, to = "_addr", unsigned} : (i33, memref<1xi33>, index) -> ()
        %589 = "memref.alloc"() {name = "assert_cond", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
        %590 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
        %591 = "arith.constant"() {value = 1 : i32} : () -> i32
        %592 = "arith.extui"(%590) : (i33) -> i35
        %593 = "arith.extsi"(%591) : (i32) -> i35
        %594 = "arith.addi"(%592, %593) : (i35, i35) -> i35
        %595 = "arith.constant"() {value = 4096 : i32} : () -> i32
        %596 = "arith.extsi"(%595) : (i32) -> i35
        %597 = "arith.cmpi"(%594, %596) {predicate = 3 : i64} : (i35, i35) -> i1
        "affine.store"(%597, %589, %13) {map = #map0, to = "assert_cond", unsigned} : (i1, memref<1xi1>, index) -> ()
        %598 = "affine.load"(%589) {from = "assert_cond", map = #map1, unsigned} : (memref<1xi1>) -> i1
        %599 = "arith.constant"() {value = 0 : i32} : () -> i32
        %600 = "arith.extui"(%598) : (i1) -> i32
        %601 = "arith.cmpi"(%600, %599) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%601) ({
          %615 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
          %616 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %617 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %618 = "hcl.get_slice"(%615, %617, %616) : (i33, index, index) -> i16
          %619 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
          %620 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %621 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %622 = "hcl.get_slice"(%619, %621, %620) : (i33, index, index) -> i16
          %623 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
          %624 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %625 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %626 = "hcl.get_slice"(%623, %625, %624) : (i33, index, index) -> i1
          %627 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
          %628 = "arith.constant"() {value = 1 : i32} : () -> i32
          %629 = "arith.extui"(%627) : (i33) -> i35
          %630 = "arith.extsi"(%628) : (i32) -> i35
          %631 = "arith.addi"(%629, %630) : (i35, i35) -> i35
          %632 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %633 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %634 = "hcl.get_slice"(%631, %633, %632) : (i35, index, index) -> i16
          %635 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
          %636 = "arith.constant"() {value = 1 : i32} : () -> i32
          %637 = "arith.extui"(%635) : (i33) -> i35
          %638 = "arith.extsi"(%636) : (i32) -> i35
          %639 = "arith.addi"(%637, %638) : (i35, i35) -> i35
          %640 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %641 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %642 = "hcl.get_slice"(%639, %641, %640) : (i35, index, index) -> i16
          %643 = "affine.load"(%587) {from = "_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
          %644 = "arith.constant"() {value = 1 : i32} : () -> i32
          %645 = "arith.extui"(%643) : (i33) -> i35
          %646 = "arith.extsi"(%644) : (i32) -> i35
          %647 = "arith.addi"(%645, %646) : (i35, i35) -> i35
          %648 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %649 = "arith.constant"() {unsigned, value = 34 : index} : () -> index
          %650 = "hcl.get_slice"(%647, %649, %648) : (i35, index, index) -> i3
          "hcl.print"(%618, %622, %626, %634, %642, %650) {format = "\0A\0AAssertion failed {schedule.py:41,x64.py:572,hcl_ext.py:751,hcl_ext.py:740,x64.py:372,x64.py:389,mem.py:114,mem.py:138,mem.py:107,hcl_ext.py:647}: cpu0.mem Mem.read exceeds memory size: addr=%%{hclxpr:d,16,33,%d,%d,%d,}+size=%%{hclxpr:d,16,35,%d,%d,%d,} > 4096\0A\0A\0A\00", signedness = "uuuuuu"} : (i16, i16, i1, i16, i16, i3) -> ()
          "scf.while"() ({
            %651 = "affine.load"(%589) {from = "assert_cond", map = #map1, unsigned} : (memref<1xi1>) -> i1
            %652 = "arith.constant"() {value = 1 : i32} : () -> i32
            %653 = "arith.extui"(%651) : (i1) -> i32
            %654 = "arith.cmpi"(%653, %652) {predicate = 1 : i64} : (i32, i32) -> i1
            "scf.condition"(%654) : (i1) -> ()
          }, {
            %651 = "arith.constant"() {value = 0 : i32} : () -> i32
            %652 = "arith.trunci"(%651) {unsigned} : (i32) -> i1
            "affine.store"(%652, %589) {map = #map1, to = "assert_cond", unsigned} : (i1, memref<1xi1>) -> ()
            "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
        }, {
        }) : (i1) -> ()
        %602 = "memref.alloc"() {name = "Mem.read_c", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
        %603 = "affine.load"(%578) {from = "read_addr", map = #map1, unsigned} : (memref<1xi33>) -> i33
        %604 = "arith.extui"(%603) {unsigned} : (i33) -> i34
        %605 = "arith.index_cast"(%12) {unsigned} : (index) -> i34
        %606 = "arith.addi"(%604, %605) {unsigned} : (i34, i34) -> i34
        %607 = "arith.index_cast"(%606) {unsigned} : (i34) -> index
        %608 = "memref.load"(%arg0, %607) {from = "mem", unsigned} : (memref<4096xi8>, index) -> i8
        "affine.store"(%608, %602, %12) {map = #map0, to = "Mem.read_c", unsigned} : (i8, memref<1xi8>, index) -> ()
        %609 = "affine.load"(%602) {from = "Mem.read_c", map = #map1, unsigned} : (memref<1xi8>) -> i8
        "affine.store"(%609, %526) {map = #map1, to = "byte", unsigned} : (i8, memref<1xi8>) -> ()
        %610 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
        %611 = "arith.constant"() {value = 38 : i32} : () -> i32
        %612 = "arith.extui"(%610) : (i8) -> i32
        %613 = "arith.cmpi"(%612, %611) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%613) ({
          %615 = "arith.constant"() {value = 1 : i32} : () -> i32
          %616 = "arith.trunci"(%615) {unsigned} : (i32) -> i1
          "affine.store"(%616, %130) {map = #map1, to = "es_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
          "scf.yield"() : () -> ()
        }, {
          %615 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
          %616 = "arith.constant"() {value = 46 : i32} : () -> i32
          %617 = "arith.extui"(%615) : (i8) -> i32
          %618 = "arith.cmpi"(%617, %616) {predicate = 0 : i64} : (i32, i32) -> i1
          "scf.if"(%618) ({
            %619 = "arith.constant"() {value = 1 : i32} : () -> i32
            %620 = "arith.trunci"(%619) {unsigned} : (i32) -> i1
            "affine.store"(%620, %124) {map = #map1, to = "cs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
            "scf.yield"() : () -> ()
          }, {
            %619 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
            %620 = "arith.constant"() {value = 54 : i32} : () -> i32
            %621 = "arith.extui"(%619) : (i8) -> i32
            %622 = "arith.cmpi"(%621, %620) {predicate = 0 : i64} : (i32, i32) -> i1
            "scf.if"(%622) ({
              %623 = "arith.constant"() {value = 1 : i32} : () -> i32
              %624 = "arith.trunci"(%623) {unsigned} : (i32) -> i1
              "affine.store"(%624, %139) {map = #map1, to = "ss_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
              "scf.yield"() : () -> ()
            }, {
              %623 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
              %624 = "arith.constant"() {value = 62 : i32} : () -> i32
              %625 = "arith.extui"(%623) : (i8) -> i32
              %626 = "arith.cmpi"(%625, %624) {predicate = 0 : i64} : (i32, i32) -> i1
              "scf.if"(%626) ({
                %627 = "arith.constant"() {value = 1 : i32} : () -> i32
                %628 = "arith.trunci"(%627) {unsigned} : (i32) -> i1
                "affine.store"(%628, %127) {map = #map1, to = "ds_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                "scf.yield"() : () -> ()
              }, {
                %627 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                %628 = "arith.constant"() {value = 100 : i32} : () -> i32
                %629 = "arith.extui"(%627) : (i8) -> i32
                %630 = "arith.cmpi"(%629, %628) {predicate = 0 : i64} : (i32, i32) -> i1
                "scf.if"(%630) ({
                  %631 = "arith.constant"() {value = 1 : i32} : () -> i32
                  %632 = "arith.trunci"(%631) {unsigned} : (i32) -> i1
                  "affine.store"(%632, %133) {map = #map1, to = "fs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                  "scf.yield"() : () -> ()
                }, {
                  %631 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                  %632 = "arith.constant"() {value = 101 : i32} : () -> i32
                  %633 = "arith.extui"(%631) : (i8) -> i32
                  %634 = "arith.cmpi"(%633, %632) {predicate = 0 : i64} : (i32, i32) -> i1
                  "scf.if"(%634) ({
                    %635 = "arith.constant"() {value = 1 : i32} : () -> i32
                    %636 = "arith.trunci"(%635) {unsigned} : (i32) -> i1
                    "affine.store"(%636, %136) {map = #map1, to = "gs_override_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                    "scf.yield"() : () -> ()
                  }, {
                    %635 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                    %636 = "arith.constant"() {value = 102 : i32} : () -> i32
                    %637 = "arith.extui"(%635) : (i8) -> i32
                    %638 = "arith.cmpi"(%637, %636) {predicate = 0 : i64} : (i32, i32) -> i1
                    "scf.if"(%638) ({
                      %639 = "arith.constant"() {value = 1 : i32} : () -> i32
                      %640 = "arith.trunci"(%639) {unsigned} : (i32) -> i1
                      "affine.store"(%640, %145) {map = #map1, to = "osz_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                      "scf.yield"() : () -> ()
                    }, {
                      %639 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                      %640 = "arith.constant"() {value = 103 : i32} : () -> i32
                      %641 = "arith.extui"(%639) : (i8) -> i32
                      %642 = "arith.cmpi"(%641, %640) {predicate = 0 : i64} : (i32, i32) -> i1
                      "scf.if"(%642) ({
                        %643 = "arith.constant"() {value = 1 : i32} : () -> i32
                        %644 = "arith.trunci"(%643) {unsigned} : (i32) -> i1
                        "affine.store"(%644, %148) {map = #map1, to = "asz_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                        "scf.yield"() : () -> ()
                      }, {
                        %643 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                        %644 = "arith.constant"() {value = 240 : i32} : () -> i32
                        %645 = "arith.extui"(%643) : (i8) -> i32
                        %646 = "arith.cmpi"(%645, %644) {predicate = 0 : i64} : (i32, i32) -> i1
                        "scf.if"(%646) ({
                          %647 = "arith.constant"() {value = 1 : i32} : () -> i32
                          %648 = "arith.trunci"(%647) {unsigned} : (i32) -> i1
                          "affine.store"(%648, %142) {map = #map1, to = "lock_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                          "scf.yield"() : () -> ()
                        }, {
                          %647 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                          %648 = "arith.constant"() {value = 242 : i32} : () -> i32
                          %649 = "arith.extui"(%647) : (i8) -> i32
                          %650 = "arith.cmpi"(%649, %648) {predicate = 0 : i64} : (i32, i32) -> i1
                          "scf.if"(%650) ({
                            %651 = "arith.constant"() {value = 1 : i32} : () -> i32
                            %652 = "arith.trunci"(%651) {unsigned} : (i32) -> i1
                            "affine.store"(%652, %163) {map = #map1, to = "repne_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                            "scf.yield"() : () -> ()
                          }, {
                            %651 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
                            %652 = "arith.constant"() {value = 243 : i32} : () -> i32
                            %653 = "arith.extui"(%651) : (i8) -> i32
                            %654 = "arith.cmpi"(%653, %652) {predicate = 0 : i64} : (i32, i32) -> i1
                            "scf.if"(%654) ({
                              %655 = "arith.constant"() {value = 1 : i32} : () -> i32
                              %656 = "arith.trunci"(%655) {unsigned} : (i32) -> i1
                              "affine.store"(%656, %160) {map = #map1, to = "rep_prefix_present", unsigned} : (i1, memref<1xi1>) -> ()
                              "scf.yield"() : () -> ()
                            }, {
                              %655 = "arith.constant"() {value = 0 : i32} : () -> i32
                              %656 = "arith.trunci"(%655) {unsigned} : (i32) -> i1
                              "affine.store"(%656, %523) {map = #map1, to = "legacy_prefix", unsigned} : (i1, memref<1xi1>) -> ()
                              "scf.yield"() : () -> ()
                            }) : (i1) -> ()
                            "scf.yield"() : () -> ()
                          }) : (i1) -> ()
                          "scf.yield"() : () -> ()
                        }) : (i1) -> ()
                        "scf.yield"() : () -> ()
                      }) : (i1) -> ()
                      "scf.yield"() : () -> ()
                    }) : (i1) -> ()
                    "scf.yield"() : () -> ()
                  }) : (i1) -> ()
                  "scf.yield"() : () -> ()
                }) : (i1) -> ()
                "scf.yield"() : () -> ()
              }) : (i1) -> ()
              "scf.yield"() : () -> ()
            }) : (i1) -> ()
            "scf.yield"() : () -> ()
          }) : (i1) -> ()
          "scf.yield"() : () -> ()
        }) : (i1) -> ()
        %614 = "affine.load"(%523) {from = "legacy_prefix", map = #map1, unsigned} : (memref<1xi1>) -> i1
        "scf.if"(%614) ({
          %615 = "affine.load"(%520) {from = "offset", map = #map1, unsigned} : (memref<1xi8>) -> i8
          %616 = "arith.constant"() {value = 1 : i32} : () -> i32
          %617 = "arith.extui"(%615) : (i8) -> i33
          %618 = "arith.extsi"(%616) : (i32) -> i33
          %619 = "arith.addi"(%617, %618) : (i33, i33) -> i33
          %620 = "arith.trunci"(%619) {unsigned} : (i33) -> i8
          "affine.store"(%620, %520) {map = #map1, to = "offset", unsigned} : (i8, memref<1xi8>) -> ()
          "scf.yield"() : () -> ()
        }, {
        }) : (i1) -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      %529 = "arith.constant"() {unsigned, value = true} : () -> i1
      %530 = "affine.load"(%169) {from = "is_mode64", map = #map1, unsigned} : (memref<1xi1>) -> i1
      %531 = "arith.andi"(%529, %530) {unsigned} : (i1, i1) -> i1
      %532 = "affine.load"(%526) {from = "byte", map = #map1, unsigned} : (memref<1xi8>) -> i8
      %533 = "arith.constant"() {value = 98 : i32} : () -> i32
      %534 = "arith.extui"(%532) : (i8) -> i32
      %535 = "arith.cmpi"(%534, %533) {predicate = 0 : i64} : (i32, i32) -> i1
      %536 = "arith.andi"(%531, %535) {unsigned} : (i1, i1) -> i1
      "scf.if"(%536) ({
        %578 = "memref.alloc"() {name = "read_addr_59", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi65>
        %579 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
        %580 = "hcl.get_slice"(%579, %581, %580) : (i64, index, index) -> i32
        %581 = "affine.load"(%520) {from = "offset", map = #map1, unsigned} : (memref<1xi8>) -> i8
        %582 = "arith.constant"() {value = -1 : i64} : () -> i64
        %583 = "arith.extui"(%581) : (i8) -> i64
        %584 = "arith.andi"(%583, %582) : (i64, i64) -> i64
        %585 = "arith.extui"(%580) : (i32) -> i65
        %586 = "arith.extsi"(%584) : (i64) -> i65
        %587 = "arith.addi"(%585, %586) : (i65, i65) -> i65
        "affine.store"(%587, %578, %11) {map = #map0, to = "read_addr_59"} : (i65, memref<1xi65>, index) -> ()
        %588 = "memref.alloc"() {name = "_addr_60", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi65>
        %589 = "affine.load"(%578) {from = "read_addr_59", map = #map1} : (memref<1xi65>) -> i65
        "affine.store"(%589, %588, %10) {map = #map0, to = "_addr_60"} : (i65, memref<1xi65>, index) -> ()
        %590 = "memref.alloc"() {name = "assert_cond_61", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
        %591 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
        %592 = "arith.constant"() {value = 1 : i32} : () -> i32
        %593 = "arith.extsi"(%591) : (i65) -> i66
        %594 = "arith.extsi"(%592) : (i32) -> i66
        %595 = "arith.addi"(%593, %594) : (i66, i66) -> i66
        %596 = "arith.constant"() {value = 4096 : i32} : () -> i32
        %597 = "arith.extsi"(%596) : (i32) -> i66
        %598 = "arith.cmpi"(%595, %597) {predicate = 3 : i64} : (i66, i66) -> i1
        "affine.store"(%598, %590, %9) {map = #map0, to = "assert_cond_61", unsigned} : (i1, memref<1xi1>, index) -> ()
        %599 = "affine.load"(%590) {from = "assert_cond_61", map = #map1, unsigned} : (memref<1xi1>) -> i1
        %600 = "arith.constant"() {value = 0 : i32} : () -> i32
        %601 = "arith.extui"(%599) : (i1) -> i32
        %602 = "arith.cmpi"(%601, %600) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%602) ({
          %682 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %683 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %684 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %685 = "hcl.get_slice"(%682, %684, %683) : (i65, index, index) -> i16
          %686 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %687 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %688 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %689 = "hcl.get_slice"(%686, %688, %687) : (i65, index, index) -> i16
          %690 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %691 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %692 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
          %693 = "hcl.get_slice"(%690, %692, %691) : (i65, index, index) -> i16
          %694 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %695 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
          %696 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
          %697 = "hcl.get_slice"(%694, %696, %695) : (i65, index, index) -> i16
          %698 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %699 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %700 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %701 = "hcl.get_slice"(%698, %700, %699) : (i65, index, index) -> i1
          %702 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %703 = "arith.constant"() {value = 1 : i32} : () -> i32
          %704 = "arith.extsi"(%702) : (i65) -> i66
          %705 = "arith.extsi"(%703) : (i32) -> i66
          %706 = "arith.addi"(%704, %705) : (i66, i66) -> i66
          %707 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %708 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %709 = "hcl.get_slice"(%706, %708, %707) : (i66, index, index) -> i16
          %710 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %711 = "arith.constant"() {value = 1 : i32} : () -> i32
          %712 = "arith.extsi"(%710) : (i65) -> i66
          %713 = "arith.extsi"(%711) : (i32) -> i66
          %714 = "arith.addi"(%712, %713) : (i66, i66) -> i66
          %715 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %716 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %717 = "hcl.get_slice"(%714, %716, %715) : (i66, index, index) -> i16
          %718 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %719 = "arith.constant"() {value = 1 : i32} : () -> i32
          %720 = "arith.extsi"(%718) : (i65) -> i66
          %721 = "arith.extsi"(%719) : (i32) -> i66
          %722 = "arith.addi"(%720, %721) : (i66, i66) -> i66
          %723 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %724 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
          %725 = "hcl.get_slice"(%722, %724, %723) : (i66, index, index) -> i16
          %726 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %727 = "arith.constant"() {value = 1 : i32} : () -> i32
          %728 = "arith.extsi"(%726) : (i65) -> i66
          %729 = "arith.extsi"(%727) : (i32) -> i66
          %730 = "arith.addi"(%728, %729) : (i66, i66) -> i66
          %731 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
          %732 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
          %733 = "hcl.get_slice"(%730, %732, %731) : (i66, index, index) -> i16
          %734 = "affine.load"(%588) {from = "_addr_60", map = #map1} : (memref<1xi65>) -> i65
          %735 = "arith.constant"() {value = 1 : i32} : () -> i32
          %736 = "arith.extsi"(%734) : (i65) -> i66
          %737 = "arith.extsi"(%735) : (i32) -> i66
          %738 = "arith.addi"(%736, %737) : (i66, i66) -> i66
          %739 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %740 = "arith.constant"() {unsigned, value = 65 : index} : () -> index
          %741 = "hcl.get_slice"(%738, %740, %739) : (i66, index, index) -> i2
          "hcl.print"(%685, %689, %693, %697, %701, %709, %717, %725, %733, %741) {format = "\0A\0AAssertion failed {x64.py:572,hcl_ext.py:751,hcl_ext.py:740,x64.py:372,x64.py:426,x64.py:380,mem.py:114,mem.py:138,mem.py:107,hcl_ext.py:647}: cpu0.mem Mem.read exceeds memory size: addr=%%{hclxpr:d,16,65,%d,%d,%d,%d,%d,}+size=%%{hclxpr:d,16,66,%d,%d,%d,%d,%d,} > 4096\0A\0A\0A\00", signedness = "uuuuuuuuuu"} : (i16, i16, i16, i16, i1, i16, i16, i16, i16, i2) -> ()
          "scf.while"() ({
            %742 = "affine.load"(%590) {from = "assert_cond_61", map = #map1, unsigned} : (memref<1xi1>) -> i1
            %743 = "arith.constant"() {value = 1 : i32} : () -> i32
            %744 = "arith.extui"(%742) : (i1) -> i32
            %745 = "arith.cmpi"(%744, %743) {predicate = 1 : i64} : (i32, i32) -> i1
            "scf.condition"(%745) : (i1) -> ()
          }, {
            %742 = "arith.constant"() {value = 0 : i32} : () -> i32
            %743 = "arith.trunci"(%742) {unsigned} : (i32) -> i1
            "affine.store"(%743, %590) {map = #map1, to = "assert_cond_61", unsigned} : (i1, memref<1xi1>) -> ()
            "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
        }, {
        }) : (i1) -> ()
        %603 = "memref.alloc"() {name = "Mem.read_c_4", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
        %604 = "affine.load"(%578) {from = "read_addr_59", map = #map1} : (memref<1xi65>) -> i65
        %605 = "arith.extsi"(%604) : (i65) -> i66
        %606 = "arith.index_cast"(%8) : (index) -> i66
        %607 = "arith.addi"(%605, %606) : (i66, i66) -> i66
        %608 = "arith.index_cast"(%607) {unsigned} : (i66) -> index
        %609 = "memref.load"(%arg0, %608) {from = "mem", unsigned} : (memref<4096xi8>, index) -> i8
        "affine.store"(%609, %603, %8) {map = #map0, to = "Mem.read_c_4", unsigned} : (i8, memref<1xi8>, index) -> ()
        %610 = "memref.alloc"() {name = "read_addr_62", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi66>
        %611 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
        %612 = "hcl.get_slice"(%611, %581, %580) : (i64, index, index) -> i32
        %613 = "affine.load"(%520) {from = "offset", map = #map1, unsigned} : (memref<1xi8>) -> i8
        %614 = "arith.constant"() {value = -1 : i64} : () -> i64
        %615 = "arith.extui"(%613) : (i8) -> i64
        %616 = "arith.andi"(%615, %614) : (i64, i64) -> i64
        %617 = "arith.extui"(%612) : (i32) -> i65
        %618 = "arith.extsi"(%616) : (i64) -> i65
        %619 = "arith.addi"(%617, %618) : (i65, i65) -> i65
        %620 = "arith.constant"() {value = 1 : i32} : () -> i32
        %621 = "arith.extsi"(%619) : (i65) -> i66
        %622 = "arith.extsi"(%620) : (i32) -> i66
        %623 = "arith.addi"(%621, %622) : (i66, i66) -> i66
        "affine.store"(%623, %610, %7) {map = #map0, to = "read_addr_62"} : (i66, memref<1xi66>, index) -> ()
        %624 = "memref.alloc"() {name = "_addr_63", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi66>
        %625 = "affine.load"(%610) {from = "read_addr_62", map = #map1} : (memref<1xi66>) -> i66
        "affine.store"(%625, %624, %6) {map = #map0, to = "_addr_63"} : (i66, memref<1xi66>, index) -> ()
        %626 = "memref.alloc"() {name = "assert_cond_64", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
        %627 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
        %628 = "arith.constant"() {value = 1 : i32} : () -> i32
        %629 = "arith.extsi"(%627) : (i66) -> i67
        %630 = "arith.extsi"(%628) : (i32) -> i67
        %631 = "arith.addi"(%629, %630) : (i67, i67) -> i67
        %632 = "arith.constant"() {value = 4096 : i32} : () -> i32
        %633 = "arith.extsi"(%632) : (i32) -> i67
        %634 = "arith.cmpi"(%631, %633) {predicate = 3 : i64} : (i67, i67) -> i1
        "affine.store"(%634, %626, %5) {map = #map0, to = "assert_cond_64", unsigned} : (i1, memref<1xi1>, index) -> ()
        %635 = "affine.load"(%626) {from = "assert_cond_64", map = #map1, unsigned} : (memref<1xi1>) -> i1
        %636 = "arith.constant"() {value = 0 : i32} : () -> i32
        %637 = "arith.extui"(%635) : (i1) -> i32
        %638 = "arith.cmpi"(%637, %636) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%638) ({
          %682 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %683 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %684 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %685 = "hcl.get_slice"(%682, %684, %683) : (i66, index, index) -> i16
          %686 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %687 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %688 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %689 = "hcl.get_slice"(%686, %688, %687) : (i66, index, index) -> i16
          %690 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %691 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %692 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
          %693 = "hcl.get_slice"(%690, %692, %691) : (i66, index, index) -> i16
          %694 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %695 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
          %696 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
          %697 = "hcl.get_slice"(%694, %696, %695) : (i66, index, index) -> i16
          %698 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %699 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %700 = "arith.constant"() {unsigned, value = 65 : index} : () -> index
          %701 = "hcl.get_slice"(%698, %700, %699) : (i66, index, index) -> i2
          %702 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %703 = "arith.constant"() {value = 1 : i32} : () -> i32
          %704 = "arith.extsi"(%702) : (i66) -> i67
          %705 = "arith.extsi"(%703) : (i32) -> i67
          %706 = "arith.addi"(%704, %705) : (i67, i67) -> i67
          %707 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %708 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %709 = "hcl.get_slice"(%706, %708, %707) : (i67, index, index) -> i16
          %710 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %711 = "arith.constant"() {value = 1 : i32} : () -> i32
          %712 = "arith.extsi"(%710) : (i66) -> i67
          %713 = "arith.extsi"(%711) : (i32) -> i67
          %714 = "arith.addi"(%712, %713) : (i67, i67) -> i67
          %715 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %716 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %717 = "hcl.get_slice"(%714, %716, %715) : (i67, index, index) -> i16
          %718 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %719 = "arith.constant"() {value = 1 : i32} : () -> i32
          %720 = "arith.extsi"(%718) : (i66) -> i67
          %721 = "arith.extsi"(%719) : (i32) -> i67
          %722 = "arith.addi"(%720, %721) : (i67, i67) -> i67
          %723 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %724 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
          %725 = "hcl.get_slice"(%722, %724, %723) : (i67, index, index) -> i16
          %726 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %727 = "arith.constant"() {value = 1 : i32} : () -> i32
          %728 = "arith.extsi"(%726) : (i66) -> i67
          %729 = "arith.extsi"(%727) : (i32) -> i67
          %730 = "arith.addi"(%728, %729) : (i67, i67) -> i67
          %731 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
          %732 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
          %733 = "hcl.get_slice"(%730, %732, %731) : (i67, index, index) -> i16
          %734 = "affine.load"(%624) {from = "_addr_63", map = #map1} : (memref<1xi66>) -> i66
          %735 = "arith.constant"() {value = 1 : i32} : () -> i32
          %736 = "arith.extsi"(%734) : (i66) -> i67
          %737 = "arith.extsi"(%735) : (i32) -> i67
          %738 = "arith.addi"(%736, %737) : (i67, i67) -> i67
          %739 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %740 = "arith.constant"() {unsigned, value = 66 : index} : () -> index
          %741 = "hcl.get_slice"(%738, %740, %739) : (i67, index, index) -> i3
          "hcl.print"(%685, %689, %693, %697, %701, %709, %717, %725, %733, %741) {format = "\0A\0AAssertion failed {x64.py:572,hcl_ext.py:751,hcl_ext.py:740,x64.py:372,x64.py:427,x64.py:380,mem.py:114,mem.py:138,mem.py:107,hcl_ext.py:647}: cpu0.mem Mem.read exceeds memory size: addr=%%{hclxpr:d,16,66,%d,%d,%d,%d,%d,}+size=%%{hclxpr:d,16,67,%d,%d,%d,%d,%d,} > 4096\0A\0A\0A\00", signedness = "uuuuuuuuuu"} : (i16, i16, i16, i16, i2, i16, i16, i16, i16, i3) -> ()
          "scf.while"() ({
            %742 = "affine.load"(%626) {from = "assert_cond_64", map = #map1, unsigned} : (memref<1xi1>) -> i1
            %743 = "arith.constant"() {value = 1 : i32} : () -> i32
            %744 = "arith.extui"(%742) : (i1) -> i32
            %745 = "arith.cmpi"(%744, %743) {predicate = 1 : i64} : (i32, i32) -> i1
            "scf.condition"(%745) : (i1) -> ()
          }, {
            %742 = "arith.constant"() {value = 0 : i32} : () -> i32
            %743 = "arith.trunci"(%742) {unsigned} : (i32) -> i1
            "affine.store"(%743, %626) {map = #map1, to = "assert_cond_64", unsigned} : (i1, memref<1xi1>) -> ()
            "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
        }, {
        }) : (i1) -> ()
        %639 = "memref.alloc"() {name = "Mem.read_c_5", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
        %640 = "affine.load"(%610) {from = "read_addr_62", map = #map1} : (memref<1xi66>) -> i66
        %641 = "arith.extsi"(%640) : (i66) -> i67
        %642 = "arith.index_cast"(%4) : (index) -> i67
        %643 = "arith.addi"(%641, %642) : (i67, i67) -> i67
        %644 = "arith.index_cast"(%643) {unsigned} : (i67) -> index
        %645 = "memref.load"(%arg0, %644) {from = "mem", unsigned} : (memref<4096xi8>, index) -> i8
        "affine.store"(%645, %639, %4) {map = #map0, to = "Mem.read_c_5", unsigned} : (i8, memref<1xi8>, index) -> ()
        %646 = "memref.alloc"() {name = "read_addr_65", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi66>
        %647 = "affine.load"(%114) {from = "cpu0.archstate.RIP", map = #map1, unsigned} : (memref<1xi64>) -> i64
        %648 = "hcl.get_slice"(%647, %581, %580) : (i64, index, index) -> i32
        %649 = "affine.load"(%520) {from = "offset", map = #map1, unsigned} : (memref<1xi8>) -> i8
        %650 = "arith.constant"() {value = -1 : i64} : () -> i64
        %651 = "arith.extui"(%649) : (i8) -> i64
        %652 = "arith.andi"(%651, %650) : (i64, i64) -> i64
        %653 = "arith.extui"(%648) : (i32) -> i65
        %654 = "arith.extsi"(%652) : (i64) -> i65
        %655 = "arith.addi"(%653, %654) : (i65, i65) -> i65
        %656 = "arith.constant"() {value = 2 : i32} : () -> i32
        %657 = "arith.extsi"(%655) : (i65) -> i66
        %658 = "arith.extsi"(%656) : (i32) -> i66
        %659 = "arith.addi"(%657, %658) : (i66, i66) -> i66
        "affine.store"(%659, %646, %3) {map = #map0, to = "read_addr_65"} : (i66, memref<1xi66>, index) -> ()
        %660 = "memref.alloc"() {name = "_addr_66", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi66>
        %661 = "affine.load"(%646) {from = "read_addr_65", map = #map1} : (memref<1xi66>) -> i66
        "affine.store"(%661, %660, %2) {map = #map0, to = "_addr_66"} : (i66, memref<1xi66>, index) -> ()
        %662 = "memref.alloc"() {name = "assert_cond_67", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
        %663 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
        %664 = "arith.constant"() {value = 1 : i32} : () -> i32
        %665 = "arith.extsi"(%663) : (i66) -> i67
        %666 = "arith.extsi"(%664) : (i32) -> i67
        %667 = "arith.addi"(%665, %666) : (i67, i67) -> i67
        %668 = "arith.constant"() {value = 4096 : i32} : () -> i32
        %669 = "arith.extsi"(%668) : (i32) -> i67
        %670 = "arith.cmpi"(%667, %669) {predicate = 3 : i64} : (i67, i67) -> i1
        "affine.store"(%670, %662, %1) {map = #map0, to = "assert_cond_67", unsigned} : (i1, memref<1xi1>, index) -> ()
        %671 = "affine.load"(%662) {from = "assert_cond_67", map = #map1, unsigned} : (memref<1xi1>) -> i1
        %672 = "arith.constant"() {value = 0 : i32} : () -> i32
        %673 = "arith.extui"(%671) : (i1) -> i32
        %674 = "arith.cmpi"(%673, %672) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%674) ({
          %682 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %683 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %684 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %685 = "hcl.get_slice"(%682, %684, %683) : (i66, index, index) -> i16
          %686 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %687 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %688 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %689 = "hcl.get_slice"(%686, %688, %687) : (i66, index, index) -> i16
          %690 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %691 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %692 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
          %693 = "hcl.get_slice"(%690, %692, %691) : (i66, index, index) -> i16
          %694 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %695 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
          %696 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
          %697 = "hcl.get_slice"(%694, %696, %695) : (i66, index, index) -> i16
          %698 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %699 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %700 = "arith.constant"() {unsigned, value = 65 : index} : () -> index
          %701 = "hcl.get_slice"(%698, %700, %699) : (i66, index, index) -> i2
          %702 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %703 = "arith.constant"() {value = 1 : i32} : () -> i32
          %704 = "arith.extsi"(%702) : (i66) -> i67
          %705 = "arith.extsi"(%703) : (i32) -> i67
          %706 = "arith.addi"(%704, %705) : (i67, i67) -> i67
          %707 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
          %708 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
          %709 = "hcl.get_slice"(%706, %708, %707) : (i67, index, index) -> i16
          %710 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %711 = "arith.constant"() {value = 1 : i32} : () -> i32
          %712 = "arith.extsi"(%710) : (i66) -> i67
          %713 = "arith.extsi"(%711) : (i32) -> i67
          %714 = "arith.addi"(%712, %713) : (i67, i67) -> i67
          %715 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
          %716 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
          %717 = "hcl.get_slice"(%714, %716, %715) : (i67, index, index) -> i16
          %718 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %719 = "arith.constant"() {value = 1 : i32} : () -> i32
          %720 = "arith.extsi"(%718) : (i66) -> i67
          %721 = "arith.extsi"(%719) : (i32) -> i67
          %722 = "arith.addi"(%720, %721) : (i67, i67) -> i67
          %723 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
          %724 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
          %725 = "hcl.get_slice"(%722, %724, %723) : (i67, index, index) -> i16
          %726 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %727 = "arith.constant"() {value = 1 : i32} : () -> i32
          %728 = "arith.extsi"(%726) : (i66) -> i67
          %729 = "arith.extsi"(%727) : (i32) -> i67
          %730 = "arith.addi"(%728, %729) : (i67, i67) -> i67
          %731 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
          %732 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
          %733 = "hcl.get_slice"(%730, %732, %731) : (i67, index, index) -> i16
          %734 = "affine.load"(%660) {from = "_addr_66", map = #map1} : (memref<1xi66>) -> i66
          %735 = "arith.constant"() {value = 1 : i32} : () -> i32
          %736 = "arith.extsi"(%734) : (i66) -> i67
          %737 = "arith.extsi"(%735) : (i32) -> i67
          %738 = "arith.addi"(%736, %737) : (i67, i67) -> i67
          %739 = "arith.constant"() {unsigned, value = 64 : index} : () -> index
          %740 = "arith.constant"() {unsigned, value = 66 : index} : () -> index
          %741 = "hcl.get_slice"(%738, %740, %739) : (i67, index, index) -> i3
          "hcl.print"(%685, %689, %693, %697, %701, %709, %717, %725, %733, %741) {format = "\0A\0AAssertion failed {x64.py:572,hcl_ext.py:751,hcl_ext.py:740,x64.py:372,x64.py:428,x64.py:380,mem.py:114,mem.py:138,mem.py:107,hcl_ext.py:647}: cpu0.mem Mem.read exceeds memory size: addr=%%{hclxpr:d,16,66,%d,%d,%d,%d,%d,}+size=%%{hclxpr:d,16,67,%d,%d,%d,%d,%d,} > 4096\0A\0A\0A\00", signedness = "uuuuuuuuuu"} : (i16, i16, i16, i16, i2, i16, i16, i16, i16, i3) -> ()
          "scf.while"() ({
            %742 = "affine.load"(%662) {from = "assert_cond_67", map = #map1, unsigned} : (memref<1xi1>) -> i1
            %743 = "arith.constant"() {value = 1 : i32} : () -> i32
            %744 = "arith.extui"(%742) : (i1) -> i32
            %745 = "arith.cmpi"(%744, %743) {predicate = 1 : i64} : (i32, i32) -> i1
            "scf.condition"(%745) : (i1) -> ()
          }, {
            %742 = "arith.constant"() {value = 0 : i32} : () -> i32
            %743 = "arith.trunci"(%742) {unsigned} : (i32) -> i1
            "affine.store"(%743, %662) {map = #map1, to = "assert_cond_67", unsigned} : (i1, memref<1xi1>) -> ()
            "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
        }, {
        }) : (i1) -> ()
        %675 = "memref.alloc"() {name = "Mem.read_c_6", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi8>
        %676 = "affine.load"(%646) {from = "read_addr_65", map = #map1} : (memref<1xi66>) -> i66
        %677 = "arith.extsi"(%676) : (i66) -> i67
        %678 = "arith.index_cast"(%0) : (index) -> i67
        %679 = "arith.addi"(%677, %678) : (i67, i67) -> i67
        %680 = "arith.index_cast"(%679) {unsigned} : (i67) -> index
        %681 = "memref.load"(%arg0, %680) {from = "mem", unsigned} : (memref<4096xi8>, index) -> i8
        "affine.store"(%681, %675, %0) {map = #map0, to = "Mem.read_c_6", unsigned} : (i8, memref<1xi8>, index) -> ()
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      %537 = "arith.constant"() {value = 1 : i32} : () -> i32
      %538 = "arith.trunci"(%537) {unsigned} : (i32) -> i1
      "affine.store"(%538, %272) {map = #map1, to = "sys_done", unsigned} : (i1, memref<1xi1>) -> ()
      %539 = "affine.load"(%120) {from = "fetchip", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %540 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %541 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %542 = "hcl.get_slice"(%539, %541, %540) : (i64, index, index) -> i16
      %543 = "affine.load"(%120) {from = "fetchip", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %544 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %545 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %546 = "hcl.get_slice"(%543, %545, %544) : (i64, index, index) -> i16
      %547 = "affine.load"(%120) {from = "fetchip", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %548 = "arith.constant"() {unsigned, value = 32 : index} : () -> index
      %549 = "arith.constant"() {unsigned, value = 47 : index} : () -> index
      %550 = "hcl.get_slice"(%547, %549, %548) : (i64, index, index) -> i16
      %551 = "affine.load"(%120) {from = "fetchip", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %552 = "arith.constant"() {unsigned, value = 48 : index} : () -> index
      %553 = "arith.constant"() {unsigned, value = 63 : index} : () -> index
      %554 = "hcl.get_slice"(%551, %553, %552) : (i64, index, index) -> i16
      %555 = "affine.load"(%120) {from = "fetchip", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %556 = "arith.index_cast"(%555) {unsigned} : (i64) -> index
      %557 = "memref.load"(%arg0, %556) {from = "mem", unsigned} : (memref<4096xi8>, index) -> i8
      %558 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %559 = "arith.constant"() {unsigned, value = 7 : index} : () -> index
      %560 = "hcl.get_slice"(%557, %559, %558) : (i8, index, index) -> i8
      "hcl.print"(%542, %546, %550, %554, %560) {format = "[%%{hclxpr:d,16,64,%d,%d,%d,%d,}] %%{hclxpr:x,16,8,%d,}\0A\00", signedness = "uuuuu"} : (i16, i16, i16, i16, i8) -> ()
      %561 = "affine.load"(%120) {from = "fetchip", map = #map1, unsigned} : (memref<1xi64>) -> i64
      %562 = "arith.constant"() {value = 1 : i32} : () -> i32
      %563 = "arith.extui"(%561) : (i64) -> i66
      %564 = "arith.extsi"(%562) : (i32) -> i66
      %565 = "arith.addi"(%563, %564) : (i66, i66) -> i66
      %566 = "arith.trunci"(%565) {unsigned} : (i66) -> i64
      "affine.store"(%566, %120) {map = #map1, to = "fetchip", unsigned} : (i64, memref<1xi64>) -> ()
      %567 = "affine.load"(%270) {from = "sys_steps", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %568 = "arith.constant"() {value = 1 : i32} : () -> i32
      %569 = "arith.extui"(%567) : (i32) -> i34
      %570 = "arith.extsi"(%568) : (i32) -> i34
      %571 = "arith.addi"(%569, %570) : (i34, i34) -> i34
      %572 = "arith.trunci"(%571) {unsigned} : (i34) -> i32
      "affine.store"(%572, %270) {map = #map1, to = "sys_steps", unsigned} : (i32, memref<1xi32>) -> ()
      %573 = "affine.load"(%270) {from = "sys_steps", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %574 = "arith.constant"() {value = 5 : i32} : () -> i32
      %575 = "arith.extui"(%573) : (i32) -> i33
      %576 = "arith.extsi"(%574) : (i32) -> i33
      %577 = "arith.cmpi"(%575, %576) {predicate = 4 : i64} : (i33, i33) -> i1
      "scf.if"(%577) ({
        %578 = "arith.constant"() {value = 0 : i32} : () -> i32
        "hcl.print"(%578) {format = "Reached max step ... aborting\0A\00", signedness = "_"} : (i32) -> ()
        %579 = "arith.constant"() {value = 1 : i32} : () -> i32
        %580 = "arith.trunci"(%579) {unsigned} : (i32) -> i1
        "affine.store"(%580, %275) {map = #map1, to = "sys_abort", unsigned} : (i1, memref<1xi1>) -> ()
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    %284 = "affine.load"(%272) {from = "sys_done", map = #map1, unsigned} : (memref<1xi1>) -> i1
    %285 = "arith.constant"() {value = 1 : i32} : () -> i32
    %286 = "arith.extui"(%284) : (i1) -> i32
    %287 = "arith.cmpi"(%286, %285) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%287) ({
      %288 = "affine.load"(%270) {from = "sys_steps", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %289 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
      %290 = "arith.constant"() {unsigned, value = 15 : index} : () -> index
      %291 = "hcl.get_slice"(%288, %290, %289) : (i32, index, index) -> i16
      %292 = "affine.load"(%270) {from = "sys_steps", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %293 = "arith.constant"() {unsigned, value = 16 : index} : () -> index
      %294 = "arith.constant"() {unsigned, value = 31 : index} : () -> index
      %295 = "hcl.get_slice"(%292, %294, %293) : (i32, index, index) -> i16
      "hcl.print"(%291, %295) {format = "Total steps: %%{hclxpr:d,16,32,%d,%d,}\0A\00", signedness = "uu"} : (i16, i16) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) {bit, function_type = (memref<4096xi8>, memref<2xi64>) -> (), itypes = "uu", otypes = "", sym_name = "top"} : () -> ()
}) : () -> ()