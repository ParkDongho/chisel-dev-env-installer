sudo yum -y install xorgxrdp
sudo yum -y install xrdp tigervnc-server

firewall-cmd --add-service=xrdp --permanent
firewall-cmd --permanent --add-port=3389/tcp
firewall-cmd --reload
