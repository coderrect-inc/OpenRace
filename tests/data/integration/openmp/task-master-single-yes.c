// The task spawned within master can race with the write in the single region
// race between the writes to shared at lines 14 and 18

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

#pragma omp single
    { shared = omp_get_thread_num(); }
  }

  printf("%d\n", shared);
}