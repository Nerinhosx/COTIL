#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define MAX 5

typedef struct{
    char nome[40];
    char musica[25];
    int nInt;
    int posRank;
}bandas;

void leB(bandas *b)
{
    int i;
    for(i=0;i<MAX;i++)
    {
        printf("Banda: \n");
        printf("Informe o nome da %dª Banda: ",i+1);
        gets(b[i].nome);
        printf("Informe o tipo de música que a Banda %s toca: ", b[i].nome);
        gets(b[i].musica);
        printf("Informe o número de integrantes da Banda %s: ", b[i].nome);
        scanf("%d", &b[i].nInt);
        printf("Informe a posição da Banda %s em seu Ranking de favoritos: ", b[i].nome);
        scanf("%d", &b[i].posRank);
        printf("\n");
        getchar();
    }
}

void mostraB(bandas *b)
{
    int i;
    for(i=0;i<MAX;i++)
    {
        printf("Banda: %s \nTipo: %s \nNúmero de integrantes: %d \nRanking: %d\n\n",b[i].nome, b[i].musica, b[i].nInt, b[i].posRank);
    }
}

void selB(bandas *b)
{
    int i, r;

    printf("Informe um valor de 1 a 5, de acordo com seu Ranking de Bandas: ");
    scanf("%d", &r);
    for(i=0;i<MAX;i++)
    {
        if(r==b[i].posRank)
        {
            printf("\nBanda: %s \nTipo: %s \nNúmero de integrantes: %d \nRanking: %d\n\n", b[i].nome, b[i].musica, b[i].nInt, b[i].posRank);
            break;
        }
        else
        {
            continue;
        }
    }
    getchar();
}

void musB(bandas *b)
{
    int i, c;
    char mus[25];
    printf("Informe um tipo de música: ");
    gets(mus);
    printf("\n");
    for(i=0;i<MAX;i++)
    {
        c=strcmp(mus, b[i].musica);
        if(c==0)
        {
            if(i==0)
            {
                printf("Bandas que tocam %s: \n", mus);
                printf("%s\n", b[i].nome);
            }
            else
            {
                printf("%s\n", b[i].nome);
            }
        }
    }
}

void veB(bandas *b)
{
    int i, c;
    char bd[30];

    printf("\nInforme o nome de uma banda: ");
    gets(bd);
    printf("\n");
    for(i=0;i<MAX;i++)
    {
        c=strcmp(bd, b[i].nome);
        if(c==0)
        {
            printf("A banda informada faz parte de suas bandas favoritas.");
            break;
        }
        else
        {
            if((i+1)==MAX)
            {
                printf("A banda informada não faz parte de suas bandas favoritas.");
            }
        }
    }
}

int main()
{
    setlocale(LC_ALL, "Portuguese");

    bandas b[MAX];
    int a, i=0;

    do
    {
        printf("\nEscolha uma das opções do Menu: \n");
        printf("[1] Informar bandas e seus dados.\n");
        printf("[2] Exibir as informações das bandas.\n");
        printf("[3] Ver banda através da posição no ranking.\n");
        printf("[4] Ver banda que tocam determinado tipo musical.\n");
        printf("[5] Verificar se determinada banda está entre suas favoritas.\n");
        printf("[6] Finalizar o programa.\n");
        printf("R: ");
        scanf("%d", &a);
        getchar();
        switch(a)
        {
        case 1:
        {
            printf("\n");
            leB(b);
            break;
        }
        case 2:
        {
            printf("\n");
            mostraB(b);
            break;
        }
        case 3:
        {
            printf("\n");
            selB(b);
            break;
        }
        case 4:
        {
            printf("\n");
            musB(b);
            break;
        }
        case 5:
        {
            printf("\n");
            veB(b);
            break;
        }
        case 6:
            i=1;
            break;
        default:
            printf("\nOpção inválida.\n");
        }
    }
    while(i==0);
    return 0;
}
