// Verification failed, printing generic form
#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (100)>
#map3 = affine_map<(d0) -> (d0, 0)>
#map4 = affine_map<(d0) -> (d0, 1)>
#map5 = affine_map<(d0) -> (d0, 2)>
#map6 = affine_map<(d0) -> (d0, 3)>
#map7 = affine_map<(d0) -> (d0, 4)>
#map8 = affine_map<(d0) -> (d0, 5)>
"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: memref<100xi32>, %arg1: memref<100xi32>, %arg2: memref<100xi32>, %arg3: memref<100x6xi32>):
    %0 = "memref.alloc"() {name = "compute_4", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<100x!hcl.struct<i32, i32, i32>>
    "affine.for"() ({
    ^bb0(%arg4: index):
      %2 = "affine.load"(%arg0, %arg4) {from = "compute_0", map = #map0} : (memref<100xi32>, index) -> i32
      %3 = "affine.load"(%arg1, %arg4) {from = "compute_1", map = #map0} : (memref<100xi32>, index) -> i32
      %4 = "affine.load"(%arg2, %arg4) {from = "compute_2", map = #map0} : (memref<100xi32>, index) -> i32
      %5 = "hcl.struct_construct"(%2, %3, %4) : (i32, i32, i32) -> !hcl.struct<i32, i32, i32>
      "affine.store"(%5, %0, %arg4) {map = #map0, to = "compute_4"} : (!hcl.struct<i32, i32, i32>, memref<100x!hcl.struct<i32, i32, i32>>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "x", lower_bound = #map1, op_name = "compute_4", step = 1 : i32, upper_bound = #map2} : () -> ()
    %1 = "memref.alloc"() {name = "compute_5", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>
    "affine.for"() ({
    ^bb0(%arg4: index):
      %2 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %3 = "hcl.struct_get"(%2) {index = 0 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %4 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %5 = "hcl.struct_get"(%4) {index = 0 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %6 = "arith.extsi"(%3) : (i32) -> i64
      %7 = "arith.extsi"(%5) : (i32) -> i64
      %8 = "arith.muli"(%6, %7) : (i64, i64) -> i64
      %9 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %10 = "hcl.struct_get"(%9) {index = 1 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %11 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %12 = "hcl.struct_get"(%11) {index = 1 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %13 = "arith.extsi"(%10) : (i32) -> i64
      %14 = "arith.extsi"(%12) : (i32) -> i64
      %15 = "arith.muli"(%13, %14) : (i64, i64) -> i64
      %16 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %17 = "hcl.struct_get"(%16) {index = 2 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %18 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %19 = "hcl.struct_get"(%18) {index = 2 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %20 = "arith.extsi"(%17) : (i32) -> i64
      %21 = "arith.extsi"(%19) : (i32) -> i64
      %22 = "arith.muli"(%20, %21) : (i64, i64) -> i64
      %23 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %24 = "hcl.struct_get"(%23) {index = 0 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %25 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %26 = "hcl.struct_get"(%25) {index = 1 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %27 = "arith.extsi"(%24) : (i32) -> i64
      %28 = "arith.extsi"(%26) : (i32) -> i64
      %29 = "arith.muli"(%27, %28) : (i64, i64) -> i64
      %30 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %31 = "hcl.struct_get"(%30) {index = 1 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %32 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %33 = "hcl.struct_get"(%32) {index = 2 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %34 = "arith.extsi"(%31) : (i32) -> i64
      %35 = "arith.extsi"(%33) : (i32) -> i64
      %36 = "arith.muli"(%34, %35) : (i64, i64) -> i64
      %37 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %38 = "hcl.struct_get"(%37) {index = 0 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %39 = "affine.load"(%0, %arg4) {from = "compute_4", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32>
      %40 = "hcl.struct_get"(%39) {index = 2 : i64} : (!hcl.struct<i32, i32, i32>) -> i32
      %41 = "arith.extsi"(%38) : (i32) -> i64
      %42 = "arith.extsi"(%40) : (i32) -> i64
      %43 = "arith.muli"(%41, %42) : (i64, i64) -> i64
      %44 = "hcl.struct_construct"(%8, %15, %22, %29, %36, %43) : (i64, i64, i64, i64, i64, i64) -> !hcl.struct<i64, i64, i64, i64, i64, i64>
      "affine.store"(%44, %1, %arg4) {map = #map0, to = "compute_5"} : (!hcl.struct<i64, i64, i64, i64, i64, i64>, memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "x", lower_bound = #map1, op_name = "compute_5", step = 1 : i32, upper_bound = #map2} : () -> ()
    "affine.for"() ({
    ^bb0(%arg4: index):
      %2 = "affine.load"(%1, %arg4) {from = "compute_5", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32, i32, i32, i32>
      %3 = "hcl.struct_get"(%2) {index = 0 : i64} : (!hcl.struct<i32, i32, i32, i32, i32, i32>) -> i32
      "affine.store"(%3, %arg3, %arg4) {map = #map3, to = "compute_3"} : (i32, memref<100x6xi32>, index) -> ()
      %4 = "affine.load"(%1, %arg4) {from = "compute_5", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32, i32, i32, i32>
      %5 = "hcl.struct_get"(%4) {index = 1 : i64} : (!hcl.struct<i32, i32, i32, i32, i32, i32>) -> i32
      "affine.store"(%5, %arg3, %arg4) {map = #map4, to = "compute_3"} : (i32, memref<100x6xi32>, index) -> ()
      %6 = "affine.load"(%1, %arg4) {from = "compute_5", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32, i32, i32, i32>
      %7 = "hcl.struct_get"(%6) {index = 2 : i64} : (!hcl.struct<i32, i32, i32, i32, i32, i32>) -> i32
      "affine.store"(%7, %arg3, %arg4) {map = #map5, to = "compute_3"} : (i32, memref<100x6xi32>, index) -> ()
      %8 = "affine.load"(%1, %arg4) {from = "compute_5", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32, i32, i32, i32>
      %9 = "hcl.struct_get"(%8) {index = 3 : i64} : (!hcl.struct<i32, i32, i32, i32, i32, i32>) -> i32
      "affine.store"(%9, %arg3, %arg4) {map = #map6, to = "compute_3"} : (i32, memref<100x6xi32>, index) -> ()
      %10 = "affine.load"(%1, %arg4) {from = "compute_5", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32, i32, i32, i32>
      %11 = "hcl.struct_get"(%10) {index = 4 : i64} : (!hcl.struct<i32, i32, i32, i32, i32, i32>) -> i32
      "affine.store"(%11, %arg3, %arg4) {map = #map7, to = "compute_3"} : (i32, memref<100x6xi32>, index) -> ()
      %12 = "affine.load"(%1, %arg4) {from = "compute_5", map = #map0} : (memref<100x!hcl.struct<i32, i32, i32, i32, i32, i32>>, index) -> !hcl.struct<i32, i32, i32, i32, i32, i32>
      %13 = "hcl.struct_get"(%12) {index = 5 : i64} : (!hcl.struct<i32, i32, i32, i32, i32, i32>) -> i32
      "affine.store"(%13, %arg3, %arg4) {map = #map8, to = "compute_3"} : (i32, memref<100x6xi32>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "i0", lower_bound = #map1, step = 1 : i32, upper_bound = #map2} : () -> ()
    "func.return"() : () -> ()
  }) {function_type = (memref<100xi32>, memref<100xi32>, memref<100xi32>, memref<100x6xi32>) -> (), itypes = "ssss", otypes = "", sym_name = "top"} : () -> ()
}) : () -> ()

