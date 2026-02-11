#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

scoop install gh
scoop update gh

cp -p /c/Users/user/scoop/apps/gh/current/bin/gh.exe ~/cmd/
