#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m[3][3], i, j;

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("Informe um valor: ");
            scanf("%d", &m[i][j]);
        }
    }
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            m[i][j]=m[i][j]*5;
            if(j==2)
            {
                printf(" %d\n", m[i][j]);
            }
            else
            {
                printf(" %d ", m[i][j]);
            }
        }
    }
    return 0;
}
