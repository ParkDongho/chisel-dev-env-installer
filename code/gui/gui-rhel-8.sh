# install GUI
sudo yum -y group list
sudo yum -y groupinstall "Server with GUI"
sudo systemctl set-default graphical

sudo yum groupinstall -y "Server with GUI"

sudo systemctl set-default graphical.target
sudo systemctl default

# XRDP
sudo rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm

sudo yum install -y xrdp tigervnc-server

chcon --type=bin_t /usr/sbin/xrdp
chcon --type=bin_t /usr/sbin/xrdp-sesman

sudo firewall-cmd --permanent --add-port=3389/tcp
sudo firewall-cmd --reload

