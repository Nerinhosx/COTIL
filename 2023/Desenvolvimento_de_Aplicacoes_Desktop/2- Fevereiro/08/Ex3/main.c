#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i;

    printf("N�meros entre 100 e 200 que s�o divis�veis por 3: \n");
    for(i=100;i<=200;i++)
    {
        if(i%3==1)
        {
            printf("%d\n", i);
        }
    }
    return 0;
}
