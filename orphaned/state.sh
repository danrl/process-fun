#!/bin/sh

echo -n "Starting process-fun... "
process-fun &
echo "done!"

sleep 2

echo "Process list (before orhpaned):"
ps -o pid,ppid,pgid,sess,stat,comm

sleep 10

echo "Process list (after orphaned):"
ps -o pid,ppid,pgid,sess,stat,comm