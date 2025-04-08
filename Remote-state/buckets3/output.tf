output "bucket_info" {
  value = {
    bucket_id = aws_s3_bucket.s3.id
    bucket_arn = aws_s3_bucket.s3.arn
  }
  description = "Informações da bucket S3"
}