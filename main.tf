terraform {
  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = "~> 2.46.0"
    }
  }
}

provider "aws" {
  shared_credentials_files = ["~/.was/credentials"]
  region                   = "eu-west-2"
}

module "instance_mod" {
  source = "./instance"

  ami_id       = var.ami_id
  machine_type = var.machine_type
  key_name     = var.key_name
}

module "vpc" {
  source = "./vpc"

  vpc_cidr = var.vpc_cidr
}
