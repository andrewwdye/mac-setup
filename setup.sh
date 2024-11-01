#!/bin/bash

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew install rcmdnk/file/brew-file
brew file set_repo -r https://github.com/andrewwdye/mac-setup
brew file install

# Configure dotfiles

# Other setup

## ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
