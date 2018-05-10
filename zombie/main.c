#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, char *argv[]) {
    pid_t pid = fork();
    if (pid == 0) {
        // child exits immediately
        return 0;
    }
    // parent sleeping, not eager to call wait()
    sleep(10);

    // yeah, maybe now...
    wait(NULL);

    // exit ok
    return 0;
}