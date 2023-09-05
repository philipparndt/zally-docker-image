#!/bin/bash
cd "$(dirname "$0")"
set -e

cd zally

pushd "web-ui"
    yarn
    yarn build
popd

export COMPOSE_PROJECT_NAME=zally
docker compose build
