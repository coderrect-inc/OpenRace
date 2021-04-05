int main() {
  const int N = 10;
  int A[N];
  int B[N];
#pragma omp parallel for
  for (int i = 0; i < N; i++) {
    A[i] = A[i] + 1;  // no alias
    B[i] = B[i + 1];  // alias
  }
}