#include <omp.h>
#include <stdio.h>

int main() {
  int counter = 0;

#pragma omp parallel
  {
    if (omp_get_thread_num() == 1) {
      counter++;
    }

    if (omp_get_thread_num() == 1) {
      counter++;
    }
  }

  printf("%d\n", counter);
}