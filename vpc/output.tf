# VPC ID
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.test.id
}

# Internet Gateway ID
output "internet_gateway_id" {
  description = "IGW ID"
  value       = aws_internet_gateway.igw.id
}

# Public Subnet ID
output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

# Public Route Table ID
output "public_route_table_id" {
  description = "Public Route Table ID"
  value       = aws_route_table.PublicRT.id
}

# Private Subnet ID
output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = aws_subnet.private.id
}

# Private Route Table ID
output "private_route_table_id" {
  description = "Private Route Table ID"
  value       = aws_route_table.PrivateRT.id
}

