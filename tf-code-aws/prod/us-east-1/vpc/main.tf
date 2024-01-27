provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "app.terraform.io/cyrej_yt_ops/vpc/aws"
  version = "1.0.2"
  vpc_configs = { for entry in var.vpc_configs : entry.name => entry } 
}


