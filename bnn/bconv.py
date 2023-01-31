import heterocl as hcl
import hlib.bnn as bnn
import numpy as np

packing_factor=32
out_channel = 6
strides = (2, 2)
padding = (2, 2)
in_channel = 1
bitwidth = 1
in_dtype = hcl.Float()
out_dtype = hcl.Float()
in_shape = (1, in_channel, 28, 28)
weight_shape = (out_channel, in_channel, 5, 5)

def conv(data, weight):
    data = hcl.compute(
        data.shape,
        lambda *args: hcl.select(data[args] > 0, 1, 0),
        name="data",
        dtype=hcl.UInt(1),
    )
    weight = hcl.compute(
        weight.shape,
        lambda *args: hcl.select(weight[args] > 0, 1, 0),
        name="weight",
        dtype=hcl.UInt(1),
    )
    # pack along channel dimension
    # packed_data = hcl.pack(
    #     data,
    #     axis=1,
    #     factor=bitwidth,
    #     name="conv_packed",
    #     dtype=hcl.UInt(bitwidth),
    # )
    # packed_weight = hcl.pack(
    #     weight,
    #     axis=1,
    #     factor=bitwidth,
    #     name="conv_packed",
    #     dtype=hcl.UInt(bitwidth),
    # )
    return bnn.packed_conv2d_nchw(
        data,
        weight,
        strides=strides,
        padding=padding,
        name="conv_conv2d",
        out_dtype=out_dtype,
    )

data = hcl.placeholder(in_shape, "data", dtype=in_dtype)
weight = hcl.placeholder(weight_shape, "weight", dtype=in_dtype)
s = hcl.create_schedule([data, weight], conv)
print(hcl.lower(s))