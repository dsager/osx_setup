#!/bin/sh

# update
brew update
brew upgrade

# unix tools
brew install coreutils
brew install moreutils
brew install findutils
brew install bash
brew install zsh
brew install gnu-sed --default-names
brew tap homebrew/dupes
brew install homebrew/dupes/grep
echo "remember to update PATH variable:"
echo " PATH=\$(brew --prefix coreutils)/libexec/gnubin:\$PATH"

# develop
brew install apple-gcc42
brew install php55
brew install redis
brew install python
brew install node
brew install ack
brew install git
brew install hub
brew install postgresql
brew install sqlite
brew install jslint4java
brew install chromedriver
brew install docker
brew install boot2docker

# utilities
brew install vim --override-system-vi
brew install tree
brew install wget --enable-iri
brew install curl
brew install grep
brew install htop-osx
brew install rename
brew install ffmpeg
brew install trash
brew install ssh-copy-id
brew install figlet
brew install mackup
brew install hicolor-icon-theme

## libs
brew install libxml2
brew install libxslt
brew install mhash
brew install xvid
brew install lame
brew install openssl
brew install imagemagick

# CLEANUP
brew cleanup
