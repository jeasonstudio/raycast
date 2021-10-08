#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Check Alilang Proxy
# @raycast.mode inline
# @raycast.refreshTime 1h
# @raycast.packageName Alilang
#
# Optional parameters:
# @raycast.icon 🎯
#
# Documentation:
# @raycast.description Check alilang proxy is status
# @raycast.author Jeason
# @raycast.authorURL https://github.com/jeasonstudio

service_pid=`ps -ef | grep AliMgrSockAgent | grep -v grep | awk '{print $2}'`

if [ $service_pid ]
then
  echo "Running."
else
  echo "Stopped."
fi