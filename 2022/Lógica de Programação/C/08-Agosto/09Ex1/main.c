#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int val[9], i, valp[9];

    for(i=0;i<9;i++)
    {
        valp[i]=0;
        printf("Informe o %d� valor: ", i+1);
        scanf("%d", &val[i]);
        if(val[i]%2 == 0)
        {
            valp[i]=val[i];
        }
    }
    printf("\nValores pares:\n");
    for(i=0;i<9;i++)
    {
        if(valp[i] != 0)
        {
            printf("%d, posi��o %d.\n", valp[i], i+1);
        }
        else
        {
            continue;
        }
    }
    return 0;
}
