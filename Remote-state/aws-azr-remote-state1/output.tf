output "bucket_info" {
  value = {
    bucket_id  = aws_s3_bucket.bucket.id
    bucket_arn = aws_s3_bucket.bucket.arn
  }
  description = "Informações da bucket S3"
}

output "sa_info" {
  value = {
    storage_account_id = azurerm_storage_account.sa.id
  }
  description = "Informações da conta de armazenamento"
}