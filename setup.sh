#!/bin/sh

file=com.scheakur.daily-brew-update.plist

cat $file \
    | sed "s#\${HOME}#`echo $HOME`#" \
    | sed "s#\${PWD}#`pwd`#" \
    > $HOME/Library/LaunchAgents/$file

launchctl load $file
