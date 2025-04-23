output "bucket_info" {
  value = {
    bucket_id  = aws_s3_bucket.bctg[*].id
    bucket_arn = aws_s3_bucket.bctg[*].arn
  }
  description = "Informações da bucket S3"
}