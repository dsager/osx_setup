#!/bin/sh

# UPDATE
brew update
brew upgrade

# DUPES
brew tap homebrew/dupes

# APPS
formulae=(
  # unix tools
  'coreutils'
  'moreutils'
  'findutils'
  'bash'
  'zsh'
  'gnu-sed --default-names'
  'homebrew/dupes/grep'
  'automake'

  ## libs
  'libxml2'
  'libxslt'
  'mhash'
  'xvid'
  'lame'
  'openssl'
  'imagemagick'

  # develop
  'apple-gcc42'
  'php55'
  'redis'
  'python'
  'node'
  'ack'
  'git'
  'hub'
  'jslint4java'
  'chromedriver'
  'docker'
  'boot2docker'
  'heroku-toolbelt'

  # utilities
  'vim --override-system-vi'
  'tree'
  'wget --enable-iri'
  'curl'
  'grep'
  'htop-osx'
  'rename'
  'ffmpeg'
  'trash'
  'ssh-copy-id'
  'figlet'
  'mackup'
  'hicolor-icon-theme'
)
for ((i=0;i<${#formulae[*]};i++)); do
  brew install ${formulae[$i]}
done

# USE INSTALLED OPENSSL
brew unlink openssl && brew link openssl --force

# CLEANUP
brew cleanup
