output "instance_ip_address" {
  description = "The public IP address of the instance"
  value       = values(aws_instance.my_server)[*].public_ip
}
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.audit-report-app-vpc.vpc_id
}

output "s3_bucket_names" {
  description = "List of S3 bucket names"
  value       = module.audit-report-app-bucket[*].bucket_name
}

output "all_vpc_module_outputs" {
  value = module.audit-report-app-vpc
}

output "private_subnets" {
  value = module.audit-report-app-vpc.private_subnets
}