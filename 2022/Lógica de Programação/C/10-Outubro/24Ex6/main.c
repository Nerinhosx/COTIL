#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 15

typedef struct pilha{
    int item[MAX];
    int topo;
}Pilha;

void TPilha(Pilha *p, int vet[])
{
    int i;

    for(i=0;i<MAX;i++)
    {
        if(vet[i]%2==0)
        {
            p->topo++;
            p->item[p->topo]=vet[i];
        }
        else
        {
            if(p->topo>-1)
            {
                p->topo--;
            }
            else
            {
                continue;
            }
        }
    }
}

void imprimePilha(Pilha *p)
{
    printf("\nValores da Pilha: \n");
    while(p->topo>-1)
    {
        printf("%d\n", p->item[p->topo]);
        p->topo--;
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    Pilha p;
    int vet[MAX], i;

    p.topo=-1;

    printf("Informe os valores do vetor: \n");
    for(i=0;i<MAX;i++)
    {
        printf("Posição %d: ", i+1);
        scanf("%d", &vet[i]);
    }

    TPilha(&p, vet);
    imprimePilha(&p);
    return 0;
}
