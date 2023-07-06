#include <stdio.h>

__global__ void hello_from_gpu(void) {
    printf("Hello world from GPU!\n");
}

int main(void) {
    // hello world from cpu
    printf("Hello world from CPU!\n");
    // hello world from gpu
    hello_from_gpu<<<1,10>>>();
    cudaDeviceReset();
    return 0;
}