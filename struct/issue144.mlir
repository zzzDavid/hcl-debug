#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
"builtin.module"() ({
  "func.func"() ({
    %0 = "arith.constant"() {value = 0 : index} : () -> index
    %1 = "arith.constant"() {value = 0 : index} : () -> index
    %2 = "memref.alloc"() {name = "res", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
    %3 = "arith.constant"() {value = 0 : i32} : () -> i32
    "affine.store"(%3, %2, %1) {map = #map0, to = "res", unsigned} : (i32, memref<1xi32>, index) -> ()
    %4 = "memref.alloc"() {name = "xy", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1x!hcl.struct<i8, i8>>
    %5 = "arith.constant"() {unsigned, value = 52 : i8} : () -> i8
    %6 = "arith.constant"() {unsigned, value = 18 : i8} : () -> i8
    %7 = "hcl.struct_construct"(%5, %6) : (i8, i8) -> !hcl.struct<i8, i8>
    "affine.store"(%7, %4, %0) {map = #map0, to = "xy"} : (!hcl.struct<i8, i8>, memref<1x!hcl.struct<i8, i8>>, index) -> ()
    %8 = "affine.load"(%4) {from = "xy", map = #map1} : (memref<1x!hcl.struct<i8, i8>>) -> !hcl.struct<i8, i8>
    %9 = "hcl.struct_get"(%8) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
    %10 = "arith.constant"() {value = 1 : i32} : () -> i32
    %11 = "arith.extui"(%9) : (i8) -> i32
    %12 = "arith.cmpi"(%11, %10) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%12) ({
      %18 = "arith.constant"() {value = 1 : i32} : () -> i32
      "affine.store"(%18, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
      "scf.yield"() : () -> ()
    }, {
      %18 = "hcl.struct_get"(%8) {index = 1 : i64} : (!hcl.struct<i8, i8>) -> i8
      %19 = "arith.constant"() {value = 2 : i32} : () -> i32
      %20 = "arith.extui"(%18) : (i8) -> i32
      %21 = "arith.cmpi"(%20, %19) {predicate = 0 : i64} : (i32, i32) -> i1
      "scf.if"(%21) ({
        %22 = "arith.constant"() {value = 2 : i32} : () -> i32
        "affine.store"(%22, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
        "scf.yield"() : () -> ()
      }, {
        %22 = "hcl.struct_get"(%8) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
        %23 = "arith.constant"() {value = 3 : i32} : () -> i32
        %24 = "arith.extui"(%22) : (i8) -> i32
        %25 = "arith.cmpi"(%24, %23) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%25) ({
          %26 = "arith.constant"() {value = 3 : i32} : () -> i32
          "affine.store"(%26, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
          "scf.yield"() : () -> ()
        }, {
          %26 = "hcl.struct_get"(%8) {index = 1 : i64} : (!hcl.struct<i8, i8>) -> i8
          %27 = "arith.constant"() {value = 4 : i32} : () -> i32
          %28 = "arith.extui"(%26) : (i8) -> i32
          %29 = "arith.cmpi"(%28, %27) {predicate = 0 : i64} : (i32, i32) -> i1
          "scf.if"(%29) ({
            %30 = "arith.constant"() {value = 4 : i32} : () -> i32
            "affine.store"(%30, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
            "scf.yield"() : () -> ()
          }, {
            %30 = "affine.load"(%4) {from = "xy", map = #map1} : (memref<1x!hcl.struct<i8, i8>>) -> !hcl.struct<i8, i8>
            %31 = "hcl.struct_get"(%30) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
            %32 = "arith.constant"() {value = 5 : i32} : () -> i32
            %33 = "arith.extui"(%31) : (i8) -> i32
            %34 = "arith.cmpi"(%33, %32) {predicate = 0 : i64} : (i32, i32) -> i1
            "scf.if"(%34) ({
              %35 = "arith.constant"() {value = 5 : i32} : () -> i32
              "affine.store"(%35, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
              "scf.yield"() : () -> ()
            }, {
              %35 = "affine.load"(%4) {from = "xy", map = #map1} : (memref<1x!hcl.struct<i8, i8>>) -> !hcl.struct<i8, i8>
              %36 = "hcl.struct_get"(%35) {index = 1 : i64} : (!hcl.struct<i8, i8>) -> i8
              %37 = "arith.constant"() {value = 6 : i32} : () -> i32
              %38 = "arith.extui"(%36) : (i8) -> i32
              %39 = "arith.cmpi"(%38, %37) {predicate = 0 : i64} : (i32, i32) -> i1
              "scf.if"(%39) ({
                %40 = "arith.constant"() {value = 6 : i32} : () -> i32
                "affine.store"(%40, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
                "scf.yield"() : () -> ()
              }, {
                %40 = "arith.constant"() {value = 7 : i32} : () -> i32
                "affine.store"(%40, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
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
    %13 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
    %14 = "hcl.get_bit"(%9, %13) : (i8, index) -> i1
    %15 = "arith.constant"() {value = 1 : i32} : () -> i32
    %16 = "arith.extui"(%14) : (i1) -> i32
    %17 = "arith.cmpi"(%16, %15) {predicate = 0 : i64} : (i32, i32) -> i1
    "scf.if"(%17) ({
      %18 = "arith.constant"() {value = 8 : i32} : () -> i32
      "affine.store"(%18, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
      "scf.yield"() : () -> ()
    }, {
      %18 = "arith.constant"() {unsigned, value = 1 : index} : () -> index
      %19 = "hcl.get_bit"(%18, %18) : (i8, index) -> i1
      %20 = "arith.constant"() {value = 1 : i32} : () -> i32
      %21 = "arith.extui"(%19) : (i1) -> i32
      %22 = "arith.cmpi"(%21, %20) {predicate = 0 : i64} : (i32, i32) -> i1
      "scf.if"(%22) ({
        %23 = "arith.constant"() {value = 9 : i32} : () -> i32
        "affine.store"(%23, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
        "scf.yield"() : () -> ()
      }, {
        %23 = "hcl.struct_get"(%8) {index = 0 : i64} : (!hcl.struct<i8, i8>) -> i8
        %24 = "arith.constant"() {unsigned, value = 0 : index} : () -> index
        %25 = "arith.constant"() {unsigned, value = 1 : index} : () -> index
        %26 = "hcl.get_slice"(%23, %25, %24) : (i8, index, index) -> i8
        %27 = "hcl.bit_reverse"(%26) : (i8) -> i8
        %28 = "arith.constant"() {value = 1 : i32} : () -> i32
        %29 = "arith.extui"(%27) : (i8) -> i32
        %30 = "arith.cmpi"(%29, %28) {predicate = 0 : i64} : (i32, i32) -> i1
        "scf.if"(%30) ({
          %31 = "arith.constant"() {value = 10 : i32} : () -> i32
          "affine.store"(%31, %2) {map = #map1, to = "res", unsigned} : (i32, memref<1xi32>) -> ()
          "scf.yield"() : () -> ()
        }, {
        }) : (i1) -> ()
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%2) : (memref<1xi32>) -> ()
  }) {bit, function_type = () -> memref<1xi32>, itypes = "", otypes = "u", sym_name = "top"} : () -> ()
}) : () -> ()