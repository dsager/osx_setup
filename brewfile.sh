#!/bin/bash

# update
brew update
brew upgrade

brew tap homebrew/dupes

formulae=(

  # unix tools
  'coreutils'
  'moreutils'
  'findutils'
  'bash'
  'zsh'
  'gnu-sed --default-names'
  'homebrew/dupes/grep'

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

# CLEANUP
brew cleanup

echo ""
echo "remember to update PATH variable:"
echo " PATH=\$(brew --prefix coreutils)/libexec/gnubin:\$PATH"
