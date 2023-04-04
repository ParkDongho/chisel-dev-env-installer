sudo yum -y group list
sudo yum -y groupinstall "Server with GUI"
sudo systemctl set-default graphical

sudo systemctl start xrdp
sudo systemctl enable xrdp
sudo systemctl disable firewalld
sudo systemctl stop firewalld
