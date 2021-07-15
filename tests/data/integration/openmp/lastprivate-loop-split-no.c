// The two for loops are guaranteed to be split the same way
// meaning the same thread will do both lastprivate updates
// so there is no race

#include <stdio.h>

int main() {
  int shared = 0;

#pragma omp parallel
  {
#pragma omp for lastprivate(shared) nowait
    for (int i = 0; i < 10; i++) {
      shared++;
    }

#pragma omp for lastprivate(shared) nowait
    for (int i = 0; i < 10; i++) {
      shared++;
    }
  }

  printf("%d\n", shared);
}