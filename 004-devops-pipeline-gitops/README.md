# ☁️ AWS DevOps Pipeline — GitOps

### 🖥️ DevOps - Local
![DevOps Local.jpg](img/DevOps%20Local.jpg)

### ☁️ DevOps - Cloud
![DevOps Cloud.jpg](img/DevOps%20Cloud.jpg)

---

## 📌 AWS Kaynaklarının ARN Standart Adres Yolları

```
arn:aws:resource-groups:us-east-1:1111111:group/Arge_Departmani_Kaynaklari

arn:aws:account        :          :1111111:account

arn:aws:iam:           :1111111:user/huseyinaydin
```

## 🔑 AWS Management Console Giriş Adresleri

**AWS Hesap ID Numaranız:** `1111 2222 3333`

```
https://111122223333.signin.aws.amazon.com/console
```

---

AWS ID yerine oluşturduğun bir **Firma Adı** ile giriş adresi:

**Firma Adı:** `AydinSoft`

```
https://AydinSoft.signin.aws.amazon.com/console
```

---

## 🔐 Parola Kuralımız

- 1 büyük harf
- 1 küçük harf
- 1 sayı
- 1 simge

```
Adana_01
Ankara_06
Antalya_07
Izmir_35
Istanbul_34
Trabzon_61
Agri_004
```

---

## 🛠️ Amazon CLI — Kurulum

📎 https://aws.amazon.com/cli/

---

## 📚 AWS CLI Komut Referansı

📎 https://docs.aws.amazon.com/cli/latest/

---

## 🗝️ Access Key Oluşturma

Terminalden AWS'ye erişmek için Access Key oluşturacağız.

```
Kullanıcı Adı → Security Credentials → Create Access Key
```

📎 https://us-east-1.console.aws.amazon.com/iam/home?region=us-east-1#security_credential

---

**Access Key**
```
AAAAAAAAAAA
```

**Secret Access Key**
```
BBBBBBBBBBBB
```

---

Terminali aç ve aşağıdaki komutları çalıştır:

```bash
aws --version
```

```bash
aws configure
```

```
AWS Access Key ID [****************]: AAAAAAAAAAAAA
AWS Secret Access Key [****************]: BBBBBBBBB
Default region name [us-east-1]: us-east-1
Default output format [None]: json
```

```bash
aws ec2 describe-instances
```

---

## 🖱️ PuTTY

📎 https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

---

---

## ⚙️ Makine 1 : My Jenkins Master

> ⚠️ **Public IP numaralarını Elastic IP ile mutlaka sabitliyoruz!**

📎 https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Addresses:

---

### 🔌 SSH Bağlantısı (macOS)

Instances listesinden makineyi seç → **Connect** düğmesine bas → **SSH Client** sekmesini aç.

Terminalden `My-Ubuntu-Key.pem` konumuna git:

```bash
chmod 400 "My-Ubuntu-Key.pem"
```

```bash
ssh -i "My-Ubuntu-Key.pem" ubuntu@ec2-PUBLIC_IP.compute-1.amazonaws.com
```

### 🔌 SSH Bağlantısı (Windows)

Windows üzerinden **MobaXterm** ile SSH bağlantısını kurduk.

---

### 🔄 Makineyi Güncelleme

```bash
sudo apt update

sudo apt upgrade -y
```

### 🏷️ Makineye İsim Verme

İç IP yerine makineye anlamlı bir isim veriyoruz:

```bash
sudo nano /etc/hostname
```

**Makinemizin adı:** `My-Jenkins-Master`

- `Ctrl + X` → Çıkış
- `Y` → Onayla
- `Enter` → Kaydet

### 🔁 Makineyi Yeniden Başlatma

```bash
sudo reboot
```

Ya da:

```bash
sudo init 6
```

---

### 🔓 Port Açma

`EC2 → Security Groups → Inbound Rules → Edit Inbound Rules`

> **8080** portunu erişime açıyoruz.

---

### ☕ Java Kurulumu

Terminale sadece `java` yaz ve Enter tuşuna bas. Açılan komutlardan **21. sürümü** al:

```bash
sudo apt install openjdk-21-jre-headless -y

java --version
```

---

### 🏗️ Jenkins Kurulumu

📎 https://www.jenkins.io/doc/book/installing/linux/

```bash
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
https://pkg.jenkins.io/debian binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
```

```bash
sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins
```

---

Jenkins'e giriş:

```
http://PUBLIC_IP:8080/login
```

İlk kurulum parolasını terminalde görüntüle:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

> Varsayılan kurulumları yap. Bu adımda **Git** aracı da makineye otomatik olarak kurulacak.

Plugin Yöneticisi:

```
http://PUBLIC_IP:8080/manage/pluginManager/available
```

> **Pipeline: Stage View** eklentisini kur.

---

---

## ⚙️ Makine 2 : My Jenkins Agent

> ⚠️ **Public IP numaralarını Elastic IP ile mutlaka sabitliyoruz!**

📎 https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Addresses:

---

### 🔌 SSH Bağlantısı (macOS)

Instances listesinden makineyi seç → **Connect** düğmesine bas → **SSH Client** sekmesini aç.

Terminalden `My-Ubuntu-Key.pem` konumuna git:

```bash
chmod 400 "My-Ubuntu-Key.pem"

ssh -i "My-Ubuntu-Key.pem" ubuntu@ec2-PUBLIC_IP.compute-1.amazonaws.com
```

### 🔌 SSH Bağlantısı (Windows)

Windows üzerinden **MobaXterm** ile SSH bağlantısını kurduk.

---

### 🔄 Makineyi Güncelleme

```bash
sudo apt update

sudo apt upgrade -y
```

### 🏷️ Makineye İsim Verme

```bash
sudo nano /etc/hostname
```

**Makinemizin adı:** `My-Jenkins-Agent`

- `Ctrl + X` → Çıkış
- `Y` → Onayla
- `Enter` → Kaydet

### 🔁 Makineyi Yeniden Başlatma

```bash
sudo reboot
```

---

### ☕ Java Kurulumu

Terminale sadece `java` yaz ve Enter tuşuna bas. Açılan komutlardan **21. sürümü** al:

```bash
sudo apt install openjdk-21-jre-headless -y

java --version
```

---

### 🐳 Docker Kurulumu

Terminale sadece `docker` yaz ve Enter tuşuna bas. Açılan komutlardan yararlanacağız:

```bash
sudo apt install docker.io -y
```

Docker grubunu ekliyoruz:

```bash
sudo groupadd docker
```

```bash
sudo usermod -a -G docker $USER
```

veya:

```bash
sudo usermod -aG docker $USER
```

Yeniden başlat:

```bash
sudo reboot
```

---

## 🔗 Makineleri Birbirine Tanıtma

### Agent Makinesi için SSH Yapılandırması

```bash
sudo nano /etc/ssh/sshd_config
```

Aşağıdaki 2 satırın önündeki `#` işaretini kaldır:

```
PubkeyAuthentication yes
AuthorizedKeysFile      .ssh/authorized_keys .ssh/authorized_keys2
```

- `Ctrl + X` → Çıkış
- `Y` → Onayla
- `Enter` → Kaydet

---

### Master Makinesi için SSH Yapılandırması

```bash
sudo nano /etc/ssh/sshd_config
```

**Authentication** kısmına gel. Aşağıdaki iki satırın önündeki `#` işaretini kaldır:

```
PubkeyAuthentication yes
AuthorizedKeysFile      .ssh/authorized_keys .ssh/authorized_keys2
```

- `Ctrl + X` → Çıkış
- `Y` → Onayla
- `Enter` → Kaydet

SSH servisini yeniden yükle:

```bash
sudo service ssh reload
```

veya:

```bash
sudo systemctl reload ssh
```

---

### 🔑 Master Makinede Anahtar Oluşturma

```bash
pwd

cd /home/ubuntu

ssh-keygen
```

Master makinenin takip edilebilmesi için SSH anahtar çifti oluşturulur:

```bash
cd /home/ubuntu/.ssh/

ll

sudo cat id_ed25519.pub
```

Aşağıdaki formattaki satırı kopyalayın:

```
ssh-ed25519 AAAAAAAAAAAAAAAAA ubuntu@My-Jenkins-Master
```

---

### 🔑 Agent Makinede Yetkili Anahtar Ekleme

```bash
cd /home/ubuntu/.ssh/

ll

sudo cat authorized_keys
```

Bu dosyayı aç. Agent, takip edilen taraftır:

```
ssh-rsa BBBBBBBBBBBBBBBBBB MyAWSKeyPair
```

```bash
sudo nano authorized_keys
```

Master'dan aldığın aşağıdaki satırı en alta yapıştır:

```
ssh-ed25519 AAAAAAAAAAAAAAAAA ubuntu@My-Jenkins-Master
```

Master ve Agent makinelerini yeniden başlat:

```bash
sudo reboot
```

---

### 🖥️ Jenkins'e Agent Ekleme

Master makinedeki Jenkins'i aç:

```
http://PUBLIC_IP:8080/computer/(built-in)/configure
```

`Nodes → Built-In Node → Configure`

> **Number of Executors** değerini **0** (sıfır) yap.

Yeni Agent eklemek için:

```
http://PUBLIC_IP:8080/computer/new
```

> **"My-Jenkins-Agent"** adını verip **Permanent Agent** olarak seç.

> Jenkins'te Agent eklerken Agent'ın kendi **private (iç) IP adresini** kullan.

---

### 🔐 Jenkins Credentials için Private Key

```bash
cd /home/ubuntu/.ssh/
sudo cat id_ed25519
```

```
-----BEGIN OPENSSH PRIVATE KEY-----
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
-----END OPENSSH PRIVATE KEY-----
```

---

## 🐙 GitHub Token

```
Token Adı  : MyGitHubTokenAWS
Token Değer: ghp_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
```

> Jenkins'e tanıttık.

---

---

## ⚙️ Makine 3 : SonarQube Sunucusu

> ⚠️ **Public IP numaralarını Elastic IP ile mutlaka sabitliyoruz!**

📎 https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Addresses:

---

### 🔌 SSH Bağlantısı (macOS)

Instances listesinden makineyi seç → **Connect** düğmesine bas → **SSH Client** sekmesini aç.

Terminalden `My-Ubuntu-Key.pem` konumuna git:

```bash
chmod 400 "My-Ubuntu-Key.pem"

ssh -i "My-Ubuntu-Key.pem" ubuntu@ec2-PUBLIC_IP.compute-1.amazonaws.com
```

### 🔌 SSH Bağlantısı (Windows)

Windows üzerinden **MobaXterm** ile SSH bağlantısını kurduk.

---

### 🔄 Makineyi Güncelleme

```bash
sudo apt update

sudo apt upgrade -y
```

### 🏷️ Makineye İsim Verme

```bash
sudo nano /etc/hostname
```

**Makinemizin adı:** `My-SonarQube`

- `Ctrl + X` → Çıkış
- `Y` → Onayla
- `Enter` → Kaydet

### 🔁 Makineyi Yeniden Başlatma

```bash
sudo reboot
```

Makineyi yeniden başlatmadan hostname değiştirmek için:

```bash
sudo hostnamectl set-hostname My-SonarQube --static
```

---

### ☕ Java Kurulumu

Terminale sadece `java` yaz ve Enter tuşuna bas. Açılan komutlardan **21. sürümü** al:

```bash
sudo apt install openjdk-21-jre-headless -y

java --version
```

---

### 🐘 PostgreSQL Kurulumu

```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null

sudo apt update

sudo apt-get -y install postgresql postgresql-contrib

sudo systemctl enable postgresql

sudo passwd postgres
```

> **Parola:** `123456789`

```bash
su - postgres
```

> **Parola:** `123456789`

```sql
createuser sonar

psql

ALTER USER sonar WITH ENCRYPTED password 'sonar';

CREATE DATABASE sonarqube OWNER sonar;

GRANT ALL PRIVILEGES ON DATABASE sonarqube TO sonar;

\q

exit
```

---

### ☕ Adoptium Repository (İsteğe Bağlı)

> Bu adım zorunlu değildir. İhtiyaç durumunda Ubuntu'ya repolar ekleriz.

```bash
sudo bash

wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | tee /etc/apt/keyrings/adoptium.asc

echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list

sudo apt update

sudo apt install openjdk-17-jre -y
```

veya:

```bash
sudo apt install temurin-17-jdk -y

sudo update-alternatives --config java

java --version
```

---

### 🐧 Linux Kernel Parametreleri

```bash
sudo nano /etc/security/limits.conf
```

veya:

```bash
sudo vim /etc/security/limits.conf
```

> Bir şey eklemek için önce klavyeden `i` tuşuna bas:

```
sonarqube   -   nofile   65536
sonarqube   -   nproc    4096
```

> Çıkış için `ESC` tuşuna bas, ardından `:wq` yaz.

---

```bash
sudo vim /etc/sysctl.conf
```

> Bir şey eklemek için önce klavyeden `i` tuşuna bas. Aşağıdaki satırı ekle:

```
vm.max_map_count = 262144
```

> Çıkış için `ESC` tuşuna bas, ardından `:wq` yaz.

Makineyi yeniden başlat:

```bash
sudo init 6
```

veya:

```bash
sudo reboot
```

---

### 📦 SonarQube Kurulumu

```bash
pwd

cd /opt

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.2.0.119303.zip

sudo apt install unzip

sudo unzip sonarqube-26.2.0.119303.zip -d /opt

pwd

sudo mv /opt/sonarqube-26.2.0.119303 /opt/sonarqube
```

---

Sonar kullanıcısı oluşturuluyor ve haklar veriliyor:

```bash
sudo groupadd sonar

sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar

sudo chown sonar:sonar /opt/sonarqube -R
```

---

Veritabanıyla SonarQube'u bağla:

```bash
sudo vim /opt/sonarqube/conf/sonar.properties
```

```properties
sonar.jdbc.username=sonar
sonar.jdbc.password=sonar

sonar.jdbc.url=jdbc:postgresql://localhost:5432/sonarqube
```

---

### ⚙️ Sonar Servisini Oluşturma

```bash
sudo vim /etc/systemd/system/sonar.service
```

Aşağıdaki içeriği dosyaya yapıştır:

```ini
[Unit]
Description=SonarQube service
After=syslog.target network.target

[Service]
Type=forking

ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop

User=sonar
Group=sonar
Restart=always

LimitNOFILE=65536
LimitNPROC=4096

[Install]
WantedBy=multi-user.target
```

---

Makine açıldığında SonarQube'u otomatik başlat:

```bash
sudo systemctl enable sonar

sudo systemctl start sonar

sudo systemctl status sonar
```

---

### 📋 Log Takibi

```bash
sudo tail -f /opt/sonarqube/logs/sonar.log
```

Makinenin public IP adresini alıp **9000** portundan giriş yap:

```
http://PUBLIC_IP:9000
```

> **Kullanıcı:** `admin`  
> **Parola:** `admin`  
> **Yeni Parola:** `Adana_01Adana_01`

Jenkins içinde token'ı kaydet ve gerekli plugin'leri kur.

> Sonar'ın kurulduğu makinenin **Private IPv4** adresini kopyala.

---

---

## 🐳 Docker — Jenkins Entegrasyonu

Docker'ı Jenkins'e tanıttık.

DockerHub'a gidip token oluşturuyoruz:

📎 https://hub.docker.com/

```
Token Adı  : MyDockerHubTokenAWS
Token Değer: dckr_pat_DDDDDDDDDDDDDDDDDDDDDDD
```

```bash
docker login -u huseyinaydin99 -p dckr_pat_DDDDDDDDDDDDDDDDDDDDDDD
```

---

---

## ⚙️ Makine 4 : My EKS Server

> ⚠️ **Public IP numaralarını Elastic IP ile mutlaka sabitliyoruz!**

📎 https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Addresses:

---

### 🔌 SSH Bağlantısı (macOS)

Instances listesinden makineyi seç → **Connect** düğmesine bas → **SSH Client** sekmesini aç.

Terminalden `My-Ubuntu-Key.pem` konumuna git:

```bash
chmod 400 "My-Ubuntu-Key.pem"
```

```bash
ssh -i "My-Ubuntu-Key.pem" ubuntu@ec2-PUBLIC_IP.compute-1.amazonaws.com
```

### 🔌 SSH Bağlantısı (Windows)

Windows üzerinden **MobaXterm** ile SSH bağlantısını kurduk.

---

### 🔄 Makineyi Güncelleme

```bash
sudo apt update

sudo apt upgrade -y
```

### 🏷️ Makineye İsim Verme

```bash
sudo nano /etc/hostname
```

**Makinemizin adı:** `My-EKS-Server`

- `Ctrl + X` → Çıkış
- `Y` → Onayla
- `Enter` → Kaydet

### 🔁 Makineyi Yeniden Başlatma

```bash
sudo reboot
```

---

### 🛠️ AWS CLI Kurulumu

📎 https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

```bash
sudo apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws --version
```

---

### 🐍 Python Kurulumu

```bash
sudo apt install python3-pip -y
```

---

### ☸️ kubectl Kurulumu

Kubernetes ile iletişim kurabilmek için `kubectl` gereklidir:

📎 https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

```bash
sudo su

curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.33.5/2025-11-13/bin/linux/amd64/kubectl

ll

chmod +x ./kubectl

ll

mv kubectl /bin

kubectl version --output=yaml
```

---

### 🔧 eksctl Kurulumu

📎 https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#linux_amd64_kubectl

```bash
sudo su

pwd

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

cd /tmp

ll

sudo mv /tmp/eksctl /bin

eksctl version
```

```bash
sudo reboot
```

```bash
kubectl version --client
```

---

### 🔑 IAM Rolü Atama

Önce makineye Admin yetkisi verdik:

📎 https://us-east-1.console.aws.amazon.com/iam/home?region=us-east-1#/roles

---

## 🚀 EKS Cluster Oluşturma

```bash
eksctl create cluster --name my-workspace-cluster \
--region us-east-1 \
--node-type c5ad.large \
--nodes 2
```

```bash
sudo reboot
```

```bash
kubectl get nodes

kubectl get pods
```

---

## 🔄 ArgoCD Kurulumu

📎 https://argo-cd.readthedocs.io/en/stable/getting_started/

```bash
kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl get pods -n argocd
```

---

Yönetici moduna geç:

```bash
sudo su

pwd
```

---

### 📦 ArgoCD CLI Kurulumu

En güncel sürümü çekmek için:

```bash
curl -L -s https://raw.githubusercontent.com/argoproj/argo-cd/stable/VERSION

VERSION=$(curl -L -s https://raw.githubusercontent.com/argoproj/argo-cd/stable/VERSION)

curl --silent --location -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v$VERSION/argocd-linux-amd64
```

> Belirli bir sürüme ihtiyaç duyulursa (yukarıdaki 3 komut her zaman en güncel sürümü çeker):

```bash
curl --silent --location -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v2.12.3/argocd-linux-amd64
```

Çalıştırma iznini ver:

```bash
chmod +x /usr/local/bin/argocd
```

Normal kullanıcı moduna dön:

```bash
exit
```

---

### 🌐 ArgoCD'yi Dış Dünyaya Açma

```bash
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

kubectl get svc -n argocd
```

> ArgoCD dış dünyaya aşağıdaki gibi bir adres ile açılır:

```
a5b3d196d6343444dbd692184429ca6b-117814533.us-east-1.elb.amazonaws.com
```

---

## 🗑️ EKS Cluster Silme

📎 https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html

```bash
eksctl version
```

Çalışan tüm servisleri listele:

```bash
kubectl get svc --all-namespaces
```

Tek bir servisi silmek için:

```bash
kubectl delete svc SERVIS_ADI
```

Cluster adını ve detaylarını görüntüle:

```bash
kubectl config view
```

Bölgeyi belirt:

```bash
export AWS_DEFAULT_REGION=us-east-2
```

Tüm node'ları ve servisleri cluster adını vererek toplu sil:

```bash
eksctl delete cluster --name my-workspace2-cluster
```
