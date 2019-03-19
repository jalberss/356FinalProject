#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

#define NUM_THREADS 10

pthread_barrier_t bar;
typedef struct thread_args {
  int* arg;
  void* (*f)(void*);
} thread_arg;

void* f(void*);
void* g(void* args);
void* process(void*);

int main() {
  int arr[NUM_THREADS] = {1,2,3,4,5,6,7,8,9,10};
  pthread_t threads[NUM_THREADS];
  thread_arg args[NUM_THREADS];

  pthread_barrier_init(&bar, NULL, NUM_THREADS+1);

  for (int i = 0; i < NUM_THREADS; i++){
    args[i].arg = &arr[i];
    if (i == 2){
      args[i].f = &g;
    } else {
      args[i].f = &f;
    }
  }

  for (int i = 0; i < NUM_THREADS; i++){
    pthread_create(&threads[i], NULL, &process, &args[i]);
  }

  pthread_barrier_wait(&bar);
  pthread_barrier_wait(&bar);
  for (int i = 0; i < NUM_THREADS; i++){
    printf("%d\n", arr[i]);
  }
  return 1;
}

  
void* process(void* arg){
  thread_arg* ta = arg;
  ta->f(ta->arg);
  pthread_barrier_wait(&bar);
  sleep(2);
  ta->f(ta->arg);
  pthread_barrier_wait(&bar);
  return NULL;
}

void* f(void* args) {
  int *p = (int*)args;
  *p = *p*6;
  return NULL;
}

void* g(void* args) {
  int *p = (int*)args;
  sleep(1);
  *p = *p*6;
  return NULL;
}

