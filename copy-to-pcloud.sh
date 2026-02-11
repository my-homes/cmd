#! /usr/bin/env bash
#set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

cd "/p/Automatic Upload/"
cwd=`pwd`
mkdir -p @mp3
mkdir -p @480p
mkdir -p @1080p
cd "$cwd/@mp3"
mirror-audio-file.cmd /c/Users/user/Music/@mp3 .
cd "$cwd/@480p"
#mirror-media-file.cmd /c/Users/user/Music/@480p .
cd "$cwd/@1080p"
#mirror-media-file.cmd /c/Users/user/Music/@1080p .
