provider "aws" {
  region = var.region
}

# VPC
resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-${var.environment}"
  }
}

# Public subnets
resource "aws_subnet" "public" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnets[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-${count.index}-${var.environment}"
  }
}

# Private subnets
resource "aws_subnet" "private" {
  count      = length(var.private_subnets)
  vpc_id     = aws_vpc.this.id
  cidr_block = var.private_subnets[count.index]

  tags = {
    Name = "private-${count.index}-${var.environment}"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "igw-${var.environment}"
  }
}

