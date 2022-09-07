// Issue: https://github.com/cornell-zhang/hcl-dialect-prototype/issues/137


// RUN: hcl-opt --lower-print-ops --jit %s

module {
  func.func @top() -> () {
    %x = arith.constant 22 : i32
    hcl.print(%x) {format="x: %d \n"} : i32
    %y = arith.constant 33 : i32
    hcl.print(%y) {format="empty tuple case, only the string is important\n"} : i32
    return
  }
}
