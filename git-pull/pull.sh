#!/bin/bash

set -x

dir=${DIR}
interval=${PULL_INTERVAL-10s}
webhook_method=${WEBHOOK_METHOD-GET}
webhook_url=${WEBHOOK_URL-""}
webhook_username=${WEBHOOK_USERNAME-""}
webhook_password=${WEBHOOK_PASSWORD-""}

u=""
if [ "webhook_username" != "" ] && [ "webhook_password" != "" ]; then
   u="-u $webhook_username:$webhook_password"
fi

git config --global --add safe.directory $dir

cd $dir

while true
do
    sleep $interval
    echo "$(date -R)"
    git fetch
    HEADHASH=$(git rev-parse HEAD)
    UPSTREAMHASH=$(git rev-parse @{upstream})
    if [ "$HEADHASH" != "$UPSTREAMHASH" ]; then
      echo "pulling..."
      git pull
      if [ "$webhook_url" != "" ]; then
        curl -v -X${webhook_method} $u $webhook_url
      fi
    fi
done