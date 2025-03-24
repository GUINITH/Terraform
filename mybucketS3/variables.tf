variable "bucket" {
  description = "The name of the S3 bucket"
  type        = string
}

// Variable for the owner of the resources
variable "owner" {
  description = "The owner of the resources"
  type        = string
}

// Variable for the AWS region
variable "region" {
  description = "The AWS region where resources will be deployed"
  type        = string
}
