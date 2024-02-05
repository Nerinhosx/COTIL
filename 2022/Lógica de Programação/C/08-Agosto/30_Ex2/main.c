#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 500

int main()
{
    setlocale(LC_ALL, "Portuguese");

    struct pop
    {
    int idade;
    char sexo;
    float salario;
    int qf;
    }pp[MAX];

    float ss, ms, mf=0;
    int sf=0, i;

    for(i=0;i<MAX;i++)
    {
        printf("Informe sua Idade: ");
        scanf("%d", &pp[i].idade);
        printf("Informe seu Sexo: ");
        scanf(" %c", &pp[i].sexo);
        printf("Informe seu Salário: ");
        scanf("%f", &pp[i].salario);
        printf("Informe a Quantidade de Filhos: ");
        scanf("%d", &pp[i].qf);
        ss+=pp[i].salario;
        sf+=pp[i].qf;
        printf("\n");
    }
    ms=ss/MAX;
    mf=sf/MAX;
    printf("\n\nMédia de Salário dos habitantes: %.2f.", ms);
    printf("\nMédia de Filhos dos habitantes: %.2f.", mf);
    return 0;
}
