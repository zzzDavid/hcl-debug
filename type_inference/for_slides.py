def add_sub_rule():
    ops = (ast.Add, ast.Sub)
    int_rules = {
        (Int, Int) : lambda t1, t2: Int(max(t1.bits, t2.bits) + 1),
        (Int, UInt): lambda t1, t2: Int(max(t1.bits, t2.bits + 1) + 1),
        (Int, Fixed) : lambda t1, t2: Fixed(max(t1.bits, t2.bits-t2.fracs) + t2.fracs + 1, t2.fracs),
        (Int, UFixed) : lambda t1, t2: Fixed(max(t1.bits, t2.bits-t2.fracs + 1) + t2.fracs + 1, t2.fracs),
        (Int, Float) : lambda t1, t2: t2,
    }
    return TypeRule(ops, [int_rules], commutative=True)