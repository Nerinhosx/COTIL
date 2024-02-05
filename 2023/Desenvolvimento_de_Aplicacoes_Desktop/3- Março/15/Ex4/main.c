#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  setlocale(LC_ALL, "Portuguese");

  int i, c, tr;
  char nome[100], n[100], temp;

  printf("Informe uma palavra: ");
  gets(nome);
  c = strlen(nome);

  for (i = 0; i < c + 1; i++) {
    n[i] = toupper(nome[i]);
  }

  do {
    tr = 0;
    for (i = 0; i < c; i++) {
      if (n[i] > n[i + 1]) {
        temp = n[i];
        n[i] = n[i + 1];
        n[i + 1] = temp;
        tr = 1;
      }
    }
  } while (tr);

  printf("\nA palavra %s ordenada: \n", nome);
  for (i = 0; i < c + 1; i++) {
    printf("%c", n[i]);
  }
  printf("\n\n");
  return 0;
}
