resource "aws_s3_bucket" "b" {
  bucket = "scenario-1-tuna-bucket"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
