#!/usr/bin/env bash
set -euo pipefail

command -v docker >/dev/null 2>&1 || {
    echo >&2 "This script requires the docker to be installed"
    exit 1
}

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

"$SCRIPT_ROOT"/build.sh

docker push kroniak/ssh-client:3.12
docker push kroniak/ssh-client:3.13
docker push kroniak/ssh-client:3.14
docker push kroniak/ssh-client:3.15
docker push kroniak/ssh-client:3.16
docker push kroniak/ssh-client:3.17
docker push kroniak/ssh-client:3.18
docker push kroniak/ssh-client:3.19
docker push kroniak/ssh-client:latest