cat > eks/workers.tf << 'EOF'
resource "aws_eks_node_group" "this" {
  cluster_name    = var.cluster_name
  node_group_name = "eks-worker-nodes"
  node_role_arn   = aws_iam_role.eks_worker_role.arn
  subnet_ids      = var.subnet_ids
  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }
  instance_types = var.instance_types
}
EOF
