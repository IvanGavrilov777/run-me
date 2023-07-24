# run-me
Simple repo with Terraform code which calls module for creation of resources in different AWS regions

## Prerequisites
* AWS access
* Internet access to download module **terraform-module-two_AWSregions_resource**

## Code breakdown and explanation
* Terraform code requires download of AWS provider files with version 5.9.0.
* With two provider configuration blocks defines `aliases` which will be used for resource targeting in different AWS regions.
* Defines variable `type_of_instance` with default value of `t2.micro` which can be modified and passed to child module.
* Clones the module from source `github.com/IvanGavrilov777/terraform-module-two_AWSregions_resource`
* Provides additional region and variable configuration within the module **ec2-in-two-regions** block
