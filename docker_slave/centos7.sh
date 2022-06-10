#!/bin/bash

## Installation Reference: https://docs.docker.com/engine/install/centos/

# Install JDK
yum install -y java-1.8.0-openjdk

# Uninstall Old Versions
yum remove -y docker \
            docker-client \
            docker-client-latest \
            docker-common \
            docker-latest \
            docker-latest-logrotate \
            docker-logrotate \
            docker-engine
			
# Set up Repository
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker Compose
curl -L  "https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose


# Start Docker
systemctl start docker

# Enable auto start on boot 
systemctl enable docker


# Add current user in the Docker group to avoid sudo
usermod -aG docker $(whoami)
