#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{
    setlocale (LC_ALL, "Portuguese");

    int f, c, fat=1;

    printf("Digite um n�mero positivo para descobrir seu fatorial: ");
    scanf ("%d",&f);
    printf("\nO fatorial de %d �: ", f);
    for(c = 1; c <= f; c++)
    {
        fat *= c;
    }
    printf ("%d",fat);
    return 0;
}
