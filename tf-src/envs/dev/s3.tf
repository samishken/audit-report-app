resource "random_id" "bucket_suffix" {
  count       = 2
  byte_length = 4
}

module "audit-report-app-bucket" {
  source = "git::https://github.com/samishken/audit-report-app.git//tf-src/modules/s3"
  # source      = "../../modules/s3"
  count       = 2
  bucket_name = "${local.environment}-${local.project_name}-${random_id.bucket_suffix[count.index].hex}"
  versioning  = true

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-bucket"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"
  }
}