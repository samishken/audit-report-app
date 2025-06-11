terraform {
  backend "s3" {
    bucket = "terraform-state-dev-samboo"
    key    = "dev/audit-report-app/terraform-audit-report-app.tfstate"
    region = "us-east-1"
  }
}