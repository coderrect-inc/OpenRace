// the "if (tid == 0)" ensures only one thread will spawn a task
// because there is only one task created, there is no race

#include <omp.h>
#include <stdio.h>

int main() {
  int shared = 0;
#pragma omp parallel
  {
    int tid = omp_get_thread_num();

    if (tid == 0) {
#pragma omp task
      { shared = tid; }
    }
  }

  printf("%d\n", shared);
}