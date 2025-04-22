output "bucket_info_0" {
  value = {
    bucket_id  = aws_s3_bucket.bctg[0].id
    bucket_arn = aws_s3_bucket.bctg[0].arn
  }
  description = "Informações da bucket S3"
}

output "bucket_info_1" {
  value = {
    bucket_id  = aws_s3_bucket.bctg[1].id
    bucket_arn = aws_s3_bucket.bctg[1].arn
  }
  description = "Informações da bucket S3"
}

output "bucket_info_2" {
  value = {
    bucket_id  = aws_s3_bucket.bctg[2].id
    bucket_arn = aws_s3_bucket.bctg[2].arn
  }
  description = "Informações da bucket S3"
}