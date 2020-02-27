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



# Cleanup the cache (TODO: set up a cron to do this)
sudo apt autoremove -y
sudo apt clean