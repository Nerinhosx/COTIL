#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, j, min, v[5], ma;

    for(i=0;i<5;i++)
    {
        v[i]=rand()%50;
    }

    printf("\nO vetor original: \n\n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
    printf("\n\n");

    for(i=0;i<4;i++)
    {
        min=i;
        for(j=(i+1);j<5;j++)
        {
            if(v[j]<v[min])
                min=j;
        }
        if(i!=min)
        {
            int temp=v[i];
            v[i]=v[min];
            v[min]=temp;
        }
    }

    printf("\nVetor Ordenado: \n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
    printf("\n\n");

    for(i=0;i<4;i++)
    {
        ma=i;
        for(j=(i+1);j<5;j++)
        {
            if(v[j]>v[ma])
                ma=j;
        }
        if(i!=ma)
        {
            int temp=v[i];
            v[i]=v[ma];
            v[ma]=temp;
        }
    }
    printf("Vetor Decrescente: \n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
    printf("\n\n");
    return 0;
}
