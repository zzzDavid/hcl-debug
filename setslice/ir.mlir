module {
  func.func @top() attributes {bit, itypes = "", otypes = ""} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() {name = "a96"} : memref<1xi96>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.extsi %c0_i32 {unsigned} : i32 to i96
    affine.store %1, %0[%c0] {to = "a96", unsigned} : memref<1xi96>
    %2 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %true = arith.constant {unsigned} true
    %c64 = arith.constant {unsigned} 64 : index
    %3 = hcl.set_bit(%2 : i96, %c64, %true : i1) -> i96
    affine.store %3, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %4 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %false = arith.constant {unsigned} false
    %c65 = arith.constant {unsigned} 65 : index
    %5 = hcl.set_bit(%4 : i96, %c65, %false : i1) -> i96
    affine.store %5, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %6 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c66 = arith.constant {unsigned} 66 : index
    %7 = hcl.set_bit(%6 : i96, %c66, %false : i1) -> i96
    affine.store %7, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %8 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c67 = arith.constant {unsigned} 67 : index
    %9 = hcl.set_bit(%8 : i96, %c67, %false : i1) -> i96
    affine.store %9, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %10 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c68 = arith.constant {unsigned} 68 : index
    %11 = hcl.set_bit(%10 : i96, %c68, %false : i1) -> i96
    affine.store %11, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %12 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c69 = arith.constant {unsigned} 69 : index
    %13 = hcl.set_bit(%12 : i96, %c69, %true : i1) -> i96
    affine.store %13, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %14 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c70 = arith.constant {unsigned} 70 : index
    %15 = hcl.set_bit(%14 : i96, %c70, %true : i1) -> i96
    affine.store %15, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %16 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c71 = arith.constant {unsigned} 71 : index
    %17 = hcl.set_bit(%16 : i96, %c71, %true : i1) -> i96
    affine.store %17, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %18 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c72 = arith.constant {unsigned} 72 : index
    %19 = hcl.set_bit(%18 : i96, %c72, %false : i1) -> i96
    affine.store %19, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %20 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c73 = arith.constant {unsigned} 73 : index
    %21 = hcl.set_bit(%20 : i96, %c73, %true : i1) -> i96
    affine.store %21, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %22 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c74 = arith.constant {unsigned} 74 : index
    %23 = hcl.set_bit(%22 : i96, %c74, %true : i1) -> i96
    affine.store %23, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %24 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c75 = arith.constant {unsigned} 75 : index
    %25 = hcl.set_bit(%24 : i96, %c75, %true : i1) -> i96
    affine.store %25, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %26 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c76 = arith.constant {unsigned} 76 : index
    %27 = hcl.set_bit(%26 : i96, %c76, %true : i1) -> i96
    affine.store %27, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %28 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c77 = arith.constant {unsigned} 77 : index
    %29 = hcl.set_bit(%28 : i96, %c77, %true : i1) -> i96
    affine.store %29, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %30 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c78 = arith.constant {unsigned} 78 : index
    %31 = hcl.set_bit(%30 : i96, %c78, %false : i1) -> i96
    affine.store %31, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %32 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c79 = arith.constant {unsigned} 79 : index
    %33 = hcl.set_bit(%32 : i96, %c79, %true : i1) -> i96
    affine.store %33, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %34 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c80 = arith.constant {unsigned} 80 : index
    %35 = hcl.set_bit(%34 : i96, %c80, %true : i1) -> i96
    affine.store %35, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %36 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c81 = arith.constant {unsigned} 81 : index
    %37 = hcl.set_bit(%36 : i96, %c81, %false : i1) -> i96
    affine.store %37, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %38 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c82 = arith.constant {unsigned} 82 : index
    %39 = hcl.set_bit(%38 : i96, %c82, %true : i1) -> i96
    affine.store %39, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %40 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c83 = arith.constant {unsigned} 83 : index
    %41 = hcl.set_bit(%40 : i96, %c83, %true : i1) -> i96
    affine.store %41, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %42 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c84 = arith.constant {unsigned} 84 : index
    %43 = hcl.set_bit(%42 : i96, %c84, %false : i1) -> i96
    affine.store %43, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %44 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c85 = arith.constant {unsigned} 85 : index
    %45 = hcl.set_bit(%44 : i96, %c85, %true : i1) -> i96
    affine.store %45, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %46 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c86 = arith.constant {unsigned} 86 : index
    %47 = hcl.set_bit(%46 : i96, %c86, %false : i1) -> i96
    affine.store %47, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %48 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c87 = arith.constant {unsigned} 87 : index
    %49 = hcl.set_bit(%48 : i96, %c87, %true : i1) -> i96
    affine.store %49, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %50 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c88 = arith.constant {unsigned} 88 : index
    %51 = hcl.set_bit(%50 : i96, %c88, %false : i1) -> i96
    affine.store %51, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %52 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c89 = arith.constant {unsigned} 89 : index
    %53 = hcl.set_bit(%52 : i96, %c89, %true : i1) -> i96
    affine.store %53, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %54 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c90 = arith.constant {unsigned} 90 : index
    %55 = hcl.set_bit(%54 : i96, %c90, %true : i1) -> i96
    affine.store %55, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %56 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c91 = arith.constant {unsigned} 91 : index
    %57 = hcl.set_bit(%56 : i96, %c91, %true : i1) -> i96
    affine.store %57, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %58 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c92 = arith.constant {unsigned} 92 : index
    %59 = hcl.set_bit(%58 : i96, %c92, %true : i1) -> i96
    affine.store %59, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %60 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c93 = arith.constant {unsigned} 93 : index
    %61 = hcl.set_bit(%60 : i96, %c93, %false : i1) -> i96
    affine.store %61, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %62 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c94 = arith.constant {unsigned} 94 : index
    %63 = hcl.set_bit(%62 : i96, %c94, %true : i1) -> i96
    affine.store %63, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %64 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %c95 = arith.constant {unsigned} 95 : index
    %65 = hcl.set_bit(%64 : i96, %c95, %true : i1) -> i96
    affine.store %65, %0[0] {to = "a96", unsigned} : memref<1xi96>
    %66 = affine.load %0[0] {from = "a96", unsigned} : memref<1xi96>
    %67 = hcl.get_slice(%66 : i96, %c95, %c64) -> i32
    hcl.print(%67) {format = "%d\0A\00", signedness = "u"} : i32
    return
  }
}
