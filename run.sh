#!/bin/bash

# move run commands
mv .vimrc ~/
mv .zshrc ~/
mv .tmux.conf ~/

# dont show last login in terminal
touch ~/.hushlogin

# allow applications downloaded from anywhere
sudo spctl --master-disable

# dont show icons on desktop
defaults write com.apple.finder CreateDesktop false

# dont play chime when charger plugged in 
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true; killall PowerChime

# set key repeat on hold
defaults write -g ApplePressAndHoldEnabled -bool false

# disable disk not ejected propely message
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew packages
brew install $(cat packages)

# analytics off
brew analytics off
