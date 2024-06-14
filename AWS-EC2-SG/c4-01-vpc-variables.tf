variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "vpc-dev"
}

variable "vpc_cidr_block" {
  description = "VPC CIRD block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "VPC public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.201.0/24"]
}

variable "vpc_private_subnets" {
  description = "VPC private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_subnets" {
  description = "VPC database subnets"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.251.0/24"]
}

variable "vpc_create_database_subnet_group" {
  description = "VPC create database subnets group"
  type        = bool
  default     = true
}

variable "vpc_create_database_subnet_route_table" {
  description = "VPC create database subnet route table"
  type        = bool
  default     = true
}

variable "vpc_enable_nat_gateway" {
  description = "VPC enable NAT gateway"
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "VPC single NAT gateway"
  type        = bool
  default     = true
}

variable "vpc_enable_dns_hostnames" {
  description = "VPC enable DNS hostnames"
  type        = bool
  default     = true
}

variable "vpc_enable_dns_support" {
  description = "VPC enable DNS support"
  type        = bool
  default     = true
}
