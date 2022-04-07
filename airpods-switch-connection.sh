#!/bin/bash

# Dependency: This script requires `bluetoothconnector` cli installed: https://github.com/lapfelix/BluetoothConnector
# Install via homebrew: `brew install bluetoothconnector`

# @raycast.schemaVersion 1
# @raycast.title Switch AirPods Connection
# @raycast.mode compact

# @raycast.packageName AirPods
# @raycast.icon images/airpods.png

# @raycast.author Jeason
# @raycast.authorURL https://github.com/jeasonstudio
# @raycast.description Switch connection with your airpods.

AIRPODS_NAME="AirPods3" # change as you like

SYSTEM_PROFILER=$(system_profiler SPBluetoothDataType 2>/dev/null)
MAC_ADDRESS=$(grep -B8 "Minor Type: Headphones" <<< "${SYSTEM_PROFILER}" | awk '/Address/{ lastline = $2 } END { print lastline }')
CONNECTED=$(grep -A10 "${MAC_ADDRESS}" <<< "${SYSTEM_PROFILER}" | awk '/Services:/{print 1}')
NAME=$(grep -B9 "Minor Type: Headphones" <<< "${SYSTEM_PROFILER}" | awk '/${AIRPODS_NAME}/{ print }' | sed -e 's/^ *//' -e 's/://')

if [[ "${CONNECTED}" ]]; then
  # disconnect doesn't work on Monterey if we don't force notify
  bluetoothconnector --disconnect "${MAC_ADDRESS//:/-}" --notify >/dev/null
  echo "${NAME} disconnected"
else
  bluetoothconnector --connect "${MAC_ADDRESS//:/-}" >/dev/null
  echo "${NAME} connected"
fi
