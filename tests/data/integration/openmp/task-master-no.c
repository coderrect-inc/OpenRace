// the master means only the master thread will spawn a task
// because there is only one task created, there is no race

#include <omp.h>
#include <stdio.h>

int main() {
  int shared = 0;
#pragma omp parallel
  {
#pragma omp master
    {
#pragma omp task
      { shared = omp_get_thread_num(); }
    }
  }

  printf("%d\n", shared);
}