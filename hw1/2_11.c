#include <stdio.h>

int main()
{
    int values[32];
    for(int i = 0; i < 32; i++)
    {
        values[i] = 5 * (i+1);
        printf("i: %d value: %d\n", i, values[i]);
    }

    int i = 0;
    int sum = 0;

    for(int i = 0; i<96; i+=3)
    {
        sum+=values[i%32];
    }

    printf("sum %d", sum);
}