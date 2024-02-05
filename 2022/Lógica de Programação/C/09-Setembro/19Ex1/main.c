#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void maiormenor(int *px, int *py)
{
    int t;

    if(*py>*px)
    {
        t=*px;
        *px=*py;
        *py=t;
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int x, y, maior, menor;

    printf("Informe um valor: ");
    scanf("%d", &x);
    printf("Informe outro valor: ");
    scanf("%d", &y);
    maiormenor(&x, &y);
    printf("\n\nMaior valor informado: %d \nMenor valor informado: %d", x, y);
    return 0;
}
