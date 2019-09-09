#!/bin/bash
#
# Script for installing SPF-CellTracker dependencies on Mac using Homebrew
#
# After running this script, `cd` to the `src` directory and type `make` to
# build the SPF binaries.

PACKAGES=(
	opencv@2
	opencv@3
	gcc
	gcc@9
	freeglut
)

CASKS=(
	xquartz 
)

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew tap caskroom/cask

echo "Installing cask apps..."
brew cask install ${CASKS[@]}
