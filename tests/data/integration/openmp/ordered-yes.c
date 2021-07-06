// By setting a shared variable within the ordered clause, a race condition can be simulated and should be detected.

#include <stdio.h>

void ordered_race_test() {
  int i, sum, fail_condition = 0;
  int a[100]; 

  for (i = 1; i < 100; i++) {
      a[i] = i;
  }

  #pragma omp parallel for ordered schedule(dynamic) shared(fail_condition)
      for (i = 1; i < 99; i++) {
        if (fail_condition >= 10000) {
            continue;
        }

        #pragma omp ordered
        {
          a[i] = a[i] + 1;
          sum = sum + a[i + 1];
          if(sum > 2000) {fail_condition++;}
        }
      }

      printf("%d\n", sum); 
}

int main() {
  ordered_race_test();
}
