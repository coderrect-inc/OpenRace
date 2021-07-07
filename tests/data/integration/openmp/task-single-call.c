
// should have 4 omp tasks in total, assigned to two omp fork threads evenly,
// and a race on x

#include <assert.h>
#include <stdio.h>

void single(int x) {
#pragma omp single
  {
#pragma omp task
    x++;
  }
}

int main() {
  int x = 1;
#pragma omp parallel
  {
    single(x);
    single(x);
  }

  printf("%d\n", x);
}