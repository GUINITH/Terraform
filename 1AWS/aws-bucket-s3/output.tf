output "bucket_info" {
  value = {
    bucket_id = aws_s3_bucket.bctg.id
    bucket_arn = aws_s3_bucket.bctg.arn
    bucket_name = aws_s3_bucket.bctg.bucket
    bucket_domain_name = aws_s3_bucket.bctg.bucket_domain_name
    bucket_regional_domain_name = aws_s3_bucket.bctg.bucket_regional_domain_name
  }
  description = "Informações da bucket S3"
}
