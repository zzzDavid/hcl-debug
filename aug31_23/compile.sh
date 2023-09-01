mkdir -p build
cd build
cp ../segfault.mlir ./example.mlir

mlir-opt example.mlir \
	--convert-linalg-to-affine-loops \
	--one-shot-bufferize \
	--lower-affine \
	--convert-scf-to-cf \
	--convert-cf-to-llvm \
	--convert-func-to-llvm \
	--convert-arith-to-llvm \
	--finalize-memref-to-llvm \
	--reconcile-unrealized-casts \
	-o example.llvm.mlir


mlir-translate example.llvm.mlir \
	--mlir-to-llvmir \
	-o example.ll

llc example.ll -o example.s
as example.s -o example.o
gcc example.o -o example.exe

cd ..