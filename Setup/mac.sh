#!/usr/bin/env bash

git clone git@github.com:ElianaTroper/Configs.git $HOME/Configs
bash $HOME/Configs/setup.sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# TODO: This installs it, but it launches a new shell instead of continuing

brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep

brew install tmux

# Installs NVM TODO: SWITCH TO GIT INSTALL
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# TODO: Run linter install script
brew install --cask rectangle

# Installs fonts XXX: Untested, might need sudo in the script
rm -r $HOME/Library/Fonts
ln -s $HOME/Configs/Fonts $Home/Library/Fonts
