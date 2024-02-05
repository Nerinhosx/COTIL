#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <locale.h>
int main()
{
    char sexo, nome[40];
    setlocale(LC_ALL, "Portuguese");

    printf("Informe seu nome: ");
    gets(nome);
    printf("Qual seu Sexo? [F/M]: ");
    scanf("%c", &sexo);
    sexo = toupper(sexo);
    printf("O sexo de %s é %c", nome, sexo);
    return 0;
}
