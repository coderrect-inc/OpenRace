#include <pthread.h>

int global;
pthread_mutex_t mutex;
int global_locked;

void *foo(void *a) {
  global++;
  pthread_mutex_lock(&mutex);
  global_locked++;
  pthread_mutex_unlock(&mutex);
  return 0;
}

int main() {
  pthread_t t1, t2;
  pthread_mutex_t mutex;

  pthread_create(&t1, 0, foo, 0);
  pthread_create(&t2, 0, foo, 0);
  pthread_join(t1, 0);
  pthread_join(t2, 0);
}