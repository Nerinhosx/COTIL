#include <stdio.h>
#include <stdlib.h>
#include <locale.h> //idioma
#include <ctype.h> //p/ fun��o toupper (mai�sculas)

int main()
{
    setlocale(LC_ALL, "Portuguese");//define idioma
    char letra, nome[40];

    printf("Digite uma letra: ");
    scanf("%c", &letra);
    letra = toupper(letra);// converte para mai�sculo
    printf("A letra digitada foi: %c \n", letra);

    printf("Digite seu nome: ");
    setbuf(stdin,NULL);//limpa o buffer do teclado
    gets(nome);

    printf("Seu nome �: %s \n", nome);
    return 0;
}
