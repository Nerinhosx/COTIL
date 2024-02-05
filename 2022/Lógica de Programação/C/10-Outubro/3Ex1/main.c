#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 3

typedef struct{
    int re;
    int idade;
    float salFx;
    float bonus;
}funcionario;

void leF(funcionario *f)
{
    int i;
    for(i=0;i<MAX;i++)
    {
        printf("Informe de dados do Funcionário %d: \n", i+1);
        printf("RE: ");
        scanf("%d", &f[i].re);
        printf("Idade: ");
        scanf("%d", &f[i].idade);
        if(f[i].idade>40)
        {
            f[i].bonus=200;
        }
        else
        {
            f[i].bonus=0;
        }
        printf("Salário Fixo: ");
        scanf("%f", &f[i].salFx);
        printf("\n\n");
    }
}

void mostraF(funcionario *f)
{
    int i;
    for(i=0;i<MAX;i++)
    {
        printf("\n\nFuncionário %d:", i+1);
        printf("\nRE: %d", f[i].re);
        printf("\nIdade: %d", f[i].idade);
        printf("\nSalário Fixo: %.2f", f[i].salFx);
        printf("\nBônus: %.2f", f[i].bonus);
    }
}
int main()
{
    setlocale(LC_ALL, "Portuguese");

    funcionario func[MAX];
    leF(func);
    mostraF(func);
    return 0;
}
