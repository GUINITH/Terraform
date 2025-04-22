resource "aws_s3_bucket" "bctg" {
  count  = 3
  bucket = "${var.bucket}-${count.index}"
}