#!/bin/sh

echo -n "Starting process-fun... "
process-fun &
echo "done!"

sleep 2

echo "Process list:"
ps -o pid,ppid,pgid,sess,stat,comm