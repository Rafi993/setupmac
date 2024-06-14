#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile

# Install Dev tools
brew install git
brew install neovim
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install gh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc
nvm install v18.19.1
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install --locked zellij
brew install lazygit
brew install --cask visual-studio-code

# Install General tools
brew install --cask google-chrome
brew install --cask firefox
brew install --cask raycast
brew install --cask logseq
brew install --cask slack
brew install --cask iterm2
brew install --cask orbstack
brew install font-hack-nerd-font
brew install --cask font-jetbrains-mono-nerd-font

# Setup neovim
git clone https://github.com/Rafi993/neovim-config.git ~/.config/nvim

gh auth login
mkdir $HOME/code
git clone https://github.com/Rafi993/DevScripts.git
./DevScripts/set_alias

