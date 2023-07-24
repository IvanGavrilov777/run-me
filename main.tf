terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  alias = "region1"
}

provider "aws" {
  region = "us-west-2"
  alias = "region2"
}


module "ec2-in-two-regions" {
    source = "github.com/IvanGavrilov777/terraform-module-2_AWSregions_resource"
}