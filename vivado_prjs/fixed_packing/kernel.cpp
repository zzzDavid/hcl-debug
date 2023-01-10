#include "kernel.h"

void kernel(ap_fixed<5, 2> inputs[3], ap_fixed<5, 2> outputs[3]) 
{
    // pack three elements
    ap_uint<15> packed;
    for (int i = 0; i < 3; i++) {
        packed(5*i+4, 5*i) = inputs[i](4, 0);
    }

    // unpack three elements
    for (int i = 0; i < 3; i++) {
        outputs[i](4, 0) = packed(5*i+4, 5*i);
    }
}