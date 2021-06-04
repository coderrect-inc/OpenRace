// Both sections will update the same counter at line 3

void update_counter(int* counter) { (*counter)++; }

int main() {
  int counter = 0;

#pragma omp parallel sections
  {
#pragma omp section
    { update_counter(&counter); }

#pragma omp section
    { update_counter(&counter); }
  }
}