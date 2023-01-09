#include "kernel.h"

void kernel(ap_fixed<5, 2> inputs[3], ap_fixed<5, 2> outputs[3]) 
{
    // pack three elements
    ap_uint<15> packed;
    union {ap_uint<5> ui; ap_int<5> si;} un;
    for (int i = 0; i < 3; i++) {
        un.si = (ap_int<5>)(inputs[i] * 8);
        packed(5*i+4, 5*i) = un.ui;
    }
    // unpack three elements
    for (int i = 0; i < 3; i++) {
        un.ui = packed(5*i+4, 5*i);
        outputs[i] = ((ap_fixed<5, 2>)(un.si)) / 8;
    }

    // // pack three elements
    // ap_uint<15> packed;
    // for (int i = 0; i < 3; i++) {
    //     packed(5*i+4, 5*i) = (ap_uint<5>)inputs[i];
    // }
    // // unpack three elements
    // for (int i = 0; i < 3; i++) {
    //     outputs[i] = (ap_fixed<5, 1>)packed(5*i+4, 5*i);
    // }
}