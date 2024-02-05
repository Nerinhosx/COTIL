#include <stdio.h>
#include <locale.h>

int main() {

    int age=0, less21=0, more50=0;

    while(1) {
        printf("Insira a idade da pessoa: ");
        scanf("%i", &age);

        if(age == 0) {
            break;
        }

        if(age < 21) {
            less21++;
        } else if(age > 50) {
            more50++;
        }
    }

    printf("Pessoas com mais de 50 anos: %i\n", more50);
    printf("Pessoas com menos de 21 anos: %i", less21);

}