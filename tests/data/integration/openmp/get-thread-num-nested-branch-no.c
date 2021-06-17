#include <omp.h>
#include <stdio.h>

int main() {
  int counter = 0;

#pragma omp parallel
  {
    int tid = omp_get_thread_num();

    int local = 0;

    if (tid == 1) {
      if (tid >= 3) {
        counter = tid;
      } else {
        local++;
      }
    }
  }

  printf("%d\n", counter);
}