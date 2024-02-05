#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int c, ra, ap=0;
    float m, mt, n1, n2;

    for(c=1; c<=10; c++)
    {
        printf("Aluno %d", c);
        printf("\n-------------------------");
        printf("\nInforme o RA: ");
        scanf("%d", &ra);
        printf("Informe a 1ª nota: ");
        scanf("%f", &n1);
        printf("Informe a 2ª nota: ");
        scanf("%f", &n2);
        m = (n1 + n2)/2;
        printf("Média: %.2f\n", m);
        printf("-------------------------\n");
        if(m >= 6)
            ap += 1;
        mt += m;
    }
    printf("\nMédia da Turma: %.2f. \nNúmero de Alunos Aprovados: %d.", mt/10, ap);
    return 0;
}
