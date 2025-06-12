output "vpc_id" {
  value = aws_vpc.this.id
}

output "private_subnets" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private[*].id
}