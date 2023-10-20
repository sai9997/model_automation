terraform {
  required_version = ">= 1.3.9"
}
provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region     = var.aws_region
}
