module "bucket-local" {
  source = "../../modulos/aws/bucket-local"

  bucket = var.bucket_name

}