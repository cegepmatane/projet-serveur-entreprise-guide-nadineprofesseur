# Prodédure d'installation du serveur IRC

## Installation du service inspircd

sudo apt-get update
sudo apt install inspircd
sudo ufw allow 6667/tcp
sudo ufw reload
sudo ufw status verbose
