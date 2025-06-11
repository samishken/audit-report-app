module "audit-report-app-bucket" {
  source = "git::https://github.com/samishken/audit-report-app.git//tf-src/modules/s3"
  # source = "../../modules/s3"
  bucket_name         = "${local.environment}-${local.project_name}-bucket"
  versioning  = true

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-bucket"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"
  }
}