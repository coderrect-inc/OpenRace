 #include <stdio.h>
 void single_example()
 {  
    int total = 0;
    #pragma omp parallel
    {
        #pragma omp single 
        printf("Beginning work1.\n");
        total+=2;

        #pragma omp single
        printf("Finishing work1.\n");

        #pragma omp single 
        printf("Finished work1 and beginning work2.\n");
        total -= 2;
    }
 }

 int main () {
     single_example();
 }
