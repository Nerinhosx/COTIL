#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    int cv,cp,qp;
    float pp,c;
    setlocale(LC_ALL, "Portuguese");
    printf("Informe o código do vendedor: ");
    scanf("%d",&cv);
    printf("Informe o código da peça: ");
    scanf("%d",&cp);
    printf("Informe o preço unitário da peça %d: ",cp);
    scanf("%f",&pp);
    printf("Informe a quantidade de peças %d vendidas pelo vendedor %d: ",cp,cv);
    scanf("%d",&qp);
    c=(qp*pp/100)*5;
    printf("A comissão do vendedor %d é de: R$%f",cp,c);
    return 0;
}
