#!/usr/bin/env bash

# Install my favourite tools using the apt package manager (currently tested only on Debian buster)

PROMPT='[apt-install]'

echo "$PROMPT I hope you're running this script as root!"


# Update apt
sudo apt update -y

# Upgrade any preinstalled packages
sudo apt upgrade -ynp


# ---------------------------------------------
# Programming Languages and Frameworks
# ---------------------------------------------

# NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
nvm use node

# ---------------------------------------------
# Tools I use often
# ---------------------------------------------

# Git, obviously
sudo apt install git -y

# Vim B)
sudo apt install vim -y

# tmux :'D 
sudo apt install tmux -y


# ---------------------------------------------
# Misc
# ---------------------------------------------

# ZSH
sudo apt install zsh -y
chsh -s $(which zsh)

# Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# Spaceship Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Syntax Highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# Auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

# The Fire Code font
sudo apt install fonts-firacode -y

# Cleanup the cache (TODO: set up a cron to do this)
sudo apt autoremove -y
sudo apt clean