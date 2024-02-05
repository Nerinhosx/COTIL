#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float toCelsius(float f)
{
    float c;

    c=(f-32)*5/9;
    return c;
}

float toFahrenheit(float c)
{
    float f;

    f=(c*9/5)+32;
    return f;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    float celsius, fahrenheit, c, f;

    printf("Informe um valor em fahrenheit: ");
    scanf("%f", &fahrenheit);
    c=toCelsius(fahrenheit);
    printf("\n%.1f F = %.1f C.", fahrenheit, c);
    printf("\n\nInforme um valor em celsius: ");
    scanf("%f", &celsius);
    f=toFahrenheit(celsius);
    printf("\n%.1f C = %.1f F.", celsius, f);
    return 0;
}
