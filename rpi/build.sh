#!/bin/sh

set -xe
curl -sSL -o package.json https://github.com/node-red/node-red-docker/raw/master/package.json
docker build -t mruettgers/rpi-nodered .
[ ! -f package.json ] || rm package.json