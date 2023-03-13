provider "aws" {
  region = "us-east-1"
  # region = var.region
  profile = "evnm"
}

terraform {
  backend "s3" {
    bucket = "samzee"
    region = "us-east-1"
    key    = "qa/terraform.tfstate"
    profile = "evnm"
  }
  }