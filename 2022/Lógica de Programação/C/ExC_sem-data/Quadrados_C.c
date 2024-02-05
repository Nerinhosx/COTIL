#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    int n1, n2, n3, n4, s;
    setlocale(LC_ALL, "Portuguese");
    printf("Informe o 1º valor: ");
    scanf("%i", &n1);
    printf("Informe o 2º valor: ");
    scanf("%i", &n2);
    printf("Informe o 3º valor: ");
    scanf("%i", &n3);
    printf("Informe o 4º valor: ");
    scanf("%i", &n4);
    n1 = n1 * n1;
    n2 = n2 * n2;
    n3 = n3 * n3;
    n4 = n4 * n4;
    s = n1 + n2 + n3 + n4;
    printf("O quadrado do 1º valor é: %i\n", n1);
    printf("O quadrado do 2º valor é: %i\n", n2);
    printf("O quadrado do 3º valor é: %i\n", n3);
    printf("O quadrado do 4º valor é: %i\n", n4);
    printf("A soma dos quadrados dos valores digitados é: %i", s);
    return 0;
}
