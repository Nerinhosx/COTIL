#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void hm(int mnts, int *h, int *m)
{
    *h=mnts/60;
    *m=mnts%60;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int mnts, h, m;

    printf("Informe uma quantidade de minutos: ");
    scanf("%d", &mnts);
    hm(mnts, &h, &m);
    printf("\n\nInformações sobre os valores informados: \n\nMinutos: %d \nHoras e Minutos: %d:%d", mnts, h, m);
    return 0;
}
