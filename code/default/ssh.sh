echo "================================"
echo "RUN : ssh.sh"
echo "================================"

sudo firewall-cmd --add-service=ssh --permanent
sudo firewall-cmd --permanent --zone=public --add-port=22/tcp
sudo firewall-cmd --reload

echo "================================"
echo "EXIT : ssh.sh"
echo "================================"
