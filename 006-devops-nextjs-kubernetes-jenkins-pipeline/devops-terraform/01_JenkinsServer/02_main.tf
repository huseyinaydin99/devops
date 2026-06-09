# =========================
# SSH KEY (TEK DOĞRU YÖNTEM)
# =========================

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

resource "aws_key_pair" "mykey" {
  key_name   = "my-jenkins-key"
  public_key = tls_private_key.ssh.public_key_openssh
}

resource "local_file" "pem" {
  content  = tls_private_key.ssh.private_key_pem
  filename = "${path.module}/my-jenkins-key.pem"
}

# =========================
# SECURITY GROUP
# =========================

resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins-sg"
  description = "Allow SSH, HTTP, Jenkins, Sonar, apps"

  ingress = [
    for port in [22, 80, 443, 8080, 9000, 3000] : {
      description      = "allow ports"
      from_port        = port
      to_port          = port
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  tags = {
    Name = "jenkins-sg"
  }
}

# =========================
# IAM ROLE (EC2 FULL ACCESS)
# =========================

resource "aws_iam_role" "ec2_role" {
  name = "ec2-admin-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_admin" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2-admin-profile"
  role = aws_iam_role.ec2_role.name
}

# =========================
# EC2 INSTANCE (JENKINS SERVER)
# =========================

resource "aws_instance" "jenkins" {
  ami                    = "ami-0b6c6ebed2801a5cb"
  instance_type          = "t3.xlarge"
  key_name               = aws_key_pair.mykey.key_name
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  user_data = file("${path.module}/03_install.sh")

  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = "My-Jenkins-Server"
  }
}

# =========================
# ELASTIC IP (STATIC IP)
# =========================

resource "aws_eip" "jenkins_eip" {
  domain = "vpc"

  tags = {
    Name = "jenkins-eip"
  }
}

resource "aws_eip_association" "jenkins_assoc" {
  instance_id   = aws_instance.jenkins.id
  allocation_id = aws_eip.jenkins_eip.id
}