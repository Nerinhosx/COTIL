#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

typedef struct pilha{
    int val[MAX];
    int topo;
}Pilha;

void push(Pilha *p)
{
    int i;
    p->topo=-1;
    for(i=0;i<MAX;i++)
    {
        p->topo++;
        printf("Informe o valor na posição %d: ", i+1);
        scanf("%d", &p->val[i]);
    }
    printf("\n");
}

int comparaP(Pilha p1, Pilha p2)
{
    int i, c=0;
    for(i=MAX-1;i>-1;i--)
    {
        if(p1.val[i]==p2.val[i])
        {
            c++;
        }
    }
    return c;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    Pilha p1, p2;
    int c;

    push(&p1);
    push(&p2);
    c=comparaP(p1, p2);
    if(c==4)
    {
        printf("As pilhas, ao todo, se assemelham.");
    }
    else
    {
        printf("As pilhas, ao todo, não se assemelham");
    }
    return 0;
}
