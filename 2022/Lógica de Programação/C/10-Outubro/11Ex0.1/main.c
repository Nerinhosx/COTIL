#include <stdio.h>
#include <stdlib.h>

void crescente(int num)
{
    if(num>0)
    {
        crescente(num-1);
        printf("%d ", num);
    }
}

void decrescente(int num)
{
    if(num>0)
    {
        printf("%d ", num);
        decrescente(num-1);
    }
}

int main()
{
    int numero;
    printf("Informe um valor inteiro: ");
    scanf("%d", &numero);
    crescente(numero);
    printf("\n\n");
    decrescente(numero);
    printf("\n\n");
    return 0;
}
