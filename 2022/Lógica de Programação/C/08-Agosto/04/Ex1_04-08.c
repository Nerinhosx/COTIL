#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{
    setlocale (LC_ALL, "Portuguese");

    float peso, alt, imc;

    do
    {
        printf("Informe seu peso, em quilogramas: ");
        scanf("%f", &peso);
        if(peso == 0)
        {
            break;
        }
        printf("Informe sua altura, em metros: ");
        scanf("%f", &alt);
        imc = peso/(alt*alt);
        if (imc <= 30)
        {
            printf("\nSTATUS \n--------------------------------- \nPeso: %f \nAltura: %f \nIMC: %f \nVoc� est� na faixa ideal de peso. \n--------------------------------- \n", peso, alt, imc);
        }
        else
        {
            printf("STATUS \n--------------------------------- \nPeso: %f \nAltura: %f \nIMC: %f \nVoc� n�o est� na faixa ideal de peso. \n--------------------------------- \n", peso, alt, imc);
        }
    }
    while((peso!=0) || (alt!=0));
    return 0;
}
