#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

typedef struct pilha{
    int item[MAX];
    int topo;
}P;

int Cheia(P p1, P p2)
{
    if((p1.topo==MAX-1)&&(p2.topo==MAX-1))
    {
        printf("\nImpossível empilhar!\n");
        return 1;
    }
    else
        return 0;
}

int Vazia(P p1, P p2)
{
    if((p1.topo==-1)&&(p2.topo==-1))
    {
        printf("\nImpossível retirar! Pilhas vazias.\n");
        return 1;
    }
    else
        return 0;
}

void pushP(P *p1, P *p2, int cod)
{
    if(p1->topo<p2->topo)
    {
        p1->topo++;
        p1->item[p1->topo]=cod;
    }
    else
    {
        if(p2->topo<p1->topo)
        {
            p2->topo++;
            p2->item[p2->topo]=cod;
        }
        else
        {
            p1->topo++;
            p1->item[p1->topo]=cod;
        }
    }
}

void popP(P *p1, P *p2, int cod)
{
    if(p1->item[p1->topo]==cod)
    {
        p1->topo--;
    }
    else
    {
        if(p2->item[p2->topo]==cod)
        {
            p2->topo--;
        }
        else
        {
            printf("Impossível retirar. Container indisponível para retirada.\n");
        }
    }
}

void mostra(P p1, P p2)
{
    int i;
    if(Vazia(p1, p2)==1)
    {
        printf("\nAmbas pilhas estão vazias!\n");
    }
    else
    {
        printf("\nPilha 1: \n");
        for(i=p1.topo;i>-1;i--)
        {
            printf("%d\n", p1.item[i]);
        }
        printf("\nPilha 2: \n");
        for(i=p2.topo;i>-1;i--)
        {
            printf("%d\n", p2.item[i]);
        }
        printf("\n");
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    P p1, p2;
    int cod, a, b=0, c;

    p1.topo=-1;
    p2.topo=-1;

    do
    {
        printf("Informe a operação que deseja efetuar:\n[1] Empilhar.\n[2] Remover.\n[3] Mostrar pilhas.\n[4] Encerrar programa.\nR: ");
        scanf("%d", &c);
        switch(c)
        {
        case 1:
            a=Cheia(p1, p2);
            if(a==0)
            {
                printf("\nInforme o código do container a ser empilhado: ");
                scanf("%d", &cod);
                printf("\n");
                pushP(&p1, &p2, cod);
            }
            break;
        case 2:
            a=Vazia(p1, p2);
            if(a==0)
            {
                printf("\nInforme o código do container a ser removido: ");
                scanf("%d", &cod);
                printf("\n");
                popP(&p1, &p2, cod);
            }
            break;
        case 3:
            mostra(p1, p2);
            break;
        case 4:
            b=1;
            break;
        }
    }
    while(b!=1);
    return 0;
}
