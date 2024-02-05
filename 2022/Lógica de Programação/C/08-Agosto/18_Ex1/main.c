#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int m[2][2], i, j, s=0;

    for(i=0;i<2;i++)
    {
        for(j=0;j<2;j++)
        {
            printf("Informe um valor: ");
            scanf("%d", &m[i][j]);
            s+=m[i][j];
        }
    }
    for(i=0;i<2;i++)
    {
        for(j=0;j<2;j++)
        {
            if(j==1)
            {
                if(m[i][j]>9 && m[i][j]<99)
                {
                    printf(" %d \n", m[i][j]);
                }
                    else
                    {
                        printf(" %d  \n", m[i][j]);
                    }
            }
            else
            {
                if(m[i][j]>9 && m[i][j]<99)
                {
                    printf(" %d ", m[i][j]);
                }
                    else
                    {
                        printf(" %d  ", m[i][j]);
                    }
            }
        }
    }
    printf("A soma de todos os valores informados é %d.", s);
    return 0;
}
