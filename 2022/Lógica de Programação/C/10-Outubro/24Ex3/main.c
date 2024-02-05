#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

typedef struct pilha{
    int item[MAX];
    int topo;
}Pilha;

void atribuiVetEmP(int vet[], Pilha *p)
{
    int i;

    p->topo=-1;
    for(i=0;i<MAX;i++)
    {
        p->topo++;
        p->item[i]=vet[i];
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    Pilha p;
    int vet[MAX], i;

    printf("Informe os valores do Vetor:\n");
    for(i=0;i<MAX;i++)
    {
        printf("Posição %d: ", i+1);
        scanf("%d", &vet[i]);
    }
    atribuiVetEmP(vet, &p);
    return 0;
}
