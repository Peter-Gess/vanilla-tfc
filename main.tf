terraform {
  required_version = "= 0.12.13"
}

provider "aws" {
  region = var.aws_region
}

data "terraform_remote_state" "vm-qa" {
  backend = "remote"

  config = {
    organization = "vanilla-tfc"
    workspaces = {
      name = "vm-qa"
    }
  } 
}

resource "aws_instance" "ubuntu" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = data.terraform_remote_state.vm-qa.outputs.subnet_id

  tags = {
    Name    = "pgess-tfe-demo"
    owner   = "Peter Gess"
    region  = "Central Enterprise"
    purpose = "TFE Demo"
    ttl     = "2"  
  }
}
