#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{
    setlocale (LC_ALL, "Portuguese");

    int f, c, fat=1;

    do
    {
        printf("Digite um número para descobrir seu fatorial: ");
        scanf ("%d",&f);
    }
    while(f<0);
        printf("\nO fatorial de %d é: ", f);
        for(c = 1; c <= f; c++)
        {
            fat *= c;
        }
    printf ("%d",fat);
    return 0;
}
