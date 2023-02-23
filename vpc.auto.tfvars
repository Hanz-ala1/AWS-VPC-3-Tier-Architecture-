#VPC Variables - where the variables are provided/assigned a value
vpc_name= "myvpc"
vpc_cidr_block = "10.0.0.0/16"
vpc_availability_zones = [ "us-east-1a", "us-east-1b" ]  
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_public_subnets = ["10.0.101.0/24", "10.0.201.0/24"]
vpc_database_subnet_group = true
vpc_database_subnet_group_route_table = true
database_subnets = [ "10.0.151.0/24", "10.0.152.0/24" ]
vpc_enable_nat_gateway = true
vpc_single_nat_gateway = true

