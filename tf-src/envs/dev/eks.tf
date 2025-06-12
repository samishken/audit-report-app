module "eks_cluster" {
  source          = "../../modules/eks"
  cluster_name    = "${local.environment}-${local.project_name}-eks"
  cluster_version = "1.32"
  vpc_id          = module.audit-report-app-vpc.vpc_id
  subnet_ids      = module.audit-report-app-vpc.private_subnets

  node_groups = {
    eks_nodes = {
      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
      scaling_config = {
        desired_size = 3
        max_size     = 5
        min_size     = 1
      }
    }
  }

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-eks-cluster"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"
  }
}