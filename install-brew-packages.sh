#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install git
brew install bash
brew install zsh
brew install zsh-completions
brew install nano
brew install grep
brew install openssh
brew install screen
brew install watchman
brew install rename
brew install coreutils
brew install findutils
brew install gpg
brew install telnet
brew install ruby
brew install curl
brew install wget
brew install htop
brew install ctop
brew install ssh-copy-id
brew install diff-so-fancy
brew install autoconf
brew install node
brew install python
brew install php72
brew install composer
brew install thefuck
brew install certbot
brew install docker-compose
brew install watch
brew install speedtest-cli
brew install wakeonlan
brew install mas
brew install cask
brew install tor
brew install graphicsmagick
brew install imagemagick
brew install cocoapods
brew install wpscan
brew install glances
brew install translate-shell
brew install awscli
brew install tig
brew install ffmpeg
brew install gifski
brew install ios-deploy

# Cleanup
brew cleanup
