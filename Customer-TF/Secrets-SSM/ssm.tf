variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "param_db_pass_name" {
  type    = string
  default = "test_name"
}

variable "param_db_user_name" {
  type    = string
  default = "test_name"
}

data "aws_ssm_parameter" "db_pass" {
  name = var.param_db_pass_name
}

data "aws_ssm_parameter" "db_user" {
  name = var.param_db_user_name
}

output "db_pass" {
  value = aws_ssm_parameter.db_pass.value
  sensitive = true
}

output "db_user" {
  value = aws_ssm_parameter.db_user.value
  sensitive = true
}

provider "aws" {
  region  = var.aws_region

}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">3.0.0"
    }
  }
}

