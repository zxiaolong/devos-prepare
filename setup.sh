#!/bin/sh

echo "function: setup_tmux"
setup_tmux() {
    cp tmux.conf ~/.tmux.conf
    tmux source ~/.tmux.conf
}

echo "function: setup_bashrc"
setup_bashrc() {
    cat bashrc >> ~/.bashrc
    cp bashrc.d ~/ -rf
    mv ~/bashrc.d ~/.bashrc.d
    
}

echo "function: setup_staticip"
setup_staticip() {
    cp interfaces /etc/network/interfaces
}

echo "function: setup_apt"
setup_apt() {
    sudo ls apt/
    sudo cp apt/sources.list.$1 /etc/apt/sources.list
}

echo "function: setup_apt_prereq"
setup_apt_prereq() {
    sudo apt install -y git vim tmux openssh-server
}

echo "function: setup_apt_useful"
setup_apt_useful() {
    sudo apt install -y htop curl dos2unix subversion
}

echo "function: setup_apt_dev"
setup_apt_dev() {
    # for common
    sudo apt install -y gcc make 
    # for openwrt
    sudo apt install -y build-essential subversion libncurses5-dev zlib1g-dev gawk gcc-multilib flex git-core gettext libssl-dev
}

echo "function: setup_nopass"
setup_nopass() {
    echo "usage:"
    echo -e "sudo visudo -f /etc/sudoers.d/YOUR_USER_NAME\n
#add the following line and change the username accordingly
YOUR_USER_NAME ALL=(ALL) NOPASSWD:ALL\n
sudo visudo -c -f /etc/sudoers.d/YOUR_USER_NAME"
}
 
