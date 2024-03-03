#!/bin/bash

# basic init
sudo apt update
sudo apt-get update
sudo apt upgrade

# install neofetch
sudo apt install neofetch

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# install ripgrep
$ sudo apt-get install ripgrep

# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# install gh cli
sudo mkdir -p -m 755 /etc/apt/keyrings && wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# install python3-pip
sudo apt install python3-pip

# install conda
# download installer
wget https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
# check hash
sha256sum Anaconda3-2024.02-1-Linux-x86_64.sh
# run installer
bash Anaconda3-2024.02-1-Linux-x86_64.sh
