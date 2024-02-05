#include <stdio.h>
#include <stdlib.h>

int main()
{   int p1,p2,media;
    int ra;

    printf("Digite o RA do aluno: ");
    scanf("%d",&ra);

    printf("Insira a primeira nota do aluno: ");
    scanf("%d",&p1);

    printf("Insira a segunda nota do aluno: ");
    scanf("%d",&p2);

    media=(p1+p2)/2;

    printf("A media do aluno %d e %d",ra,media);
    return 0;
}
