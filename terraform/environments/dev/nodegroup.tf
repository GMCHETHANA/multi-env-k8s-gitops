resource "aws_eks_node_group" "dev_nodes" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "dev-managed-nodes"
  node_role_arn  = aws_iam_role.eks_node_role.arn
  subnet_ids     = var.private_subnet_ids

  scaling_config {
    desired_size = var.node_desired_size
    max_size     = var.node_max_size
    min_size     = var.node_min_size
  }

  instance_types = ["t3.micro"]
  ami_type       = "AL2023_x86_64_STANDARD"
  capacity_type  = "ON_DEMAND"

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node,
    aws_iam_role_policy_attachment.eks_cni,
    aws_iam_role_policy_attachment.eks_container_registry
  ]
}



































