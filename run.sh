#!/bin/bash

# dont show last login in terminal
touch .hushlogin

# allow applications downloaded from anywhere
sudo spctl --master-disable

# dont show icons on desktop
defaults write com.apple.finder CreateDesktop false

# install brew packages
brew install $(cat packages)

# set key repeat on hold
defaults write -g ApplePressAndHoldEnabled -bool false