#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Unix Timestamp
# @raycast.mode compact

# Optional parameters:
# @raycast.author Caleb Stauffer
# @raycast.authorURL https://github.com/crstauf
# @raycast.description Copy the current epoch Unix timestamp.
# @raycast.packageName Developer Utils
# @raycast.icon ⏱️

echo -n $(date +"%s")
# echo "Unix timestamp copied"
