#!/bin/sh

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

apt-get install -y software-properties-common python-software-properties

apt-get install -y curl


add-apt-repository -y ppa:ondrej/php5
add-apt-repository -y ppa:nginx/stable
add-apt-repository -y ppa:git-core/ppa
apt-get update

# php
apt-get install -y php5-cli php5-fpm php5-mysql php5-apcu php5-intl php5-gd php5-curl
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

apt-get install -y mysql-server
apt-get install -y mysql-client

apt-get install -y nginx-full
apt-get install -y git-core

# ruby
curl -sSL https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm
gem install rmate sass compass

# nodejs
apt-get install -y nodejs
apt-get install -y npm
npm install -g grunt gulp bower coffee-script

echo "Enter username"
read username

adduser $username
adduser $username sudo

dpkg-reconfigure tzdata

reboot
