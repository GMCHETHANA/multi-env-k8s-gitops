# terraform/environments/dev/terragrunt.hcl

terraform {
  # Path to the workers module
  source = "../../modules/eks/workers"
}

inputs = {
  cluster_name    = "dev-eks-cluster"                       # EKS cluster created in previous step
  worker_role_arn = "arn:aws:iam::565837168386:role/eks-worker-role"  # Replace with your actual worker IAM role ARN
  subnet_ids      = [
    "subnet-09e8fa5ef15441770",
    "subnet-0628c7575613d7dd1",
    "subnet-0b5165c1c77b9297a"
  ]  # Only subnets from the same VPC as your EKS cluster
  instance_types  = ["t3.medium"]
  desired_capacity = 2
  min_size        = 1
  max_size        = 3
  tags = {
    Environment = "dev"
    Project     = "k8s-gitops-platform"
  }

  depends_on = [
    "aws_eks_cluster.this"  # Ensure EKS cluster exists before creating worker nodes
  ]
}








