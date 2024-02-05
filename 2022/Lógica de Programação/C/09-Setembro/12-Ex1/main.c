#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int fat(int n)
{
    int i, f=1;

    if(n==0)
    {
        f=1;
    }
    else
    {
        for(i=n;i>0;i--)
        {
            f*=i;
        }
    }
    return f;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int n, r;

    do
    {
        printf("Informe um valor: ");
        scanf("%d", &n);
        if(n<0)
        {
            printf("Valor inválido informado. Tente novamente.");
        }
    }
    while(n<0);
    r=fat(n);
    printf("\nO fatorial de %d = %d.", n, r);
    return 0;
}
