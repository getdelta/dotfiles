#!/usr/bin/env bash

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	--exclude "init/" --exclude "brew-install-apps.sh" --exclude "brew.sh" \
	--exclude "other-tweaks.sh" --exclude "README.md" --exclude "macos.sh" --exclude "osx.sh" -avh --no-perms . ~;
source ~/.bash_profile;

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

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
brew install wget --with-iri
brew install git
brew install ssh-copy-id
brew install ruby
brew install curl
brew install autoconf
brew install node
brew install python
brew install python3
brew install josegonzalez/php/php71
brew install josegonzalez/php/composer
brew install cask

# Caskroom versions
brew tap caskroom/versions

# Install some apps
brew cask install google-chrome --appdir=/Applications
brew cask install google-drive --appdir=/Applications
brew cask install dropbox --appdir=/Applications
brew cask install keepingyouawake --appdir=/Applications
brew cask install docker --appdir=/Applications
brew cask install atom --appdir=/Applications
brew cask install phpstorm --appdir=/Applications
brew cask install spotify --appdir=/Applications
brew cask install spotify-notifications --appdir=/Applications
brew cask install skype --appdir=/Applications
brew cask install transmission --appdir=/Applications
brew cask install spectacle --appdir=/Applications
brew cask install viscosity --appdir=/Applications
brew cask install sequel-pro-nightly --appdir=/Applications
brew cask install smcfancontrol --appdir=/Applications
brew cask install sketch --appdir=/Applications
brew cask install kibako --appdir=/Applications
brew cask install alfred --appdir=/Applications
brew cask install knock --appdir=/Applications
brew cask install application-loader --appdir=/Applications
brew cask install rescuetime --appdir=/Applications
brew cask install vlc --appdir=/Applications
brew cask install bartender --appdir=/Applications

# Cleanup
brew cleanup

# Cat with syntax highlighting
easy_install Pygments
echo '' >> ~/.aliases
echo '# Cat with syntax highlighting' >> ~/.aliases
echo 'alias cat="pygmentize -g"' >> ~/.aliases

# The fuck
brew install thefuck
echo '' >> ~/.aliases
echo '# Fuck alias' >> ~/.aliases
echo 'eval "$(thefuck --alias)"' >> ~/.aliases

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"