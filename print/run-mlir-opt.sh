export LLVM_INSTALL_DIR=/work/shared/users/phd/nz264/llvm-project/

mlir-opt print_f32.mlir \
    --lower-affine \
    --convert-scf-to-cf \
    --convert-arith-to-llvm \
    --convert-memref-to-llvm \
    --convert-func-to-llvm \
    --convert-cf-to-llvm \
    --reconcile-unrealized-casts \
    --canonicalize \
| mlir-cpu-runner \
    --shared-libs=$LLVM_INSTALL_DIR/build/lib/libmlir_cuda_runtime.so \
    --shared-libs=$LLVM_INSTALL_DIR/build/lib/libmlir_runner_utils.so \
    --shared-libs=$LLVM_INSTALL_DIR/build/lib/libmlir_c_runner_utils.so \
    --entry-point-result=void