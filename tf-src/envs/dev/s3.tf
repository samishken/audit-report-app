module "audit-report-app-bucket" {
  source = "../../modules/s3"
  bucket_name         = "${local.environment}-${local.project_name}-bucket"

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-bucket"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"
  }
}