// Race between lines 11 and 13 (the lastprivate update)
// The thread executing single may not be the same one that executes the lastprivate
// and they could potentially race

#include <stdio.h>

int main() {
  int shared = 0;

#pragma omp parallel
  {
#pragma omp single nowait
    { shared = 0; }

#pragma omp for lastprivate(shared) nowait
    for (int i = 0; i < 10; i++) {
      shared++;
    }
  }

  printf("%d\n", shared);
}