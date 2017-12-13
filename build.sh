#!/bin/sh

set -xe

# Build Raspberry Pi image
(cd rpi && ./build.sh)
