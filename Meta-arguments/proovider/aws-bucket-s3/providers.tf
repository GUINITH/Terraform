terraform {
  required_version = ">=1.10.0"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "5.92.0"
      configuration_aliases = [aws.brasil, aws.eua]
    }
  }
}

provider "aws" {
  alias  = "brasil"
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "Guilherme"
      managed-by = "terraform"
    }
  }
}

provider "aws" {
  alias  = "eua"
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Guilherme"
      managed-by = "terraform"
    }
  }
}
