"func.func"() ({
^bb0(%arg0: memref<10x10xi32>):
  %0 = "memref.alloc"() {name = "compute_1", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<8x8xi32>
  %1 = "memref.alloc"() {name = "compute_1_reuse_1", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<3x10xi32>
  %2 = "memref.alloc"() {name = "compute_1_reuse_2", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<3x3xi32>
  "affine.for"() ({
  ^bb0(%arg1: index):
    "affine.for"() ({
    ^bb0(%arg2: index):
      "affine.for"() ({
      ^bb0(%arg3: index):
        %6 = "affine.load"(%1, %arg3) {map = affine_map<(d0) -> (1, d0)>} : (memref<3x10xi32>, index) -> i32
        "affine.store"(%6, %1, %arg3) {map = affine_map<(d0) -> (0, d0)>} : (i32, memref<3x10xi32>, index) -> ()
        %7 = "affine.load"(%1, %arg3) {map = affine_map<(d0) -> (2, d0)>} : (memref<3x10xi32>, index) -> i32
        "affine.store"(%7, %1, %arg3) {map = affine_map<(d0) -> (1, d0)>} : (i32, memref<3x10xi32>, index) -> ()
        %8 = "affine.load"(%arg0, %arg2, %arg3) {map = affine_map<(d0, d1) -> (d0, d1)>} : (memref<10x10xi32>, index, index) -> i32
        "affine.store"(%8, %1, %arg3) {map = affine_map<(d0) -> (2, d0)>} : (i32, memref<3x10xi32>, index) -> ()
        "affine.yield"() : () -> ()
      }) {lower_bound = affine_map<() -> (0)>, spatial, step = 1 : index, upper_bound = affine_map<() -> (10)>} : () -> ()
      "affine.if"(%arg2) ({
        "affine.for"() ({
        ^bb0(%arg3: index):
          "affine.for"() ({
          ^bb0(%arg4: index):
            %6 = "affine.load"(%2, %arg4) {map = affine_map<(d0) -> (d0, 1)>} : (memref<3x3xi32>, index) -> i32
            "affine.store"(%6, %2, %arg4) {map = affine_map<(d0) -> (d0, 0)>} : (i32, memref<3x3xi32>, index) -> ()
            %7 = "affine.load"(%2, %arg4) {map = affine_map<(d0) -> (d0, 2)>} : (memref<3x3xi32>, index) -> i32
            "affine.store"(%7, %2, %arg4) {map = affine_map<(d0) -> (d0, 1)>} : (i32, memref<3x3xi32>, index) -> ()
            %9 = "affine.apply"(%arg1) {map = affine_map<(d0) -> (d0 * 4)>} : (index) -> index
            %10 = "affine.apply"(%9, %arg3) {map = affine_map<(d0, d1) -> (d1 + d0)>} : (index, index) -> index
            %8 = "affine.load"(%1, %arg4, %10) {map = affine_map<(d0, d1) -> (d0, d1)>} : (memref<3x10xi32>, index, index) -> i32
            "affine.store"(%8, %2, %arg4) {map = affine_map<(d0) -> (d0, 2)>} : (i32, memref<3x3xi32>, index) -> ()
            "affine.yield"() : () -> ()
          }) {lower_bound = affine_map<() -> (0)>, spatial, step = 1 : index, upper_bound = affine_map<() -> (3)>} : () -> ()
          "affine.if"(%arg3) ({
            %6 = "affine.apply"(%arg1) {map = affine_map<(d0) -> (d0 * 4)>} : (index) -> index
            %7 = "affine.apply"(%6, %arg3) {map = affine_map<(d0, d1) -> (d1 + d0)>} : (index, index) -> index
            %8 = "memref.alloc"() {name = "sum_rv", operand_segment_sizes = dense<0> : vector<2xi32>} : () -> memref<1xi32>
            %9 = "arith.constant"() {value = 0 : index} : () -> index
            %10 = "arith.constant"() {value = 0 : i32} : () -> i32
            "affine.store"(%10, %8, %9) {map = affine_map<(d0) -> (d0)>, to = "sum_rv"} : (i32, memref<1xi32>, index) -> ()
            "affine.for"() ({
            ^bb0(%arg4: index):
              "affine.for"() ({
              ^bb0(%arg5: index):
                %13 = "affine.load"(%2, %arg4, %arg5) {map = affine_map<(d0, d1) -> (d0, d1)>} : (memref<3x3xi32>, index, index) -> i32
                %14 = "affine.load"(%8, %9) {from = "sum_rv", map = affine_map<(d0) -> (d0)>} : (memref<1xi32>, index) -> i32
                %15 = "arith.addi"(%13, %14) : (i32, i32) -> i32
                "affine.store"(%15, %8, %9) {map = affine_map<(d0) -> (d0)>, to = "sum_rv"} : (i32, memref<1xi32>, index) -> ()
                "affine.yield"() : () -> ()
              }) {loop_name = "rx_1", lower_bound = affine_map<() -> (0)>, reduction, step = 1 : index, upper_bound = affine_map<() -> (3)>} : () -> ()
              "affine.yield"() : () -> ()
            }) {loop_name = "rx_0", lower_bound = affine_map<() -> (0)>, reduction, step = 1 : index, upper_bound = affine_map<() -> (3)>} : () -> ()
            %11 = "arith.constant"() {value = 0 : index} : () -> index
            %12 = "affine.load"(%8, %11) {from = "sum_rv", map = affine_map<(d0) -> (d0)>} : (memref<1xi32>, index) -> i32
            "affine.store"(%12, %0, %arg2, %7) {map = affine_map<(d0, d1) -> (d0, d1 - 2)>} : (i32, memref<8x8xi32>, index, index) -> ()
            "affine.yield"() : () -> ()
          }, {
          }) {condition = affine_set<(d0) : (d0 - 2 >= 0)>} : (index) -> ()
          "affine.yield"() : () -> ()
        }) {loop_name = "x.inner", lower_bound = affine_map<() -> (0)>, step = 1 : index, upper_bound = affine_map<() -> (10)>} : () -> ()
        "affine.yield"() : () -> ()
      }, {
      }) {condition = affine_set<(d0) : (d0 - 2 >= 0)>} : (index) -> ()
      "affine.yield"() : () -> ()
    }) {loop_name = "y", lower_bound = affine_map<() -> (0)>, step = 1 : index, upper_bound = affine_map<() -> (10)>} : () -> ()
    "affine.yield"() : () -> ()
  }) {loop_name = "x.outer", lower_bound = affine_map<() -> (0)>, op_name = "compute_1", step = 1 : index, upper_bound = affine_map<() -> (2)>} : () -> ()
  %3 = "hcl.create_op_handle"() {op_name = "compute_1"} : () -> !hcl.OpHandle
  %4 = "hcl.create_loop_handle"(%3) {loop_name = "x.inner"} : (!hcl.OpHandle) -> !hcl.LoopHandle
  %5 = "hcl.reuse_at"(%1, %4) : (memref<3x10xi32>, !hcl.LoopHandle) -> memref<3x3xi32>
  "func.return"(%0) : (memref<8x8xi32>) -> ()
}) {function_type = (memref<10x10xi32>) -> memref<8x8xi32>, itypes = "s", otypes = "s", sym_name = "top"} : () -> ()
