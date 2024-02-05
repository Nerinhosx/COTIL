#include <stdio.h>
#include <stdlib.h>
struct ponto{
                float x;
                float y;
            };
int main(void)
{
    struct ponto p;
    printf("Informe as coordenadas do ponto (x, y): ");
    printf("\nX: ");
    scanf("%f",&p.x);
    printf("Y: ");
    scanf("%f",&p.y);
    printf("\nCoordenada informada: %.2f, %.2f", p.x, p.y);
    return 0;
}
