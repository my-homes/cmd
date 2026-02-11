#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`
sudo apt update
sudo apt install -y emacs
sudo apt install -y gnome-terminal
sudo apt install -y dotnet-sdk-10.0
sudo apt install -y mono-complete libgtk2.0-dev
wget -nc -T 8 -O /tmp/dart.deb https://storage.googleapis.com/dart-archive/channels/stable/release/latest/linux_packages/dart_3.11.0-1_amd64.deb
sudo dpkg -i /tmp/dart.deb
