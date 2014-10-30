#!/bin/sh

PARALLEL_JOBS=$(($(sysctl -n hw.ncpu)-1))

# INSTALL RVM
if [[ ! -d "$HOME/.rvm" ]]; then
  curl -sSL https://get.rvm.io | bash -s stable
fi

# INSTALL RUBIES
rvm install 1.9.3 -j ${PARALLEL_JOBS}
rvm install 2.1 -j ${PARALLEL_JOBS}
rvm alias create default ruby-2.1
rvm use default
rvm cleanup all

# UPDATE RUBYGEMS
gem update --system

# install bundler
gem install bundler --no-document
bundle config --global jobs ${PARALLEL_JOBS}
