#!/bin/bash

echo "move .vimrc to ~/"
mv .vimrc ~/
echo "zshrc .vimrc to ~/"
mv .zshrc ~/
echo ".tmux to ~/"
mv .tmux.conf ~/

echo "dont show last login in terminal"
touch ~/.hushlogin

echo "allow applications downloaded from anywhere"
sudo spctl --master-disable

echo "disable dock show delay"
defaults write com.apple.dock autohide-delay -float 0 && killall Dock

echo "dont show icons on desktop"
defaults write com.apple.finder CreateDesktop false

echo "dont play chime when charger plugged in"
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true; killall PowerChime

echo "set key repeat on hold"
defaults write -g ApplePressAndHoldEnabled -bool false

echo "analytics off"
brew analytics off

echo "install brew packages"
brew install $(cat packages.txt)
