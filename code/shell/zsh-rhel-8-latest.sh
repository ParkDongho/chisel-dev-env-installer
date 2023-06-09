#!/bin/sh
echo "=========================="
echo "RUN : zsh-rhel-8-latest.sh"
echo "=========================="

sudo yum -y install zsh
sudo yum -y install util-linux-user
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

cp ./.zshrc ~/.zshrc
source ~/.zshrc

echo "==========================="
echo "EXIT : zsh-rhel-8-latest.sh"
echo "==========================="
