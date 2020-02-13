#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew cask install android-studio
brew cask install androidtool
brew cask install google-chrome
brew cask install docker
brew cask install sequel-pro-nightly
brew cask install sketch
brew cask install appcleaner
brew cask install zoomus
brew cask install insomnia
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install genymotion
brew cask install charles
brew cask install imageoptim
brew cask install intel-power-gadget

# Mac App Store apps
mas install 425424353 # The Unarchiver
mas install 803453959 # Slack
mas install 497799835 # Xcode

# Cleanup
brew cleanup
