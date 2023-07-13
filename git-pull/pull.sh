#!/bin/bash

set -u

dir=${DIR}
interval=${PULL_INTERVAL-10s}

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
      if ["$HOOK_COMMAND" != ""]; then
        echo "exec hook command"
        echo $HOOK_COMMAND
        eval $HOOK_COMMAND
      fi
    fi
done