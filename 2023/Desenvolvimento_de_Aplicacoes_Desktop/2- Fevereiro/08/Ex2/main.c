#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    float p;
    int n;

    printf("Informe seu peso: ");
    scanf("%f", &p);
    printf("\n\nEscolha um planeta: \n[1] Mercúrio\n[2] Vênus\n[3] Marte\n[4] Júpiter\n[5] Saturno\n[6] Urano\nR: ");
    scanf("%d", &n);
    switch(n)
    {
        case 1: printf("\nSeu peso em Mercúrio é: %f", p*0.37);
            break;
        case 2: printf("\nSeu peso em Vênus é: %f", p*0.88);
            break;
        case 3: printf("\nSeu peso em Marte é: %f", p*0.38);
            break;
        case 4: printf("\nSeu peso em Júpiter é: %f", p*2.64);
            break;
        case 5: printf("\nSeu peso em Saturno é: %f", p*1.15);
            break;
        case 6: printf("\nSeu peso em Urano é: %f", p*1.17);
            break;
    }
    return 0;
}
