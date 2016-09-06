#define __GNU_SOURCE 1
#include <unistd.h>
#include <time.h>

unsigned int sleep(unsigned int seconds) {
  return 0;
}


int nanosleep(const struct timespec *req, struct timespec *rem) {
  if (rem) {
    rem->tv_sec = 0;
    rem->tv_nsec = 0;
  }
  return 0;
}

int usleep(useconds_t usec){
  return 0;
}