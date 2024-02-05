#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define MAX 30

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char nome[MAX];
    int i;

    printf("Informe seu nome: ");
    gets(nome);
    printf("\nAs quatro primeiras letras do seu nome são: ");
    for(i=0;i<4;i++)
    {
        printf("%c", nome[i]);
    }
    return 0;
}
