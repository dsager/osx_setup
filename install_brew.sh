#!/bin/bash
echo "installing homebrew..."
!#/bin/bash
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update