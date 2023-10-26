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

set -x
echo "====> Start build"
docker build -f Dockerfile --cache-to type=gha --cache-from type=gha . || true
echo "====> End build"
set +x

sleep 3


/bin/sh -c "porter $INPUT_COMMAND"
