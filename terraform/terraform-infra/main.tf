/*
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
*/


module "network_app_gateway" {
  source = "./modules/network"
}

module "app_gateway" {
  source = "./modules/app_gateway"
  app-gateway_subnet = tolist(module.network.subnet_app_gateway_id) #Id of the subnet for app gateway created in the network module
  app-gateway_name = "application gateway"

}
/*
module "security" {
  source = "./modules/security"
}

module "compute" {
  source = "./modules/compute"
}

module "storage" {
  source = "./modules/storage"
}

module "monitoring" {
  source = "./modules/monitoring"
}
*/