// Verification failed, printing generic form
#map0 = affine_map<() -> (0)>
#map1 = affine_map<(d0) -> (d0)>
"builtin.module"() ({
  "func.func"() ({
    %0 = "arith.constant"() {value = 0 : index} : () -> index
    %1 = "memref.alloc"() {name = "foo", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1x!hcl.struct<i8, i8>>
    %2 = "arith.constant"() {value = 0 : index} : () -> index
    %3 = "arith.constant"() {unsigned, value = 52 : i8} : () -> i8
    %4 = "arith.constant"() {unsigned, value = 18 : i8} : () -> i8
    %5 = "hcl.struct_construct"(%3, %4) : (i8, i8) -> !hcl.struct<i8, i8>
    "affine.store"(%5, %1) {map = #map0, to = "foo"} : (!hcl.struct<i8, i8>, memref<1x!hcl.struct<i8, i8>>) -> ()
    %6 = "affine.load"(%1) {from = "foo", map = #map0} : (memref<1x!hcl.struct<i8, i8>>) -> !hcl.struct<i8, i8>
    %7 = "hcl.struct_get"(%6) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
    %8 = "arith.extsi"(%7) : (i8) -> i32
    %9 = "arith.constant"() {value = 0 : i32} : () -> i32
    %10 = "arith.cmpi"(%8, %9) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%10) ({
      %26 = "arith.constant"() {value = 0 : i32} : () -> i32
      "hcl.print"(%26) {format = "match\0A", signedness = "_"} : (i32) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    %11 = "arith.extsi"(%15) : (i8) -> i32
    %12 = "arith.constant"() {value = 0 : i32} : () -> i32
    %13 = "arith.cmpi"(%11, %12) {predicate = 0 : i64} : (i32, i32) -> i1
    %14 = "affine.load"(%1) {from = "foo", map = #map0} : (memref<1x!hcl.struct<i8, i8>>) -> !hcl.struct<i8, i8>
    %15 = "hcl.struct_get"(%14) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
    %16 = "arith.extsi"(%15) : (i8) -> i32
    %17 = "arith.constant"() {value = 1 : i32} : () -> i32
    %18 = "arith.cmpi"(%16, %17) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%18) ({
      %26 = "arith.constant"() {value = 0 : i32} : () -> i32
      "hcl.print"(%26) {format = "match\0A", signedness = "_"} : (i32) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    %19 = "affine.load"(%1) {from = "foo", map = #map0} : (memref<1x!hcl.struct<i8, i8>>) -> !hcl.struct<i8, i8>
    %20 = "hcl.struct_get"(%19) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
    %21 = "arith.extsi"(%20) : (i8) -> i32
    %22 = "arith.constant"() {value = 1 : i32} : () -> i32
    %23 = "arith.cmpi"(%21, %22) {predicate = 0 : i64} : (i32, i32) -> i1
    %24 = "memref.alloc"() {name = "compute_0", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi32>
    %25 = "arith.constant"() {unsigned, value = 0 : i32} : () -> i32
    "affine.store"(%25, %24, %0) {map = #map1, to = "compute_0"} : (i32, memref<1xi32>, index) -> ()
    "func.return"(%24) : (memref<1xi32>) -> ()
  }) {function_type = () -> memref<1xi32>, itypes = "", otypes = "u", sym_name = "top"} : () -> ()
}) : () -> ()

