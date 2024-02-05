#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 4

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, j, m[MAX][MAX], n[MAX][MAX], x, y=0, c, l, maior, menor;

    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            printf("Informe o valor da %dª linha/%dª coluna: ", i+1, j+1);
            scanf("%d", &m[i][j]);
            n[i][j]=m[i][j];
            if((i==0)&&(j==0))
            {
                maior=m[i][j];
                menor=m[i][j];
            }
            if(m[i][j]>maior)
            {
                maior=m[i][j];
            }
            if(m[i][j]<menor)
            {
                menor=m[i][j];
            }
        }
    }

    printf("\nMATRIZ:\n\n");
    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            printf("%d\t", m[i][j]);
        }
        printf("\n");
    }
    printf("\nMaior valor informado: %d\n",maior);
    printf("Menor valor informado: %d\n",menor);

    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            x=m[i][j];
            for(l=0;l<4;l++)
            {
                for(c=0;c<4;c++)
                {
                    if(x==n[l][c])
                    {
                        y++;
                        n[l][c]=-1;
                    }
                }
            }
            if(y>1)
                printf("\nO valor %d repete %d vezes.", x, y);
            y=0;
        }
    }
    printf("\n");
    return 0;
}
