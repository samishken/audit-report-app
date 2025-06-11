resource "aws_ecr_repository" "audit-report-ecr-repo" {
  name      = var.repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name                                           = "${var.repo_name}-ecr"
  }
}