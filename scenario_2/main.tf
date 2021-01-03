terraform {
  required_version = "0.13.5"

  required_providers {
    aws = ">= 2.53.0"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

module "vpc" {
  source = "./vpc"
}

module "igw" {
  source = "./igw"
}

module "logic_eip" {
  source = "./eip/logic"
}

module "logic_key" {
  source = "./eip/logic"
}

module "logic_sg" {
  source = "./scg/logic"
  vpc_id = module.vpc.vpc_id
}

module "logic_launch_template" {
  source = "./launch_template/logic"
  key_name = module.logic_key.id
  eip_allocation_id = module.logic_eip.key_name
  vpc_security_group_ids = [module.logic_sg.id]
}

module "logic_asg" {
  source = "./asg/logic"
  aws_launch_template_id = module.logic_launch_template.id
  subnet_ids = module.vpc.public_subnet_ids
}
