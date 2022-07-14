module {
  memref.global "private" @A_gv : memref<8xi32> = dense<[0, 1, 2, 3, 4, 5, 6, 7]>
  memref.global "private" @omega_gv : memref<4xi32> = dense<[1, 2, 4, 8]>
  memref.global "private" @M_gv : memref<1xi32> = dense<[17]>
  func @top() { 
    // get inputs
    %arg0 = memref.get_global @A_gv : memref<8xi32> // A
    %arg1 = memref.get_global @omega_gv : memref<4xi32> // omega
    %arg2 = memref.get_global @M_gv : memref<1xi32> // M
    
    %0 = memref.alloc() {name = "alloc:A_b", unsigned} : memref<8xi32> // A_b, initialized
    affine.for %arg3 = 0 to 8 {
      %c0_i32_0 = arith.constant {unsigned} 0 : i32
      affine.store %c0_i32_0, %0[%arg3] {to = "alloc:A_b"} : memref<8xi32>
    } {loop_name = "i0", stage_name = "alloc:A_b"}
    
    // for i in range(len(bmap)):
    //     A_b[i] = A[bmap[i]]
    %1 = affine.load %arg0[0] {from = "A", unsigned} : memref<8xi32>
    affine.store %1, %0[0] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %2 = affine.load %arg0[4] {from = "A", unsigned} : memref<8xi32>
    affine.store %2, %0[1] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %3 = affine.load %arg0[2] {from = "A", unsigned} : memref<8xi32>
    affine.store %3, %0[2] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %4 = affine.load %arg0[6] {from = "A", unsigned} : memref<8xi32>
    affine.store %4, %0[3] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %5 = affine.load %arg0[1] {from = "A", unsigned} : memref<8xi32>
    affine.store %5, %0[4] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %6 = affine.load %arg0[5] {from = "A", unsigned} : memref<8xi32>
    affine.store %6, %0[5] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %7 = affine.load %arg0[3] {from = "A", unsigned} : memref<8xi32>
    affine.store %7, %0[6] {to = "alloc:A_b", unsigned} : memref<8xi32>
    %8 = affine.load %arg0[7] {from = "A", unsigned} : memref<8xi32>
    affine.store %8, %0[7] {to = "alloc:A_b", unsigned} : memref<8xi32>
    
    // size = hcl_ext_scalar(1, "size", dtype=hcl.UInt(32))
    %9 = memref.alloc() {name = "size", unsigned} : memref<1xi32> // initialized to 1
    %c1_i32 = arith.constant {unsigned} 1 : i32
    affine.store %c1_i32, %9[0] {to = "size", unsigned} : memref<1xi32>
    
    // half = hcl_ext_scalar(1, "half", dtype=hcl.UInt(32))
    %10 = memref.alloc() {name = "half", unsigned} : memref<1xi32> // initialized to 1
    affine.store %c1_i32, %10[0] {to = "half", unsigned} : memref<1xi32>
    
    // step = hcl_ext_scalar(N, "step", dtype=hcl.UInt(32))
    %11 = memref.alloc() {name = "step", unsigned} : memref<1xi32> // initialized to 8
    %c8_i32 = arith.constant {unsigned} 8 : i32
    affine.store %c8_i32, %11[0] {to = "step", unsigned} : memref<1xi32>
    
    // k = hcl_ext_scalar(0, "k", dtype=hcl.UInt(32))
    %12 = memref.alloc() {name = "k", unsigned} : memref<1xi32> // initialized to 0
    %c0_i32 = arith.constant {unsigned} 0 : i32
    affine.store %c0_i32, %12[0] {to = "k", unsigned} : memref<1xi32>
    
    //  e = hcl_ext_scalar(0, "e", dtype=hcl.UInt(32))
    %13 = memref.alloc() {name = "e", unsigned} : memref<1xi32> // initialized to 0
    affine.store %c0_i32, %13[0] {to = "e", unsigned} : memref<1xi32>
    
    // l = hcl_ext_scalar(0, "l", dtype=A.dtype)
    %14 = memref.alloc() {name = "l", unsigned} : memref<1xi32> // initialized to 0
    affine.store %c0_i32, %14[0] {to = "l", unsigned} : memref<1xi32>
    
    //  r = hcl_ext_scalar(0, "r", dtype=A.dtype)
    %15 = memref.alloc() {name = "r", unsigned} : memref<1xi32> // initialized to 0
    affine.store %c0_i32, %15[0] {to = "r", unsigned} : memref<1xi32>
    
    // t1 = hcl_ext_scalar(0, "t1", dtype=A.dtype)
    %16 = memref.alloc() {name = "t1", unsigned} : memref<1xi32> // initialized to 0
    affine.store %c0_i32, %16[0] {to = "t1", unsigned} : memref<1xi32>
    
    // t2 = hcl_ext_scalar(0, "t2", dtype=A.dtype)
    %17 = memref.alloc() {name = "t2", unsigned} : memref<1xi32> // initialized to 0
    affine.store %c0_i32, %17[0] {to = "t2", unsigned} : memref<1xi32>
    
    //  with hcl.for_(0, stages):
    affine.for %arg3 = 0 to 3 {
      // half.v = size.v
      %18 = affine.load %9[0] {from = "size", unsigned} : memref<1xi32>
      affine.store %18, %10[0] {to = "half", unsigned} : memref<1xi32>
      
      // size.v = size.v << 1
      %19 = affine.load %9[0] {from = "size", unsigned} : memref<1xi32>
      %c1_i32_0 = arith.constant 1 : i32
      %20 = arith.extui %19 : i32 to i64
      %21 = arith.extui %c1_i32_0 : i32 to i64
      %22 = arith.shli %20, %21 : i64
      %23 = arith.trunci %22 {unsigned} : i64 to i32
      affine.store %23, %9[0] {to = "size", unsigned} : memref<1xi32>
      // hcl.print(%9) {format = "size written to: %.0f, \n"} : memref<1xi32> // print size

      // Up to here is correct
      
      // step.v = step.v >> 1
      %24 = affine.load %11[0] {from = "step", unsigned} : memref<1xi32>
      %25 = arith.shrui %24, %c1_i32_0 {unsigned} : i32
      affine.store %25, %11[0] {to = "step", unsigned} : memref<1xi32>
      
      // i = hcl.scalar(0,"i",dtype=hcl.UInt(32))
      %26 = memref.alloc() {name = "i", unsigned} : memref<1xi32> // initialized to 0
      affine.store %c0_i32, %26[0] {to = "i", unsigned} : memref<1xi32>
      
      // with hcl.while_(i.v < size.v):
      scf.while : () -> () {
        %28 = affine.load %26[0] {from = "i", unsigned} : memref<1xi32> // i
        // %29 = affine.load %9[0] {from = "size", unsigned} : memref<1xi32> // size
        %29 = arith.constant 8 : i32
        // hcl.print(%26) {format = "%.0f, "} : memref<1xi32> // print i
        // hcl.print(%9) {format = "display: %.0f, \n"} : memref<1xi32> // print size
        
        %30 = arith.cmpi ult, %28, %29 : i32
        scf.condition(%30)
      } do {

        // k.v = 0
        %c0_i32_1 = arith.constant 0 : i32
        affine.store %c0_i32_1, %12[0] {to = "k", unsigned} : memref<1xi32>

        // with hcl.for_(i.v, i.v + half.v) as b:
        %28 = affine.load %26[0] {from = "i", unsigned} : memref<1xi32>
        %29 = affine.load %26[0] {from = "i", unsigned} : memref<1xi32>
        %30 = affine.load %10[0] {from = "half", unsigned} : memref<1xi32>
        %31 = arith.addi %29, %30 {unsigned} : i32
        %32 = arith.index_cast %28 : i32 to index
        %33 = arith.index_cast %31 : i32 to index
        %34 = arith.index_cast %c1_i32_0 : i32 to index
        scf.for %arg4 = %32 to %33 step %34 {

          // e.v = b + half.v
          %37 = affine.load %10[0] {from = "half", unsigned} : memref<1xi32>
          %38 = arith.index_cast %37 : i32 to index
          %39 = arith.addi %arg4, %38 : index
          %40 = arith.index_cast %39 {unsigned} : index to i32     
          // introduces undeterministic results
          affine.store %40, %13[0] {to = "e", unsigned} : memref<1xi32>

          // l.v = A_b[b]
          %41 = memref.load %0[%arg4] {from = "alloc:A_b", unsigned} : memref<8xi32>
          affine.store %41, %14[0] {to = "l", unsigned} : memref<1xi32>
          %42 = affine.load %13[0] {from = "e", unsigned} : memref<1xi32>
          
          // r.v = (A_b[e.v] * ω[k.v]) %  M.v
          %43 = arith.index_cast %42 : i32 to index
          %44 = memref.load %0[%43] {from = "alloc:A_b", unsigned} : memref<8xi32>
          %45 = affine.load %12[0] {from = "k", unsigned} : memref<1xi32>
          %46 = arith.index_cast %45 : i32 to index
          %47 = memref.load %arg1[%46] {from = "omega", unsigned} : memref<4xi32>
          %48 = arith.muli %44, %47 {unsigned} : i32
          %49 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %50 = arith.remsi %48, %49 {unsigned} : i32
          affine.store %50, %15[0] {to = "r", unsigned} : memref<1xi32>
          
          // t1.v = (l.v + r.v) % M.v
          %51 = affine.load %14[0] {from = "l", unsigned} : memref<1xi32>
          %52 = affine.load %15[0] {from = "r", unsigned} : memref<1xi32>
          %53 = arith.addi %51, %52 {unsigned} : i32
          %54 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %55 = arith.remsi %53, %54 {unsigned} : i32
          affine.store %55, %16[0] {to = "t1", unsigned} : memref<1xi32>

          // t2.v = (M + l.v - r.v) % M.v
          %56 = affine.load %14[0] {from = "l", unsigned} : memref<1xi32>
          %57 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %58 = arith.addi %57, %56 {unsigned} : i32
          %59 = affine.load %15[0] {from = "r", unsigned} : memref<1xi32>
          %60 = arith.subi %58, %59 {unsigned} : i32
          %61 = affine.load %arg2[0] {from = "M", unsigned} : memref<1xi32>
          %62 = arith.remsi %60, %61 {unsigned} : i32
          affine.store %62, %17[0] {to = "t2", unsigned} : memref<1xi32>

          // A_b[b] = t1.v
          %63 = affine.load %16[0] {from = "t1", unsigned} : memref<1xi32>
          // this one causes a crash
          memref.store %63, %0[%arg4] {to = "alloc:A_b", unsigned} : memref<8xi32>
          
          // A_b[e.v] = t2.v
          %64 = affine.load %17[0] {from = "t2", unsigned} : memref<1xi32>
          %65 = affine.load %13[0] {from = "e", unsigned} : memref<1xi32>
          %66 = arith.index_cast %65 : i32 to index
          memref.store %64, %0[%66] {to = "alloc:A_b", unsigned} : memref<8xi32>
          
          // k.v += step.v
          %67 = affine.load %12[0] {from = "k", unsigned} : memref<1xi32>
          %68 = affine.load %11[0] {from = "step", unsigned} : memref<1xi32>
          %69 = arith.addi %67, %68 {unsigned} : i32
          affine.store %69, %12[0] {to = "k", unsigned} : memref<1xi32>
          scf.yield
        } {loop_name = "loop_1"}

        // i.v += 1
        %35 = affine.load %26[0] {from = "i", unsigned} : memref<1xi32>
        %step = affine.load %11[0] {from = "step", unsigned} : memref<1xi32>
        // %36 = arith.addi %35, %c1_i32_0 : i32
        %36 = arith.addi %35, %step : i32
        affine.store %36, %26[0] {to = "i", unsigned} : memref<1xi32>
        // hcl.print(%9) {format = "%.0f\n"} : memref<1xi32>
        scf.yield
      }
      %27 = hcl.create_loop_handle "loop_1" : !hcl.LoopHandle
    } {loop_name = "loop_0"}

    hcl.print(%0) {format = "%.0f \n"} : memref<8xi32>

    return
  }
}
