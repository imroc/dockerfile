#!/bin/bash

dir=${DIR}
interval=${PULL_INTERVAL-10s}
webhook_method=${WEBHOOK_METHOD-GET}

u=""
if [ "$WEBHOOK_USERNAME" != "" ] && [ "$WEBHOOK_PASSWORD" != "" ]; then
   u="-u $WEBHOOK_USERNAME:$WEBHOOK_PASSWORD"
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
      if ["${WEBHOOK_URL}" != ""]; then
        curl -v -X${webhook_method} $u ${WEBHOOK_URL}
      fi
    fi
done