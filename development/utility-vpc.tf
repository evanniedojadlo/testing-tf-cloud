module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "utilities-vpc"
  cidr = "10.0.0.0/16"

  azs             = [
    "us-west-2a",
    "us-west-2b",
    "us-west-2c"
  ]

  private_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    managed-by = "terraform"
    environment = "production"
  }
}