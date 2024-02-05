#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define MAX 50

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char msg[MAX];
    int i,cont=0;

    printf("Informe uma mensagem: ");
    gets(msg);
    for(i=0;i<MAX;i++)
    {
        if((msg[i]=='a') || (msg[i]=='e') || (msg[i]=='i') || (msg[i]=='o') || (msg[i]=='u') || (msg[i]=='A') || (msg[i]=='E') || (msg[i]=='I') || (msg[i]=='O') || (msg[i]=='U'))
            cont++;
    }
    printf("A mensagem possui %d vogais.", cont);
    return 0;
}
