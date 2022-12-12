// Verification failed, printing generic form
#map0 = affine_map<() -> (0)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<() -> (1)>
"builtin.module"() ({
  "func.func"() ({
    %0 = "memref.alloc"() {name = "inst_enc", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi64>
    %1 = "arith.constant"() {value = 0 : index} : () -> index
    %2 = "arith.constant"() {unsigned, value = 0 : i64} : () -> i64
    "affine.store"(%2, %0) {map = #map0, to = "inst_enc", unsigned} : (i64, memref<1xi64>) -> ()
    %3 = "memref.alloc"() {name = "inst_id", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi16>
    %4 = "arith.constant"() {value = 0 : index} : () -> index
    %5 = "arith.constant"() {unsigned, value = 0 : i16} : () -> i16
    "affine.store"(%5, %3) {map = #map0, to = "inst_id", unsigned} : (i16, memref<1xi16>) -> ()
    %6 = "affine.load"(%0) {from = "inst_enc", map = #map0, unsigned} : (memref<1xi64>) -> i64
    %7 = "memref.alloc"() {name = "inst_lat", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi16>
    %8 = "arith.constant"() {value = 0 : index} : () -> index
    %9 = "arith.constant"() {unsigned, value = 0 : i16} : () -> i16
    "affine.store"(%9, %7) {map = #map0, to = "inst_lat", unsigned} : (i16, memref<1xi16>) -> ()
    %10 = "memref.alloc"() {name = "tmp", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi1>
    %11 = "arith.constant"() {value = 0 : index} : () -> index
    %12 = "arith.constant"() {unsigned, value = false} : () -> i1
    "affine.store"(%12, %10) {map = #map0, to = "tmp", unsigned} : (i1, memref<1xi1>) -> ()
    %13 = "affine.load"(%7) {from = "inst_lat", map = #map0, unsigned} : (memref<1xi16>) -> i16
    %14 = "arith.constant"() {value = 1 : i32} : () -> i32
    %15 = "arith.extui"(%13) : (i16) -> i32
    %16 = "arith.cmpi"(%15, %14) {predicate = 3 : i64} : (i32, i32) -> i1
    "scf.if"(%16) ({
      %24 = "arith.constant"() {value = 0 : index} : () -> index
      %25 = "arith.constant"() {value = 1 : i32} : () -> i32
      %26 = "arith.trunci"(%25) {unsigned} : (i32) -> i1
      "affine.store"(%26, %10) {map = #map0, to = "tmp", unsigned} : (i1, memref<1xi1>) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    %17 = "affine.load"(%10) {from = "tmp", map = #map0, unsigned} : (memref<1xi1>) -> i1
    %18 = "arith.constant"() {value = 0 : i32} : () -> i32
    %19 = "arith.extui"(%17) : (i1) -> i32
    %20 = "arith.cmpi"(%19, %18) {predicate = 1 : i64} : (i32, i32) -> i1
    "scf.if"(%20) ({
      %24 = "memref.alloc"() {name = "exe_inst", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi64>
      %25 = "arith.constant"() {value = 0 : index} : () -> index
      "affine.store"(%6, %24) {map = #map0, to = "exe_inst", unsigned} : (i64, memref<1xi64>) -> ()
      %26 = "affine.load"(%24) {from = "exe_inst", map = #map0, unsigned} : (memref<1xi64>) -> i64
      %27 = "arith.constant"() {value = 0 : i32} : () -> i32
      %28 = "arith.extsi"(%27) {unsigned} : (i32) -> i64
      %29 = "arith.cmpi"(%26, %28) {predicate = 0 : i64} : (i64, i64) -> i1
      "scf.if"(%29) ({
        %30 = "affine.load"(%24) {from = "exe_inst", map = #map0, unsigned} : (memref<1xi64>) -> i64
        %31 = "memref.alloc"() {name = "inste0", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1x!hcl.struct<i8, i56>>
        %32 = "arith.constant"() {value = 0 : index} : () -> index
        %33 = "hcl.int_to_struct"(%30) {unsigned} : (i64) -> !hcl.struct<i8, i56>
        "affine.store"(%33, %31) {map = #map0, to = "inste0"} : (!hcl.struct<i8, i56>, memref<1x!hcl.struct<i8, i56>>) -> ()
        %34 = "affine.load"(%31) {from = "inste0", map = #map0} : (memref<1x!hcl.struct<i8, i56>>) -> !hcl.struct<i8, i56>
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }, {
      // this else block is attached to the wrong if 
      %24 = "affine.load"(%24) {from = "exe_inst", map = #map0, unsigned} : (memref<1xi64>) -> i64
      %25 = "arith.constant"() {value = 1 : i32} : () -> i32
      %26 = "arith.extsi"(%25) {unsigned} : (i32) -> i64
      %27 = "arith.cmpi"(%24, %26) {predicate = 0 : i64} : (i64, i64) -> i1
      "scf.if"(%27) ({
        %28 = "affine.load"(%24) {from = "exe_inst", map = #map0, unsigned} : (memref<1xi64>) -> i64
        %29 = "memref.alloc"() {name = "inste1", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1x!hcl.struct<i8, i56>>
        %30 = "arith.constant"() {value = 0 : index} : () -> index
        %31 = "hcl.int_to_struct"(%28) {unsigned} : (i64) -> !hcl.struct<i8, i56>
        "affine.store"(%31, %29) {map = #map0, to = "inste1"} : (!hcl.struct<i8, i56>, memref<1x!hcl.struct<i8, i56>>) -> ()
        %32 = "affine.load"(%29) {from = "inste1", map = #map0} : (memref<1x!hcl.struct<i8, i56>>) -> !hcl.struct<i8, i56>
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    %21 = "memref.alloc"() {name = "compute_0", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %22 = "hcl.create_op_handle"() {op_name = "compute_0"} : () -> !hcl.OpHandle
    %23 = "hcl.create_loop_handle"(%22) {loop_name = "_"} : (!hcl.OpHandle) -> !hcl.LoopHandle
    "affine.for"() ({
    ^bb0(%arg0: index):
      %24 = "arith.constant"() {value = 0 : i32} : () -> i32
      "affine.store"(%24, %21, %arg0) {map = #map1, to = "compute_0"} : (i32, memref<1xi32>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "_", lower_bound = #map0, op_name = "compute_0", step = 1 : i32, upper_bound = #map2} : () -> ()
    "func.return"(%21) : (memref<1xi32>) -> ()
  }) {function_type = () -> memref<1xi32>, itypes = "", otypes = "s", sym_name = "top"} : () -> ()
}) : () -> ()

