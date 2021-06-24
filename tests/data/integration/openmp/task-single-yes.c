// The nowait on the first single region allows
// the two tasks to race with eachother

// Race between the writes to counter at lines 15 and 21

#include <stdio.h>

int main() {
  int counter = 0;
#pragma omp parallel
  {
#pragma omp single nowait
    {
#pragma omp task
      { counter = 1; }
    }

#pragma omp single
    {
#pragma omp task
      { counter = 2; }
    }
  }

  printf("%d == 2\n", counter);
}