#!/bin/bash
set -x
wget https://get.docker.com
mv index.html getdocker.sh
chmod a+x getdocker.sh
./getdocker.sh
sudo usermod -aG docker `whoami`
