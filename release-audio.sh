#! /usr/bin/env bash
#set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

cd /c/Users/user/Music/
mkdir -p @m4a
cd @m4a
mirror-media-file.cmd ~/yt-dlp/audio .

cd /c/Users/user/Music/
mkdir -p @mp3
cd @mp3
mirror-media-file.cmd ~/yt-dlp/mp3 .
