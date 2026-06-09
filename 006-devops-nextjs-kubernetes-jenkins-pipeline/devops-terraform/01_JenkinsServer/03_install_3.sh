#!/bin/bash

set -e

# =========================
# SYSTEM UPDATE
# =========================
sudo apt update -y
sudo apt upgrade -y


# =========================
# JAVA (Jenkins compatible)
# =========================
sudo apt install fontconfig openjdk-17-jdk -y

java -version


# =========================
# JENKINS INSTALL (FIXED)
# =========================
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y
sudo apt install jenkins -y

sudo systemctl enable jenkins
sudo systemctl start jenkins


# =========================
# DOCKER INSTALL
# =========================
sudo apt install docker.io -y

sudo systemctl enable docker
sudo systemctl start docker

# Jenkins + ubuntu docker access
sudo usermod -aG docker ubuntu || true
sudo usermod -aG docker jenkins || true

sudo chmod 666 /var/run/docker.sock


# =========================
# BASIC TOOLS
# =========================
sudo apt install -y curl wget unzip git


# =========================
# AWS CLI v2
# =========================
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip


# =========================
# KUBECTL
# =========================
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl


# =========================
# TRIVY
# =========================
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | \
sudo tee -a /etc/apt/sources.list.d/trivy.list

sudo apt update -y
sudo apt install trivy -y


# =========================
# SONARQUBE (Docker)
# =========================
sudo docker run -d \
  --name sonar \
  -p 9000:9000 \
  --restart unless-stopped \
  sonarqube:latest


# =========================
# FINAL RESTART
# =========================
sudo systemctl restart jenkins
sudo systemctl restart docker

echo "SETUP COMPLETE"