#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt install -y nodejs
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install npm
sudo apt install -y mongodb
mongo --eval 'db.leadknigh2t.insert({
  name: "Chaitanya",
  age: 30,
  website: "beginnersbook.com"
})'
IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
export SERVER_HOST=$IP
wget https://raw.githubusercontent.com/RunsetTech/wireguard-install/master/wireguard-install.sh -O wireguard-install.sh
yes | bash wireguard-install.sh
git clone https://github.com/EchoEkhi/lead-knight
cd lead-knight
npm install
sudo node .
