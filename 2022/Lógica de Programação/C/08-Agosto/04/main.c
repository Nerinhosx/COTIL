#include <stdio.h>
#include <stdlib.h>

int main()
{
    float s,st,m,ms,mf,porce,f;
    int ft,p,pt;
    do
    {
    printf("Informe o seu sal�rio: ");
    scanf("%f",&s);
    if(s == 0)
        break;
    printf("Informe a quantidade de filhos: ");
    scanf("%f",&f);
    st+=s;
    ft+=f;
    if(s<=320)
    {
        p++;
    }
    if(s>m)
    {
        m=s;
    }
    pt++;
    }while(s!=0);
    ms=st/pt;
    mf=ft/pt;
    porce=(p/pt)*100;
    printf("A m�dia dos sal�rios foi de: %f \n A m�dia de filhos foi de: %f \n O maior sal�rio �: %f \n A porcentagem de pessoas com sal�rio at� R$320 foi de: %f",ms,mf,m,porce);

    return 0;
}
