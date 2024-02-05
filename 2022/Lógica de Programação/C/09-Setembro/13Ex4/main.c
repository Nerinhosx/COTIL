#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int ehPar(int n)
{
    int x;

    x=n%2;
    return x;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int v;

    printf("Informe um valor: ");
    scanf("%d", &v);
    if(ehPar(v)==0)
    {
        printf("\nO valor %d é Par.\n", v);
    }
    else
    {
        printf("\nO valor %d é Ímpar.\n", v);
    }
    return 0;
}
