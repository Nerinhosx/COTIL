#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

typedef struct pilha{
    int item[MAX];
    int topo;
}Pilha;

void maiorP(Pilha p)
{
    int i, c;
    c=p.item[p.topo];

    for(i=0;i<MAX;i++)
    {
        if(c<p.item[i])
        {
            c=p.item[i];
        }
    }
    printf("O maior item da pilha é: %d", c);
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    Pilha p;
    int i;

    p.topo=-1;

    for(i=0;i<MAX;i++)
    {
        p.topo++;
        printf("Informe o elemento da posição %d: ", i+1);
        scanf("%d", &p.item[i]);
        printf("\n");
    }
    maiorP(p);
    return 0;
}
