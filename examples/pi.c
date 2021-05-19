/*  This example contains a data race on sum at line 24
    The data race is caused by the commented out reduction on line 21
    Uncommenting the reduction will remove the data race */

#include <omp.h>
#include <stdio.h>

#define N 1000000000

int main() {
  const double delta = 1.0 / (double)N;
  const int MAX_THREADS = omp_get_max_threads();
  // Compute parallel compute times for 1-MAX_THREADS
  for (int j = 1; j <= MAX_THREADS; j++) {
    printf(" running on %d threads: ", j);
    omp_set_num_threads(j);

    double sum = 0.0;
    const double start = omp_get_wtime();

#pragma omp parallel for  // reduction(+:sum)
    for (int i = 0; i < N; i++) {
      double x = (i + 0.5) * delta;
      sum += 4.0 / (1.0 + x * x);
    }

    // Out of the parallel region, finalize computation
    const double pi = delta * sum;
    const double time_lapse = omp_get_wtime() - start;
    printf("PI = %.12g computed in %.4g seconds\n", pi, time_lapse);
  }
}