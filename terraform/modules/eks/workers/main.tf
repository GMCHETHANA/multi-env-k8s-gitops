resource "aws_eks_node_group" "this" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.cluster_name}-worker-group"
  node_role_arn   = var.worker_role_arn
  subnet_ids      = var.subnet_ids
  ami_type        = var.ami_type
  instance_types  = var.instance_types
  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-worker"
  })

  depends_on = var.depends_on
}

