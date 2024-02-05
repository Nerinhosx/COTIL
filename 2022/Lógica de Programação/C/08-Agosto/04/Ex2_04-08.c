#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale (LC_ALL, "Portuguese");

    int i,g,tg=150, tgt=0;
    float p,vc;
    char resp;

    do
    {
        printf("Informe a quantidade de garrafas compradas: ");
        scanf("%d",&g);
        tgt=tg;
        if(tg - g < 0)
        {
            tg = tgt;
            printf("Impossível efetuar a compra. Estoque: %d. \nDeseja efetuar uma nova compra? [S/N]\nR: ", tg);
            scanf(" %c", &resp);
            if (resp == 'S')
            {
                continue;
            }
            else
            {
                continue;
            }
        }
        tg-=g;
        for(i=1;i<=g;i++)
        {
            printf("Informe o valor da %d garrafa: ",i);
            scanf("%f", &p);
            if(p<=100)
            {
                p+=50;
            }
            else
            {
                p+=30;
            }
            vc+=p;
        }
        printf("O valor total é: %f.", vc);
    }while(tg>0);
    return 0;
}
