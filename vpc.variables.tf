#VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "Name of VPC"
  type = string
  default = "myvpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type = string
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC availabillty Zones"
  type = list(string)
  default = [ "us-east-1a", "us-east-1b" ]  
}

#VPC private subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)  
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

#VPC public subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)  
  default = ["10.0.101.0/24", "10.0.201.0/24"]
}

#VPC Database 
variable "vpc_database_subnet_group" {
  description = "VPC Subnet group for database"
  type = bool
  default = true
}

variable "vpc_database_subnet_group_route_table" {
  description = "VPC Subnet group for database route table"
  type = bool
  default = true
}


variable "database_subnets" {
  description = "VPC database subnets"
  type = list(string)
  default = [ "10.0.151.0/24", "10.0.152.0/24" ]
}


  
# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}