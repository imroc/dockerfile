#!/usr/bin/env bash

source /hooks/common/git-mdbook-trigger.sh

hook::trigger() {
  common::run_check learning-linux
}

common::run_hook "$@"