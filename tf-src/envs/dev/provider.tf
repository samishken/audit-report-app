terraform {
  # cloud {
  #   organization = "terraform-audit-report-app"
  #   workspaces {
  #     name = "interview-prep-dev"
  #   }
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


