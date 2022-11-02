variable "name" {
  type    = string
  default = "My Instance"
}

variable "db_user" {
  type    = string
  sensitive = true
}

variable "db_pass" {
  type    = string
  sensitive = true
}

variable "s3_bucket" {
  type    = string
  default = "my-app-bucket"
}

variable "aws_region" {
  type    = string
  default = "us_west2"
}
