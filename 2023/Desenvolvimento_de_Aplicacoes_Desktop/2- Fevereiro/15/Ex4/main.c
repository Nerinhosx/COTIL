#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int v[16], i, va;

    printf("Informe os valores do vetor: \n");
    for(i=0;i<16;i++)
    {
        printf("  %d: ", i+1);
        scanf("%d", &v[i]);
    }
    for(i=0;i<8;i++)
    {
        va=v[i+8];
        v[i+8]=v[i];
        v[i]=va;
    }
    printf("\nVetor com a inversão de valores: \n");
    for(i=0;i<16;i++)
    {
        printf("  %d: %d\n", i+1, v[i]);
    }
    return 0;
}
