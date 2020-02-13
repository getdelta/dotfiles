#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Packages
brew install git
brew install bash
brew install zsh
brew install nano
brew install grep
brew install openssh
brew install rename
brew install coreutils
brew install findutils
brew install autoconf
brew install curl
brew install wget
brew install ruby
brew install python
brew install node
brew install htop
brew install ctop
brew install screen
brew install watch
brew install watchman
brew install ssh-copy-id
brew install diff-so-fancy
brew install thefuck
brew install docker-compose
brew install mas
brew install cask
brew install awscli
brew install tig
brew install hub
brew install ios-deploy
brew tap cjbassi/ytop && brew install ytop
brew cask install ngrok
brew cask install homebrew/cask-versions/adoptopenjdk8
brew cask install android-sdk
brew cask install android-platform-tools

# Cleanup
brew cleanup
