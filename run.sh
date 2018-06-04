#!/bin/bash

args="$@"

args="$@ -p 80"

file=/data/db.json
if [ -f $file ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

file=/data/file.js
if [ -f $file ]; then
    echo "Found file.js seed file, trying to open"
    args="$args file.js"
fi


id=$ID_MAP
echo $id
if [[ -v ID_MAP ]]; then
  args="$args --id $id"
fi

echo "Command to execute:[ json server $args ]"

json-server $args
