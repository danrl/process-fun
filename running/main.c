#include <stdio.h>
#include <time.h>

int main(int argc, char *argv[]) {
    // run for 5 seconds
    time_t end = time(0) + 10;

    // do something
    volatile int i;
    while (time(0) < end) {
        i++;
    }

    // exit ok
    return 0;
}