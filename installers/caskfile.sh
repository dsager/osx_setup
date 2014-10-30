#!/bin/sh

## UPDATE
brew update
brew upgrade

## CASK
brew install caskroom/cask/brew-cask

## APPS
apps=(
  'dropbox'
  'google-drive'
  'insync'
  'bittorrent-sync'
  'filezilla'
  'firefox'
  'google-chrome'
  'flash'

  'the-unarchiver'
  'alfred'
  'spotify'
  'mailbox'
  'vlc'
  'transmission'
  'jdownloader'
  'skype'
  'adium'
  'libreoffice'
  'steam'
  'keepassx'
  'onepassword'
  'handbrake'
  'telephone'
  'kindle'

  'intellij-idea'
  'virtualbox'
  'vagrant'
  'kitematic'
  'quicklook-json'
  'qlmarkdown'
  'iterm2'
  'atom'
  'dash'
  'marked'
  'sourcetree'
  'aquamacs'

  'flux'
  'appcleaner'
  'caffeine'
  'screenflick'
  'unetbootin'
  'xld'
  'android-file-transfer'
  'skitch'
  'gimp'
  'picasa'
  'balsamiq-mockups'

  # not avilable:
  # iawriter
  # wunderlist
  # postman
  # pocket
  # mkvtools
  # popcorn-time
  # tweetdeck
)
for ((i=0;i<${#apps[*]};i++)); do
  echo "brew cask install --appdir='/Applications' ${apps[$i]}"
done

## FONTS
brew cask install 'font-meslo-lg-for-powerline'

## CLEANUP
brew cleanup
