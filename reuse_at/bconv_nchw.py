import heterocl as hcl
import hlib.bnn as bnn
import numpy as np

hcl.init()
def bnn_conv(INPUT, w_conv1):
    conv1 = bnn.conv2d_nchw(INPUT,w_conv1, padding=[1, 1], name="conv1", out_dtype=hcl.Int(6))
    return conv1

INPUT = hcl.placeholder((1,1,16,16),"input", hcl.UInt(1))
w_conv1 = hcl.placeholder((16,1,3,3),"w_conv1", hcl.UInt(1))
s = hcl.create_schedule([INPUT, w_conv1], bnn_conv)
LB = s.reuse_at(INPUT, s[bnn_conv.conv1], bnn_conv.conv1.axis[2])
WB = s.reuse_at(LB, s[bnn_conv.conv1], bnn_conv.conv1.axis[3])
print(hcl.lower(s))