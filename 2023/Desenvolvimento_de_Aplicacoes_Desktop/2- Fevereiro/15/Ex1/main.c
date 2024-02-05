#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int v1[10],v2[10],vs[10], i;

    printf("Informe os valores do 1º vetor: \n");
    for(i=0;i<10;i++)
    {
        printf("  %d: ", i+1);
        scanf("%d", &v1[i]);
    }
    printf("\nInforme os valores do 2º vetor: \n");
    for(i=0;i<10;i++)
    {
        printf("  %d: ", i+1);
        scanf("%d", &v2[i]);
    }
    printf("\nVetores somados: \n");
    for(i=0;i<10;i++)
    {
        vs[i]=v1[i]+v2[i];
        printf("  %d: %d\n", i+1, vs[i]);
    }
    return 0;
}
