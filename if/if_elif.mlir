#map = affine_map<() -> (0)>
"builtin.module"() ({
  "func.func"() ({
    %0 = "memref.alloc"() {name = "cond_a", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi16>
    %1 = "arith.constant"() {value = 0 : index} : () -> index
    %2 = "arith.constant"() {unsigned, value = 0 : i16} : () -> i16
    "affine.store"(%2, %0) {map = #map, to = "cond_a", unsigned} : (i16, memref<1xi16>) -> ()
    %3 = "memref.alloc"() {name = "cond_b", operand_segment_sizes = dense<0> : vector<2xi32>, unsigned} : () -> memref<1xi16>
    %4 = "arith.constant"() {value = 0 : index} : () -> index
    %5 = "arith.constant"() {unsigned, value = 1 : i16} : () -> i16
    "affine.store"(%5, %3) {map = #map, to = "cond_b", unsigned} : (i16, memref<1xi16>) -> ()
    %6 = "affine.load"(%0) {from = "cond_a", map = #map, unsigned} : (memref<1xi16>) -> i16
    %7 = "arith.constant"() {value = 0 : i32} : () -> i32
    %8 = "arith.extui"(%6) : (i16) -> i32
    %9 = "arith.cmpi"(%8, %7) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%9) ({
      "scf.yield"() : () -> ()
    }, {
      "scf.if"(%13) ({
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    %10 = "affine.load"(%3) {from = "cond_b", map = #map, unsigned} : (memref<1xi16>) -> i16
    %11 = "arith.constant"() {value = 0 : i32} : () -> i32
    %12 = "arith.extui"(%10) : (i16) -> i32
    %13 = "arith.cmpi"(%12, %11) {predicate = 0 : i64} : (i32, i32) -> i1
    "func.return"() : () -> ()
  }) {function_type = () -> (), itypes = "", otypes = "", sym_name = "top"} : () -> ()
}) : () -> ()

