#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 10

typedef struct fila{
    int ra[MAX];
    int fim;
}Fila;

int Cheia(Fila f)
{
    if(f.fim==MAX-1)
        return 0;
    else
        return 1;
}

int Vazia(Fila f)
{
    if(f.fim==-1)
        return 0;
    else
        return 1;
}

void Incluir(Fila *f)
{
    f->fim++;
    printf("\nInforme o RA do aluno: ");
    scanf("%d", &f->ra[f->fim]);
    printf("\n");
}

void Atender(Fila *f)
{
    int i;

    printf("\nAtendimento liberado.\nRA: %d.\n\n", f->ra[0]);
    for(i=0;i<f->fim;i++)
    {
        f->ra[i]=f->ra[i+1];
    }
    f->fim--;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int x, a;
    Fila f;
    f.fim=-1;

    do
    {
        printf("Informe a operação a ser realizada: ");
        printf("\n[1] Incluir aluno na fila de atendimento. \n[2] Atender próximo aluno. \n[0] Sair. \nR: ");
        scanf("%d", &x);
        switch(x)
        {
        case 1:
            a=Cheia(f);
            if(a==1)
            {
                Incluir(&f);
            }
            else
            {
                printf("\n\n - ERRO - \nFila cheia.\n\n");
            }
            break;
        case 2:
            a=Vazia(f);
            if(a==1)
            {
                Atender(&f);
            }
            else
            {
                printf("\n\n - ERRO - \nFila vazia.\n\n");
            }
            break;
        case 0:
            printf("\n\nENCERRANDO...\n\n");
            break;
        }
    }
    while(x!=0);
    return 0;
}
