resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Environment = var.environment
  }
}

resource "aws_subnet" "app_gateway" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.128.0/26"
}


resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
/*
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }
*/
  tags = {
    Environment = var.environment
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.app_gateway.id
  route_table_id = aws_route_table.public.id
}