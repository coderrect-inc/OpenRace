#include <assert.h>
#include <pthread.h>
#include <stdio.h>

pthread_mutex_t m;
int x, y, z, balance;
_Bool deposit_done = 0, withdraw_done = 0;

void *deposit(void *arg) {
  pthread_mutex_lock(&m);
  balance = balance + y;
  deposit_done = 1;
  pthread_mutex_unlock(&m);
  return NULL;
}

void *withdraw(void *arg) {
  pthread_mutex_lock(&m);
  balance = balance - z;
  withdraw_done = 1;
  pthread_mutex_unlock(&m);
  return NULL;
}

void *check_result(void *arg) {
  pthread_mutex_lock(&m);
  if (deposit_done && withdraw_done) assert(balance == (x + y) - z);
  pthread_mutex_unlock(&m);
  return NULL;
}

int main() {
  pthread_t t1, t2, t3;

  pthread_mutex_init(&m, 0);

  x = 1;
  y = 2;
  z = 4;
  balance = x;

  pthread_create(&t3, 0, check_result, 0);
  pthread_create(&t1, 0, deposit, 0);
  pthread_create(&t2, 0, withdraw, 0);

  return 0;
}