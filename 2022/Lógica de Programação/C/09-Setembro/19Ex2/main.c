#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

void calculoquadrado(float *pl, float *pa, float *pp, float *pd)
{
    *pa=(*pl)*(*pl);
    *pp=(*pl)*4;
    *pd=(*pl)*sqrt(2);
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    float l, area, perimetro, diagonal;

    printf("Informe o valor do lado do quadrado: ");
    scanf("%f", &l);
    calculoquadrado(&l, &area, &perimetro, &diagonal);
    printf("\nÁrea do quadrado: %.2f \nPerímetro do quadrado: %.2f \nDiagonal do quadrado: %.2f", area, perimetro, diagonal);
    return 0;
}
