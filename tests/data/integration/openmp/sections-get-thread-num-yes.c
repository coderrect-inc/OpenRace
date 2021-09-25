/**
 * @author RookieHPC
 * @brief Original source code at https://www.rookiehpc.com/openmp/docs/sections.php
 **/

#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

/**
 * @brief Illustrates how to use a sections clause.
 * @details A parallel region is created, in which a sections worksharing
 * construct is built, containing multiple section clauses defining jobs to do
 * by threads.
 **/
int main(int argc, char* argv[]) {
  int counter = 0;

  // Use 4 threads when creating OpenMP parallel regions
  omp_set_num_threads(4);

  // Create the parallel region
#pragma omp parallel
  {
    // Create the sections
#pragma omp sections
    {
      // Generate the first section
#pragma omp section
      { counter = omp_get_thread_num(); }

      // Generate the second section
#pragma omp section
      { counter = omp_get_thread_num(); }
      // both sections join here
    }
  }

  printf("counter is %d.\n", counter);
  return 0;
}
