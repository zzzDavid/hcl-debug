# Lessons Learned Debugging MLIR

## No Defining Op for Block Arg
```cpp
for (auto operand : memAffineIndices) { 
llvm::outs() << "operand: " << operand << "\n";
// if operand is block argument, skip it
if (operand.isa<BlockArgument>())
    continue;

// if the operand's defining op is an affine.apply op, we need to 
// create identical affine.apply ops for the load op 
if (isa<AffineApplyOp>(operand.getDefiningOp())) {
    auto affineApplyOp = cast<AffineApplyOp>(operand.getDefiningOp());
    auto affineMap = affineApplyOp.getAffineMap();
    auto affineExprs = affineMap.getResults();
    auto affineOperands = affineApplyOp.getOperands();
    auto newAffineMap = AffineMap::get(affineExprs.size(), 0, affineExprs,
                                    builder.getContext());
    auto newAffineApplyOp = builder.create<AffineApplyOp>(
        loc, newAffineMap, affineOperands);
    memAffineIndices[memAffineIndices.size() - 1] = newAffineApplyOp;
}
}
```

`BlockArgument` doesn't have a defining op. If you call `.getDefiningOp` on it, you get a SegFault.

## `-1` doesn't always give you 0xFFFF...

I needed an all-one bitmask to implement bitwise NOT with XOR.

I did this to create an all-one bitmask:
```cpp
    Value all_one_mask =
        rewriter.create<mlir::arith::ConstantIntOp>(loc, -1, width);
```
After debugging I found that this `-1` only gives you 64-bit all ones.
When width is larger than that, it has leading zeros. 
The solution I came up with is to sign extend a `0b1` i1 value to any bitwidth we want.
I blame C++ for this issue.

## Debug tricks
1. Python can do anywidth integer, and it has useful APIs on `int` values like `bit_length()` which returns the number of bits needed to represent the integer. It's very useful to use Python for large integer constant calculation, for example when you need to know what 96 bits of 1 is in decimal.

2. Standard debugging flow: make a minimal test case -> lower to the target dialect (usually LLVM dialect) -> pinpoint which operation has unexpected result. A useful way to do this is to replace operation result with LLVM constant operation and fill in the expected result.