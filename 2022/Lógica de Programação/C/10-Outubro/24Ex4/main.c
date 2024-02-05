#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

typedef struct pilha{
    int placa[MAX];
    int topo;
}Pilha;

void push(Pilha *c)
{
    int i;

    printf("Informe os n�meros das placas dos carros que est�o estacionados: \n");
    for(i=0;i<MAX;i++)
    {
        c->topo++;
        printf("Posi��o %d: ", i+1);
        scanf("%d", &c->placa[i]);
    }
}

int veRua(Pilha c, int p)
{
    int i;

    for(i=0;i<MAX;i++)
    {
        if(c.placa[i]==p)
        {
            return i;
            break;
        }
        else
        {
            if(i==MAX-1)
                return 5;
        }
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    Pilha c;
    int p, x;

    c.topo=-1;
    push(&c);
    printf("\nInforme uma placa(apenas os n�meros): ");
    scanf("%d", &p);
    x=veRua(c, p);
    if(x!=5)
    {
        if(c.topo==x)
        {
            printf("\nCarro dispon�vel para retirada.\n");
        }
        else
        {
            printf("\nCarros que devem ser retirados para que o carro de placa %d possa ser retirado: ", c.placa[x]);
            for(p=c.topo;p>x;p--)
            {
                printf("\nCarro de placa %d, na posi��o %d.", c.placa[p], p+1);
            }
            printf("\n");
        }
    }
    else
    {
        printf("\nO carro informado n�o est� estacionado nesta rua.\n");
    }
    return 0;
}
