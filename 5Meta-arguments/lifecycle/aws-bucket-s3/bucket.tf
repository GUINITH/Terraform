resource "aws_s3_bucket" "bucket_1" {
  provider = aws.brasil
  bucket   = var.bucket_1

  lifecycle {
    # prevent_destroy = true // impede a exclusão da bucket
    # ignore_changes = [tags] // ingora alterações na tags
    # create_before_destroy = true  // cria a bucket antes de exclui-la
    # replace = true // substitui a bucket
  }
}

resource "aws_s3_bucket" "bucket_2" {
  provider = aws.eua
  bucket   = var.bucket_2
}