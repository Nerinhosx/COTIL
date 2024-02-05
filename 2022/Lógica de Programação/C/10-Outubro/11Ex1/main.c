#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int somaN(n)
{
    if(n>0)
        return n+somaN(n-1);
    else
        return 0;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int n, i;

    printf("Informe um número: ");
    scanf("%d", &n);
    i=somaN(n);
    printf("\nA soma dos valores que existem entre 1 e %d é: %d\n", n, i);
    return 0;
}
