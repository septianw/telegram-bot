#!/bin/bash

#sed -i 's/archive.ubuntu.com/172.17.0.1:3142/g' /etc/apt/sources.list
apt-get update
apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git g++ libjansson-dev libpython-dev expat libexpat1-dev python curl wget vim
