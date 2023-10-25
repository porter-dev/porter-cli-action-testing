#!/usr/bin/env bash

: "${INPUT_COMMAND:?input \"command\" not set or empty}"

echo "====> runtime environment"
env
echo "====> end runtime environment"

/bin/sh -c "porter $INPUT_COMMAND"
