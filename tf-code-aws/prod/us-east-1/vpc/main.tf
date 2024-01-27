terraform {
  backend "remote" {
    organization = "cyrej_yt_ops"
    workspaces {
      name = "dev-aws-infra-vpc"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "app.terraform.io/cyrej_yt_ops/vpc/aws"
  version = "1.0.2"
  vpc_configs = var.vpc_configs
}