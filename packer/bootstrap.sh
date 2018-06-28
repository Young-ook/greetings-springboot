#!/bin/bash -ue
while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo 'Waiting for cloud-init...'; sleep 1; done

sudo apt-get update
sudo apt-get install -y libpython2.7-dev python-pip libffi-dev libssl-dev

sudo pip install --upgrade pip

cat <<EOT > /tmp/requirements.txt
ansible==2.4.0
awscli
EOT
sudo pip install -r /tmp/requirements.txt
