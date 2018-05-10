#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, char *argv[]) {
    pid_t pid = fork();
    if (pid == 0) {
        // child being lazy
        sleep(30);
        return 0;
    }
    // parent exiting without waiting for the child
    sleep(5);
    return 0;
}