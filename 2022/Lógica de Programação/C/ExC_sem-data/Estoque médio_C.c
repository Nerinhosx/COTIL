#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <locale.h>

int main()
{
    int qma, qmi;
    float em;
    setlocale(LC_ALL, "Portuguese");
    printf("Informe a quantidade m�xima do produto X.\n");
    printf("R: ");
    scanf("%i", &qma);
    printf("Informe a quantidade m�nima do produto X\n");
    printf("R: ");
    scanf("%i", &qmi);
    em = (qma + qmi)/ 2;
    printf("O estoque m�dio � de: %f", em);
    return 0;
}
