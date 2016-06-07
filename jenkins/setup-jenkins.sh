#!/bin/bash

yum -y update

yum -y upgrade

yum install -y java-1.7.0-openjdk-devel.x86_64

wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz

tar xzf apache-maven-3.3.3-bin.tar.gz -C /usr/local

ln -s /usr/local/apache-maven-3.3.3 /usr/local/maven

ln -s /usr/local/maven/bin/mvn /bin/mvn

yum install -y git

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

yum install -y jenkins

service jenkins start

chkconfig jenkins on
