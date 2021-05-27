#include <stdio.h>
#include <omp.h>

int main (){
	omp_lock_t writelock;
	//omp_init_lock(&writelock);
	int counter = 0;
	int another_counter = 0;

	#pragma omp parallel 
	{
	    another_counter = 15;
		omp_set_lock(&writelock);
		counter ++;
		omp_unset_lock(&writelock);
	}
	omp_destroy_lock(&writelock);
	return 0;
}

