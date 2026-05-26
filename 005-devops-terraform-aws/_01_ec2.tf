# AWS içinde yeni bir Virtual Private Cloud (VPC) oluşturur.
# VPC, AWS kaynaklarının (EC2, RDS vb.) izole bir ağ içinde çalışmasını sağlar.
# Yani tüm altyapının temel network katmanıdır.
resource "aws_vpc" "main" {

  # VPC’nin IP adres aralığıdır.
  # 10.0.0.0/16 → yaklaşık 65.000 IP sağlar.
  # Bu blok içinde subnet’ler ve tüm kaynaklar yer alır.
  cidr_block = "10.0.0.0/16"
}

# VPC içinde EC2’nin çalışacağı subnet’i oluşturur.
# Subnet = VPC’nin bölünmüş küçük ağ parçasıdır.
resource "aws_subnet" "main" {

  # Bu subnet hangi VPC’ye ait
  vpc_id = aws_vpc.main.id

  # Subnet IP aralığı (VPC içinde küçük parça)
  cidr_block = "10.0.1.0/24"

  # EC2 instance’lara otomatik public IP verir
  map_public_ip_on_launch = true

  # Hangi availability zone’da olacağı
  availability_zone = "eu-central-1a"
}

# EC2 instance oluşturur
resource "aws_instance" "app_server" {

  # Ubuntu AMI (region’a bağlıdır)
  ami = "ami-08c6e04c9dff01131"

  instance_type = "t2.micro"

  # Instance hangi subnet içinde çalışacak
  subnet_id = aws_subnet.main.id

  tags = {
    Name = "app-server"
  }
}