// The use of nowait and the two calls to inc cause a race on global

#include <stdio.h>

int global;

void inc() {
#pragma omp single nowait
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