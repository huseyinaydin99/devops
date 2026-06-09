#!/bin/bash  # Bu script Bash shell ile çalıştırılır

sudo apt update  # Paket listelerini günceller (repo index yenilenir)
sudo apt upgrade -y  # Sistemdeki tüm paketleri en güncel sürüme yükseltir (-y otomatik onay verir)


# java kurulumu
sudo apt install openjdk-21-jdk -y  # Java 21 JDK kurar (Jenkins ve build işlemleri için gerekli)
/usr/bin/java –version  # Java sürümünü kontrol eder (NOT: burada tire karakteri hatalı olabilir -> "-version" olmalı)


# jenkins kurulumu
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \  # Jenkins repo key dosyasını indirir
https://pkg.jenkins.io/debian/jenkins.io-2026.key  # Jenkins resmi GPG key kaynağı

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \  # Paket kaynağını sistem repository listesine ekler
https://pkg.jenkins.io/debian binary/ | sudo tee \  # Jenkins Debian repository adresi
/etc/apt/sources.list.d/jenkins.list > /dev/null  # Repo listesini dosyaya yazar

sudo apt update  # Jenkins repo eklendiği için paket listesi tekrar güncellenir
sudo apt install jenkins -y  # Jenkins CI/CD server kurulumu yapılır
sudo systemctl enable jenkins  # Jenkins servisi sistem açılışında otomatik başlatılır
sudo systemctl start jenkins  # Jenkins servisi hemen başlatılır
sudo systemctl status jenkins  # Jenkins servis durumunu kontrol eder


# docker kurulumu
sudo apt-get update  # Paket listesi güncellenir (Docker kurulumu öncesi)
sudo apt-get install docker.io -y  # Docker engine kurulumu yapılır
sudo usermod -a -G docker $USER  # Mevcut kullanıcıyı docker grubuna ekler (sudo’suz docker kullanımı için)
#sudo usermod -aG docker ubuntu  # Alternatif kullanıcı ekleme (ubuntu user için)
sudo usermod -aG docker jenkins  # Jenkins kullanıcısına docker yetkisi verir (CI pipeline için)
newgrp docker  # Grup değişikliğini aktif eder (oturum yeniler)
sudo chmod 777 /var/run/docker.sock  # Docker socket’e full erişim verir (güvenlik açısından zayıf ama pratik çözüm)


# sonarqube container çalıştırma
docker run -d --name sonar -p 9000:9000 --restart unless-stopped sonarqube:latest
# SonarQube container’ını arka planda çalıştırır (code quality analysis aracı)

# Bilgisayar açıldığında container yönetimi notları
# docker ps -a  # Tüm containerları listeler
# docker start SONAR_CONTAINER_ID  # Duran container’ı başlatır

# alternatif run komutu (multi-line format)
# docker run -d
#  --name sonarqube \
#  -p 9000:9000 \
#  --restart unless-stopped \
#  sonarqube:latest


# trivy kurulumu (container vulnerability scanner)
sudo apt-get install wget apt-transport-https gnupg lsb-release -y  # Gerekli bağımlılıkları kurar
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
# Trivy GPG key indirir ve sisteme ekler

echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
# Trivy repository sistem kaynaklarına eklenir

sudo apt-get update  # Yeni repo eklendiği için paket listesi güncellenir
sudo apt-get install trivy -y  # Trivy vulnerability scanner kurulur


# curl kurulumu
sudo apt install curl  # HTTP istekleri yapmak için curl aracı kurulur


# aws cli v2 kurulumu
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  # AWS CLI installer indirilir
sudo apt install unzip  # ZIP dosyalarını açmak için unzip kurulur
unzip awscliv2.zip  # AWS CLI zip dosyası açılır
sudo ./aws/install  # AWS CLI sistem kurulumunu yapar


# kubectl kurulumu (Kubernetes CLI)
curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
# kubectl binary dosyası indirilir (Kubernetes yönetim aracı)

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# kubectl sistem PATH’e eklenir


# eksctl kurulumu (EKS cluster yönetim aracı)
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
# eksctl sıkıştırılmış paket indirip açar

cd /tmp  # Geçici dizine geçilir
sudo mv /tmp/eksctl /bin  # eksctl binary sistem PATH’e taşınır


# sistem güncellemesi
sudo apt update  # Paket listesi güncellenir
sudo apt upgrade -y  # Sistem tekrar güncellenir

# EKS cluster oluşturma notları
# eksctl create cluster --name my-workspace-cluster \
# --region us-east-1 \
# --node-type t3.xlarge \
# --nodes 2  # 2 node’lu Kubernetes cluster oluşturur


### Helm kurulumu (Kubernetes package manager)
# curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
# chmod 700 get_helm.sh  # Script’e çalıştırma izni verir
# ./get_helm.sh  # Helm kurulumunu başlatır
# helm version  # Kurulum doğrulama

# helm repo add stable https://charts.helm.sh/stable  # Stable Helm repo eklenir
# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts  # Prometheus repo eklenir

# kubectl create namespace prometheus  # Prometheus için namespace oluşturulur
# helm install stable prometheus-community/kube-prometheus-stack -n prometheus  # Monitoring stack kurulumu
# kubectl get pods -n prometheus  # Pod’ların durumunu kontrol eder


### ArgoCD kurulumu
# (burada manifest veya helm ile GitOps deployment yapılır)


# makineyi yeniden başlatma (son adım)
sudo reboot  # Sunucuyu yeniden başlatır (tüm kurulumları finalize eder)