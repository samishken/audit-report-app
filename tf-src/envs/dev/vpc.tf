module "audit-report-app-vpc" {
  # source = "git::https://github.com/samishken/audit-report-app.git//tf-src/modules/vpc"
  source = "../../modules/vpc"  # source should point to our custome vpc module

  cidr = "10.0.0.0/16"

  azs             = var.azs
  private_subnets_cidrs =  var.private_subnets
  public_subnets_cidrs  = var.public_subnets

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-vpc"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"
  }
}

