#!/bin/bash

# dont show last login in terminal
touch .hushlogin

# allow applications downloaded from anywhere
sudo spctl --master-disable

# dont show icons on desktop
defaults write com.apple.finder CreateDesktop false

# set key repeat on hold
defaults write -g ApplePressAndHoldEnabled -bool false


# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew packages
brew install $(cat packages)