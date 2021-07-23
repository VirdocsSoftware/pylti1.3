#!/bin/bash

python3 --version

echo "upgrading pip"
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade build
pip --version

echo "installing JFrog CLI"
wget -qO - https://releases.jfrog.io/artifactory/api/gpg/key/public | apt-key add -
echo "deb https://releases.jfrog.io/artifactory/jfrog-debs xenial contrib" | tee -a /etc/apt/sources.list
apt update
apt install -y jfrog-cli
jfrog -v