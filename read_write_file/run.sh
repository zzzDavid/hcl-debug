#!/bin/bash

hcl-opt demo.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -O3 -S | \
    llc -O3 -filetype=obj -o demo.o

gcc demo.o \
    -L/work/shared/users/phd/nz264/mlir/hcl-dialect/build/lib/ \
    -lhcl_runtime_utils \
    -L/work/shared/users/phd/nz264/llvm-project/build/lib/ \
    -lmlir_c_runner_utils \
    -lmlir_runner_utils \
    -o demo