// Verification failed, printing generic form
#map0 = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: memref<10xi32>, %arg1: memref<10xi32>):
    "affine.for"() ({
    ^bb0(%arg2: index):
      "func.call"(%arg0, %arg1, %arg2) {callee = @update_B} : (memref<10xi32>, memref<10xi32>, index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "i0", lower_bound = #map0, step = 1 : i32, upper_bound = #map1} : () -> ()
    "func.return"() : () -> ()
  }) {function_type = (memref<10xi32>, memref<10xi32>) -> (), itypes = "ss", otypes = "", sym_name = "top"} : () -> ()
  "func.func"() ({
  ^bb0(%arg0: memref<10xi32>, %arg1: memref<10xi32>, %arg2: index):
    %0 = "memref.load"(%arg0, %arg2) {from = "compute_0"} : (memref<10xi32>, index) -> i32
    %1 = "arith.constant"() {value = 1 : i32} : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    "memref.store"(%2, %arg1, %arg2) {to = "compute_1"} : (i32, memref<10xi32>, index) -> ()
    "func.return"() : () -> ()
  }) {function_type = (memref<10xi32>, memref<10xi32>, index) -> (), itypes = "ssu", otypes = "", sym_name = "update_B"} : () -> ()
}) : () -> ()

