#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <ctype.h>

int verificavogal(char z)
{
    int a;

    if((z=='A') || (z=='E') || (z=='I') || (z=='O') || (z=='U'))
    {
        a=1;
    }
    else
    {
        a=0;
    }
    return a;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char x;

    printf("Informe uma letra: ");
    scanf("%c", &x);
    x=toupper(x);
    if(verificavogal(x)==1)
    {
        printf("\nO caractere [%c] é uma vogal.", x);
    }
    else
    {
        printf("\nO caractere [%c] não é uma vogal.", x);
    }
    return 0;
}
