terraform {
  required_version = "0.13.5"

  required_providers {
    aws = ">= 2.53.0"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

module aws_caller_identity {
  source = "./aws_caller_identity"
}

module "vpc" {
  source = "./vpc"
}

module "logic_eip" {
  source = "./eip"
}

module "logic_key" {
  source = "./key"
}

module "logic_sg" {
  source = "./sg"
  vpc_id = module.vpc.id
}

module "logic_iam_role" {
  source = "./iam"
  account_id = module.aws_caller_identity.account_id
  eip_allocation_id = module.logic_eip.allocation_id
}

module "logic_launch_template" {
  source = "./launch_template"
  key_name = module.logic_key.key_name
  eip_allocation_id = module.logic_eip.allocation_id
  vpc_security_group_ids = [module.logic_sg.id]
  instance_profile_name = module.logic_iam_role.instance_profile_name
}

module "logic_asg" {
  source = "./asg"
  aws_launch_template_id = module.logic_launch_template.id
  subnet_ids = module.vpc.public_subnet_ids
}
