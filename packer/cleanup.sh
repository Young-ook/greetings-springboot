#!/bin/bash -e
#
# This script cleans up the EC2 instance before baking the AMI.

function print_green {
  echo -e "\e[32m${1}\e[0m"
}

print_green 'Clean apt'
sudo apt-get -y autoremove
sudo aptitude clean
sudo aptitude autoclean

print_green 'Remove SSH keys'
[ -f /home/ubuntu/.ssh/authorized_keys ] && rm /home/ubuntu/.ssh/authorized_keys

print_green 'Cleanup log files'
sudo find /var/log -type f -exec truncate -s0 {} \;
if [ -d "/pg" ]; then
  sudo find /pg -type f -name "*.log" -exec truncate -s0 {} \;
fi

print_green 'Cleanup bash history'
unset HISTFILE
[ -f /home/ubuntu/.bash_history ] && rm /home/ubuntu/.bash_history

print_green 'Cleanup ansible temp files'
[ -f /home/ubuntu/.ansible ] && rm -rf /home/ubuntu/.ansible

print_green 'AMI cleanup complete!'
