#!/bin/bash

warp-cli disconnect && sleep 1 &&warp-cli connect

sleep 3

echo "reconnected, new outbound ip:"

ALL_PROXY=socks5://127.0.0.1:40000 curl ifconfig.me

echo ""