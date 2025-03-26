#!/bin/bash
timedatectl set-timezone Europe/Moscow
curl https://main.deceb.ru/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/id*
echo "source /usr/share/bash-completion/completions/systemctl" >> ~/.bash_aliases

apt update && apt upgrade
apt install vim git -y

sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo chmod +x /opt/stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack