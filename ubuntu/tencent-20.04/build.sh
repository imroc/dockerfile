#!/usr/bin/env bash

tags=""

for tag in $IMAGES
do
    tags+="-t $tag "
done

docker buildx build --platform=linux/amd64 $tags .