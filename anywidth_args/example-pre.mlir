module {
    func.func @main(%A: memref<3xi9>) -> () attributes {llvm.emit_c_interface} {
        hcl.print_memref(%A) : memref<3xi9>
        return
    }
}