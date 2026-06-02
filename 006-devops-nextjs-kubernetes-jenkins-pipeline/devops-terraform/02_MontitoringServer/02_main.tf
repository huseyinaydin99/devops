resource "aws_instance" "web" {  # Monitoring server için EC2 instance oluşturuluyor
  ami = "ami-0b6c6ebed2801a5cb"  # Kullanılacak işletim sistemi imajı (Ubuntu/Amazon Linux AMI)
  instance_type = "t3.xlarge"    # Instance tipi (CPU + RAM gücü yüksek orta seviye VM)
  key_name = "My-Ubuntu-Key"     # SSH ile erişim için kullanılacak key pair
  vpc_security_group_ids = [aws_security_group.My-Monitoring-Server-SG.id]  # Güvenlik grubu (port erişim kuralları)
  user_data = templatefile("./03_install.sh", {})  # İlk açılışta çalışacak kurulum scripti (Prometheus, Grafana vb.)

  tags = {
    Name = "My-Monitoring-Server"  # AWS konsolunda görünen instance adı
  }

  root_block_device {  # Ana disk (root volume) ayarları başlıyor
    volume_size = 20   # Disk boyutu 20 GB olarak belirleniyor
  }                    # Root volume bloğu kapanıyor
}                      # EC2 instance tanımı bitiyor


resource "aws_security_group" "My-Monitoring-Server-SG" {  # Monitoring server için firewall (security group)
  name = "My-Monitoring-Server-SG"  # Security group adı
  description = "Allow TLS inbound traffic"  # Açıklama (TLS inbound trafik izni)

  ingress = [  # Dışarıdan gelen (inbound) trafik kuralları başlıyor
    for port in [22, 80, 443, 9090, 9100, 3000] : {  # SSH, HTTP, HTTPS, Prometheus, Node Exporter, Grafana portları
      description = "inbound rules"  # Kural açıklaması
      from_port = port               # Başlangıç portu
      to_port = port                 # Bitiş portu (tek port açılır)
      protocol = "tcp"               # TCP protokolü üzerinden erişim
      cidr_blocks = ["0.0.0.0/0"]    # Her yerden erişim (global açık)
      ipv6_cidr_blocks = []          # IPv6 kapalı
      prefix_list_ids = []           # AWS prefix list kullanılmıyor
      security_groups = []           # Başka security group referansı yok
      self = false                   # Kendi SG içi trafik değil
    }                                # Tek port kuralı kapanır
  ]                                  # ingress listesi kapanır

  egress {  # Sunucudan dış dünyaya çıkan trafik (outbound)
    from_port = 0   # Tüm portlar
    to_port = 0     # Tüm portlar
    protocol = "-1" # Tüm protokoller (TCP/UDP/ICMP dahil)
    cidr_blocks = ["0.0.0.0/0"]  # Her yere çıkış izni
  }  # egress bloğu kapanır

  tags = {
    Name = "My-Monitoring-Server-SG"  # Security group etiketi
  }

}  # Security group tanımı bitiyor


resource "aws_budgets_budget" "budget-ec2" {  # AWS maliyet kontrol (budget alarm sistemi)
  name = "my-monthly-budget"  # Budget adı
  budget_type = "COST"  # Bütçe tipi: maliyet takibi
  limit_amount = "50"  # Aylık maksimum harcama limiti (50 USD)
  limit_unit = "USD"  # Para birimi
  time_period_start = "2026-03-01_00:00"  # Bütçenin başlangıç tarihi
  time_unit = "MONTHLY"  # Aylık bazda hesaplama yapılır

  notification {  # Uyarı sistemi başlıyor
    comparison_operator = "GREATER_THAN"  # Harcama belirlenen eşiği aşarsa
    threshold = 60  # %60 seviyesinde uyarı tetiklenir. 50 doların %60'ı kast ediliyor ha!
    threshold_type = "PERCENTAGE"  # Eşik yüzde bazlı
    notification_type = "FORECASTED"  # Tahmini harcama üzerinden uyarı
    subscriber_email_addresses = ["huseyinaydin99@gmail.com"]  # Uyarı maili gönderilecek kişi
  }  # notification bloğu kapanır
}  # budget tanımı bitiyor