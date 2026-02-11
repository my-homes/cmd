#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`
sudo apt update
sudo apt install -y emacs
sudo apt install -i gnome-terminal
sudo apt install -y dotnet-sdk-10.0
sudo apt install -y mono-complete libgtk2.0-dev
