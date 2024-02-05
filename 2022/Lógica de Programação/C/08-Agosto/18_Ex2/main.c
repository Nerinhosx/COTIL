#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m[3][3], i, j, s=0, sd=0;

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("Informe um valor: ");
            scanf("%d",&m[i][j]);
            s+=m[i][j];
            if(i==j)
            {
                sd+=m[i][j];
            }
        }
    }
    printf("\nSoma dos valores informados: %d.\nSoma dos valores da diagonal principal: %d.", s, sd);
    return 0;
}
