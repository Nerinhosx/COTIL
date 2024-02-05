#include <stdio.h>
#include <stdlib.h>
#define MAX 5

typedef struct pilha{
    float item[MAX];
    int topo;
}PILHA;

int estaVazia(PILHA p)
{
    return(p.topo==-1);
}

int estaCheia(PILHA p)
{
    return(p.topo==MAX-1);
}

void push(float valor, PILHA *p)
{
    if(estaCheia(*p))
        printf("\n\nErro, Pilha Cheia.");
    else
    {
        p->topo++;
        p->item[p->topo]=valor;
    }
}

float pop(PILHA *p)
{
    float valor=0;
    if(estaVazia(*p))
        printf("\n\nErro, Pilha Vazia.");
    else
    {
        valor=p->item[p->topo];
        p->topo--;
        printf("\nO elemento removido foi: %.2f", valor);
    }
    return valor;
}

void mostra(PILHA p)
{
    for(int i=(p.topo);i>=0;i--)
    {
        printf("\n%.2f", p.item[i]);
    }
}

int main()
{
    PILHA p1;
    p1.topo=-1;
    push(5.5, &p1);
    push(4.6, &p1);
    push(3.2, &p1);
    mostra(p1);
    return 0;
}
