#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 3

typedef struct fila{
    float item[MAX];
    int fim;
}Fila;

int estaCheia(Fila f)
{
    return(f.fim==(MAX-1));
}

int estaVazia(Fila f)
{
    return(f.fim==-1);
}

void enfileira(float valor, Fila *f)
{
    if(estaCheia(*f))
    {
        printf("\n\nErro. Fila cheia.\n");
    }
    else
    {
        f->fim++;
        f->item[f->fim]=valor;
    }
}

float desenfila(Fila *f)
{
    float valor=0;
    if(estaVazia(*f))
    {
        printf("\n\nErro. Está vazia.\n");
    }
    else
    {
        valor=f->item[0];
        for(int i=0;i<=f->fim;i++)
        {
            f->item[i]=f->item[i+1];
        }
        f->fim--;
    }
    return valor;
}

void mostra(Fila f)
{
    if(estaVazia(f))
    {
        printf("\n\nFila vazia - Nada para mostrar\n");
    }
    else
    {
        for(int i=0;i<=f.fim;i++)
        {
            printf("%.1f ", f.item[i]);
        }
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    Fila f;

    f.fim=-1;

    printf("Inserindo elementos na fila\n");
    enfileira(5.7, &f);
    mostra(f);
    printf("\n");
    enfileira(3.2, &f);
    mostra(f);
    printf("\n");
    enfileira(1.6, &f);
    mostra(f);
    printf("\n");
    enfileira(1.5, &f);
    mostra(f);
    printf("\nTirando elementos da fila.");
    float x=desenfila(&f);
    printf("\n");
    mostra(f);
    x=desenfila(&f);
    printf("\n");
    mostra(f);
    x=desenfila(&f);
    printf("\n");
    mostra(f);
    return 0;
}
