#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int i=1, s=0;

    while(i<=100)
    {
        if(i%2==0)
        {
            s+=i;
        }
        i++;
    }
    printf("A soma de todos os valores pares entre 1 e 100 é: %d. \n", s);
    return 0;
}
