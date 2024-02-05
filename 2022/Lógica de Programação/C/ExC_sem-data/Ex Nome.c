#include <stdio.h>
#include <stdlib.h>
#include <locale.h> //idioma
#include <ctype.h> //p/ função toupper (maiúsculas)

int main()
{
    setlocale(LC_ALL, "Portuguese");//define idioma
    char letra, nome[40];

    printf("Digite uma letra: ");
    scanf("%c", &letra);
    letra = toupper(letra);// converte para maiúsculo
    printf("A letra digitada foi: %c \n", letra);

    printf("Digite seu nome: ");
    setbuf(stdin,NULL);//limpa o buffer do teclado
    gets(nome);

    printf("Seu nome é: %s \n", nome);
    return 0;
}
