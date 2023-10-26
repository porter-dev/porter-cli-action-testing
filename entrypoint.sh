#!/usr/bin/env bash

: "${INPUT_COMMAND:?input \"command\" not set or empty}"

echo "====> Start Docker Info"
docker info
echo "====> End Docker Info"

echo "====> Start env"
env
echo "====> End env"

/bin/sh -c "porter $INPUT_COMMAND"
