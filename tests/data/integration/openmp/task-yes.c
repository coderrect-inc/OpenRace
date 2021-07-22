// All threads executing the parallel region will spawn a task
// All the tasks will write to shared in parallel
// Race between the writes to shared at lines 13

#include <omp.h>
#include <stdio.h>

int main() {
  int shared = 0;
#pragma omp parallel
  {
#pragma omp task
    { shared = omp_get_thread_num(); }
  }

  printf("%d\n", shared);
}