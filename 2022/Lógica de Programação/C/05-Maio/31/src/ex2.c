#include <stdio.h>

int main() {

    int sum = 0;

    for(int i = 1; i <= 100; i++) {
        if(i % 5 == 0) {
            continue;
        }

        sum += i;
    }

    printf("%i", sum);
}