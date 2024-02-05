#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    struct vendedor{
    int n_mat;
    float totv;
    char nome[50];
    float cms;
    }vend1;

    printf("Dados do vendedor:\n\n");
    printf("Informe seu nome: ");
    gets(vend1.nome);
    printf("Informe o nº de matrícula: ");
    scanf("%d", &vend1.n_mat);
    printf("Informe o valor total de vendas efetuadas no mês.\n");
    printf("R$ ");
    scanf("%f", &vend1.totv);
    if(vend1.totv>5000)
    {
        vend1.cms=vend1.totv*0.1;
    }
    else
    {
        vend1.cms=0;
    }

    printf("\n\n\nDados do Vendedor 1:\n\n");
    printf("Nome: %s.\nNº de matrícula: %d.\nTotal de Vendas: R$ %.2f.\nComissão: R$ %.2f", vend1.nome, vend1.n_mat, vend1.totv,vend1.cms);
    return 0;
}
