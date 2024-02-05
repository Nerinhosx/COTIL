#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int v1[10], ma, me, i;

    printf("Informe os valores do vetor: \n");
    for(i=0;i<10;i++)
    {
        printf("  %d: ", i+1);
        scanf("%d", &v1[i]);
        if(i==0)
        {
            ma=v1[i];
            me=v1[i];
        }
        else
        {
            if(v1[i]>ma)
            {
                ma=v1[i];
            }
            else
            {
                if(v1[i]<me)
                {
                    me=v1[i];
                }
            }
        }
    }
    printf("\n\nMaior valor: %d\nMenor valor: %d\n", ma, me);
    for(i=0;i<10;i++)
    {
        printf("  %d: %d\n", i+1, v1[i]);
    }
    return 0;
}
