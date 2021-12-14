#!/bin/bash

PID=`ps --no-heading -C xkeysnail -o pid | tr -d ' '`

if [ -n "$PID" ]; then
  sudo kill $PID
  echo "Stopped xkeysnail to kill $PID"
fi
