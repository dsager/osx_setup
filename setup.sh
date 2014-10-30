#!/bin/sh

# SWITCH TO SCRIPT DIRECTORY
case $0 in
 /*)
   SCRIPT="$0"
   ;;
 *)
   SCRIPT="$PWD/$0"
   ;;
esac
cd `dirname "${SCRIPT}"`

# RUN SUB SCRIPTS
echo "installing brew."
./installers/install_brew.sh
echo "install brew formulae."
./installers/brewfile.sh
echo "install brew casks."
./installers/caskfile.sh
echo "set up ruby."
./installers/setup_ruby.sh
echo "setup osx."
./installers/configure_osx.sh
echo "configure git."
./installers/configure_git.sh

# COPY DOTFILES
echo "copy dotfiles."
cp ./dotfiles/.* ~/
