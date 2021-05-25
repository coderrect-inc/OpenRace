#include <stdio.h>

int main()
{
  int x = 0;

#pragma omp parallel shared(x)
  {
#pragma omp master
    {
      x = 1;
    }

    printf("init=%d\n", x);
  }

  return 0;
}