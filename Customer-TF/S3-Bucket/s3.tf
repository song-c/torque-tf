variable "aws_region" {
    type    = string
    default = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
    #bucket = "my-bucket-test-1995"
    #bucket = "my-bucket-test-${formatdate("YYYYMMDDhhmmss",timestamp())}"
    bucket = "my-bucket-test-{{ sandboxid | downcase }}"
    force_destroy = true  
    acl = "public-read-write"

    tags = {
    Name        = "My bucket"
    }
}

output "bucket_name" {
    value = aws_s3_bucket.bucket.bucket
}

provider "aws" {
    region  = var.aws_region
}

