#! /usr/bin/env bash
set -uvx
set -e
g++ -shared -o get_args_json.ndll \
    -I ~/cmd/neko-2.3.0-win64/include \
    -I ~/common/include \
    get_args_json_ndll.cpp get_args_json.cpp \
    ~/cmd/neko-2.3.0-win64/neko.lib \
    --static
