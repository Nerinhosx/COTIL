#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float RAdicao(float a, float b)
{
    float r;

    r=a+b;
    return r;
}

float RSubtracao(float a, float b)
{
    float r;

    r=a-b;
    return r;
}

float RMultiplicacao(float a, float b)
{
    float r;

    r=a*b;
    return r;
}

void RDivisao(float a, float b)
{
    float r;

    printf("\n-----------------------------------------\n");
    if(b!=0)
    {
        r=a/b;
        printf("%.2f : %.2f = %.2f\n\n", a, b, r);
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int opcao=0;
    float resultado;

    while(opcao!=5)
    {
        float a1, b1;
        printf("Informe o 1º valor: ");
        scanf("%f", &a1);
        printf("Informe o 2º valor: ");
        scanf("%f", &b1);
        printf("Opções:\n--------------\n1- Adição \n2- Subtração \n3- Multiplicação \n4- Divisão \n5- Sair\n");
        printf("R: ");
        scanf("%d", &opcao);
        switch(opcao)
        {
            case 1: resultado=RAdicao(a1,b1);
                break;
            case 2: resultado=RSubtracao(a1,b1);
                break;
            case 3: resultado=RMultiplicacao(a1,b1);
                break;
            case 4: RDivisao(a1,b1);
                break;
        }
        if(opcao!=4)
        {
            printf("Resultado = %.2f\n\n", resultado);
        }
    }
    return 0;
}
