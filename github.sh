#!/bin/bash

git config --global user.email zxiaolong.m@outlook.com
git config --global user.name zxiaolong

install -m 600 id_rsa ~/.ssh/id_rsa
install -m 600 id_rsa.pub ~/.ssh/id_rsa.pub

echo "ssh -T git@github.com"
echo "ssh -vT git@github.com"
