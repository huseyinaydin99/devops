resource "aws_iam_user" "my_source1" {
  name = "Huseyin"

  tags = {
    tag-key = "DevOps"
    tecrube = "Uzman"
  }
}
