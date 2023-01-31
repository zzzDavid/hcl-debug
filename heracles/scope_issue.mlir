#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (8192)>
#map3 = affine_map<() -> (2)>
"builtin.module"() ({
  "func.func"() ({
    %0 = "arith.constant"() {value = 0 : index} : () -> index
    %1 = "arith.constant"() {value = 0 : index} : () -> index
    %2 = "arith.constant"() {value = 0 : index} : () -> index
    %3 = "arith.constant"() {value = 0 : index} : () -> index
    %4 = "arith.constant"() {value = 0 : index} : () -> index
    %5 = "memref.alloc"() {name = "src", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<8192xi32>
    "affine.for"() ({
    ^bb0(%arg0: index):
      %38 = "arith.constant"() {value = 0 : i32} : () -> i32
      "affine.store"(%38, %5, %arg0) {map = #map0, to = "src", unsigned} : (i32, memref<8192xi32>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "i0", lower_bound = #map1, op_name = "src", step = 1 : i32, upper_bound = #map2} : () -> ()
    %6 = "memref.alloc"() {name = "dst", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<8192xi32>
    "affine.for"() ({
    ^bb0(%arg0: index):
      %38 = "arith.constant"() {value = 0 : i32} : () -> i32
      "affine.store"(%38, %6, %arg0) {map = #map0, to = "dst", unsigned} : (i32, memref<8192xi32>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "i0", lower_bound = #map1, op_name = "dst", step = 1 : i32, upper_bound = #map2} : () -> ()
    %7 = "memref.alloc"() {name = "v", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi128>
    %8 = "arith.constant"() {value = 0 : i32} : () -> i32
    %9 = "arith.extsi"(%8) {unsigned} : (i32) -> i128
    "affine.store"(%9, %7, %4) {map = #map0, to = "v", unsigned} : (i128, memref<1xi128>, index) -> ()
    %10 = "memref.alloc"() {name = "count", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %11 = "arith.constant"() {value = 1 : i32} : () -> i32
    "affine.store"(%11, %10, %3) {map = #map0, to = "count", unsigned} : (i32, memref<1xi32>, index) -> ()
    %12 = "memref.alloc"() {name = "src_off", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %13 = "arith.constant"() {value = 0 : i32} : () -> i32
    "affine.store"(%13, %12, %2) {map = #map0, to = "src_off", unsigned} : (i32, memref<1xi32>, index) -> ()
    %14 = "memref.alloc"() {name = "dst_off", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %15 = "arith.constant"() {value = 0 : i32} : () -> i32
    "affine.store"(%15, %14, %1) {map = #map0, to = "dst_off", unsigned} : (i32, memref<1xi32>, index) -> ()
    %16 = "memref.alloc"() {name = "assert_cond", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi1>
    %17 = "affine.load"(%12) {from = "src_off", map = #map1, unsigned} : (memref<1xi32>) -> i32
    %18 = "affine.load"(%10) {from = "count", map = #map1, unsigned} : (memref<1xi32>) -> i32
    %19 = "arith.constant"() {value = 4 : i32} : () -> i32
    %20 = "arith.extui"(%18) : (i32) -> i64
    %21 = "arith.extsi"(%19) : (i32) -> i64
    %22 = "arith.muli"(%20, %21) : (i64, i64) -> i64
    %23 = "arith.extui"(%17) : (i32) -> i65
    %24 = "arith.extsi"(%22) : (i64) -> i65
    %25 = "arith.addi"(%23, %24) : (i65, i65) -> i65
    %26 = "arith.constant"() {value = 8192 : i32} : () -> i32
    %27 = "arith.extsi"(%26) : (i32) -> i65
    %28 = "arith.cmpi"(%25, %27) {predicate = 3 : i64} : (i65, i65) -> i1
    "affine.store"(%28, %16, %0) {map = #map0, to = "assert_cond", unsigned} : (i1, memref<1xi1>, index) -> ()
    %29 = "affine.load"(%16) {from = "assert_cond", map = #map1, unsigned} : (memref<1xi1>) -> i1
    %30 = "arith.constant"() {value = 0 : i32} : () -> i32
    %31 = "arith.extui"(%29) : (i1) -> i32
    %32 = "arith.cmpi"(%31, %30) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%32) ({
      %38 = "affine.load"(%12) {from = "src_off", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %39 = "affine.load"(%10) {from = "count", map = #map1, unsigned} : (memref<1xi32>) -> i32
      %40 = "arith.constant"() {value = 4 : i32} : () -> i32
      %41 = "arith.extui"(%39) : (i32) -> i64
      %42 = "arith.extsi"(%40) : (i32) -> i64
      %43 = "arith.muli"(%41, %42) : (i64, i64) -> i64
      %44 = "arith.extui"(%38) : (i32) -> i65
      %45 = "arith.extsi"(%43) : (i64) -> i65
      %46 = "arith.addi"(%44, %45) : (i65, i65) -> i65
      "hcl.print"(%46) {format = "\0A\0AAssertion failed : copyN: src index (%d) > size (8192)\0A\0A\0A", signedness = "_"} : (i65) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    %33 = "arith.constant"() {value = 0 : i32} : () -> i32
    %34 = "arith.index_cast"(%33) {unsigned} : (i32) -> index
    %35 = "arith.index_cast"(%39) {unsigned} : (i32) -> index
    %36 = "arith.constant"() {unsigned, value = 1 : index} : () -> index
    "scf.for"(%34, %35, %36) ({
    ^bb0(%arg0: index):
      %38 = "arith.constant"() {value = 0 : i32} : () -> i32
      "memref.store"(%38, %6, %arg0) {to = "dst", unsigned} : (i32, memref<8192xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) {loop_name = "i", op_name = "tensor_2"} : (index, index, index) -> ()
    %37 = "memref.alloc"() {name = "tensor_3", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<2xi32>
    "affine.for"() ({
    ^bb0(%arg0: index):
      %38 = "arith.constant"() {value = 0 : i32} : () -> i32
      "affine.store"(%38, %37, %arg0) {map = #map0, to = "tensor_3", unsigned} : (i32, memref<2xi32>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "i", lower_bound = #map1, op_name = "tensor_3", step = 1 : i32, upper_bound = #map3} : () -> ()
    "func.return"(%37) : (memref<2xi32>) -> ()
  }) {function_type = () -> memref<2xi32>, itypes = "", otypes = "u", sym_name = "top"} : () -> ()
}) : () -> ()

