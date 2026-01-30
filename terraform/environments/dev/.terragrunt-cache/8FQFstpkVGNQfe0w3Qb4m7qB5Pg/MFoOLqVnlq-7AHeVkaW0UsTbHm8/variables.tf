variable "vpc_id" {
  description = "The ID of the VPC where EKS will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS nodes"
  type        = list(string)
}

variable "cluster_role_arn" {
  description = "IAM role ARN for the EKS cluster"
  type        = string
}
