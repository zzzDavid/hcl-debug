#!/bin/bash

mlir-opt main.mlir \
    --lower-affine \
    --convert-scf-to-cf \
    --convert-cf-to-llvm \
    --convert-memref-to-llvm \
    --convert-arith-to-llvm \
    --convert-func-to-llvm \
    --reconcile-unrealized-casts \
| mlir-cpu-runner -e main --O1 \
    --entry-point-result=void \
    --shared-libs=/work/shared/users/phd/nz264/llvm-project/build/lib/libmlir_c_runner_utils.so \
    --shared-libs=/work/shared/users/phd/nz264/llvm-project/build/lib/libmlir_runner_utils.so