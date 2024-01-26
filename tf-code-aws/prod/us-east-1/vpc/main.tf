provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "app.terraform.io/cyrej_yt_ops/vpc/aws"
  version = "1.0.1"
  # vpc = var.vpc_configs
  for_each = var.vpc_configs
}


