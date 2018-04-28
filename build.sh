#!/bin/sh

set -xe

# Build Raspberry Pi image
(cd targets/rpi && ./build.sh)
