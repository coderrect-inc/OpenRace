#include <stdio.h>

int main() {
  int counter = 0;
#pragma omp parallel
  {
#pragma omp single
    {
#pragma omp task
      { counter = 1; }
    }
    // implicit barrier at end of single prevents the race

#pragma omp single
    {
#pragma omp task
      { counter = 2; }
    }
  }

  printf("%d == 2\n", counter);
}