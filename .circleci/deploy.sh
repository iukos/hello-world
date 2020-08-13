#!/bin/bash
# My first script

PID=`ps -eaf | grep demo | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi
