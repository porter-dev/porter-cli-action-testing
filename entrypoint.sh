#!/usr/bin/env bash

: "${INPUT_COMMAND:?input \"command\" not set or empty}"

echo "====> Start Docker Info"
docker info
echo "====> End Docker Info"

echo "====> Start buildx ls"
docker buildx ls
echo "====> End buildx ls"

echo "====> Start env"
env
echo "====> End env"

docker buildx create --use
echo "====> Start build"
docker build -f Dockerfile --cache-to type=gha --cache-from type=gha .
echo "====> End build"

/bin/sh -c "porter $INPUT_COMMAND"
