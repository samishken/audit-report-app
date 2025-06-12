locals {
  project_name = "prod-audit-report-app"
}

locals {
  environment = "prod" # Change to "prod", "staging", etc. as needed
}

locals {
  module_path = "${path.module}/../../modules/vpc"
}