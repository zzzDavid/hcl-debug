# Read and Write Files in MLIR

I added a runtime library to support reading data from a file to initialize a memref and writing the data in a memref to an output file.

The available function prototypes:

Reading a file:
```mlir
func.func private @readMemrefI32(memref<*xi32>, !llvm.ptr<i8>)
func.func private @readMemrefI64(memref<*xi64>, !llvm.ptr<i8>)
func.func private @readMemrefF32(memref<*xf32>, !llvm.ptr<i8>)
func.func private @readMemrefF64(memref<*xf64>, !llvm.ptr<i8>)
```
Writing a file:
```mlir
func.func private @writeMemrefI32(memref<*xi32>, !llvm.ptr<i8>)
func.func private @writeMemrefI64(memref<*xi64>, !llvm.ptr<i8>)
func.func private @writeMemrefF32(memref<*xf32>, !llvm.ptr<i8>)
func.func private @writeMemrefF64(memref<*xf64>, !llvm.ptr<i8>)
```

The first argument is an unranked memref, obtained by casting a regular memref like this:
```mlir
%0 = memref.alloc() : memref<2x2xi64>
%1 = memref.cast %0 : memref<2x2xi64> to memref<*xi64>
```

The second argument is a pointer to a char string. To create such pointer we need three steps:
1. create a global variable with the string
2. get the address of the global variable
3. get the pointer to the first character of the string

For example:
```mlir
llvm.mlir.global internal constant @filename_f32("/home/nz264/shared/mlir/debug/read_write_file/2x2_f32.txt\00") // path string has 58 characters
%2 = llvm.mlir.addressof @filename_i64 : !llvm.ptr<array<58xi8>> // NOTICE: array length is the number of characters
%3 = llvm.mlir.constant(0 : index) : i64
%4 = llvm.getelementptr %2[%3, %3] : (!llvm.ptr<array<58xi8>>, i64, i64) -> !llvm.ptr<i8> // NOTICE: array length is the number of characters
call @readMemrefI64(%1, %4) : (memref<*xi64>, !llvm.ptr<i8>) -> ()
```

# Run demo

Check the `demo.mlir` for a working example.

To compile it, first replace the absolute path strings, and update the string sizes.
Then, run `run.sh`, which should output a binary `demo`. 

Executing `./demo` has the expected output:

## Lesson learned

LLVM string must have `\00` as string terminator, it's the same thing as `\0` in C (null character).

e.g.
```mlir
    llvm.mlir.global internal constant @filename_i64("/home/nz264/shared/mlir/debug/read_write_file/2x2_i64.txt\00") // path string has 58 characters
```