#include <stdio.h>

int main(){

    int n;
    #pragma omp parallel
    {
        #pragma omp for ordered
        for (n=0;n<10;n++)
            #pragma omp ordered
            printf("n = %d\n",n);
    }
    return 0;
}
