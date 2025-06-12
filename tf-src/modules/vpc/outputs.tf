output "vpc_id" {
  value = aws_vpc.this.id
}
output "private_subnets" {
  value = aws_subnet.private[*].id
}
output "public_subnets" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}