#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m[5][5],i,j;

    for(i=0;i<5;i++)
    {
        for(j=0;j<5;j++)
        {
            printf("Informe um valor:");
            scanf("%d",&m[i][j]);
            if(m[i][j]%2==0)
            {
                m[i][j]=1;
            }
            else
            {
                m[i][j]=-1;
            }
        }
    }
    for(i=0;i<5;i++)
    {
        for(j=0;j<5;j++)
        {
            printf("%d\n",m[i][j]);
        }
    }
    return 0;
}
