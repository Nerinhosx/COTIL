#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 3

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, j, m[MAX][MAX];

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("Informe o valor da %dª linha/%dª coluna: ", i+1, j+1);
            scanf("%d", &m[i][j]);
        }
    }
    printf("\nMATRIZ:\n\n");
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("%d\t", m[i][j]);
        }
        printf("\n");
    }
    return 0;
}
