terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"   # Frankfurt örnek
  profile = "default"        # AWS CLI profile (opsiyonel)
  access_key = "kendi_erişim_anahtarın"
  secret_key = "kendi_gizli_anahtarın"
}