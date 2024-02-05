#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int c, ra, ap=0;
    float m, mt, n1, n2;

    do
    {
        printf("-------------------------");
        printf("\nInforme o RA: ");
        scanf("%d", &ra);
        if(ra!=0)
        {
            do
            {
                printf("Informe a 1ª nota: ");
                scanf("%f", &n1);
                printf("Informe a 2ª nota: ");
                scanf("%f", &n2);
                if((n1<0) || (n1>10) || (n2<0) || (n2>10))
                {
                    printf("|=======================================|\n|       Nota Inválida informada.        |\n|      Informe as notas novamente.      |\n|=======================================|\n");
                }
            }
            while((0>n1) || (n1>10) || (0>n2) || (n2>10));
            m = (n1 + n2)/2;
            printf("Média: %.2f\n", m);
            printf("-------------------------");
            if(m >= 6)
                ap += 1;
            mt += m;
            c++;
        }
    }
    while(ra!=0);
    printf("\nMédia da Turma: %.2f. \nNúmero de Alunos Aprovados: %d.", mt/c, ap);
    return 0;
}
