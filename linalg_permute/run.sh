#!/bin/bash

mlir-opt linalg.mlir --linalg-generalize-named-ops \
    --linalg-strategy-interchange-pass="anchor-func=linalg.matmul" \
    -linalg-tile="tile-sizes=32,32,32 loop-type=affine" 
    # -convert-linalg-to-affine-loops \
    # --test-loop-permutation="permutation-map=0,2,1" 
# | mlir-opt --test-loop-permutation="permutation-map=0,3,2,1" 
    # -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm \
    # -convert-func-to-llvm -reconcile-unrealized-casts -affine-parallelize -affine-loop-unroll \
    # | mlir-translate -mlir-to-llvmir | opt -O3 -S | llc -O3 -filetype=obj -o linalg.o
# clang linalg.o -o linalg-app