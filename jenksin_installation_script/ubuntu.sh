#!/bin/bash
# Installation Reference https://www.jenkins.io/doc/book/installing/linux/#debianubuntu


# Install Java
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y

# Install Jenkins
	
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list >/dev/null

sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl daemon-reload

# [Optional] Enable boot start
# sudo systemctl enable jenkins

# Check Jenkins is running or not
sudo systemctl status jenkins

# Start Jenkins services [ Run if jenkins service is not started ]
# sudo systemctl start jenkins
