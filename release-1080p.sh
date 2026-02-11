#! /usr/bin/env bash
#set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

cd /c/Users/user/Music/
mkdir -p @1080p
cd @1080p
mirror-media-file.cmd ~/yt-dlp/1080p .
