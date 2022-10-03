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
  if [ ! -d "/kubernetes-guide" ]; then
    cd / && git clone --depth=1 https://github.com/imroc/kubernetes-guide.git
  fi
  cd /kubernetes-guide
  isLatest=`git pull 2>&1 | grep 'Already up to date'`
  if [ "$isLatest" ]; then
    echo "no new commit"
    exit 0
  fi
  echo "new commit detected, start task to rebuild book"
  tkn task start mdbook-build-push -n tekton-pipelines -p srcRepo="https://github.com/imroc/kubernetes-guide.git" -p destRepo="https://gitee.com/imroc/kubernetes-guide-book.git" -s gitee-imroc --use-param-defaults
fi