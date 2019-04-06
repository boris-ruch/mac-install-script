#!/bin/bash

echo Install Mac App Store apps first.

# Either use mas-cli (https://github.com/argon/mas) or install manually; apps I need: Bear/Simplenote, Tyme, Polarr, Pixelmator, JPEGmini.
read -p "Press any key to continue… " -n1 -s
echo '\n'

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade

# Install my brew packages
brew install docker
brew install git
brew install gradle
brew install maven
brew install node
brew install terraform


# Install cask
brew tap phinze/homebrew-cask

# Install desired cask packages
brew cask install intellij-idea
brew cask install firefox
brew cask install google-chrome
brew cask install adoptopenjdk8
brew cask install dashlane
brew cask install atom


# Remove brew cruft
brew cleanup

# Link
brew link intellij-idea