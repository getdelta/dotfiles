#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Brew versions
brew tap homebrew/versions

# Basics
brew install bash
brew install zsh
brew install zsh-completions

# Install more recent versions of some OS X tools
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install GNU core utilities (those that come with macOS are outdated)
brew install coreutils
brew install findutils

# Some other def tools that are handy
brew install ruby
brew install curl
brew install wget --with-iri
brew install htop
brew install git
brew install ssh-copy-id
brew install autoconf
brew install node
brew install python
brew install python3
brew install josegonzalez/php/php71
brew install josegonzalez/php/composer
brew install docker-compose
brew install mas
brew install cask

# Cleanup
brew cleanup