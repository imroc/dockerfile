#!/usr/bin/env bash

if [[ $1 == "--config" ]] ; then
  cat <<EOF
{
  "configVersion":"v1",
  "schedule": [
    {
      "name": "every 5 sec",
      "crontab": "*/5 * * * * *"
    }
  ]
}
EOF
else
  if [ ! -d "/istio-guide" ]; then
    cd / && git clone --depth=1 https://github.com/imroc/istio-guide.git
  fi
  cd /istio-guide
  isLatest=`git pull 2>&1 | grep 'Already up to date'`
  if [ "$isLatest" ]; then
    echo "no new commit"
    exit 0
  fi
  echo "new commit detected, start task to rebuild book"
  tkn task start mdbook-build-push -n tekton-pipelines -p srcRepo="https://github.com/imroc/istio-guide.git" -p destRepo="https://gitee.com/imroc/istio-guide-book.git" -s gitee-imroc --use-param-defaults
fi