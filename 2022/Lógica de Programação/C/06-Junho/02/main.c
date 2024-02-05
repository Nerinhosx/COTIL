#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <ctype.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int id, cf=0, cm=0;
    float ps, spm, sif;
    char sx;

    do
    {
        printf("Informe sua idade: ");
        scanf("%d", &id);
        if(id == 0)
        {
            break;
        }
        printf("Informe seu peso: ");
        scanf("%f", &ps);
        printf("Informe seu sexo (M/F): ");
        scanf(" %c", &sx);
        printf("-------------------------------------------\n");
        sx = toupper(sx);
        switch(sx)
        {
            case('M'):
                cm++;
                spm += ps;
            break;
            case('F'):
                cf++;
                sif += id;
            break;
        }
    }
    while(id != 0);
    printf("-------------------------------------------\n");
    printf("Total de homens: %d. \nTotal de mulheres: %d. \nMédia das idades femininas: %f. \nMédia dos pesos masculinos: %f.", cm, cf, sif/cf, spm/cm);
    return 0;
}
