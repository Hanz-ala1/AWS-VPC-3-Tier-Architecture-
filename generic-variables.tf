#input variables
#AWS Region
variable "aws_region" {
  description = "Region in which aws resouces to be created"
  type = string
  default = "us-east-1"
}
# Environment Variable
variable "environment" {
  description = "Environment Variables used as a prefix"
  type = string
  default = "dev"
}
# Business Division 
variable "business_division" {
  description = "Business Divison in the large organisation this infrastructure belongs"
  type = string
  default = "HR"  
}