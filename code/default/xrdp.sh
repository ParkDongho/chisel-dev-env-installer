sudo yum -y install xorgxrdp
sudo yum -y install xrdp tigervnc-server

sudo systemctl start xrdp
sudo systemctl enable xrdp

sudo firewall-cmd --permanent --add-port=3389/tcp
sudo firewall-cmd --reload
