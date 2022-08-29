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