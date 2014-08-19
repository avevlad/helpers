#!/bin/bash
 
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
 
apt-get install -y python-software-properties
 
add-apt-repository -y ppa:ondrej/php5
apt-get update
apt-get install -y php5-cli php5-fpm php5-mysql php5-apcu php5-intl php5-gd php5-curl
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
 
add-apt-repository -y ppa:ondrej/mysql-5.6
apt-get update
apt-get install -y mysql-server
 
add-apt-repository -y ppa:nginx/stable
apt-get update
apt-get install -y nginx-full
 
add-apt-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y git-core
 
apt-get install -y ruby1.9.1
gem install rmate
gem install sass
gem install compass


add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs
npm install -g gulp bower coffee-script
 
dpkg-reconfigure tzdata
 
reboot
