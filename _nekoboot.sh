#! /usr/bin/env bash
set -e
sdir="$(dirname "$0")"
neko $sdir/nekoboot.n $*
