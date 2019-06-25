#!/bin/sh

# install utils
sudo apt-get install -y git vim openssh-server

# install shadowsocks
sudo apt-get install -y python-pip
sudo pip install git+https://github.com/shadowsocks/shadowsocks.git@master

# install proxy
sudo apt install -y proxychains polipo

echo "socks5 127.0.0.1 1080" > /etc/proxychains.conf

echo 'socksParentProxy = "localhost:1080"' > /etc/polipo/config
echo "socksProxyType = socks5" > /etc/polipo/config

sudo service polipo stop
sudo service polipo start


