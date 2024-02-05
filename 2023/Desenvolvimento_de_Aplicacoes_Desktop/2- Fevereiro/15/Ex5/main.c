#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int v1[9], v2[9], v3[9], v4[9], i;

    printf("Informe os valores do 1º vetor: \n");
    for(i=0;i<9;i++)
    {
        printf("%d: ", i+1);
        scanf("%d", &v1[i]);
    }

    printf("\nInforme os valores do 2º vetor: \n");
    for(i=0;i<9;i++)
    {
        printf("%d: ", i+1);
        scanf("%d", &v2[i]);
    }

    printf("\nInforme os valores do 3º vetor: \n");
    for(i=0;i<9;i++)
    {
        printf("%d: ", i+1);
        scanf("%d", &v3[i]);
    }

    for(i=0;i<9;i++)
    {
        if(i<3)
        {
            v4[i]=v1[i];
        }
        else if(i<6)
            {
                v4[i]=v2[i];
            }
            else if(i<9)
            {
                v4[i]=v3[i];
            }
    }
    printf("\nVetor final: \n");
    for(i=0;i<9;i++)
    {
        printf("%d: %d\n", i+1, v4[i]);
    }
    return 0;
}
