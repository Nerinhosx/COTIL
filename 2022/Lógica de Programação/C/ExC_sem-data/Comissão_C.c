#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    int cv,cp,qp;
    float pp,c;
    setlocale(LC_ALL, "Portuguese");
    printf("Informe o c�digo do vendedor: ");
    scanf("%d",&cv);
    printf("Informe o c�digo da pe�a: ");
    scanf("%d",&cp);
    printf("Informe o pre�o unit�rio da pe�a %d: ",cp);
    scanf("%f",&pp);
    printf("Informe a quantidade de pe�as %d vendidas pelo vendedor %d: ",cp,cv);
    scanf("%d",&qp);
    c=(qp*pp/100)*5;
    printf("A comiss�o do vendedor %d � de: R$%f",cp,c);
    return 0;
}
