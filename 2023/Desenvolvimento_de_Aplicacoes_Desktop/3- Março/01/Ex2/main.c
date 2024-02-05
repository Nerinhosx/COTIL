#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, j, x, m[3][4], me[3], ma[4];

    for(i=0;i<3;i++)
    {
        for(j=0;j<4;j++)
        {
            printf("Informe o valor da %dª linha/%dª coluna: ", i+1, j+1);
            scanf("%d", &m[i][j]);
        }
    }

    me[0]=m[0][0];
    me[1]=m[1][0];
    me[2]=m[2][0];
    ma[0]=m[0][0];
    ma[1]=m[0][1];
    ma[2]=m[0][2];
    ma[3]=m[0][3];

    for(i=0;i<3;i++)
    {
        for(j=0;j<4;j++)
        {
            if(m[i][j]<me[i])
                me[i]=m[i][j];
        }
    }

    for(j=0;j<4;j++)
    {
        for(i=0;i<3;i++)
        {
            if(m[i][j]>ma[j])
                ma[j]=m[i][j];
        }
    }

    for(i=0;i<3;i++)
    {
        for(j=0;j<4;j++)
        {
            if((m[i][j]==me[i])&&(m[i][j]==ma[j]))
                printf("\n%d (%d, %d)", me[i], i+1, j+1);
        }
    }
    printf("\n");
    return 0;
}
