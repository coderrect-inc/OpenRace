#include <stdio.h>
#include <omp.h>

struct Data {
    int x;
    int y;
};

struct Data data;
#pragma omp threadprivate(data)


int main() {
    int x = 0;
    int y = 0;

    #pragma omp parallel
    {
        data.x = omp_get_thread_num();
        data.y = data.x;

        #pragma omp single nowait
        {
            x = data.x;
        }
        #pragma omp single
        {
            y = data.y;
        }
    }

    printf("%d %d\n", x, y);
}