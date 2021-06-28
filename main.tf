terraform {
  required_version = ">= 0.12.13"
}

provider "aws" {
  region = var.aws_region
}
