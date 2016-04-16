#!/bin/bash
# set -x
wget https://get.docker.com
mv index.html getdocker.sh
chmod a+x getdocker.sh
./getdocker.sh
sudo usermod -aG docker `whoami`
rm ./getdocker.sh
echo !!!! Remember to logout and log back in !!!!!

sudo -i
curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m`> /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
exit
