terraform {
  required_version = ">=1.10.0"  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner = "Guilherme"
      managed-by = "terraform"
    }
  }
}