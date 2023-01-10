#include <stdio.h>
#include <cstdlib>
#include "kernel.h"

int main() 
{

    float inputs[3] = {-1.8750, 0.3125, 1.1250};
    ap_fixed<5,2> quantized[3];

    for (int i = 0; i < 3; i++) {
        quantized[i] = (ap_fixed<5, 2>) inputs[i];
    }
    printf("quantized: \n");
    for (int i = 0; i < 3; i++) {
        printf("%.4f, ", (float) quantized[i]);
    }
    printf("\n");

    ap_fixed<5, 2> outputs[3] = {0, 0, 0};
    kernel(quantized, outputs);
    
    printf("outputs: \n");
    for (int i = 0; i < 3; i++) {
        printf("%.4f, ", (float) outputs[i]);
    }
    printf("\n");
 
}