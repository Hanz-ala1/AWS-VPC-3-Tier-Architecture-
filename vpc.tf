module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  #VPC Basuc Details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"
  azs                 = ["us-east-1a", "us-east-1b",]
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24", "10.0.201.0/24"]

  #datebase subnets
  create_database_subnet_group = true
  create_database_subnet_route_table = true
  database_subnets    = ["10.0.151.0/24", "10.0.152.0/24"]
  #if you want make database public enable below.
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true
  
  # NAT Gateways - Outbound Communication 
  enable_nat_gateway = true
  # Single nat gateway to avoid spinning up two and making it expensive.
  single_nat_gateway = true

  #VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support = true 
  
  public_subnet_tags = {
    Name = "public-subnets"
  }

  private_subnet_tags = {
    Name = "private-subnets"
  }

  database_subnet_tags = {
    Name = "database-subnets"
  }

  tags = {
    Owner = "hanzala"
    Environment = "dev"
  
  }
  vpc_tags = {
    Name = "vpc-dev"

  }

}