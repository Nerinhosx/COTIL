#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char nome[30];

    printf("Informe um nome: ");
    gets(nome);
    printf("O %s possui %d letras.", nome, strlen(nome));
    return 0;
}
