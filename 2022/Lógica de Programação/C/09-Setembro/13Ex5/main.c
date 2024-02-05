#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int calculomdc(int a, int b)
{
    int x, r;

    if(a>b)
    {
        do
        {
            x=a%b;
            a=b;
            b=x;
        }
        while(x>0);
        r=a;
    }
    else
    {
        do
        {
            x=b%a;
            b=a;
            a=x;
        }
        while(x>0);
        r=b;
    }
    return r;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int a, b, x;

    do
    {
        printf("Informe um valor: ");
        scanf("%d", &a);
        printf("Informe outro valor: ");
        scanf("%d", &b);
    }
    while((a==0) || (b==0));
    x=calculomdc(a, b);
    printf("\nM.D.C. de (%d, %d)= %d", a, b, x);
    return 0;
}
