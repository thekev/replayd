#!/usr/bin/env bash
# wrapper script to fetch payload from replayd
# contents output to stdout
set -eu

CURL=$(which curl)

if [ $? -ne 0 ]; then
    echo "The required curl executable is not in your path"
    exit 1
fi
if [ ${#} -lt 1 ]; then
    echo "Usage: $0 <hostname>[:port]"
    exit 1
fi
HOST=${1}

$CURL -L http://${HOST}/
