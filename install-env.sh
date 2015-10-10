#!/bin/bash

echo "Starting Server Setup" >> /tmp/webserver_install_log.txt
echo "Working Directory is: " `pwd` >> /tmp/webserver_install_log.txt

sudo apt-get update -y
sudo apt-get install -y apache2

echo "Installed apache2" >> /tmp/webserver_install_log.txt

sudo apt-get install -y git

echo "Installed Git" >> /tmp/webserver_install_log.txt

git clone https://github.com/adubey24/itmo-544-444-fall2015.git

echo "Cloned Git Repo" >> /tmp/webserver_install_log.txt

mv ./itmo-544-444-fall2015/images /var/www/html/images
mv ./itmo-544-444-fall2015/index.html /var/www/html
mv ./itmo-544-444-fall2015/page2.html /var/www/html

echo "Copied images and pages to Apache directory" >> /tmp/webserver_install_log.txt

echo "Hello!" > /tmp/hello.txt



