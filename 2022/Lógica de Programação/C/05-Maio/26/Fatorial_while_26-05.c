#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{
    setlocale (LC_ALL, "Portuguese");

    int f, c, fat=1;

    do
    {
        printf("Digite um n�mero para descobrir seu fatorial: ");
        scanf ("%d",&f);
    }
    while(f<0);
        printf("\nO fatorial de %d �: ", f);
        for(c = 1; c <= f; c++)
        {
            fat *= c;
        }
    printf ("%d",fat);
    return 0;
}
