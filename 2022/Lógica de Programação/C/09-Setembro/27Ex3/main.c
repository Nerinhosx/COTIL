#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAXL 3
#define MAXC 4

void leitura(int *mat)
{
    int i, j;
    for(i=0;i<MAXL;i++)
    {
        for(j=0;j<MAXC;j++)
        {
            printf("Informe o valor na posição [%d,%d]: ", i+1, j+1);
            scanf("%d", &mat[i*MAXC+j]);
        }
    }
}

void veParEImpar(int *mat, int *p, int *ip)
{
    int i, j;
    for(i=0;i<MAXL;i++)
    {
        for(j=0;j<MAXC;j++)
        {
            if(mat[i*MAXC+j]%2==0)
            {
                *p=(*p)+1;
            }
            else
            {
                *ip=(*ip)+1;
            }
        }
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int mat[MAXL][MAXC], p=0, ip=0;

    leitura(mat);
    veParEImpar(mat, &p, &ip);
    printf("\nQuantidade de Valores informados: \nPares: %d \nÍmpares: %d \n", p, ip);
    return 0;
}
