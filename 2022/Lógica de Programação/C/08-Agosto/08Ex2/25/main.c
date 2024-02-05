#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i;

    struct jogador{
    char nome[50];
    int idade;
    }brasil[11];

    for(i=0;i<11;i++)
    {
        printf("Informe o nome do jogador: ");
        gets(brasil[i].nome);
        printf("Informe a idade do jogador: ");
        scanf("%d",&brasil[i].idade);
        getchar();
    }
    for(i=0;i<11;i++)
    {
        printf("Nome do %dº jogador informado: %s.\nIdade do %dº jogador: %d\n", i+1, brasil[i].nome, i+1, brasil[i].idade);
    }
    return 0;
}
