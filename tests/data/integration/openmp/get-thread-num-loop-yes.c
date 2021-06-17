#include <omp.h>
#include <stdio.h>

int main() {
  int counter = 0;

#pragma omp parallel
  {
    int tid = omp_get_thread_num();

    if (tid >= 1) {
      for (int i = 0; i < tid; i++) {
        counter++;
      }
    }
  }

  printf("%d\n", counter);
}