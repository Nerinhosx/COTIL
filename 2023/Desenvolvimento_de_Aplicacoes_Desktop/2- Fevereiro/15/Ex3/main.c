#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int r, v[10], i;

    printf("Informe o primeiro valor: ");
    scanf("%d", &v[0]);
    printf("Informe a razão: ");
    scanf("%d", &r);
    printf("  1: %d\n", v[0]);
    for(i=1;i<10;i++)
    {
        v[i]=v[i-1]+r;
        printf("  %d: %d\n", i+1, v[i]);
    }
    return 0;
}
