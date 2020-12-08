#define XLEN 64
#include <stdio.h>
typedef int uint_xlen_t;

uint_xlen_t clmul(uint_xlen_t rs1, uint_xlen_t rs2)
{
    uint_xlen_t x = 0;
    for (int i = 0; i < XLEN; i++)
        if ((rs2 >> i) & 1)
            x ^= rs1 << i;
    return x;
}

int main()
{
    int result = 0;
    int rs1 = 0xFFFFFFFF;
    int rs2 = 0xFFFFFFFF;
    result = clmul(rs1, rs2);

    printf("%d", result);
    return 0;
}
