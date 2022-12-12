import heterocl as hcl

# First, we need a set of typing rules
# Then, we need to specify what operations each rule applies to

# the conditions
# 1. the type of operation
# 2. the type of the inputs


# unit test
def test_type_inf():
    int_add = TypeRule(
        hcl.ir.intermediate.AddOp,
        (hcl.Int, hcl.Int),
        lambda t1, t2: hcl.Int(max(t1.bits, t2.bits))
    )
    print(int_add)


if __name__ == "__main__":
    test_type_inf()