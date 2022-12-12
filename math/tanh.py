import heterocl as hcl

##############################################################################
# Data Types Supported by HeteroCL
# --------------------------------
# HeteroCL supports both bit-accurate data types and floating points. We show
# some examples below. If no argument is provided, the default bitwidth for
# each type is 32.

hcl.Int(15) # 15-bit signed integer
hcl.UInt(24) # 24-bit unsigned integer
hcl.Fixed(13, 5) # 13-bit signed fixed point with 5 fractional bits
hcl.UFixed(44, 30) # 44-bit unsigned fixed point with 30 fractional bits
hcl.Float(32) # single-precision floating point
hcl.Float(64) # double-precision floating point

##############################################################################
# These data types can be used in ``hcl.init`` to set the default data type

hcl.init(hcl.Float())

##############################################################################
# Data Type Customization
# -----------------------
# Another important hardware customization is data type customization, which
# can be data quantization or downsizing a data type. Data quantization has
# been proved to improve hardware efficiency in many accelerators. In HeteroCL,
# to apply data type customization, we need to use ``hcl.create_scheme``,

A = hcl.placeholder((10,))
def quantization(A):
    return hcl.compute(A.shape, lambda x: hcl.tanh(A[x]), "B")

##############################################################################
# First, let's build the application without applying any quantization scheme.

s = hcl.create_schedule([A], quantization)
ir = str(s.device_module)
with open("./tanh.mlir", "w") as f:
    f.write(ir)
# f = hcl.build(s)