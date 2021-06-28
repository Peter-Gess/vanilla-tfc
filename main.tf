terraform {
  required_version = ">= 0.12.13"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  count             = 2
  ami               = var.ami_id
  instance_type     = var.instance_type

  tags = {
    Name    = "pgess-tfc-demo"
    owner   = "Peter Gess"
    region  = "Central Enterprise"
    purpose = "TFC Demo"
    ttl     = "2" 
  }
}
