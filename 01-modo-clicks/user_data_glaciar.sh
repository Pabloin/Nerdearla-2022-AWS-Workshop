#!/bin/bash
yum update -y
yum install httpd -y
yum install git -y
service httpd start
chkconfig httpd on

cd /var/www/html
echo "Hello!" > index.html

git clone https://github.com/Pabloin/Nerdearla-2022-AWS-Workshop.git
unzip Nerdearla-2022-AWS-Workshop/00-web-site-glaciar/aws-site-glaciar.zip
cp -r site/* /var/www/html/

