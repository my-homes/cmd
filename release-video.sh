#! /usr/bin/env bash
#set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

cd /c/Users/user/Videos/
mirror-media-file.cmd ~/yt-dlp/video .
