## Multiple Modules

See if multiple MLIR modules can be composed on LLVM backend.

```
hcl-opt temp.mlir -opt --lower-to-llvm |  mlir-translate -mlir-to-llvmir | opt -O3 -S | llc -O3 -filetype=obj -o test.o
```