#!/bin/sh

# UPDATE
brew update
brew upgrade

## CASK
brew install caskroom/cask/brew-cask

## APPS
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" intellij-idea
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" screenflick
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" quicklook-json
brew cask install --appdir="/Applications" qlmarkdown
brew cask install --appdir="/Applications" flash
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" shiori
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" mailbox
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" transmission
brew cask install --appdir="/Applications" adium
brew cask install --appdir="/Applications" dash
brew cask install --appdir="/Applications" marked
brew cask install --appdir="/Applications" insync
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="/Applications" bittorrent-sync
brew cask install --appdir="/Applications" skitch
brew cask install --appdir="/Applications" gimp
brew cask install --appdir="/Applications" keepassx
brew cask install --appdir="/Applications" balsamiq-mockups
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" picasa
# iawriter
# wunderlist
# postman
# pocket
# ? filezilla
# ? Kitematic
# ? LibreOffice
# ? MKVtools
# ? Popcorn-Time
# ? Steam
# ? Unarchiver
# ? TweetDeck
# ? unetbootin
# ? XLD
# ? Android File Transfer
# ? Amazon MP3 Downloader
# ? Aquamacs

## FONTS
brew cask install font-meslo-lg-for-powerline

# CLEANUP
brew cleanup
