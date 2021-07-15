#include <stdio.h>

int main() {
  int shared = 0;

#pragma omp parallel
  {
#pragma omp for lastprivate(shared)
    for (int i = 0; i < 10; i++) {
      shared++;
    }

#pragma omp for lastprivate(shared)
    for (int i = 0; i < 10; i++) {
      shared++;
    }
  }

  printf("%d\n", shared);
}