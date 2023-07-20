#!/bin/bash

if [ -z "$EXCLUDE_IPS" ]; then
    exit 0
fi

IFS=',' read -r -a ips_array <<< "$EXCLUDE_IPS"
sleep 5

while true
do
  ipnow=`ALL_PROXY=socks5://127.0.0.1:40000 curl https://chat.openai.com/cdn-cgi/trace 2>/dev/null | grep ip= | awk -F = '{print $2}'`
  echo "current ip is $ipnow, excluded ip is $EXCLUDE_IPS" >> /var/log/warp.log
	found=false
	for ip in "${ips_array[@]}"; do
	  if [[ "$ip" == "$ipnow" ]]; then
	    found=true
	    break
	  fi
	done
	if [[ $found  == false ]]; then
    echo "IP address meets the expected state,sleep 10 mins" >> /var/log/warp.log
    sleep 600
  else
    echo "start to change ip address" >> /var/log/warp.log
    warp-cli --accept-tos disconnect
    sleep 3
    warp-cli --accept-tos connect
    sleep 10
  fi
done