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
  exit 0
fi


run_check() {
  if [ ! -d "/$1" ]; then
    cd / && git clone --depth=1 "https://github.com/imroc/$1.git"
  fi
  cd "/$1"
  pullResult=`git pull 2>&1`
  isLatest=`echo $pullResult | grep 'Already up to date'`
  if [ "$isLatest" ]; then
    echo "no new commit"
    exit 0
  fi
  echo "new commit detected, start task to rebuild book"
  echo $pullResult >> /tmp/pull_result.log
  tkn task start mdbook-build-push -n tekton-pipelines -p srcRepo="https://github.com/imroc/$1.git" -p destRepo="https://gitee.com/imroc/$1-book.git" -s gitee-imroc --use-param-defaults
}

repos=("istio-guide" "kubernetes-guide" "learning-linux")

for repo in ${repos[@]}
do
  run_check $repo
done
