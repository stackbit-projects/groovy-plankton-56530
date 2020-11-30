#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fc5653005e6704b0b83e1bc

echo "stackbit-build.sh: finished build"
