#!/bin/bash

# basic init
sudo apt update
sudo apt-get update
sudo apt upgrade

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# install ripgrep
$ sudo apt-get install ripgrep

# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

