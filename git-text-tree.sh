#! /usr/bin/env bash
# https://stackoverflow.com/questions/18973057/how-to-list-all-text-non-binary-files-in-a-git-repository
git.exe grep --cached -Il '' | cat
