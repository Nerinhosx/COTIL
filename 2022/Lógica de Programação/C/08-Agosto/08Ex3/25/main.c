#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i;
    float s;

    struct vendedor{
    int n_mat;
    float totv;
    char nome[50];
    float cms;
    }vend[10];

    for(i=0;i<10;i++)
    {
        printf("Dados do vendedor %d:\n\n", i+1);
        printf("Informe seu nome: ");
        gets(vend[i].nome);
        printf("Informe o nº de matrícula: ");
        scanf("%d", &vend[i].n_mat);
        printf("Informe o valor total de vendas efetuadas no mês.\n");
        printf("R$ ");
        scanf("%f", &vend[i].totv);
        if(vend[i].totv>5000)
        {
            vend[i].cms=vend[i].totv*0.1;
        }
        else
        {
            vend[i].cms=0;
        }
        s+=vend[i].cms;
        getchar();
    }
    for(i=0;i<10;i++)
    {
        printf("Dados do vendedor %d:\n\n", i+1);
        printf("Nome: %s.\n", vend[i].nome);
        printf("Nº de matrícula: %d.\n", vend[i].n_mat);
        printf("Valor total de vendas efetuadas no mês:\n");
        printf("R$ %.2f.\n", vend[i].totv);
    }
    printf("\nValor total de comissão a ser paga: %.2f", s);
    return 0;
}
