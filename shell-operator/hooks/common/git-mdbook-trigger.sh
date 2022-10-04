common::run_hook() {
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
    hook::trigger
  fi
}

common::run_check() {
  if [ ! -d "/$1" ]; then
    cd / && git clone --depth=1 "https://github.com/imroc/$1.git"
  fi
  cd "/$1"
  isLatest=`git pull 2>&1 | grep 'Already up to date'`
  if [ "$isLatest" ]; then
    echo "no new commit"
    exit 0
  fi
  echo "new commit detected, start task to rebuild book"
  tkn task start mdbook-build-push -n tekton-pipelines -p srcRepo="https://github.com/imroc/$1.git" -p destRepo="https://gitee.com/imroc/$1-book.git" -s gitee-imroc --use-param-defaults
}