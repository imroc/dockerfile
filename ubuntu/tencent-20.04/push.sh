#!/usr/bin/env bash

tags=""

for tag in $IMAGES
do
  docker push $tag
done
