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
    type_of_instance = var.ec2_type
    providers = {
        aws.reg1 = aws.region1
        aws.reg2 = aws.region2
    }
}
