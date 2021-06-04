// We used to report a FP between the write at line 16 and the read at line 19
// We used to treat the first arg to _kmpc_fork as a unique identifier for the team being spawned
// but in the .ll generated for this file, both the parallel regions are passed the same first arg

#include <stdio.h>

int main() {
    const int N = 1000;
    int A[N];

    #pragma omp parallel for
    for (int i  = 0; i < N; i++) {
        A[i] = i;
    }

    #pragma omp parallel for
    for (int i = 0; i < N; i++) {
        A[i] *= i+1;
    }

    printf("%d", A[0]);
}