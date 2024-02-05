#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    struct Aluno{
    char nome[40];
    char email[35];
    float notas[3];
    float media;
    }al[5];

    setlocale(LC_ALL, "Portuguese");

    int i, j;
    float soma;

    for(i=0;i<5;i++)
    {
        printf("Dados do %dº Aluno: \n--------------------------------\n", i+1);
        printf("Informe seu nome: ");
        gets(al[i].nome);
        printf("Informe seu e-mail: ");
        gets(al[i].email);
        printf("\n");
        for(j=0;j<3;j++)
        {
            printf("Informe a %dª Nota: ", j+1);
            scanf("%f", &al[i].notas[j]);
            soma+=al[i].notas[j];
        }
        al[i].media=soma/3;
        soma=0;
        getchar();
        printf("\n");
    }
    for(i=0;i<5;i++)
    {
        printf("\n\nDados do %dº Aluno: \n\n", i+1);
        printf("Nome: %s", al[i].nome);
        printf("\nE-mail: %s", al[i].email);
        for(j=0;j<3;j++)
        {
            printf("\nNota %d: %.2f.", j+1, al[i].notas[j]);
        }
        printf("\nMédia: %.2f.", al[i].media);
        printf("\n\n");
    }
    return 0;
}
