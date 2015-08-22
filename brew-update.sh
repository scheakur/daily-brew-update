#!/bin/sh

launchctl setenv PATH /usr/local/bin:$PATH

logdir=$HOME/Library/Logs/Homebrew/brew-update/$(date +%Y/%m)
logfile=${logdir}/$(date +%Y-%m-%d-%H%M%S).log

if [ ! -d ${logdir} ]; then
  mkdir -p ${logdir}
fi

brew doctor  >> ${logfile} 2>&1
brew update  >> ${logfile} 2>&1
brew upgrade >> ${logfile} 2>&1
