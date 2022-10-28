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