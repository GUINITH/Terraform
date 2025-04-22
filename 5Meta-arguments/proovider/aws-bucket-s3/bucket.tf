resource "aws_s3_bucket" "bucket_1" {
  provider = aws.brasil
  bucket   = var.bucket_1
}

resource "aws_s3_bucket" "bucket_2" {
  provider = aws.eua
  bucket   = var.bucket_2
}