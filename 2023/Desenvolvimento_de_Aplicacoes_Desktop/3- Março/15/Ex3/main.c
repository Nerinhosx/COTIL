#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>
#define MAX 99999

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, j, min, v[MAX], temp;

    for(i=0;i<MAX;i++)
    {
        v[i]=rand()%1000;
        printf("%d-",v[i]);
    }
    printf("\n\n");

    clock_t tempo;
    tempo=clock();

    for(i=0;i<(MAX-1);i++)
    {
        min=i;
        for(j=(i+1);j<MAX;j++)
        {
            if(v[j]<v[min])
                min=j;
        }
        if(i!=min)
        {
            temp=v[i];
            v[i]=v[min];
            v[min]=temp;
        }
    }

    printf("\n\nTempo:%f",(clock()-tempo)/(double)CLOCKS_PER_SEC);

    printf("\n\nVetor Ordenado: \n");
    for(i=0;i<MAX;i++)
    {
        printf("%d-",v[i]);
    }
    printf("\n\n");
    return 0;
}
