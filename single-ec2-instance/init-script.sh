#!/bin/bash -xe
yum update -y
yum install -y httpd
echo "<h1> hello world from $(curl -s http://169.254.169.254/latest/meta-data/instance-id)</h1>" > /var/www/html/index.html
systemctl start httpd