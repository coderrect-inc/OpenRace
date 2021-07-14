void update_counter_deep(int* counter) { (*counter)++; }
void update_counter(int* counter) { update_counter_deep(counter); }

int main() {
  int counter1 = 0;
  int counter2 = 0;

#pragma omp parallel sections
  {
#pragma omp section
    { update_counter(&counter1); }

#pragma omp section
    { update_counter(&counter2); }
  }
}