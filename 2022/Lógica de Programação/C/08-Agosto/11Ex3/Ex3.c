#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i, qp[10], s=0;
    float pp[10], vt[10];

    for(i=0;i<10;i++)
    {
        printf("Informe a quantidade de peças do tipo %d vendidas: ", i+1);
        scanf("%d", &qp[i]);
        printf("Informe o preço da peça do tipo %d: ", i+1);
        scanf("%f", &pp[i]);
        vt[i]=qp[i]*pp[i];
        s+=qp[i];
    }
    for(i=0;i<10;i++)
    {
        printf("\nValor total da compra da peça do tipo %d: %.2f.\n", i+1, vt[i]);
    }
    printf("\nQuantidade total de peças vendidas: %d.\n", s);
    return 0;
}
