#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m[6][6], i, j, c=0;

    for(i=0;i<6;i++)
    {
        for(j=0;j<6;j++)
        {
            printf("Informe um valor: ");
            scanf("%d",&m[i][j]);
            if(m[i][j]>10)
            {
                c++;
            }
        }
    }
    printf("\n%d",c);
    return 0;
}
