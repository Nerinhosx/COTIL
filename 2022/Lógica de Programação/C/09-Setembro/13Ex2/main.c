#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

int delta(int a, int b, int c)
{
    int d;
    d=(b*b)-(4*a*c);
    return d;
}

int raiz1(int a, int b, int d)
{
    int r1;
    r1=((b*-1)+(sqrt(d)))/2*a;
    return r1;
}

int raiz2(int a, int b, int d)
{
    int r2;
    r2=((b*-1)-(sqrt(d)))/2*a;
    return r2;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int a, b, c, d;
    float r1, r2;

    printf("Informe o valor de a: ");
    scanf("%d", &a);
    printf("Informe o valor de b: ");
    scanf("%d", &b);
    printf("Informe o valor de c: ");
    scanf("%d", &c);
    if(a==0)
    {
        printf("\nEssa não é uma equação de segundo grau.");
    }
    else
    {
        d=delta(a, b, c);
            if(d<0)
            {
                printf("\nA função não possui raízes reais.");
            }
            else
            {
                r1=raiz1(a, b, d);
                if(d==0)
                {
                    printf("\nAs raízes da equação são iguais. \nA raíz da equação é: %.2f.", r1);
                }
                else
                {
                    r2=raiz2(a, b, d);
                    printf("\nAs raízes da equação são: \nX1= %.2f \nX2= %.2f.\n", r1, r2);
                }
            }
            //cálculo da(s) raíz(es)
    }
    //cálculo do delta
    return 0;
}
