output "bucket_info_1" {
  value = {
    bucket_id  = aws_s3_bucket.bucket_1.id
    bucket_arn = aws_s3_bucket.bucket_1.arn
  }
  description = "Informações da bucket S3"
}

output "bucket_info_2" {
  value = {
    bucket_id  = aws_s3_bucket.bucket_2.id
    bucket_arn = aws_s3_bucket.bucket_2.arn
  }
  description = "Informações da bucket S3"
}