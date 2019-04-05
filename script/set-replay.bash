#!/usr/bin/env bash
# wrapper script to set payload in replayd
set -eu

CURL=$(which curl)

if [ $? -ne 0 ]; then
    echo "The required curl executable is not in your path"
    exit 1
fi
if [ ${#} -lt 2 ]; then
    echo "Usage: $0 <hostname>[:port] <payload>"
    exit 1
fi
HOST=${1}
PAYLOAD=${2}

$CURL -X PUT -d "${PAYLOAD}" -L http://${HOST}/
