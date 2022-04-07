#!/usr/bin/osascript

# @raycast.schemaVersion 1
# @raycast.title Toggle AirPods
# @raycast.mode compact

# @raycast.packageName AirPods
# @raycast.icon images/airpods.png

# @raycast.author Jeason
# @raycast.authorURL https://github.com/jeasonstudio
# @raycast.description Switch connection with your airpods.

use framework "IOBluetooth"
use scripting additions -- https://stackoverflow.com/a/52806598/6962

set deviceName to "AirPods3"

-- prerun `pairedDevices()` to make it works
current application's IOBluetoothDevice's pairedDevices()

repeat with device in (current application's IOBluetoothDevice's pairedDevices() as list)
	if (device's nameOrAddress as string) contains deviceName then
		if not (device's isConnected) then
			device's openConnection()
			log ((device's nameOrAddress as string) & "connected")
		else
			device's closeConnection()
			log ((device's nameOrAddress as string) & "disconnected")
		end if
	end if
end repeat
