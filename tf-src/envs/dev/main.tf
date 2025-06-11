locals {
  project_name = "audit-report-app" # Change to your project name 
}

locals {
  environment = "dev" # Change to "prod", "staging", etc. as needed
}

locals {
  module_path = "${path.module}/../../modules/vpc"
}

output "resolved_path" {
  value = local.module_path
}