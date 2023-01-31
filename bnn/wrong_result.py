import heterocl as hcl
import hlib.bnn as bnn
import numpy as np

packing_factor=32
out_channel = 2
strides = (1, 1)
padding = (1, 1)
in_channel = 1
bitwidth = 1
in_dtype = hcl.Float()
out_dtype = hcl.Float()
in_shape = (1, 1, 3, 3) # n, c, h, w
weight_shape = (2, 1, 3, 3) # o, i, h, w

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
    return bnn.conv2d_nchw(
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
print(s.ast)
with open("conv.mlir", "w") as f:
    f.write(str(hcl.lower(s)))

f = hcl.build(s)

a_np = np.array([[[[2, 3, 7], [4, 5, 9], [9, 6, 0]]]])
b_np = np.array([[[[7, 8, 6], [6, 9, 8], [2, 2, 0]]], [[[7, 4, 3], [9, 1, 9], [7, 7, 6]]]])
# baseline_output = np.array([[[[3., 5., 4.], [5., 8., 5.], [4., 5., 3.]], [[4., 6., 4.], [6., 8., 5.], [4., 5., 3.]]]])

hcl_a = hcl.asarray(a_np, dtype=in_dtype)
hcl_b = hcl.asarray(b_np, dtype=in_dtype)
hcl_c = hcl.asarray(np.zeros((1, 2, 3, 3)), dtype=hcl.Float())

f(hcl_a, hcl_b, hcl_c)

n, c, h, w = in_shape
o, i, kh, kw = weight_shape
# binarize a_np, b_np
a_np = np.where(a_np > 0, 1, -1)
b_np = np.where(b_np > 0, 1, -1)
# pad a_np
a_np = np.pad(a_np, ((0, 0), (0, 0), (1, 1), (1, 1)), 'constant')
# calculate convolution
baseline_output = np.zeros((n, o, h, w))
for i in range(n):
    for j in range(o):
        for k in range(h):
            for l in range(w):
                for m in range(c):
                    for p in range(kh):
                        for q in range(kw):
                            baseline_output[i][j][k][l] += a_np[i][m][k + p][l + q] * b_np[j][m][p][q]


print("c_np: ", hcl_c.asnumpy())
print("baseline: ", baseline_output)