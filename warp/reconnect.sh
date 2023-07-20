#!/bin/bash

warp-cli --accept-tos disconnect

sleep 3

warp-cli --accept-tos connect

sleep 3

echo "reconnected, new ip info:"

ALL_PROXY=socks5://127.0.0.1:40000 curl https://chat.openai.com/cdn-cgi/trace 2>/dev/null

echo ""