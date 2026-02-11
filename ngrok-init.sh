#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

ngrok config add-authtoken 3mH42amz7ipHbsgNpArTH_7sAnowxr12VzCKDbiaewW
