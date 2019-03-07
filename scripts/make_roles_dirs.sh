#!/bin/bash

echo making role directroy $1 ...
cd ./roles
mkdir $1
cd $1
mkdir defaults files handlers tasks templates

