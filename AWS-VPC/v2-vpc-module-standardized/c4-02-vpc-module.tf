module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  # VPC Basic Details
  name            = var.vpc_name
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  #Database Subnets
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  # NAT Gatewa - Outbound Communication
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS Parameters
  enable_dns_support   = var.vpc_enable_dns_support
  enable_dns_hostnames = var.vpc_enable_dns_hostnames

  # Tags
  public_subnet_tags = {
    Type = "public-subnets"
  }

  private_subnet_tags = {
    Type = "private-subnets"
  }

  database_subnet_tags = {
    Type = "database-subnets"
  }

  tags = {
    Owner       = "Rick"
    Environment = "Dev"
  }

  vpc_tags = {
    Name = "vpc-dev"
  }
}
