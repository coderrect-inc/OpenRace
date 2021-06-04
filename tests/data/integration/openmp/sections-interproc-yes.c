// Both sections will update the same counter at line 3

void update_counter(int* counter) { (*counter)++; }

int main() {
  int counter = 0;

#pragma omp parallel sections
  {
#pragma omp section
    { global_write(&counter); }

#pragma omp section
    { global_write(&counter); }
  }
}