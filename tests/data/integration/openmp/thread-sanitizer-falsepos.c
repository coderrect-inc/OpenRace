#include <stdio.h>

int sum;

void do_it() {
  const int n = 1000;
#pragma omp parallel
  {
#pragma omp for
    for (int i = 1; i <= n; ++i) {
#pragma omp atomic
      sum += i;
    }
  }
}

int main() {
  sum = 0.;
  do_it();
  printf("%d\n", sum);
  return 0;
}
