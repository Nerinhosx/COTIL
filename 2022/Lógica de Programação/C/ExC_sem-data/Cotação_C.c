#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{
    float dl, rl, cd;
    setlocale(LC_ALL,"Portuguese");
    printf("Digite a cota��o do d�lar: ");
    scanf("%f",&cd);
    printf("Digite o valor da compra em d�lar: ");
    scanf("%f",&dl);
    rl=(dl * cd);
    printf("O valor da compra em reais foi de %f",rl);
    return 0;
}
