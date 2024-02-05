#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int x, i=1, n=0;

    printf("Informe um valor: ");
    scanf("%d", &x);
    do
    {
        if(x%i==0)
        {
            n++;
        }
        i++;
    }
    while(i<=x);
    if(n==2)
        printf("\nO valor %d É primo!\n", x);
    else
        printf("\nO valor %d NÃO é primo!\n", x);
    return 0;
}
