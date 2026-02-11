#! /usr/bin/env bash
set -e
#$JAVA_HOME_8/bin/java -Dfile.encoding=UTF-8 -jar $HOME/cmd/kawa-3.1.1.jar $*
#$JAVA_HOME_21/bin/java -Dfile.encoding=UTF-8 -jar $HOME/cmd/kawa-3.1.1.jar $*
$JAVA_HOME_21/bin/java -Dfile.encoding=UTF-8 -cp $HOME/cmd/kawa-3.1.1.jar kawa.repl $*
