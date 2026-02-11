#! /usr/bin/env bash
case "$OSTYPE" in
  linux*)   echo "Linux" ;;
  darwin*)  echo "macOS" ;;
  cygwin*)  echo "Cygwin" ;;
  msys*)    echo "MSYS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac
