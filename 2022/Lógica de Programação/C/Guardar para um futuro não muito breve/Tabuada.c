#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int c, lim;

    printf("Informe um número para ver sua tabuada: ");
    scanf("%d", &lim);
    for(c=0;c<=10;c++)
    {
        printf("%d X %d = %d \n", lim, c, lim*c);
    }
    return 0;
}
