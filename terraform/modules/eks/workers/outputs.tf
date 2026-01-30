output "worker_node_group_name" {
  description = "The name of the worker node group"
  value       = aws_eks_node_group.this.node_group_name
}

output "worker_role_arn" {
  description = "The IAM role ARN used by worker nodes"
  value       = var.worker_role_arn
}
