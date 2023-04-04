firewall-cmd --add-service=ssh --permanent
firewall-cmd --permanent --zone=public --add-port=22/tcp
firewall-cmd --reload
