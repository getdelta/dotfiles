#!/usr/bin/env bash

# Node
npm install -g yarn
npm install -g react-native-cli@2.0.1
npm install -g wml

# Python
easy_install pip
easy_install pjson
easy_install pygments

# Ruby
gem install cocoapods --version 1.8.3

# VSCode
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension flowtype.flow-for-vscode
code --install-extension naumovs.color-highlight
code --install-extension peterjausovec.vscode-docker
code --install-extension zignd.html-css-class-completion
code --install-extension ms-python.python
code --install-extension mikestead.dotenv
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension vsmobile.vscode-react-native
code --install-extension ecmel.vscode-html-css
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension wix.vscode-import-cost
code --install-extension wayou.vscode-todo-highlight
rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# Terminal
open init/wouterds.terminal
