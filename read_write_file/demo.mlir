module {
    llvm.mlir.global internal constant @filename_f32("/home/nz264/shared/mlir/debug/read_write_file/2x2_f32.txt\00") // path string has 58 characters
    llvm.mlir.global internal constant @filename_i64("/home/nz264/shared/mlir/debug/read_write_file/2x2_i64.txt\00") // path string has 58 characters
    llvm.mlir.global internal constant @filename_output("/home/nz264/shared/mlir/debug/read_write_file/output.txt\00") // path string has 57 characters
    // NOTE: \00 is added to the end of the string to indicate the end of the string

    // function prototypes: read and write memref
    func.func private @readMemrefI64(memref<*xi64>, !llvm.ptr<i8>)
    func.func private @readMemrefF32(memref<*xf32>, !llvm.ptr<i8>)
    func.func private @writeMemrefI64(memref<*xi64>, !llvm.ptr<i8>)

    // function prototypes: print memref
    func.func private @printMemrefI64(%ptr : memref<*xi64>)
    func.func private @printMemrefF32(%ptr : memref<*xf32>)


    func.func @top () -> () {

        // Demo 1: Read 2x2 i64 matrix from file, print the content
        %0 = memref.alloc() : memref<2x2xi64>
        %1 = memref.cast %0 : memref<2x2xi64> to memref<*xi64>
        // this is how to set up a string constant in LLVM dialect: 
        // 1. create a global variable with the string
        // 2. get the address of the global variable
        // 3. get the pointer to the first character of the string
        %2 = llvm.mlir.addressof @filename_i64 : !llvm.ptr<array<58xi8>> // NOTICE: array length is the number of characters
        %3 = llvm.mlir.constant(0 : index) : i64
        %4 = llvm.getelementptr %2[%3, %3] : (!llvm.ptr<array<58xi8>>, i64, i64) -> !llvm.ptr<i8> // NOTICE: array length is the number of characters
        call @readMemrefI64(%1, %4) : (memref<*xi64>, !llvm.ptr<i8>) -> ()
        call @printMemrefI64(%1) : (memref<*xi64>) -> ()

        // Demo 2: Write 2x2 i64 matrix to file
        %5 = llvm.mlir.addressof @filename_output : !llvm.ptr<array<57xi8>> // NOTICE: array length is the number of characters
        %6 = llvm.mlir.constant(0 : index) : i64
        %7 = llvm.getelementptr %5[%6, %6] : (!llvm.ptr<array<57xi8>>, i64, i64) -> !llvm.ptr<i8>
        call @writeMemrefI64(%1, %7) : (memref<*xi64>, !llvm.ptr<i8>) -> ()

        // Demo 3: Read 2x2 f32 matrix from file, print the content
        %8 = memref.alloc() : memref<2x2xf32>
        %9 = memref.cast %8 : memref<2x2xf32> to memref<*xf32>
        %10 = llvm.mlir.addressof @filename_f32 : !llvm.ptr<array<58xi8>> // NOTICE: array length is the number of characters
        %11 = llvm.mlir.constant(0 : index) : i64
        %12 = llvm.getelementptr %10[%11, %11] : (!llvm.ptr<array<58xi8>>, i64, i64) -> !llvm.ptr<i8> // NOTICE: array length is the number of characters
        call @readMemrefF32(%9, %12) : (memref<*xf32>, !llvm.ptr<i8>) -> ()
        call @printMemrefF32(%9) : (memref<*xf32>) -> ()

        return
    }
    func.func @main() -> () {
        call @top() : () -> ()
        return
    }
}