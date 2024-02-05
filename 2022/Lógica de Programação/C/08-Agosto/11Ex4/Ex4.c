#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, c, vet1[10], vet2[10], vet3[20];

    for(i=0;i<10;i++)
    {
        printf("Informe o %dº valor do 1º Vetor: ", i+1);
        scanf("%d", &vet1[i]);
    }
    for(i=0;i<10;i++)
    {
        if(i==0)
        {
            printf("\nInforme o %dº valor do 2º Vetor: ", i+1);
            scanf("%d", &vet2[i]);
        }
        else
        {
            printf("Informe o %dº valor do 2º Vetor: ", i+1);
            scanf("%d", &vet2[i]);
        }
    }
    i=2;
    for(c=0;c<20;c++)
    {
        if(c%2==0)
        {
            vet3[c]=vet1[c/i];
        }
        else
        {
            vet3[c]=vet2[c/i];
        }
        printf("\nVetor de intercalação posição %d: %d", c+1, vet3[c]);
    }
    return 0;
}
