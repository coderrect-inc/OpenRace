// I think this case should contain a race between lines 15 and 20.
// Section 2.19.4.5 of the OpenMP 5.0.1 specification says:
//   "if the lastprivate clause is used on a construct to which the nowait or the nogroup clauses are applied,
//   accesses to the original list item may create a data race"
// However clang will put barriers after the lastprivate update regardless of nowait
// This means there is no race in clang but potentially a race with different compilers

#include <stdio.h>

int main() {
  int shared = 0;

#pragma omp parallel
  {
#pragma omp for lastprivate(shared) nowait
    for (int i = 0; i < 10; i++) {
      shared++;
    }

#pragma omp for lastprivate(shared) nowait
    for (int i = 0; i < 11; i++) {
      shared++;
    }
  }

  printf("%d\n", shared);
}