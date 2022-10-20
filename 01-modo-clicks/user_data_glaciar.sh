#!/bin/bash
yum update -y
yum install httpd -y
yum install git -y
service httpd start
chkconfig httpd on

cd /var/www/html
echo "Hello!" > index.html

git clone https://github.com/uade-arqit/lab-aws.git
unzip lab-aws/00-web-site-glaciar/lab-02/aws-site-glaciar.zip
cp -r lab-02/site/* /var/www/html/

