#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAXL 3
#define MAXC 4

void inicia(int *mat)
{
    int i, j;
    for(i=0;i<MAXL;i++)
    {
        for(j=0;j<MAXC;j++)
        {
            printf("Informe o valor da posição [%d,%d]: ", i+1, j+1);
            scanf("%d", &mat[i*MAXC+j]);
        }
    }
    printf("\n");
}

void show(int *mat)
{
    int i, j;
    for(i=0;i<MAXL;i++)
    {
        for(j=0;j<MAXC;j++)
        {
            if(mat[i*MAXC+j]<10)
            {
                printf(" %d ", mat[i*MAXC+j]);
            }
            else
            {
                printf("%d ", mat[i*MAXC+j]);
            }
        }
        printf("\n");
    }
}

void dobraM(int *mat)
{
    int i, j;
    for(i=0;i<MAXL;i++)
    {
        for(j=0;j<MAXC;j++)
        {
            mat[i*MAXC+j]*=2;
        }
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int mat[MAXL][MAXC];

    inicia(mat);
    show(mat);
    printf("\n\n");
    dobraM(mat);
    show(mat);
    return 0;
}
