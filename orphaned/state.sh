#!/bin/sh -x

/a.out &
sleep 2
ps -o pid,ppid,pgid,stat,comm
sleep 10
ps -o pid,ppid,pgid,stat,comm