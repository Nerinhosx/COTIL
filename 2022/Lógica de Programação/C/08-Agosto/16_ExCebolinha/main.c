#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX 51
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char palavra[MAX], copia[MAX];
    int i;

    printf("Informe uma palavra: ");
    gets(palavra);
    printf("\nString informada: %s.", palavra);
    strcpy(copia, palavra);
    printf("\nCópia da string informada: %s.", copia);
    for(i=0;i<MAX;i++)
    {
        if(palavra[i]== 'r')
        {
            copia[i]='l';
        }
    }
    printf("\nString informada: %s. \nCópia modificada (pelo Cebolinha): %s.", palavra, copia);
    return 0;
}
