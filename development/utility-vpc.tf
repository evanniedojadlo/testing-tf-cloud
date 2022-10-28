resource "aws_vpc" "utilities-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    environment = "production"
  }
}