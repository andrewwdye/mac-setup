#!/bin/bash

# Install Apple's command line tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew install rcmdnk/file/brew-file
brew file set_repo -r https://github.com/andrewwdye/mac-setup
brew file install

# Configure dotfiles

# Other setup
