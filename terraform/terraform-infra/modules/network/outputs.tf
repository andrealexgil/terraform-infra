output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}


output "subnet_app_gateway_id" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public.id
}

/*
output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "database_subnet_ids" {
  description = "The IDs of the database subnets"
  value       = aws_subnet.database[*].id
}
*/