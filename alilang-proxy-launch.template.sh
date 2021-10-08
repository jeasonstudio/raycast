#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Alilang Proxy Launch
# @raycast.mode silent
# @raycast.packageName Alilang
#
# Optional parameters:
# @raycast.icon 🎯
#
# Documentation:
# @raycast.description Launch alilang proxy running in background
# @raycast.author Jeason
# @raycast.authorURL https://github.com/jeasonstudio

launchctl start /Library/LaunchAgents/com.alibaba.Alilang.AliMgr.plist && echo "Launch alilang-proxy success!"