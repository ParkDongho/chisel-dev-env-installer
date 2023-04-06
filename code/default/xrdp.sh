sudo yum -y install xorgxrdp
sudo yum -y install xrdp tigervnc-server

sudo firewall-cmd --add-service=xrdp --permanent
sudo firewall-cmd --permanent --add-port=3389/tcp
sudo firewall-cmd --reload
