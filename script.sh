#!/bin/bash

sh -c 'echo -e "[centos]\nname=CentOS $releasever - $basearch\nbaseurl=http://mirror.centos.org/centos/7/os/\$basearch/\nenabled=1\ngpgcheck=1\ngpgkey=http://mirror.centos.org/centos/7/os/\$basearch/RPM-GPG-KEY-CentOS-7" > /etc/yum.repos.d/centos.repo'

yum clean all

yum install epel-release -y

yum update -y

yum install git ansible wget -y

if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen -q -f ~/.ssh/id_rsa -N ""
	cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
	ssh -o StrictHostKeyChecking=no localhost "pwd" < /dev/null
fi

cd /tmp

git clone https://github.com/itikabc/ansible-tower.git

cd /tmp/ansible-tower

ansible-playbook -i inventory ansible-tower.yml

/tmp/lastcommand.sh
