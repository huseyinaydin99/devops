### 🌌🔥 My DevOps Odyssey: Jenkins, Agents & SonarQube Yolculuğum 🔥🌌

Bu belge, kendi yolculuğumda inşa ettiğim DevOps omurgasının hem ruhunu
hem de mekaniğini anlatan bir rehberdir. Her adımda makinelerin kimlik
kazandığı, süreçlerin birbiriyle konuşur hale geldiği ve CI/CD'nin
gerçek anlamda hayat bulduğu bir mimari kurdum. Aşağıdaki yapı; Master,
Agent ve SonarQube'un birlikte senkron bir ritimle çalışmasını sağlayan
derin bir mimariyi temsil eder. ⚙️🚀✨

------------------------------------------------------------------------

#### 🧭 My Jenkins Master: Kontrol Kulesi

Jenkins Master, tüm sürecin beynidir. Ona bir kimlik verdim, yaşam
alanını düzenledim ve CI/CD dünyasının ritmini yönetebilmesi için
gerekli altyapıyı adım adım ördüm.\
Her reboot, her port açılımı ve her Java kurulumu; bu yapının
sağlamlığını artıran bir tuğla gibiydi. 🌐🔑

------------------------------------------------------------------------

#### 🤖 My Jenkins Agent: Sessiz İşçi, Güçlü Omuzlar

Agent, Master'ın yükünü taşıyan bir nefer gibi çalışıyor. Docker
kurulumundan SSH anahtar yapılandırmasına kadar her detay, ona
görevlerini sorunsuzca icra edebilmesi için verildi.\
Bu makine; pipeline'ların koştuğu, container'ların doğduğu ve işlemlerin
gerçek anlamda ete kemiğe büründüğü alandır. 🛠️🐋⚡

------------------------------------------------------------------------

#### 🧩 My SonarQube: Kodun Kalbini Okuyan Göz

SonarQube makinesi, sistemimin vicdanı gibi.\
Veritabanı hazırlıkları, kernel ayarları, servis yapılandırmaları ve
güvenlik tokenlarıyla birlikte kod kalitesinin nabzını tutması için özel
olarak dizayn edildi.\
Yüksek dikkat isteyen bu kurulum, mimari bütünlüğün en kritik
parçalarından birini oluşturuyor. 📊🔍❤️

------------------------------------------------------------------------

#### 🔗 Entegrasyonun Dansı: Tokenlar, SSH Anahtarları ve Güvenli Bağlantılar

Her şey birbirine bir zincirin halkaları gibi bağlanıyor.\
GitHub tokenlarından SonarQube güvenlik anahtarlarına, Docker Hub kimlik
bilgilerinden Jenkins Credential yönetimine kadar tüm süreç; güvenli,
akıcı ve ölçeklenebilir bir ekosisteme hizmet ediyor. 🔐🌉🌍

------------------------------------------------------------------------

#### 🧹 Temizlik Ritüeli: Docker'ın Yükünü Hafifletmek

Agent makinesi yoğun çalışır; container birikir, imajlar şişer, disk
dolar.\
Bu nedenle düzenli temizlik hem performans hem de süreklilik için kritik
bir ritüeldir.\
Verdiğim komutlar sayesinde sistem nefes alır, süreçler hızlanır ve
Jenkins pipeline'ları yeniden özgürce koşmaya başlar. 🧼⚙️💨

------------------------------------------------------------------------
### Jenkins Master, Jenkins Agent ve SonarQube Kurulumu – Detaylı Rehber 🚀🛠️

Bu doküman; **Jenkins Master**, **Jenkins Agent** ve **SonarQube** için tüm kurulum adımlarını eksiksiz, uygulamaya hazır komutlarla içeren kapsamlı bir rehberdir. Her komut bloğunun başında, o komutun ne yaptığını kısa ama anlamlı şekilde açıklayan bir satır bulunmaktadır.

---

### 📌 1. JENKINS MASTER KURULUMU

### Sistem Güncellemesi

Açıklama: Bu komutlar paket listelerini günceller, sistemdeki paketleri en son sürümlere yükseltir ve terminali temizleyerek çıktıların okunmasını sağlar.

```
sudo apt update
sudo apt upgrade -y
clear
```

### Hostname Değişikliği

Açıklama: Bu komut `/etc/hostname` dosyasını düzenleyerek sistemin kalıcı ana bilgisayar adını (hostname) değiştirmenizi sağlar.

```
sudo nano /etc/hostname
```

Yeni isim:

```
My-Jenkins-Master
```

Kaydet:

* CTRL + X
* Y
* ENTER

Makineyi yeniden başlat:
Açıklama: Sistem değişikliklerinin (ör. hostname) tam olarak uygulanması için yeniden başlatma komutlarıdır.

```
sudo init 6
sudo reboot
```

---

### AWS – Security Group Ayarı

Açıklama: AWS Security Group üzerinde 8080 portunu açmak, Jenkins web arayüzünün dışarıdan erişilebilir olmasını sağlar. (Bu adım GUI/Console ile yapılır.)

8080 portunu dış dünyaya aç.

---

### Java Kurulumu

Açıklama: Java sürümünü kontrol edip, açık kaynak JRE paketini kurar; Jenkins'in çalışması için gerekli Java runtime'ı sağlar.

```
java -version
sudo apt install openjdk-21-jre -y
java --version
```

---

### Jenkins Kurulumu

Açıklama: Jenkins paket deposunun GPG anahtarını ekler, Jenkins deposunu sources listesine koyar ve Jenkins paketini indirip kurar.

```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update
sudo apt-get install jenkins -y
```

---

### Jenkins Servis Yönetimi

Açıklama: Jenkins servisini sistem başlatmada etkinleştirir, başlatır ve servis durumunu kontrol eder.

```
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
```

Jenkins’e giriş:
Açıklama: Jenkins web UI'ına erişmek için tarayıcıda kullanılacak URL formatıdır.

```
http://<PUBLIC_IP>:8080/
```

Admin parolası:
Açıklama: Jenkins ilk kurulumunda otomatik oluşturulan yönetici parolasını dosyadan okuyarak gösterir.

```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

---

### 📌 2. JENKINS AGENT KURULUMU

### Sistem Güncellemesi

Açıklama: Agent makinada da paketleri güncellemek ve yükseltmek için tekrar kullanılır; terminal temizliği ile çıktı netleşir.

```
sudo apt update
sudo apt upgrade -y
clear
```

### Hostname Değiştirme

Açıklama: Agent için `/etc/hostname` dosyasını düzenleyerek veya `hostnamectl` ile ana makine adını belirler.

```
sudo nano /etc/hostname
```

Yeni isim:

```
My-Jenkins-Agent
```

Alternatif:

```
hostnamectl set-hostname My-Jenkins-Agent
```

Makineyi yeniden başlat:
Açıklama: Hostname değişikliğinin uygulanması için yeniden başlatma komutudur.

```
sudo reboot
```

---

### Java Kurulumu

Açıklama: Jenkins agent'ın da Java runtime'a ihtiyaç duymasına istinaden OpenJDK JRE kurulumu ve versiyon kontrolü yapılır.

```
sudo apt install openjdk-21-jre -y
java --version
```

---

### Docker Kurulumu

Açıklama: Agent üzerinde konteyner çalıştırmak için Docker kurulumu yapar ve kullanıcınızı docker grubuna ekleyerek root izni olmadan docker komutlarını kullanmanızı sağlar; ardından yeniden başlatma gerekir.

```
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo reboot
```

---

### SSH Yapılandırması (Agent)

Açıklama: SSH sunucusunun public key authentication ve yetkilendirilmiş anahtar dosyalarını kullanacak şekilde yapılandırılması için sshd yapılandırmasını düzenlemeyi gösterir.

```
sudo nano /etc/ssh/sshd_config
```

Şu satırlardan # kaldır:

```
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys .ssh/authorized_keys2
```

Kaydet ve SSH’ı yeniden yükle:
Açıklama: Yapılandırma değişikliklerinin etkin olması için SSH servisini yeniden yükler.

```
sudo service ssh reload
```

---

### SSH Yapılandırması (Master)

Açıklama: Master tarafında da SSH yapılandırmasını kontrol eder ve bağlantı için bir SSH anahtar çifti oluşturup public key'i agent'a eklemeyi açıklar.

```
sudo nano /etc/ssh/sshd_config
```

Aynı satırları aktif et, kaydet.

Master’da key oluştur:
Açıklama: Güçlü bir ed25519 anahtar çifti oluşturur; bu anahtar Jenkins master ile agent arasında parola sormadan bağlanmayı sağlar.

```
ssh-keygen -t ed25519
```

Public key'i kopyala:
Açıklama: Oluşturulan public anahtarın içeriğini terminalde gösterir, böylece agent tarafına yapıştırabilirsiniz.

```
cat ~/.ssh/id_ed25519.pub
```

Agent’ta authorized_keys’e yapıştır:
Açıklama: Agent üzerindeki `authorized_keys` dosyasına master'ın public anahtarını ekleyerek SSH bağlantı izni verir.

```
nano ~/.ssh/authorized_keys
```

Makinaları yeniden başlat:
Açıklama: Anahtar ve SSH ayarlarının düzgün çalışması için makinelerin yeniden başlatılması tavsiye edilir.

```
sudo reboot
```

---

### Agent'ı Jenkins’e Node Olarak Ekle

Açıklama: Jenkins arayüzünden yeni bir node (agent) tanımlama adımlarını özetler.

```
Jenkins Dashboard → Manage Jenkins → Nodes → New Node
```

---

### GitHub Token Oluşturma

Açıklama: GitHub üzerinde CI işlemleri için erişim token'ı oluşturmanızı sağlayacak ayarlar sayfasına yönlendirir.

```
https://github.com/settings/tokens
```

Örnek:

```
MyGitHubTokenForAWS2025
ghp_123456789
```

Token’ı Jenkins Credentials’a ekle.

---

### 📌 3. SonarQube Sunucusu Kurulumu

### Hostname Ayarı

Açıklama: SonarQube sunucusu için hostname dosyasını düzenleyerek kalıcı ad atar.

```
sudo nano /etc/hostname
```

Yeni isim:

```
My-SonarQube
```

Alternatif:
Açıklama: `hostnamectl` ile daha modern ve tercih edilen yöntemle hostname atama.

```
hostnamectl set-hostname My-SonarQube
```

Makineyi yeniden başlat:

```
sudo reboot
```

---

### PostgreSQL Kurulumu

Açıklama: PostgreSQL deposunu ekleyip GPG anahtarını yükler, ardından PostgreSQL paketlerini kurar ve servisi etkinleştirir.

```
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null

sudo apt update
sudo apt-get install postgresql postgresql-contrib -y
sudo systemctl enable postgresql
```

Postgres kullanıcısına şifre ver:
Açıklama: `postgres` sistem kullanıcısının parolasını ayarlamanızı sağlar.

```
sudo passwd postgres
```

Postgres’e gir:
Açıklama: `postgres` kullanıcısına geçiş yapıp psql kabuğuna girer; veritabanı işlemleri burada yapılır.

```
su - postgres
psql
```

Kullanıcı ve DB oluştur:
Açıklama: SonarQube için özel bir veritabanı kullanıcısı ve veritabanı oluşturur; gerekli izinleri verir.

```
ALTER USER sonar WITH ENCRYPTED password 'sonar';
CREATE DATABASE sonarqube OWNER sonar;
grant all privileges on DATABASE sonarqube to sonar;
\q
exit
```

---

### Java 17 Kurulumu (Adoptium)

Açıklama: SonarQube için önerilen Java 17 runtime'ını Adoptium deposundan ekleyip kurar ve versiyon kontrolü yapar.

```
sudo bash
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | tee /etc/apt/keyrings/adoptium.asc
echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print $2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list

sudo apt update
sudo apt install openjdk-17-jre -y
java --version
```

---

### Linux Kernel Ayarları

Açıklama: SonarQube için sistem limitlerini ve kernel parametresini yükselterek performans ve stabiliteyi artıran ayarları uygular.

```
sudo vim /etc/security/limits.conf
```

Ekle:

```
sonarqube   -   nofile   65536
sonarqube   -   nproc    4096
```

```
sudo vim /etc/sysctl.conf
```

Ekle:

```
vm.max_map_count = 262144
```

Makineyi yeniden başlat:

```
sudo reboot
```

---

### SonarQube Kurulumu

Açıklama: SonarQube paketini indirir, unzip aracı ile açar ve `/opt` içine yerleştirir; dizini standart sonarqube konumuna taşır.

```
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip
sudo apt install unzip -y
sudo unzip sonarqube-10.6.0.92116.zip -d /opt
sudo mv /opt/sonarqube-10.6.0.92116 /opt/sonarqube
```

---

### Kullanıcı Oluşturma

Açıklama: SonarQube için ayrı bir sistem grubu ve kullanıcı oluşturur; Sonar dizinlerine uygun sahiplik atar.

```
sudo groupadd sonar
sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar
sudo chown sonar:sonar /opt/sonarqube -R
```

---

### SonarQube Veritabanı Bağlantısı

Açıklama: SonarQube konfigürasyon dosyasına veritabanı bağlantı bilgilerini ekleyerek uygulamanın PostgreSQL'e bağlanmasını sağlar.

```
sudo vim /opt/sonarqube/conf/sonar.properties
```

Ekle:

```
sonar.jdbc.username=sonar
sonar.jdbc.password=sonar
sonar.jdbc.url=jdbc:postgresql://localhost:5432/sonarqube
```

---

### Sonar Servisi Oluşturma

Açıklama: SonarQube'u systemd servisi olarak kaydeder, servis dosyası ile başlatma/durdurma komutlarını tanımlar ve servis limitlerini ayarlar.

```
sudo vim /etc/systemd/system/sonar.service
```

İçerik:

```
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

Servisi başlat:
Açıklama: systemd ile servisi etkinleştirir, başlatır ve durumunu kontrol eder.

```
sudo systemctl enable sonar
sudo systemctl start sonar
sudo systemctl status sonar
```

Log takibi:
Açıklama: SonarQube çalışırken oluşan logları gerçek zamanlı görüntüleyerek hataları takip etmenizi sağlar.

```
sudo tail -f /opt/sonarqube/logs/sonar.log
```

SonarQube’e giriş:
Açıklama: SonarQube web arayüzüne erişim için kullanılacak URL formatıdır.

```
http://<PUBLIC_IP>:9000/
```

Kullanıcı:

```
admin / admin
```

---

### Jenkins İçin Sonar Token

Açıklama: SonarQube hesabınızdan Jenkins ile entegrasyon için bir erişim token'ı oluşturmanızı sağlar.

```
http://<IP>:9000/account/security
```

Örnek:

```
jenkins-sonarqube-token
sqa_123456789
```

Token'ı Jenkins'e tanıt.

---

### DockerHub Token

Açıklama: Docker Hub'a CLI üzerinden giriş yapmak için kullanılan komut; token ile oturum açar ve bu token'ı Jenkins'e credential olarak ekleyebilirsiniz.

```
docker login -u YOUR_USERNAME -p dckr_pat_123456789
```

Token’ı Jenkins'e ekleyin.

---

### 📌 Docker Temizlik Komutları (Agent İçin)

Açıklama: Belirli imajları kaldırmak, tüm konteynerleri zorla silmek ve kullanılmayan volumeleri temizleyerek disk alanı boşaltır.

```
docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep '003-devops-pipeline-aws')
docker container rm -f $(docker container ls -aq)
docker volume prune
```

---

*Ek not*: Komutları çalıştırmadan önce ortamınıza, IP adreslerinize ve güvenlik ayarlarınıza göre düzenleyin. Özellikle üretim ortamlarında SSH anahtarlarını, parolaları ve token'ları güvenli şekilde yönetin.

---

Bu dokümanın tamamı komutların öncesinde kısa ve açıklayıcı satırlar içerir; komutları doğrudan kopyalayıp terminalde çalıştırabilirsiniz.

---

### 🌟🌟 Bu README, DevOps yolculuğumun özünü taşıyan bir manifestodur. 🌟🌟