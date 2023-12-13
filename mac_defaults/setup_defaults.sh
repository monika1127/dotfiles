#!/bin/bash

# change swaping direction
defaults write -g com.apple.swipescrolldirection -bool FALSE

## dock
### turn off showing recent apps in doc
defaults write com.apple.dock show-recents -bool FALSE
### turn on autohide
defaults write com.apple.dock autohide -bool TRUE
### kill Dock to apply changes (it will relaunch automatically)
killall Dock

## always show scrollbar
defaults write -g AppleShowScrollBars -string Always

## control center - might not work
### bt
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -int 1
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Bluetooth" -int 344

### sound
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -int 1
defaults write com.apple.controlcenter "NSStatusItem Preferred Position FocusModes" -int 376

## finder
### show hidden files by default
defaults write com.apple.Finder "AppleShowAllFiles" -bool TRUE

## turn off accented characters when holding down a key - requires logout
defaults write -g ApplePressAndHoldEnabled -bool false
