#include <omp.h>
#include <stdio.h>

void write_val(int *dest, int val) { *dest = val; }

int main() {
  int counter = 0;

#pragma omp parallel
  {
    int tid = omp_get_thread_num();

    if (tid == 1) {
      write_val(&counter, tid);
    }
  }

  printf("%d\n", counter);
}