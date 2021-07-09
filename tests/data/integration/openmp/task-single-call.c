
// should have 4 omp tasks in total, assigned to two omp fork threads evenly,
// and no data race, because implicit barrier for each single block

#include <stdio.h>

int x = 1;

void single() {
#pragma omp single
  {
#pragma omp task
    x++;
  }
}

int main() {
#pragma omp parallel
  {
    single();
    single();
  }

  printf("%d\n", x);
}