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
    printf("\n\nEscolha um planeta: \n[1] Merc�rio\n[2] V�nus\n[3] Marte\n[4] J�piter\n[5] Saturno\n[6] Urano\nR: ");
    scanf("%d", &n);
    switch(n)
    {
        case 1: printf("\nSeu peso em Merc�rio �: %f", p*0.37);
            break;
        case 2: printf("\nSeu peso em V�nus �: %f", p*0.88);
            break;
        case 3: printf("\nSeu peso em Marte �: %f", p*0.38);
            break;
        case 4: printf("\nSeu peso em J�piter �: %f", p*2.64);
            break;
        case 5: printf("\nSeu peso em Saturno �: %f", p*1.15);
            break;
        case 6: printf("\nSeu peso em Urano �: %f", p*1.17);
            break;
    }
    return 0;
}
