sudo apt-get install -y screen aptitude iptables net-tools rsync tcpd firewalld
sudo firewall-cmd --add-service http --permanent
sudo firewall-cmd --add-service dns --permanent
