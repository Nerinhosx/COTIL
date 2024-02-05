#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

long int fatorial(int n)
{
    if(n<0)
    {
        return(-1);
    }
    if((n==0)||(n==1))
    {
        return(1);
    }
    else
    {
        return(n*fatorial(n-1));
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    long int fat;
    int a;

    printf("Informe um valor para cálculo do fatorial: ");
    scanf("%d", &a);
    fat=fatorial(a);
    printf("\nFatorial de %d: %d.\n", a, fat);
    return 0;
}
