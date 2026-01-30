output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_role_arn" {
  description = "IAM role ARN for EKS cluster"
  value       = aws_iam_role.eks_cluster.arn
}
