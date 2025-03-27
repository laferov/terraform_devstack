#!/bin/bash

timedatectl set-timezone Europe/Moscow
curl https://main.deceb.ru/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/id*
 echo "source /usr/share/bash-completion/completions/systemctl" >> ~/.bash_aliases
 apt update && apt upgrade
 apt install vim git -y


ADMIN_PASSWORD=EtjWhnzfSEov

git clone https://opendev.org/openstack/devstack
  ./devstack/tools/create-stack-user.sh

mv devstack /opt/stack


tee /opt/stack/devstack/local.conf > /dev/null <<EOF
[[local|localrc]]
ADMIN_PASSWORD=${ADMIN_PASSWORD}
DATABASE_PASSWORD=${ADMIN_PASSWORD}
RABBIT_PASSWORD=${ADMIN_PASSWORD}
SERVICE_PASSWORD=${ADMIN_PASSWORD}
EOF

chown -R stack:stack /opt/stack/devstack/

su -c "/opt/stack/devstack/stack.sh" --login stack

echo "Done" > /root/status


