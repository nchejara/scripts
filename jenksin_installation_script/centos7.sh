#!/bin/bash
# Installation Reference https://www.jenkins.io/doc/book/installing/linux/#red-hat-centos

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum -y upgrade

# Add required dependencies for the jenkins package
sudo yum -y install java-11-openjdk

# Install jenkins
sudo yum -y install jenkins
sudo systemctl daemon-reload

# Enable boot start
sudo systemctl enable jenkins

# Start Jenkins services
sudo systemctl start jenkins
sudo systemctl status jenkins
