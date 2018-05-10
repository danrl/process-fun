#!/bin/sh

echo -n "Starting process-fun... "
process-fun &
echo "done!"

sleep 2

echo "Process list (before daemonizing):"
ps -o pid,ppid,pgid,sess,stat,comm

sleep 10

echo "Process list (after daemonizing):"
ps -o pid,ppid,pgid,sess,stat,comm