#include <stdio.h>

int global;

void inc() {
#pragma omp single
  { global++; }
}

int main() {
  global = 0;

#pragma omp parallel
  {
    inc();
    inc();
  }

  printf("%d == 2\n", global);
}