sudo yum -y install zsh
sudo yum -y install util-linux-user 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s /bin/zsh
cp -f ./.zshrc ~/.zshrc

cd ~
source .zshrc
