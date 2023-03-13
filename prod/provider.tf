provider "aws" {
  region = var.region

  # region = var.aws_region
   shared_credentials_file = "~/.aws/credentials"
   profile = "evnm"
  # profile = "default"
}

terraform {
  backend "s3" {
    bucket = "samzee"
    region = "us-east-1"
    key    = "prod/terraform.tfstate"
    profile = "evnm"
  }
}