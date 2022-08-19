variable "aws_region" {
  type    = string
  default = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "mybucket-test-1995"
  force_destroy = true  



 tags = {
    Name        = "My bucket"
  }
}

output "ssm_value" {
  value = aws_s3_bucket.bucket.bucket
}

provider "aws" {
  region  = var.aws_region

}

