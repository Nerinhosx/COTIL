
#include <stdio.h>
#include <locale.h>

int main() {

    for(int i = 1; i <= 1000000; i++) {

        if(i % 11 == 0 && i % 13 == 0 && i % 17 == 0) {
            printf("%i", i);
            break;
        }
    }
}