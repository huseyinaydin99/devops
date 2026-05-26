sudo dnf update --releasever=latest

sudo yum update


#!/bin/bash

# System update
sudo apt-get update -y

# Java install (örnek backend için)
sudo apt-get install -y openjdk-17-jdk

# Docker install
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# App setup (örnek)
mkdir -p /app
cd /app