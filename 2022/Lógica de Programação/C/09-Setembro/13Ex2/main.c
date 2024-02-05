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
        printf("\nEssa n�o � uma equa��o de segundo grau.");
    }
    else
    {
        d=delta(a, b, c);
            if(d<0)
            {
                printf("\nA fun��o n�o possui ra�zes reais.");
            }
            else
            {
                r1=raiz1(a, b, d);
                if(d==0)
                {
                    printf("\nAs ra�zes da equa��o s�o iguais. \nA ra�z da equa��o �: %.2f.", r1);
                }
                else
                {
                    r2=raiz2(a, b, d);
                    printf("\nAs ra�zes da equa��o s�o: \nX1= %.2f \nX2= %.2f.\n", r1, r2);
                }
            }
            //c�lculo da(s) ra�z(es)
    }
    //c�lculo do delta
    return 0;
}
