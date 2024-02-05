#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAXLIN 3
#define MAXCOL 3

void atribui(int *mat)
{
    int i, j;

    for(i=0;i<MAXLIN;i++)
    {
        for(j=0;j<MAXCOL;j++)
        {
            printf("Informe o valor da posição [%d,%d]: ", i+1, j+1);
            scanf("%d", &mat[i*MAXCOL+j]);
        }
    }
}

int imprime(int *mat)
{
    int i, j, p=0;

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            if(mat[i*MAXCOL+j]%2==0)
            {
                p++;
            }
        }
    }
    return p;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int mat[MAXLIN][MAXCOL], p;

    atribui(mat);
    p=imprime(mat);
    if(p!=1)
    {
        printf("\nForam informados %d valores pares.", p);
    }
    else
    {
        printf("\nFoi informado %d valor par.", p);
    }
    return 0;
}
