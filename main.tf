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

variable "ec2_type" {
    description = "EC2 type"
    default = "t2.micro"
}

module "ec2-in-two-regions" {
    source = "github.com/IvanGavrilov777/terraform-module-two_AWSregions_resource"
    providers = {
        aws = aws.region2
    }
    pesho = var.ec2_type
}