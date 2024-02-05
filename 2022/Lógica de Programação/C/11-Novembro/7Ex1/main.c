#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int ContaM(int *n, int x, int y)
{
    int i, cn=0;
    for(i=0;i<x;i++)
    {
        if(n[i]%y==0)
        {
            cn++;
        }
    }
    return cn;
}

void Mostra(int *n, int x, int a, int y)
{
    int i;
    printf("\nVetor: \n");
    for(i=0;i<x;i++)
    {
        printf("%d  ", n[i]);
    }
    printf("\n\nQuantidade de valores múltiplos de %d: %d\n", y, a);
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int *n;
    int i, x, a, y;

    printf("Informe o tamanho do vetor: ");
    scanf("%d", &x);
    n=(int *) malloc(x*sizeof(int));
    printf("\n");
    for(i=0;i<x;i++)
    {
        printf("Informe o valor na %dª posição: ", i+1);
        scanf("%d", &n[i]);
    }
    printf("\nInforme um valor: ");
    scanf("%d", &y);
    a=ContaM(n, x, y);
    Mostra(n, x, a, y);
    free(n);
    return 0;
}
