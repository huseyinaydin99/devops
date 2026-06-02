resource "aws_instance" "web" {  # EC2 instance (VM) oluşturuluyor, Terraform içinde adı "web"
  ami = "ami-0b6c6ebed2801a5cb"  # Kullanılacak işletim sistemi imajı (Ubuntu/Amazon Linux AMI ID)
  instance_type = "t3.xlarge"    # Sunucunun CPU/RAM gücü (orta-yüksek performans)
  key_name = "My-Ubuntu-Key"     # SSH ile bağlanmak için kullanılacak key pair adı
  vpc_security_group_ids = [aws_security_group.My-Jenkins-Server-SG.id]  # Bu instance’a bağlı güvenlik grubu (port izinleri)
  user_data = templatefile("./03_install.sh", {})  # Sunucu ilk açıldığında çalışacak kurulum scripti (Jenkins vs.)

  tags = {
    Name = "My-Jenkins-Server"   # AWS panelinde instance’ı isimlendiren tag
  }

  root_block_device {            # Ana disk (root volume) ayarları başlıyor
    volume_size = 20             # Disk boyutu 20 GB olarak ayarlanıyor
  }                               # Root disk ayar bloğu kapanıyor
}                                  # EC2 instance tanımı bitiyor


// GÖREV 1:
// IP sabitleme Terraform ile yapılacak.   # Elastic IP atanarak public IP’nin değişmemesi sağlanacak


// GÖREV 2:
// Admin Rolü tanımlanacak.                # IAM role oluşturulacak
// EKS'yi kuracak bu makineye EC2 Admin Rolü verilecek.  # EC2’ye AWS üzerinde full yetki verilecek (EKS kurabilmesi için)


resource "aws_security_group" "My-Jenkins-Server-SG" {  # Güvenlik grubu oluşturuluyor (firewall gibi)
  name = "My-Jenkins-Server-SG"                          # Security group adı
  description = "Allow TLS inbound traffic"              # Açıklama (TLS inbound trafik izinleri)

  ingress = [                                            # Dışarıdan gelen (inbound) trafik kuralları
    for port in [22, 80, 443, 8080, 9000, 3000] : {     # Bu portlar için tek tek kural oluşturuluyor
      description = "inbound rules"                      # Kural açıklaması
      from_port = port                                   # Başlangıç portu (aynı port)
      to_port = port                                     # Bitiş portu (aynı port -> tek port açılır)
      protocol = "tcp"                                   # TCP protokolü üzerinden izin veriliyor
      cidr_blocks = ["0.0.0.0/0"]                        # Dünyanın her yerinden erişim (çok açık güvenlik)
      ipv6_cidr_blocks = []                              # IPv6 kapalı
      prefix_list_ids = []                               # AWS prefix list kullanılmıyor
      security_groups = []                               # Başka SG referansı yok
      self = false                                       # Kendi SG içi trafik değil
    }                                                    # Her port için kural tamamlanıyor
  ]                                                      # ingress listesi bitiyor

  egress {                                               # Sunucudan dışarı çıkan trafik (outbound)
    from_port = 0                                        # Tüm portlar
    to_port = 0                                          # Tüm portlar
    protocol = "-1"                                      # Tüm protokoller (TCP/UDP/ICMP)
    cidr_blocks = ["0.0.0.0/0"]                         # Her yere çıkış izni
  }                                                      # egress bloğu bitiyor

  tags = {
    Name = "My-Jenkins-Server-SG"                       # Security group etiketi
  }
}                                                        # Security group tanımı bitiyor


# EKSyi otomatikten kurmak için Create role EC2          # EC2’ye IAM role eklenmesi gerekiyor
# Add permissions kısmından Permissions policies bu yetkiyi AdministratorAccess vereceğiz.  # Full AWS yetkisi verilir
# Role name : EKS_EC2_ROLE                               # IAM role adı
# Modify IAM role  - Attach an IAM role to your instance. # Role EC2 instance’a bağlanır