#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v semgrep &> /dev/null ; then
    echo "semgrep not installed or available in the PATH" >&2
    echo "please check https://github.com/returntocorp/semgrep" >&2
    exit 1
fi

semgrep ci --config=http://sast.netzen.net.id/scan/go
