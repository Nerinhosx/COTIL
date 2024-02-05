#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void inic(int *pvet, int n)
{
    int i;

    for(i=0;i<n;i++)
    {
        *(pvet+i)=0;
    }
}

void mostravet(int *pvet, int n)
{
    int i;

    for(i=0;i<n;i++)
    {
        printf("[%d]\n", *(pvet+i));
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int vet[4], i;

    inic(vet, 4);
    for(i=0;i<4;i++)
    {
        printf("Informe um valor: ");
        scanf("%d", &vet[i]);
    }
    mostravet(vet, 4);
    return 0;
}
