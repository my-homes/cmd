#! /usr/bin/env bash
#set -uvx
set -e
#git-tree.sh | xargs -i ls -l {}|awk '{ printf "%8s %s\n",$5,$9 }'
git-tree.sh | xargs -i show-file-size.exe {}
