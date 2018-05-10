#include <unistd.h>
#include <sys/types.h>

int main(int argc, char *argv[]) {
    pid_t pid = fork();
    if (pid == 0) {
        // child 1 migrates to a new session
        setsid();
        pid_t pid2 = fork();
        if (pid2 == 0) {
            // child 2 (daemon) being lazy
            sleep(30);
            return 0;
        }
        // child 1 exiting ok
        return 0;
    }
    // parent exiting without waiting for the child
    sleep(5);
    return 0;
}