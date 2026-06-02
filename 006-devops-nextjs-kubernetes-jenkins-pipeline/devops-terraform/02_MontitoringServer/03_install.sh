#!/bin/bash  # Script Bash shell ile çalıştırılır

sudo apt update -y  # Paket listelerini günceller (repo index yenilenir)


## Prometheus kurulumu ve servis oluşturma
sudo useradd --system --no-create-home --shell /bin/false prometheus
# Prometheus için sistem kullanıcısı oluşturulur (login kapalı, güvenli servis user)
# --shell /bin/false ve --system nedeniyle bu hesap login (SSH/terminal giriş) yapamaz.
# Buradaki kullanıcı adı prometheus olup, Prometheus servisinin sistem üzerinde login olmadan güvenli şekilde çalışması için oluşturulan özel servis hesabıdır.
# bu kullanıcı yalnızca Prometheus prosesini çalıştırmak ve onun dosya/servis yetkilerini izole etmek için kullanılır; başka bir amaçla (login, admin işlemleri vb.) kullanılmaz.
# Evet, bu yapı doğrudan güvenlik ve yetki izolasyonu amacıyla kullanılır.

wget https://github.com/prometheus/prometheus/releases/download/v3.10.0/prometheus-3.10.0.linux-amd64.tar.gz
# Prometheus binary paketi GitHub’dan indirilir

tar -xvf prometheus-3.10.0.linux-amd64.tar.gz
# İndirilen sıkıştırılmış dosya açılır (extract edilir)

cd prometheus-3.10.0.linux-amd64/
# Prometheus klasörüne girilir

sudo mkdir -p /data /etc/prometheus
# Prometheus config ve data klasörleri oluşturulur

sudo mv prometheus promtool /usr/local/bin/
# Prometheus binary dosyaları sistem PATH’e taşınır

sudo mv consoles/ console_libraries/ /etc/prometheus/
# Web UI template dosyaları config dizinine taşınır

sudo mv prometheus.yml /etc/prometheus/prometheus.yml
# Ana Prometheus config dosyası yerine konur

sudo chown -R prometheus:prometheus /etc/prometheus/ /data/
# Dosyaların sahibi Prometheus kullanıcısı yapılır (yetkilendirme)

sudo cat > /etc/systemd/system/prometheus.service << EOF
# Prometheus için systemd servis dosyası oluşturulmaya başlanır

[Unit]  # Servis tanım kısmı
Description=Prometheus  # Servisin açıklaması
Wants=network-online.target  # Ağ hazır olmalı
After=network-online.target  # Ağdan sonra başlat

StartLimitIntervalSec=500  # Restart deneme süresi
StartLimitBurst=5  # Maksimum restart deneme sayısı

[Service]  # Servis çalışma ayarları
User=prometheus  # Servisi çalıştıran kullanıcı
Group=prometheus  # Grup yetkisi
Type=simple  # Basit servis tipi

Restart=on-failure  # Hata olursa yeniden başlat
RestartSec=5s  # 5 saniye bekle sonra restart

ExecStart=/usr/local/bin/prometheus \  # Prometheus çalıştırma komutu
  --config.file=/etc/prometheus/prometheus.yml \  # Config dosya yolu
  --storage.tsdb.path=/data \  # Metric data storage yolu
  --web.console.templates=/etc/prometheus/consoles \  # UI template yolu
  --web.console.libraries=/etc/prometheus/console_libraries \  # UI library yolu
  --web.listen-address=0.0.0.0:9090 \  # Web arayüz portu (9090)
  --web.enable-lifecycle  # API üzerinden reload özelliği

[Install]  # Sistem açılış davranışı
WantedBy=multi-user.target  # Multi-user modda çalıştır
EOF  # servis dosyası yazımı bitir

sudo systemctl enable prometheus  # Prometheus boot sırasında otomatik başlar
sudo systemctl start prometheus  # Prometheus servisini başlat


## Node Exporter kurulumu (sistem metric toplama)
sudo useradd --system --no-create-home --shell /bin/false node_exporter
# Node exporter için sistem kullanıcısı oluşturulur

wget https://github.com/prometheus/node_exporter/releases/download/v1.10.2/node_exporter-1.10.2.linux-amd64.tar.gz
# Node exporter binary paketi indirilir

tar -xvf node_exporter-1.10.2.linux-amd64.tar.gz
# Dosya açılır

sudo mv node_exporter-1.10.2.linux-amd64/node_exporter /usr/local/bin/
# Node exporter binary PATH’e taşınır

rm -rf node_exporter*
# Gereksiz kurulum dosyaları silinir

sudo cat > /etc/systemd/system/node_exporter.service << EOF
# Node exporter systemd servis dosyası oluşturulur

[Unit]  # Servis başlık kısmı
Description=Node Exporter  # Açıklama
Wants=network-online.target  # Ağ hazır olmalı
After=network-online.target  # Ağdan sonra başlat

StartLimitIntervalSec=500  # Restart kontrol süresi
StartLimitBurst=5  # Maks restart sayısı

[Service]  # Servis çalışma kısmı
User=node_exporter  # Kullanıcı
Group=node_exporter  # Grup

Type=simple  # Servis tipi
Restart=on-failure  # Hata olursa restart
RestartSec=5s  # 5 saniye bekle

ExecStart=/usr/local/bin/node_exporter --collector.logind
# Node exporter çalıştırılır (logind metric collector aktif)

[Install]  # Boot ayarı
WantedBy=multi-user.target  # Sistem açılışında çalışır
EOF  # servis dosyası kapanır

sudo systemctl enable node_exporter  # boot’ta otomatik başlat
sudo systemctl start node_exporter  # servisi başlat


## Grafana kurulumu (dashboard arayüzü)
sudo apt-get update  # Paket listesi güncellenir
sudo apt-get install -y apt-transport-https software-properties-common
# HTTPS repo desteği ve gerekli dependency’ler kurulur

wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
# Grafana GPG key sisteme eklenir (paket doğrulama için)

echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
# Grafana repository sisteme eklenir

sudo apt-get update  # Yeni repo eklendiği için liste güncellenir
sudo apt-get -y install grafana  # Grafana kurulumu yapılır

sudo systemctl enable grafana-server  # boot’ta otomatik başlat
sudo systemctl start grafana-server  # Grafana servisini başlat