#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, j, min, v[5];

    for(i=0;i<5;i++)
    {
        printf("Informe o valor da %d posição: ", i+1);
        scanf("%d", &v[i]);
    }

    printf("\nO vetor original: \n\n");
    for(i=0;i<5;i++)
    {
        printf("%d\t", v[i]);
    }
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
    return 0;
}
