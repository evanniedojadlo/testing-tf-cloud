module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${format("%s-vpc", var.name)}"
  azs = "${var.vpc_azs}"
  cidr = "${var.vpc_cidr}"

  public_subnets = "${var.vpc_public_subnets}"
  private_subnets = "${var.vpc_private_subnets}"
  database_subnets = "${var.vpc_database_subnets}"

  enable_nat_gateway = "${var.vpc_enable_nat_gateway}"
  single_nat_gateway = "${var.vpc_single_nat_gateway}"
  one_nat_gateway_per_az = "${var.vpc_one_nat_gateway_per_az}"

  tags {
    environment = "${var.env}"
  }
}

# Borrowed from VPC Module from Terraform Module Repository:
variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  default     = "0.0.0.0/0"
}

variable "vpc_public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = []
}

variable "vpc_private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = []
}

region = "us-west-2"
name = "utilities"
env = "production"

# VPC
vpc_azs = [ "us-west-2a", "us-west-2b" ]
vpc_cidr = "192.168.0.0/16"
vpc_private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
vpc_enable_nat_gateway = false
vpc_single_nat_gateway = false
vpc_one_nat_gateway_per_az = false