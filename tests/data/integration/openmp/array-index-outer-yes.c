// Race on A[i][j] and A[i][j+1]

int main() {
  const int N = 1000;
  int A[N][N];

  for (int i = 0; i < N - 1; i++) {
#pragma omp parallel for
    for (int j = 0; j < N; j++) {
      A[i][j] = A[i][j + 1] + 1;
    }
  }
}