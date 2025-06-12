module "audit_report_app_ecr" {
  source = "../../modules/ecr"

  repository_name = "${local.environment}-${local.project_name}-vpc"

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-ecr"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"

  }
}