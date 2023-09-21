curl -sSL https://install.pi-hole.net | bash
sudo ufw allow 53/udp comment "DNS"
sudo ufw allow 53/tcp comment "DNS"
