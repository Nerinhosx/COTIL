#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, x;

    printf("Informe um valor diferente de 0 (zero): ");
    scanf("%d", &x);

    typedef struct pilha{
        int item[x];
        int topo;
    }Pilha;

    Pilha p;

    p.topo=-1;

    for(i=0;i<x;i++)
    {
        p.topo++;
        printf("Informe o valor da posição %d: ", i+1);
        scanf("%d", &p.item[i]);
    }

    printf("\nPilha Reversa: \n");

    for(i=x-1;i>-1;i--)
    {
        printf("%d ", p.item[i]);
    }
    return 0;
}
