#!/bin/bash

# yum update -y
yum upgrade -y
yum --enablerepo=extras install epel-release -y
# yum update -y
yum install docker-io -y
chkconfig docker on
# add the vagrant user to the docker group
sudo groupadd docker
sudo usermod -a -G docker vagrant
/sbin/reboot


