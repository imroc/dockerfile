#!/usr/bin/env bash

source /hooks/common/git-mdbook-trigger.sh

hook::trigger() {
  common::run_check kubernetes-guide
}

common::run_hook "$@"