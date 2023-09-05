#!/bin/bash
cd "$(dirname "$0")"
set -e

export ZALLY_VERSION="v2.1.1"
URL=https://github.com/zalando/zally/archive/refs/tags/${ZALLY_VERSION}.tar.gz

echo "Downloading Zally ${ZALLY_VERSION} from ${URL}"
curl -sL $URL | tar xz
mv zally-* zally