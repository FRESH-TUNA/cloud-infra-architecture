terraform {
  required_version = "0.13.5"

  required_providers {
    aws = ">= 2.53.0"
  }
}

provider "aws" {
    region = "ap-northeast-2"
}
