#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Alilang Proxy Stop
# @raycast.mode silent
# @raycast.packageName Alilang
#
# Optional parameters:
# @raycast.icon 🎯
#
# Documentation:
# @raycast.description Launch alilang proxy stop running
# @raycast.author Jeason
# @raycast.authorURL https://github.com/jeasonstudio

launchctl stop /Library/LaunchAgents/com.alibaba.Alilang.AliMgr.plist
echo "Stop alilang-proxy success!"