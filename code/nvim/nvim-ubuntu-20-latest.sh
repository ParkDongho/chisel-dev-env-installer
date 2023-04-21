#!/bin/sh
source ../path/bashrc-ubuntu-20.sh

echo "==========================="
echo "RUN : nvim-ubuntu-20-latest.sh"
echo "==========================="

sudo apt-get remove neovim -y
sudo apt autoremove

# install nvim 0.8.x
sudo snap install --beta nvim --classic
 
# install nvim 0.7.x
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update -y
# sudo apt-get install neovim -y

echo "============================"
echo "EXIT : nvim-ubuntu-20-latest.sh"
echo "============================"
