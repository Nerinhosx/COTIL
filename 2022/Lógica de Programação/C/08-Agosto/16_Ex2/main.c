#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define MAX 30

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char nome[MAX];
    int i, m;

    printf("Informe seu nome: ");
    gets(nome);
    printf("\nLetras em posições ímpares: ");
    for(i=0;i<=strlen(nome);i++)
    {
        if(i%2!=0)
        {
            printf("%c", nome[i]);
        }
    }
    return 0;
}
