#!/bin/sh

# Make Directories ######
#
cd ~ 
mkdir dev 
mkdir Downloads
mkdir Documents

# Update Packages #######
#

sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

sudo -y yum install net-tools vim make openssh-server \
  zsh firewalld gcc wget yum-utils openssl-devel bzip2-devel \
  libffi-devel zlib-devel ncurses-compat-libs sqlite-devel \
  tigervnc-server git perl python3 make autoconf flex \
  bison numactl wget
sudo -y yum groupinstall "Development Tools"

# Scala ################
#
sudo yum install java-11-openjdk-devel.x86_64
sudo update-alternatives --config java

sudo rm -f /etc/yum.repos.d/bintray-rpm.repo || true
curl -L https://www.scala-sbt.org/sbt-rpm.repo > sbt-rpm.repo
sudo mv sbt-rpm.repo /etc/yum.repos.d/
sudo yum install sbt

curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs
chmod +x cs
./cs setup
rm cs

# Chipyard(v1.9.0) #######
#
# verilator
sudo yum install -y https://kojipkgs.fedoraproject.org//packages/verilator/4.028/1.el8/x86_64/verilator-4.028-1.el8.x86_64.rpm

# Conda
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
conda config --set auto_activate_base false
conda install -n base conda-lock
conda activate base


# Chipyard
cd dev
git clone https://github.com/ucb-bar/chipyard.git
cd chipyard
git checkout 1.9.0
./build-setup.sh riscv-tools


# ASTRONVIM ################
#
sudo yum install -y neovim python3-neovim

sudo yum install -y cargo
rustup update
cargo install tree-sitter-cli

sudo dnf install ripgrep -y

sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

sudo dnf copr enable atim/bottom -y
sudo dnf install bottom -y

sudo dnf groupinstall "Development Tools" -y
sudo dnf module list nodejs -y
sudo dnf module install nodejs/development -y

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/ParkDongho/astronvim_config ~/.config/nvim/lua/user

nvim



