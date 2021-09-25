int main() {
  unsigned countUp = 0;
  unsigned countDown = 1000;

#pragma omp parallel
  {
#pragma omp sections nowait  // llvm IR cannot tell nowait
    {
#pragma omp section
      { countUp++; }

#pragma omp section
      { countDown--; }
    }
  }
}