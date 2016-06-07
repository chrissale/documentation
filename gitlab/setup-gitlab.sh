#!/bin/bash

yum install -y curl openssh-server postfix cronie

service postfix start

chkconfig postfix on

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

yum install -y gitlab-ce

#sudo modprobe bridge

gitlab-ctl reconfigure
