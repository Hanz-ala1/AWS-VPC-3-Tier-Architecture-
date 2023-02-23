#VPC output Values
#VPC ID
output "vpc_id" {
  description = "The Id of the vpc"
  value = module.vpc.vpc_id
}
# VPC CIDR blocks
output "availabilityzones" {
  description = "Azs"
  value = module.vpc.azs 
}
# VPC Private Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value  = module.vpc.private_subnets
}
# VPC Public Subnets
output "public_subnets" {
  description = "List of IDS of public subnets"
  value = module.vpc.public_subnets
  }
  
# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}