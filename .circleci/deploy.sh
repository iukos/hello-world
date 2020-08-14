#!/bin/bash
# Deploy jar script

# 停止当前的服务
PID=`ps -eaf | grep demo | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi

# 删除现有的jar文件
rm /var/iukos/demo-0.0.1-SNAPSHOT.jar

# 复制新的jar文件
cp demo-0.0.1-SNAPSHOT.jar /var/iukos

# 启动服务
PID=`ps -eaf | grep demo | grep -v grep | awk '{print $2}'`
if [[ "" ==  "$PID" ]]; then
  echo "starting demo"
  java -jar /var/iukos/demo-0.0.1-SNAPSHOT.jar &
fi