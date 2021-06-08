int main() {
  unsigned countUp = 0;
  unsigned countDown = 1000;

#pragma omp parallel sections
  {
#pragma omp section
    { countUp++; }

#pragma omp section
    { countDown--; }
  }
}