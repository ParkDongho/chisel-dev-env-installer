sudo yum -y install zsh
sudo yum -y install util-linux-user 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc && cp ./.zshrc ~/.zshrc && source .zshrc
