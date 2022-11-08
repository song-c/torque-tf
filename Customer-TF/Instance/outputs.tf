
output "public_dns" {
  #value = aws_instance.myapp.public #something not sure??
  value = aws_instance.myapp.ami

  # hint: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
}

