resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-adana-ankara-izmir-1453"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "example2" {
  bucket = "my-tf-test-bucket-adana-ankara-izmir-1453-nigde"

  tags = {
    Name        = "My bucket 2"
    Environment = "Prod"
  }
}