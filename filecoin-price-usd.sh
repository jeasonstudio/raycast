#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Filecoin Price
# @raycast.mode inline
# @raycast.refreshTime 1h
# @raycast.packageName Dashboard

# Optional parameters:
# @raycast.author Clark Dinnison
# @raycast.authorURL https://github.com/cdinnison
# @raycast.description Get current Filecoin price from CoinGecko.
# @raycast.icon images/ethereum-logo.png

price=$(curl -s https://api.coingecko.com/api/v3/coins/filecoin | python -c "import json, sys; print(json.load(sys.stdin)['market_data']['current_price']['usd'])")

echo "\$${price}"