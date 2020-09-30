terraform {
  required_version = ">= 0.12.13"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami               = var.ami_id
  instance_type     = var.instance_type

  tags = {
    Name    = "pgess-tfe-demo"
    owner   = "Peter Gess"
    region  = "Central Enterprise"
    purpose = "TFE Demo"
    ttl     = "2" 
  }
