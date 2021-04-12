#!/bin/bash 

sudo docker run -it --restart always --name mydb -e MYSQL_ROOT_PASSWORD=letmein -d mysql  --default-authentication-plugin=mysql_native_password
sudo docker run -d --name appdb1 --link mydb:mysql -p 8000:80 --read-only -v /run/apache2/ --tmpfs /tmp -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=letmein -e WORDPRESS_DB_NAME=appdb1 -e WORDPRESS_DB_HOST=mydb wordpress:5.0.0-php7.2-apache

sudo docker run -d --name appdb2 --link mydb:mysql -p 8001:80 --read-only -v /run/apache2/ --tmpfs /tmp -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=letmein -e WORDPRESS_DB_NAME=appdb2 -e WORDPRESS_DB_HOST=mydb wordpress:5.0.0-php7.2-apache

sudo docker run -d --name appdb3 --link mydb:mysql -p 8002:80 --read-only -v /run/apache2/ --tmpfs /tmp -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=letmein -e WORDPRESS_DB_NAME=appdb3 -e WORDPRESS_DB_HOST=mydb wordpress:5.0.0-php7.2-apache
