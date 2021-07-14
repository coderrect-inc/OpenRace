int main() {
  const int N = 1000;
  int A[N];

// No race because the stride is 2
#pragma omp parallel for
  for (int i = 0; i < N - 1; i += 2) {
    A[i] = i;
    A[i + 1] = i;
  }
}