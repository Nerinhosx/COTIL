#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int val[9], i, valp[9], v, c, cont=0;

    for(i=0;i<9;i++)
    {
        valp[i]=0;
        printf("Informe o %dº valor: ", i+1);
        scanf("%d", &val[i]);
        v=val[i];
        for(c=1;c<=v;c++)
        {
            if(val[i]%c == 0)
                {
                    cont++;
                }
        }
        if(cont<=2)
        {
            valp[i]=val[i];
        }
        cont=0;
    }
    printf("\nValores primos:\n");
    for(i=0;i<9;i++)
    {
        if(valp[i] != 0)
        {
            printf("%d, posição %d.\n", valp[i], i+1);
        }
        else
        {
            continue;
        }
    }
    return 0;
}
