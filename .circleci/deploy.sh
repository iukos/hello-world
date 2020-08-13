#!/bin/bash
# My first script

PID=`ps -eaf | grep demo | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi

PID=`ps -eaf | grep demo | grep -v grep | awk '{print $2}'`
if [[ "" ==  "$PID" ]]; then
  echo "starting demo"
  java -jar demo-0.0.1-SNAPSHOT.jar &
fi