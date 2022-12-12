#!/bin/bash

hcl-opt main.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -O3 -S | \
    llc -O3 -filetype=obj -o main.o

hcl-opt func1.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -O3 -S | \
    llc -O3 -filetype=obj -o func1.o

hcl-opt func2.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -O3 -S | \
    llc -O3 -filetype=obj -o func2.o

ar cr libmultimodule.a func1.o func2.o
gcc main.o libmultimodule.a \
    -L/work/shared/users/phd/nz264/llvm-project/build/lib/ \
    -lmlir_c_runner_utils \
    -lmlir_runner_utils \
    -o main