#!/bin/bash
cd "$(dirname "$0")"
set -e

export ZALLY_VERSION="v2.1.1"
bash download.sh

cd zally

pushd "web-ui"
    yarn && yarn build
popd

docker compose build