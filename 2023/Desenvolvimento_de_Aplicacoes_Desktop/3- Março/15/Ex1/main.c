#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, tr, v[5], temp;

    //Atribuição aleatória
    srand(time(NULL));
    for(i=0;i<5;i++)
    {
        v[i]=rand()%50;
    }

    //Imprimir vetor
    printf("\nVetor Original: \n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
    printf("\n\n");

    //Ordenação
    do
    {
        tr=0;
        for(i=0;i<5;i++)
        {
            if(v[i]>v[i+1])
            {
                temp=v[i];
                v[i]=v[i+1];
                v[i+1]=temp;
                tr=1;
            }
        }
    }
    while(tr);

    printf("\n\nVetor Ordenado: \n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
    printf("\n\n");

    do
    {
        tr=0;
        for(i=0;i<5;i++)
        {
            if(v[i]<v[i+1])
            {
                temp=v[i];
                v[i]=v[i+1];
                v[i+1]=temp;
                tr=1;
            }
        }
    }
    while(tr);

    printf("\n\nVetor Decrescente: \n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
    printf("\n\n");
    return 0;
}
