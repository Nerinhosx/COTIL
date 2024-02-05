#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define MAX 3

int compara(char posv[MAX][MAX])
{
    int a=0;

    if((posv[0][0]==posv[0][1]) && (posv[0][0]==posv[0][2]))
    {
        a=1;
    }
    else
    {
        if((posv[1][0]==posv[1][1]) && (posv[1][0]==posv[1][2]))
        {
            a=1;
        }
        else
        {
            if((posv[2][0]==posv[2][1]) && (posv[2][0]==posv[2][2]))
            {
                a=1;
            }
        }
    }
    if((posv[0][0]==posv[1][0]) && (posv[0][0]==posv[2][0]))
    {
        a=1;
    }
    else
    {
        if((posv[0][1]==posv[1][1]) && (posv[0][1]==posv[2][1]))
        {
            a=1;
        }
        else
        {
            if((posv[0][2]==posv[1][2]) && (posv[0][2]==posv[2][2]))
            {
                a=1;
            }
        }
    }
    if((posv[0][0]==posv[1][1]) && (posv[0][0]==posv[2][2]))
    {
        a=1;
    }
    else
    {
        if((posv[2][0]==posv[1][1]) && (posv[2][0]==posv[0][2]))
        {
            a=1;
        }
    }
    return a;
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    char posv[MAX][MAX], c;
    int i, j, x=0, a=0, y=0;

    /*Atribuição Inicial*/
    posv[0][0]='1';
    posv[0][1]='2';
    posv[0][2]='3';
    posv[1][0]='4';
    posv[1][1]='5';
    posv[1][2]='6';
    posv[2][0]='7';
    posv[2][1]='8';
    posv[2][2]='9';
    /*Atribuição Inicial*/

    /*Jogando*/
    do
    {
        for(i=0;i<MAX;i++)
        {
            for(j=0;j<MAX;j++)
            {
                if(j==2)
                {
                    printf(" %c \n-----------\n", posv[i][j]);
                }
                else
                {
                    printf(" %c |", posv[i][j]);
                }
            }
        }
        if((x==9) || (a==1))
        {
            break;
        }
        if(x%2==0)
        {
            do
            {
                printf("Selecione uma posição para inserir X: ");
                scanf(" %c", &c);
                for(i=0;i<MAX;i++)
                {
                    for(j=0;j<MAX;j++)
                    {
                        if(posv[i][j]==c)
                        {
                            y=1;
                            posv[i][j]='X';
                        }
                        else
                        {
                            if((i==2) && (j==2) && (y==0))
                            {
                                printf("\nA casa informada está ocupada. Tente novamente.\n\n");
                            }
                        }
                    }
                }
            }
            while(y==0);
            y=0;
        }
        else
        {
            do
            {
                printf("Selecione uma posição para inserir O: ");
                scanf(" %c", &c);
                for(i=0;i<MAX;i++)
                {
                    for(j=0;j<MAX;j++)
                    {
                        if(posv[i][j]==c)
                        {
                            y=1;
                            posv[i][j]='O';
                        }
                        else
                        {
                            if((i==2) && (j==2) && (y==0))
                            {
                                printf("\nA casa informada está ocupada. Tente novamente.\n\n");
                            }
                        }
                    }
                }
            }
            while(y==0);
        }
        printf("\n\n");
        a=compara(posv);
        if(a==0)
        {
            x++;
            y=0;
        }
    }
    while(x<10);
    /*Jogando*/
    /*Vitória*/
    if((x%2==0) && (a==1))
    {
        printf("\n\nVITÓRIA DO X\n\n");
    }
    else
    {
        if((x%2==1) && (a==1))
        {
            printf("\n\nVITÓRIA DA O\n\n");
        }
        else
        {
            if((x%2==0) && (a==0))
            {
                printf("\n\nDEU VELHA\n\n");
            }
            else
            {
                if((x%2==1) && (a==0))
                {
                    printf("\n\nDEU VELHA\n\n");
                }
            }
        }
    }
    return 0;
}
